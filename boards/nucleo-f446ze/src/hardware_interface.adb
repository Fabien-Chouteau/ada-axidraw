with Coms;

with STM32.Device; use STM32.Device;
with STM32.GPIO; use STM32.GPIO;
with STM32.Timers;
with STM32.PWM; use STM32.PWM;

package body Hardware_Interface is

   M1_Step_GPIO    : GPIO_Point renames PF15; -- Arduino: D2
   M2_Step_GPIO    : GPIO_Point renames PF14; -- Arduino: D4

   M1_Dir_GPIO     : GPIO_Point renames PE11; -- Arduino: D5
   M2_Dir_GPIO     : GPIO_Point renames PF13; -- Arduino: D7

   Not_Enable_GPIO : GPIO_Point renames PF12; -- Arduino: D8

   Limit_X_GPIO    : GPIO_Point renames PG9;  -- Arduino: D0
   Limit_Y_GPIO    : GPIO_Point renames PG14; -- Arduino: D1

   Start_GPIO      : GPIO_Point renames PA7;  -- Arduino: D11

   -- PWM --

   PWM_Pin     : STM32.GPIO.GPIO_Point         renames STM32.Device.PD14; -- Arduino: D10
   PWM_Pin_AF  : STM32.GPIO_Alternate_Function renames STM32.Device.GPIO_AF_TIM4_2;

   PWM_Timer   : STM32.Timers.Timer            renames STM32.Device.Timer_4;
   PWM_Channel : constant STM32.Timers.Timer_Channel := STM32.Timers.Channel_3;

   PWM_Frequency : constant := 20; -- Hertz
   Modulator     : STM32.PWM.PWM_Modulator;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
      Configuration : GPIO_Port_Configuration;
   begin
      Configuration := (Mode        => Mode_Out,
                        Resistors   => Pull_Up,
                        Output_Type => Push_Pull,
                        Speed       => Speed_50MHz);

      Enable_Clock (GPIO_Points'(M1_Step_GPIO,
                                 M2_Step_GPIO,
                                 M1_Dir_GPIO,
                                 M2_Dir_GPIO,
                                 Not_Enable_GPIO));

      Configure_IO (GPIO_Points'(M1_Step_GPIO,
                                 M2_Step_GPIO,
                                 M1_Dir_GPIO,
                                 M2_Dir_GPIO,
                                 Not_Enable_GPIO),
                    Configuration);

      --  Init value
      M1_Step_GPIO.Clear;
      M2_Step_GPIO.Clear;

      --  Motors are disabled at init
      Not_Enable_GPIO.Set;

      -- PWM --

      Configure_PWM_Timer (PWM_Timer'Access, PWM_Frequency);

      Modulator.Attach_PWM_Channel
        (PWM_Timer'Access,
         PWM_Channel,
         PWM_Pin,
         PWM_Pin_AF);
      Modulator.Enable_Output;
      Raise_Pen;
      Modulator.Disable_Output;

      -- Limit switches --

      Configuration := (Mode        => Mode_In,
                        Resistors   => Pull_Up);

      Enable_Clock (GPIO_Points'(Limit_X_GPIO, Limit_Y_GPIO, Start_GPIO));

      Configure_IO (GPIO_Points'(Limit_X_GPIO, Limit_Y_GPIO, Start_GPIO),
                    Configuration);

      -- Coms --
      Coms.Initalize;

   end Initialize;

   ---------------
   -- Lower_Pen --
   ---------------

   procedure Lower_Pen is
   begin
      Modulator.Set_Duty_Time (700);

--        --  Give some time for the servo to move to its target position. We cannot
--        --  use Ada.Real_Time here because this procedure in called in a timing
--        --  event.
--        for Cnt in 1 .. 10_000_000 loop
--           null;
--        end loop;

   end Lower_Pen;

   ---------------
   -- Raise_Pen --
   ---------------

   procedure Raise_Pen is
   begin
      Modulator.Set_Duty_Time (2400);

--        --  Give some time for the servo to move to its target position. We cannot
--        --  use Ada.Real_Time here because this procedure in called in a timing
--        --  event.
--        for Cnt in 1 .. 10_000_000 loop
--           null;
--        end loop;
   end Raise_Pen;

   ---------------------
   -- Enable_Steppers --
   ---------------------

   procedure Enable_Steppers is
   begin
      Not_Enable_GPIO.Clear;
      Modulator.Enable_Output;
   end Enable_Steppers;

   procedure Disable_Steppers is
   begin
      Not_Enable_GPIO.Set;
      Modulator.Disable_Output;
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
   is (not Limit_X_GPIO.Set);

   -------------
   -- Limit_Y --
   -------------

   function Limit_Y return Boolean
   is (not Limit_Y_GPIO.Set);

   --------------------------
   -- Start_Button_Pressed --
   --------------------------

   function Start_Button_Pressed return Boolean
   is (not Start_GPIO.Set);

   ---------
   -- Get --
   ---------

   procedure Get (C : out Character)
   is
   begin
      Coms.UART_Get_Data_Blocking (C);
   end Get;

   ---------
   -- Put --
   ---------

   procedure Put (Str : String) is
   begin
      Coms.UART_Send_DMA_Data_Blocking (Str);
   end Put;

   --------------
   -- Put_Line --
   --------------

   procedure Put_Line (Str : String) is
   begin
      Coms.UART_Send_DMA_Data_Blocking (Str & ASCII.CR & ASCII.LF);
   end Put_Line;

end Hardware_Interface;
