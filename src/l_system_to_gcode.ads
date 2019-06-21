with L_System;
with Gcode_Controller; use Gcode_Controller;
with Gcode; use Gcode;

package L_System_To_Gcode is

   procedure Run (Ctx    : in out CNC_Context;
                  Origin : Float_Position;
                  System : L_System.System;
                  Depth  : Natural;
                  Angle  : Float);

end L_System_To_Gcode;
