import fileinput
import re

print("""
with Interfaces; use Interfaces;
package AdaCore_Microchip is

   --  Integer_Bits    : constant := 9;
   --  Fractional_Bits : constant := 7;
   --
   --  pragma Compile_Time_Warning
   --    (Integer_Bits + Fractional_Bits /= 16,
   --     \"Invalid number of bits in fixed-point definition\");
   --
   --  V_Delta : constant := 2.0**(-Fractional_Bits);
   --  V_Range : constant := 2.0**(Integer_Bits - 1);
   --
   --  type Value is delta V_Delta range -V_Range .. V_Range - V_Delta
   --    with Size  => Integer_Bits + Fractional_Bits,
   --         Small => V_Delta;

   type Coord is record
      X, Y : Interfaces.Integer_16;
   end record
     with Pack;

   type Coor_Array is array (Natural range <>) of Coord
     with Pack;

   pragma Warnings (Off, \"not a multiple\");
   Data : constant Coor_Array :=
     (
""")

last_x = 0
last_y = 0
for line in fileinput.input():
    if line.startswith("G1 X"):
        x, y = re.search("^G1 X([0-9.-]+) Y([0-9.-]+)", line).groups()
        x = int(float(x) * 10)
        y = int(float(y) * 10)

        if x != last_x and y != last_y:
            print("      (%s, %s)," % (str(x), str(y)))
        last_x = x
        last_y = y

    elif line.startswith("; plunge"):
        print("      (-99, -99),")
    elif line.startswith("; Retract"):
        print("      (99, 99),")

print("     (0.0, 0.0));")
print("end AdaCore_Microchip;")
