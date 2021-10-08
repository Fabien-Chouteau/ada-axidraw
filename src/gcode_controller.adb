-------------------------------------------------------------------------------
--                                                                           --
--                                   ACNC                                    --
--                                                                           --
--       Copyright (C) 2016-2017 Fabien Chouteau (chouteau@adacore.com)      --
--                                                                           --
--                                                                           --
--    ACNC is free software: you can redistribute it and/or modify it        --
--    under the terms of the GNU General Public License as published by      --
--    the Free Software Foundation, either version 3 of the License, or      --
--    (at your option) any later version.                                    --
--                                                                           --
--    ACNC is distributed in the hope that it will be useful, but WITHOUT    --
--    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY     --
--    or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public        --
--    License for more details.                                              --
--                                                                           --
--    You should have received a copy of the GNU General Public License      --
--    along with ACNC. If not, see <http://www.gnu.org/licenses/>.           --
--                                                                           --
-------------------------------------------------------------------------------

with Gcode.Parser;
with Gcode.Execution;
with Gcode.Error;
with Gcode.Motion;

with Interfaces;
--  with AdaCore_Microchip;

with Ada.Synchronous_Task_Control;
--  with Ada.Real_Time; use Ada.Real_Time;

with System;
--  with RISCV_Adacore_Gcode;

with Hardware_Interface;
with Gcode; use Gcode;
with L_System;
--  with Some_Lsystems;

--  with Hershey_Fonts;
--  with Hershey_Fonts.Scriptc;
--  with Hershey_Fonts.Futural;

--  with Sudoku;
with Ada.Real_Time; use Ada.Real_Time;

package body Gcode_Controller is

   LS_Current_Angle : Float := 0.0;
   LS_Distance      : Float := 10.0;
   LS_Position      : Float_Position;

   LS_Exclu_Ena : Boolean := False;
   LS_Exclu_X1  : Float;
   LS_Exclu_X2  : Float;
   LS_Exclu_Y1  : Float;
   LS_Exclu_Y2  : Float;

   procedure Run_With_Exclusion (Origin         : Float_Position;
                                 System         : L_System.System;
                                 Depth          : Natural;
                                 Distance       : Float;
                                 X1, X2, Y1, Y2 : Float)
     with Unreferenced;

   procedure Erase_All with Unreferenced;

   Task_Sync : Ada.Synchronous_Task_Control.Suspension_Object;

   task Execution_Task is
      pragma Priority (System.Default_Priority);
      pragma Storage_Size (40 * 1024);
   end Execution_Task;

   ---------------
   -- Initalize --
   ---------------

   procedure Initalize is
   begin
      Ctx.Output_Index := Ctx.Output_Buffer'First;
   end Initalize;

   -------------
   -- Execute --
   -------------

   procedure Execute (Str : String) is
   begin
      if not Gcode.Parser.Parse (Str, Ctx) then
         Ctx.Put_Line ("Gcode parsing failed");
         return;
      end if;

      if not Gcode.Execution.Execute (Str, Ctx) then
         Ctx.Put_Line ("Gcode execution failed");
      end if;
   exception
      when Gcode.Error.Gcode_Exception =>
         Ctx.Put_Line ("Gcode exception");
      when others =>
         Ctx.Put_Line ("other exception");
   end Execute;

   ---------
   -- Put --
   ---------

   procedure Put (Ctx : in out CNC_Context; C : Character) is
   begin
      Ctx.Output_Buffer (Ctx.Output_Index) := C;
      if Ctx.Output_Index = Ctx.Output_Buffer'Last or else C = ASCII.LF then
         Hardware_Interface.Put_Line
           (Ctx.Output_Buffer (Ctx.Output_Buffer'First .. Ctx.Output_Index));
         Ctx.Output_Index := 1;
      else
         Ctx.Output_Index := Ctx.Output_Index + 1;
      end if;
   end Put;

   ---------------
   -- Erase_All --
   ---------------

   procedure Erase_All is
   begin
      --  Enable motor
      Gcode_Controller.Execute ("M17");

      --  Lower pen into the eraser
      Gcode.Motion.Move_Line (Ctx, (0.0, 0.0, -1.0), Feed_Rate => 100.0);

      for Y in 1 .. 23 loop
         if Y mod 2 = 0 then
            Gcode.Motion.Move_Line (Ctx, (300.0, -Float (Y * 5) - 40.0, -1.0), Feed_Rate => 100.0);
         else
            Gcode.Motion.Move_Line (Ctx, (0.0, -Float (Y * 5) - 40.0, -1.0), Feed_Rate => 100.0);
         end if;
      end loop;

      --  Right vertical cleanup
      Gcode.Motion.Move_Line (Ctx, (300.0, -190.0, -1.0), Feed_Rate => 100.0);
      Gcode.Motion.Move_Line (Ctx, (300.0, 000.0, -1.0), Feed_Rate => 100.0);

      --  Left vertical cleanup
      Gcode.Motion.Move_Line (Ctx, (0.0, -170.0, -1.0), Feed_Rate => 100.0);
      Gcode.Motion.Move_Line (Ctx, (0.0, 0.0, -1.0), Feed_Rate => 100.0);

      --  Raise the pen
      Gcode.Motion.Move_Line (Ctx, (0.0, 0.0, 1.0), Feed_Rate => 100.0);

      --  Disable motor
      Gcode_Controller.Execute ("M18");
   end Erase_All;

   --------------
   -- Callback --
   --------------

   procedure Callback (Action : L_System.Action_Kind; Angle : Float)
   is
   begin
      case Action is
         when L_System.Forward =>

            --  Move
            LS_Position (X_Axis) := LS_Position (X_Axis) +
              Float_Functions.Cos (LS_Current_Angle) * LS_Distance;

            LS_Position (Y_Axis) := LS_Position (Y_Axis) +
              Float_Functions.Sin (LS_Current_Angle) * LS_Distance;

            --  Raise pen
            LS_Position (Z_Axis) := 1.0;

            Gcode.Motion.Move_Line (Ctx, LS_Position, Feed_Rate => 100.0);

         when L_System.Draw_Forward =>

            --  Move
            LS_Position (X_Axis) := LS_Position (X_Axis) +
              Float_Functions.Cos (LS_Current_Angle) * LS_Distance;

            LS_Position (Y_Axis) := LS_Position (Y_Axis) +
              Float_Functions.Sin (LS_Current_Angle) * LS_Distance;

            if LS_Exclu_Ena
              and then
                LS_Position (X_Axis) in LS_Exclu_X1 .. LS_Exclu_X2
              and then
                LS_Position (Y_Axis) in LS_Exclu_Y1 .. LS_Exclu_Y2
            then
               --  Raise pen
               LS_Position (Z_Axis) := 1.0;
            else
               --  Lower pen
               LS_Position (Z_Axis) := -1.0;
            end if;

            Gcode.Motion.Move_Line (Ctx, LS_Position, Feed_Rate => 100.0);

         when L_System.Turn_Left =>
            LS_Current_Angle := LS_Current_Angle + Angle;
         when L_System.Turn_Right =>
            LS_Current_Angle := LS_Current_Angle - Angle;
      end case;
   end Callback;

   ---------
   -- Run --
   ---------

   procedure Run (Origin   : Float_Position;
                  System   : L_System.System;
                  Depth    : Natural;
                  Distance : Float)
   is
   begin
      LS_Position := Origin;
      LS_Current_Angle := 0.0;
      LS_Distance := Distance;

      --  Enable motor
      Gcode_Controller.Execute ("M17");

      --  Move to origin
      Gcode.Motion.Move_Line (Ctx, Origin, Feed_Rate => 100.0);

      --  Lower pen
      Gcode.Motion.Move_Line (Ctx,
                              (LS_Position (X_Axis),
                               LS_Position (Y_Axis),
                               -1.0),
                              Feed_Rate => 100.0);
      --  Dwell
      Gcode_Controller.Execute ("G04 P1");

      L_System.Run (System, Depth, Callback'Access);


      --  Raise pen
      Gcode.Motion.Move_Line (Ctx,
                              (LS_Position (X_Axis),
                               LS_Position (Y_Axis),
                               1.0),
                              Feed_Rate => 100.0);
      --  Dwell
      Gcode_Controller.Execute ("G04 P1");

      --  Move to origin
      Gcode.Motion.Move_Line (Ctx, Origin, Feed_Rate => 100.0);

      --  Disable motor
      Gcode_Controller.Execute ("M18");
   end Run;

   ------------------------
   -- Run_With_Exclusion --
   ------------------------

   procedure Run_With_Exclusion (Origin         : Float_Position;
                                 System         : L_System.System;
                                 Depth          : Natural;
                                 Distance       : Float;
                                 X1, X2, Y1, Y2 : Float)
   is
   begin
      LS_Exclu_Ena := True;
      LS_Exclu_X1 := X1;
      LS_Exclu_X2 := X2;
      LS_Exclu_Y1 := Y1;
      LS_Exclu_Y2 := Y2;
      Run (Origin, System, Depth, Distance);
      LS_Exclu_Ena := False;
   end Run_With_Exclusion;

   -----------
   -- Start --
   -----------

   procedure Start is
   begin
      Ada.Synchronous_Task_Control.Set_True (Task_Sync);
   end Start;

   --------------------
   -- Execution_Task --
   --------------------

   task body Execution_Task is

      --  use type Sudoku.Grid_Level;
      --  Level : Sudoku.Grid_Level := Sudoku.Grid_Level'First;
   begin


      Ada.Synchronous_Task_Control.Suspend_Until_True (Task_Sync);

      loop
         --  Wait for a rising edge on the user start button
         while Hardware_Interface.Start_Button_Pressed loop
            null;
         end loop;

         delay until Clock + Milliseconds (300);

         while not Hardware_Interface.Start_Button_Pressed loop
            null;
         end loop;

         -- Homing --

         Gcode_Controller.Execute ("M17");
         Gcode_Controller.Execute ("G28");
         Gcode_Controller.Execute ("M18");

         --  Draw logos
         declare
            use Interfaces;

            --  The drawing data is located in external ROM at address
            --  0x60000000. It is an array of x, y int16 records starting and
            --  ending with (0, 0). The coords are in 10th of milimeters (i.e.
            --  divide by 10 to get milimeters).

            type Coord is record
               X, Y : Integer_16;
            end record;

            Data : array (Natural) of Coord with
              Address => System'To_Address (16#6000_0000#);

            New_Pos : Float_Position := (0.0, 0.0, 1.0); -- origin, up
            Dwell : Boolean;
         begin
            Gcode_Controller.Execute ("M17");

            for Elt of Data (Data'First + 1 .. Data'Last) loop
               pragma Warnings (Off, "not a multiple");
               Dwell := False;
               if Elt = (0, 0) then
                  exit;
               elsif Elt = (99, 99) then
                  New_Pos (Z_Axis) := 1.0;
                  Dwell := True;
               elsif Elt = (-99, -99) then
                  New_Pos (Z_Axis) := -1.0;
                  Dwell := True;
               else
                  --  New_Pos (X_Axis) := Elt.X;
                  --  New_Pos (Y_Axis) := Elt.Y;
                  New_Pos (X_Axis) := Float (Elt.X) / 10.0;
                  New_Pos (Y_Axis) := Float (Elt.Y) / 10.0;
               end if;
               Gcode.Motion.Move_Line (Ctx,
                                       New_Pos,
                                       Feed_Rate => 100.0);

               if Dwell then
                  Gcode_Controller.Execute ("G04 P0.4");
               end if;

            end loop;

            Gcode_Controller.Execute ("G28"); -- Home
            Gcode_Controller.Execute ("M18");
         end;

         --  Sudoku.Draw (Ctx    => GContext (Ctx),
         --               X      => 22.0,
         --               Y      => -120.0,
         --               G_Type => Level,
         --               Size   => 100.0);
         --
         --  --  Switch to the next level or re-start from the first
         --  if Level = Sudoku.Medium then
         --     Level := Sudoku.Grid_Level'First;
         --  else
         --     Level := Sudoku.Grid_Level'Succ (Level);
         --  end if;


         --  -- Signature --
         --
         --  Gcode_Controller.Execute ("M17");
         --
         --  Gcode.Motion.Move_Line (Ctx, (115.0, -165.0, 1.0), Feed_Rate => 100.0);
         --
         --  Hershey_Fonts.Print_String (Hershey_Fonts.Futural.Font,
         --                              GContext (Ctx),
         --                              "Made with Ada",
         --                              Scale => 0.4);
         --
         --  Gcode.Motion.Move_Line (Ctx, (102.0, -150.0, 1.0), Feed_Rate => 100.0);
         --
         --  Hershey_Fonts.Print_String (Hershey_Fonts.Futural.Font,
         --                              GContext (Ctx),
         --                              "www.adacore.com",
         --                              Scale => 0.2);
         --
         --  Gcode.Motion.Move_Line (Ctx, (200.0, -190.0, 1.0), Feed_Rate => 100.0);

         Gcode_Controller.Execute ("M18");
      end loop;

--        Hardware_Interface.Put_Line ("--- ACNC ---");
--        loop
--           Hardware_Interface.Get (C);
--           Buffer (Index) := C;
--           if C = ASCII.CR then
--              Hardware_Interface.Put_Line
--                ("executing: '" & Buffer (1 .. Index - 1) & "'");
--
--              Gcode_Controller.Execute (Buffer (1 .. Index - 1));
--              Index := Buffer_Range'First;
--           elsif Index = Buffer_Range'Last then
--              Hardware_Interface.Put_Line
--                ("Error: Receive buffer full");
--              Index := Buffer_Range'First;
--           else
--              Index := Index + 1;
--           end if;
--        end loop;
   end Execution_Task;

end Gcode_Controller;
