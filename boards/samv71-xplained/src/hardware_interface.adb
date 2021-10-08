with Coms;

with SAM_SVD.PIO; use SAM_SVD.PIO;
with SAM_SVD.PMC; use SAM_SVD.PMC;
with SAM_SVD.PWM; use SAM_SVD.PWM;
with SAM.PIO; use SAM.PIO;

package body Hardware_Interface is

   M1_Step_GPIO    : aliased GPIO_Point (SAM.PIO.A, 08); -- Arduino: D2
   M2_Step_GPIO    : aliased GPIO_Point (SAM.PIO.A, 06); -- Arduino: D4

   M1_Dir_GPIO     : aliased GPIO_Point (SAM.PIO.A, 02); -- Arduino: D5
   M2_Dir_GPIO     : aliased GPIO_Point (SAM.PIO.A, 10); -- Arduino: D7

   Not_Enable_GPIO : aliased GPIO_Point (SAM.PIO.A, 03); -- Arduino: D8

   Limit_X_GPIO    : aliased GPIO_Point (SAM.PIO.A, 01);  -- Arduino: D0
   Limit_Y_GPIO    : aliased GPIO_Point (SAM.PIO.A, 04); -- Arduino: D1

   Start_GPIO      : aliased GPIO_Point (SAM.PIO.A, 00);  -- Arduino: D11

   -- PWM --

   PWM_PIN : aliased GPIO_Point (SAM.PIO.A, 5);  -- Arduino: D10 -> A5 (PWMC0_PWML1)
   -- AF function A

   PWM_Chan : constant := 1;

   PWM_Div : constant CMR_CPRESelect := MCK_DIV_128;
   PWM_Tick_Hz : constant := 390_000;
   PWM_Tick_Per_ms : constant := PWM_Tick_Hz / 1_000;
   PWM_Period : constant := 20 * PWM_Tick_Per_ms;
   --  20.0 ms

   PWM_Up_Duty : constant := 2 * PWM_Tick_Per_ms;
   --  2.0 ms

   PWM_Low_Duty : constant := 1 * PWM_Tick_Per_ms;
   --  1.0 ms

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
      PIOA_Id : constant := 10;
      --  PIOB_Id : constant := 11;
      --  PIOC_Id : constant := 12;
      --  PIOD_Id : constant := 16;
      --  PIOE_Id : constant := 17;
      --  PIOF_Id : constant := 34;
      --  PIOG_Id : constant := 35;

      PWM0_Id : constant := 31;
      --  PWM1_Id : constant := 32;

      PCR : PMC_PCR_Register;
   begin

      --  Enable PIO periph clocks
      PCR := SAM_SVD.PMC.PMC_Periph.PCR;
      PCR.PID := PIOA_Id;
      PCR.CMD := True;
      PCR.EN := True;
      SAM_SVD.PMC.PMC_Periph.PCR := PCR;

      M1_Step_GPIO.Set_Mode (HAL.GPIO.Output);
      M2_Step_GPIO.Set_Mode (HAL.GPIO.Output);
      M1_Dir_GPIO.Set_Mode (HAL.GPIO.Output);
      M2_Dir_GPIO.Set_Mode (HAL.GPIO.Output);
      Not_Enable_GPIO.Set_Mode (HAL.GPIO.Output);

      M1_Step_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);
      M2_Step_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);
      M1_Dir_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);
      M2_Dir_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);
      Not_Enable_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);

      --  Init value
      M1_Step_GPIO.Clear;
      M2_Step_GPIO.Clear;

      --  Motors are disabled at init
      Not_Enable_GPIO.Set;

      -- PWM --

      PWM_PIN.Set_Pull_Resistor (HAL.GPIO.Pull_Down);

      --  Select PIO function
      PIO_Periph.PIO_PIO_GROUP (PWM_PIN.Group).CFGR.FUNC := PERIPH_C;

      --  Enable PWM clock
      PCR := SAM_SVD.PMC.PMC_Periph.PCR;
      PCR.PID := PWM0_Id;
      PCR.CMD := True;
      PCR.EN := True;
      SAM_SVD.PMC.PMC_Periph.PCR := PCR;

      --  Channel mode register, CPRE -> Channel Prescaler
      PWM0_Periph.PWM_PWM_CH_NUM (PWM_Chan).CMR.CPRE := PWM_Div;

      --  Period register
      PWM0_Periph.PWM_PWM_CH_NUM (PWM_Chan).CPRD.CPRD := PWM_Period;

      --  Duty cycle register
      PWM0_Periph.PWM_PWM_CH_NUM (PWM_Chan).CDTY.CDTY := PWM_Up_Duty;

      --  Enable PWM output
      PWM0_Periph.ENA.CHID.Arr (PWM_Chan) := True;

      Disable_Steppers;

      -- Limit switches --

      Limit_Y_GPIO.Set_Mode (HAL.GPIO.Input);
      Limit_X_GPIO.Set_Mode (HAL.GPIO.Input);
      Start_GPIO.Set_Mode (HAL.GPIO.Input);

      Limit_Y_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);
      Limit_X_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);
      Start_GPIO.Set_Pull_Resistor (HAL.GPIO.Pull_Up);

      -- Coms --
      Coms.Initalize;

   end Initialize;

   ---------------
   -- Lower_Pen --
   ---------------

   procedure Lower_Pen is
   begin
      --  Duty cycle update register
      PWM0_Periph.PWM_PWM_CH_NUM (PWM_Chan).CDTYUPD.CDTYUPD := PWM_Low_Duty;
   end Lower_Pen;

   ---------------
   -- Raise_Pen --
   ---------------

   procedure Raise_Pen is
   begin
      --  Duty cycle update register
      PWM0_Periph.PWM_PWM_CH_NUM (PWM_Chan).CDTYUPD.CDTYUPD := PWM_Up_Duty;
   end Raise_Pen;

   ---------------------
   -- Enable_Steppers --
   ---------------------

   procedure Enable_Steppers is
   begin
      Not_Enable_GPIO.Clear;

      --  Disable override output to zero
      PWM0_Periph.OSCUPD.OSCUPL.Arr (PWM_Chan) := True;
   end Enable_Steppers;

   ----------------------
   -- Disable_Steppers --
   ----------------------

   procedure Disable_Steppers is
   begin
      Not_Enable_GPIO.Set;

      --  Override output to zero
      PWM0_Periph.OSSUPD.OSSUPL.Arr (PWM_Chan) := True;
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
