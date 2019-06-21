-------------------------------------------------------------------------------
--                                                                           --
--                                   ACNC                                    --
--                                                                           --
--         Copyright (C) 2016 Fabien Chouteau (chouteau@adacore.com)         --
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

with Ada.Synchronous_Task_Control;
with Ada.Real_Time; use Ada.Real_Time;
with Stepper;
with System;
with Settings;
with Gcode; use Gcode;

with Hardware_Interface;
with HAL.GPIO; use HAL.GPIO;

package body Step_Control is

   Task_Sync   : Ada.Synchronous_Task_Control.Suspension_Object;
   Current_Dir : Axis_Directions := (others => Forward);
   Task_Period : Time_Span := Milliseconds (500);

   Z_Virtual_Steps : Integer := 0;
   --  The Z axis is actually not a stepper but a servo motor that either raises
   --  of lower the pen. This virtual step counter is used to detected when the
   --  pen should be up (value => 0) or down (value < 0).

   procedure Set_Step_Direction (Axis : Axis_Name;
                                 Dir : Direction);
   procedure Clear_Step_Pin (Axis : Axis_Name);
   procedure Set_Step_Pin (Axis : Axis_Name);
   procedure Set_Stepper_Frequency (Freq_Hz : Frequency_Value);
   function Home_Test (Axis : Axis_Name) return Boolean;
   procedure Motor_Enable (Axis : Axis_Name;
                           Enable : Boolean);

   function Step_Point (Axis : Axis_Name) return Any_GPIO_Point
   is (case Axis is
          when X_Axis => Hardware_Interface.Step_X,
          when Y_Axis => Hardware_Interface.Step_Y,
          when others => raise Program_Error);

   function Dir_Point (Axis : Axis_Name) return Any_GPIO_Point
   is (case Axis is
          when X_Axis => Hardware_Interface.Dir_X,
          when Y_Axis => Hardware_Interface.Dir_Y,
          when others => raise Program_Error);

   ---------------
   -- Initalize --
   ---------------

   procedure Initalize is
   begin

      Hardware_Interface.Initialize;

      for Axis in Axis_Name loop
         Set_Step_Direction (Axis, Forward);
      end loop;

      Set_Stepper_Frequency (Settings.Idle_Stepper_Frequency);

      --  Release stepper task
      Ada.Synchronous_Task_Control.Set_True (Task_Sync);
   end Initalize;

   ------------------------
   -- Set_Step_Direction --
   ------------------------

   procedure Set_Step_Direction (Axis : Axis_Name;
                                 Dir : Direction)
   is
   begin
      Current_Dir (Axis) := Dir;

      if Axis /= Z_Axis then
         if Dir = Forward then
            Dir_Point (Axis).Set;
         else
            Dir_Point (Axis).Clear;
         end if;
      end if;
   end Set_Step_Direction;

   --------------------
   -- Clear_Step_Pin --
   --------------------

   procedure Clear_Step_Pin (Axis : Axis_Name) is
   begin
      if Axis /= Z_Axis then
         Step_Point (Axis).Clear;
      end if;
   end Clear_Step_Pin;

   ------------------
   -- Set_Step_Pin --
   ------------------

   procedure Set_Step_Pin (Axis : Axis_Name) is
   begin
      if Axis /= Z_Axis then
         Step_Point (Axis).Set;
      else
         case Current_Dir (Z_Axis) is
            when Forward =>

               if Z_Virtual_Steps = -1 then
                  Hardware_Interface.Raise_Pen;
               end if;

               Z_Virtual_Steps := Z_Virtual_Steps + 1;
            when Backward =>

               if Z_Virtual_Steps = 0 then
                  Hardware_Interface.Lower_Pen;
               end if;

               Z_Virtual_Steps := Z_Virtual_Steps - 1;
         end case;
      end if;
   end Set_Step_Pin;

   ---------------------------
   -- Set_Stepper_Frequency --
   ---------------------------

   procedure Set_Stepper_Frequency (Freq_Hz : Frequency_Value) is
   begin
      Task_Period := To_Time_Span (Duration (1.0 / Freq_Hz));
   end Set_Stepper_Frequency;

   ---------------
   -- Home_Test --
   ---------------

   function Home_Test (Axis : Axis_Name) return Boolean is
   begin
      case Axis is
         when X_Axis =>
            return Hardware_Interface.Limit_X;
         when Y_Axis =>
            return Hardware_Interface.Limit_Y;
         when Z_Axis =>
            return Z_Virtual_Steps >= Integer (Settings.Step_Per_Millimeter (Z_Axis));
      end case;
   end Home_Test;

   ------------------
   -- Motor_Enable --
   ------------------

   procedure Motor_Enable (Axis : Axis_Name;
                           Enable : Boolean) is
      pragma Unreferenced (Axis);
   begin
      if Enable then
         Hardware_Interface.Enable_Steppers;
      else
         Hardware_Interface.Disable_Steppers;
      end if;
   end Motor_Enable;

   ---------------
   -- Step_Task --
   ---------------

   task Step_Task is
      pragma Priority (System.Default_Priority + 2);
   end Step_Task;

   task body Step_Task is
      Next_Period : Time := Clock;
   begin
      Ada.Synchronous_Task_Control.Suspend_Until_True (Task_Sync);

      Stepper.Set_Stepper_Callbacks
        (Set_Step              => Set_Step_Pin'Access,
         Clear_Step            => Clear_Step_Pin'Access,
         Set_Direcetion        => Set_Step_Direction'Access,
         Set_Stepper_Frequency => Set_Stepper_Frequency'Access,
         Home_Test             => Home_Test'Access,
         Motor_Enable          => Motor_Enable'Access);

      loop
         Next_Period := Next_Period + Task_Period;

         if Stepper.Execute_Step_Event then
            null;
         end if;
         delay until Next_Period;
      end loop;
   end Step_Task;

end Step_Control;
