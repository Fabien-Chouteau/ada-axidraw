--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.SysTick is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Enables the counter
   type CSR_ENABLESelect is
     (--  counter disabled
      VALUE_0,
      --  counter enabled
      VALUE_1)
     with Size => 1;
   for CSR_ENABLESelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Enables SysTick exception request
   type CSR_TICKINTSelect is
     (--  counting down to 0 does not assert the SysTick exception request
      VALUE_0,
      --  counting down to 0 asserts the SysTick exception request
      VALUE_1)
     with Size => 1;
   for CSR_TICKINTSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Indicates the clock source
   type CSR_CLKSOURCESelect is
     (--  external clock
      VALUE_0,
      --  processor clock
      VALUE_1)
     with Size => 1;
   for CSR_CLKSOURCESelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   subtype SysTick_CSR_COUNTFLAG_Field is Interfaces.SAM.Bit;

   --  Control and Status Register
   type SysTick_CSR_Register is record
      --  Enables the counter
      ENABLE         : CSR_ENABLESelect := Interfaces.SAM.SysTick.VALUE_0;
      --  Enables SysTick exception request
      TICKINT        : CSR_TICKINTSelect := Interfaces.SAM.SysTick.VALUE_0;
      --  Indicates the clock source
      CLKSOURCE      : CSR_CLKSOURCESelect := Interfaces.SAM.SysTick.VALUE_1;
      --  unspecified
      Reserved_3_15  : Interfaces.SAM.UInt13 := 16#0#;
      --  Returns 1 if timer counted to 0 since last time this was read
      COUNTFLAG      : SysTick_CSR_COUNTFLAG_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.SAM.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysTick_CSR_Register use record
      ENABLE         at 0 range 0 .. 0;
      TICKINT        at 0 range 1 .. 1;
      CLKSOURCE      at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      COUNTFLAG      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype SysTick_RVR_RELOAD_Field is Interfaces.SAM.UInt24;

   --  Reload Value Register
   type SysTick_RVR_Register is record
      --  Value to load into the SysTick Current Value Register when the
      --  counter reaches 0
      RELOAD         : SysTick_RVR_RELOAD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysTick_RVR_Register use record
      RELOAD         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SysTick_CVR_CURRENT_Field is Interfaces.SAM.UInt24;

   --  Current Value Register
   type SysTick_CVR_Register is record
      --  Current value at the time the register is accessed
      CURRENT        : SysTick_CVR_CURRENT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysTick_CVR_Register use record
      CURRENT        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SysTick_CALIB_TENMS_Field is Interfaces.SAM.UInt24;

   --  Indicates whether the TENMS value is exact
   type CALIB_SKEWSelect is
     (--  10ms calibration value is exact
      VALUE_0,
      --  10ms calibration value is inexact, because of the clock frequency
      VALUE_1)
     with Size => 1;
   for CALIB_SKEWSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Indicates whether the device provides a reference clock to the processor
   type CALIB_NOREFSelect is
     (--  The reference clock is provided
      VALUE_0,
      --  The reference clock is not provided
      VALUE_1)
     with Size => 1;
   for CALIB_NOREFSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Calibration Value Register
   type SysTick_CALIB_Register is record
      --  Read-only. Reload value to use for 10ms timing
      TENMS          : SysTick_CALIB_TENMS_Field;
      --  unspecified
      Reserved_24_29 : Interfaces.SAM.UInt6;
      --  Read-only. Indicates whether the TENMS value is exact
      SKEW           : CALIB_SKEWSelect;
      --  Read-only. Indicates whether the device provides a reference clock to
      --  the processor
      NOREF          : CALIB_NOREFSelect;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysTick_CALIB_Register use record
      TENMS          at 0 range 0 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      SKEW           at 0 range 30 .. 30;
      NOREF          at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System timer
   type SysTick_Peripheral is record
      --  Control and Status Register
      CSR   : aliased SysTick_CSR_Register;
      --  Reload Value Register
      RVR   : aliased SysTick_RVR_Register;
      --  Current Value Register
      CVR   : aliased SysTick_CVR_Register;
      --  Calibration Value Register
      CALIB : aliased SysTick_CALIB_Register;
   end record
     with Volatile;

   for SysTick_Peripheral use record
      CSR   at 16#0# range 0 .. 31;
      RVR   at 16#4# range 0 .. 31;
      CVR   at 16#8# range 0 .. 31;
      CALIB at 16#C# range 0 .. 31;
   end record;

   --  System timer
   SysTick_Periph : aliased SysTick_Peripheral
     with Import, Address => SysTick_Base;

end Interfaces.SAM.SysTick;
