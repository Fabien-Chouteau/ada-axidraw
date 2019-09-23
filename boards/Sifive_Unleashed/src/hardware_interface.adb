with Ada.Real_Time; use Ada.Real_Time;
with Interfaces.C;

with SiFive.Device; use SiFive.Device;
with SiFive.GPIO;   use SiFive.GPIO;
with SiFive.PWM;  use SiFive.PWM;

with Unleashed.LEDs;

package body Hardware_Interface is

   M1_Step_GPIO : GPIO_Point renames P015;
   M2_Step_GPIO : GPIO_Point renames P08;

   M1_Dir_GPIO : GPIO_Point renames P07;
   M2_Dir_GPIO : GPIO_Point renames P09;

   Not_Enable_GPIO : GPIO_Point renames P06;

   X_Limit_GPIO : GPIO_Point renames P05;
   Y_Limit_GPIO : GPIO_Point renames P04;
   Button_GPIO  : GPIO_Point renames P03;

   PWM       : PWM_Device renames PWM1;

   Pen_Cmp_ID    : constant Comparator_ID := 3;
   PWM_Scale     : constant := 8;
   PWM_Period    : constant := 32_500;
   Pen_Low_Duty  : constant := PWM_Period - 1_600;
   Pen_High_Duty : constant := PWM_Period - 5_000;
   --  Duty: 1_953 -> 1.0ms
   --  Duty: 3_906  -> 2.0ms

   Errno : Interfaces.C.int := 0;
   pragma Export (C, Errno, "__errno");

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      M1_Step_GPIO.Set_Mode (HAL.GPIO.Output);
      M2_Step_GPIO.Set_Mode (HAL.GPIO.Output);
      M1_Dir_GPIO.Set_Mode (HAL.GPIO.Output);
      M2_Dir_GPIO.Set_Mode (HAL.GPIO.Output);
      Not_Enable_GPIO.Set_Mode (HAL.GPIO.Output);

      X_Limit_GPIO.Set_Mode (HAL.GPIO.Input);
      Y_Limit_GPIO.Set_Mode (HAL.GPIO.Input);
      Button_GPIO.Set_Mode (HAL.GPIO.Input);

      M1_Step_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);
      M2_Step_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);
      M1_Dir_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);
      M2_Dir_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);
      Not_Enable_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);

      X_Limit_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);
      Y_Limit_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);
      Button_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);

      --  Init value
      M1_Step_GPIO.Clear;
      M2_Step_GPIO.Clear;

      --  Motors are disabled at init
      Not_Enable_GPIO.Set;

      -- PWM --

      Configure (This          => PWM,
                 Scale         => PWM_Scale,
                 Sticky        => False,
                 Reset_To_Zero => True,
                 Deglitch      => True);

      Set_Compare (PWM, 0, PWM_Period);
      Set_Compare (PWM, Pen_Cmp_ID, Pen_High_Duty);

      Set_Count (PWM, 0);

      for X in 1 .. 3 loop
         Unleashed.LEDs.Enable;
         delay until Clock + Milliseconds (300);
         Unleashed.LEDs.Disable;
         delay until Clock + Milliseconds (300);
      end loop;
   end Initialize;

   ---------------
   -- Lower_Pen --
   ---------------

   procedure Lower_Pen is
   begin
      Set_Compare (PWM, Pen_Cmp_ID, Pen_Low_Duty);
   end Lower_Pen;

   ---------------
   -- Raise_Pen --
   ---------------

   procedure Raise_Pen is
   begin
      Set_Compare (PWM, Pen_Cmp_ID, Pen_High_Duty);
   end Raise_Pen;

   ---------------------
   -- Enable_Steppers --
   ---------------------

   procedure Enable_Steppers is
   begin
      Not_Enable_GPIO.Clear;
      Enable_Continous (PWM);
   end Enable_Steppers;

   procedure Disable_Steppers is
   begin
      Not_Enable_GPIO.Set;
      Disable (PWM);
   end Disable_Steppers;

   ------------
   -- Step_X --
   ------------

   function Step_X return not null HAL.GPIO.Any_GPIO_Point
   is (M1_Step_GPIO'Access);

   ------------
   -- Step_Y --
   ------------

   function Step_Y return not null HAL.GPIO.Any_GPIO_Point
   is (M2_Step_GPIO'Access);

   -----------
   -- Dir_X --
   -----------

   function Dir_X return not null HAL.GPIO.Any_GPIO_Point
   is (M1_Dir_GPIO'Access);

   -----------
   -- Dir_Y --
   -----------

   function Dir_Y return not null HAL.GPIO.Any_GPIO_Point
   is (M2_Dir_GPIO'Access);

   -------------
   -- Limit_X --
   -------------

   function Limit_X return Boolean
   is (not X_Limit_GPIO.Set);

   -------------
   -- Limit_Y --
   -------------

   function Limit_Y return Boolean
   is (not Y_Limit_GPIO.Set);

   --------------------------
   -- Start_Button_Pressed --
   --------------------------

   function Start_Button_Pressed return Boolean
   is (not Button_GPIO.Set);

   ---------
   -- Get --
   ---------

   procedure Get (C : out Character)
   is
   begin
      C := ASCII.CR;
   end Get;

   ---------
   -- Put --
   ---------

   procedure Put (Str : String) is
      pragma Unreferenced (Str);
   begin
      null;
   end Put;

   --------------
   -- Put_Line --
   --------------

   procedure Put_Line (Str : String) is
      pragma Unreferenced (Str);
   begin
      null;
   end Put_Line;

end Hardware_Interface;
