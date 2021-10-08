with HAL.GPIO;

package SAM.PIO is


   subtype GPIO_Group_Index is Integer range 0 .. 6;

   A : constant GPIO_Group_Index := 0;
   B : constant GPIO_Group_Index := 1;
   C : constant GPIO_Group_Index := 2;
   D : constant GPIO_Group_Index := 3;
   E : constant GPIO_Group_Index := 4;
   F : constant GPIO_Group_Index := 5;
   G : constant GPIO_Group_Index := 6;

   subtype GPIO_Pin_Index is Integer range 0 .. 31;

   type GPIO_Point (Group : GPIO_Group_Index;
                    Pin   : GPIO_Pin_Index)
   is new HAL.GPIO.GPIO_Point
     with
     private;

   ---------------
   --  HAL.GPIO --
   ---------------

   overriding
   function Support (This   : GPIO_Point;
                     Unused : HAL.GPIO.Capability)
                     return Boolean
   is (True);

   overriding
   function Mode (This : GPIO_Point) return HAL.GPIO.GPIO_Mode;

   overriding
   procedure Set_Mode (This : in out GPIO_Point;
                       Mode : HAL.GPIO.GPIO_Config_Mode);

   overriding
   function Pull_Resistor (This : GPIO_Point)
                           return HAL.GPIO.GPIO_Pull_Resistor;

   overriding
   procedure Set_Pull_Resistor (This : in out GPIO_Point;
                                Pull : HAL.GPIO.GPIO_Pull_Resistor);

   overriding
   function Set (This : GPIO_Point) return Boolean;

   overriding
   procedure Set (This : in out GPIO_Point);

   overriding
   procedure Clear (This : in out GPIO_Point);

   overriding
   procedure Toggle (This : in out GPIO_Point);

private

   type GPIO_Point (Group : GPIO_Group_Index;
                    Pin   : GPIO_Pin_Index)
   is new HAL.GPIO.GPIO_Point
     with null record;

end SAM.PIO;
