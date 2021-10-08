--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.FLEXRAMECC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype FLEXRAMECC_CR_ONE_Field is Interfaces.SAM.Bit;
   subtype FLEXRAMECC_CR_TEST_MODE_RD_Field is Interfaces.SAM.Bit;
   subtype FLEXRAMECC_CR_TEST_MODE_WR_Field is Interfaces.SAM.Bit;
   subtype FLEXRAMECC_CR_RST_FIX_CPT_Field is Interfaces.SAM.Bit;
   subtype FLEXRAMECC_CR_RST_NOFIX_CPT_Field is Interfaces.SAM.Bit;

   --  FLEXRAMECC Control Register
   type FLEXRAMECC_CR_Register is record
      --  Shall be always write at '1'
      ONE           : FLEXRAMECC_CR_ONE_Field := 16#0#;
      --  test mode of ECC protection - read mode
      TEST_MODE_RD  : FLEXRAMECC_CR_TEST_MODE_RD_Field := 16#0#;
      --  test mode of ECC protection - write mode
      TEST_MODE_WR  : FLEXRAMECC_CR_TEST_MODE_WR_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : Interfaces.SAM.Bit := 16#0#;
      --  reset the fixable error counter
      RST_FIX_CPT   : FLEXRAMECC_CR_RST_FIX_CPT_Field := 16#0#;
      --  reset the un-fixable error counter
      RST_NOFIX_CPT : FLEXRAMECC_CR_RST_NOFIX_CPT_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXRAMECC_CR_Register use record
      ONE           at 0 range 0 .. 0;
      TEST_MODE_RD  at 0 range 1 .. 1;
      TEST_MODE_WR  at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      RST_FIX_CPT   at 0 range 4 .. 4;
      RST_NOFIX_CPT at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FLEXRAMECC_TESTCB1_TCB1_Field is Interfaces.SAM.Byte;

   --  FLEXRAMECC Test mode register 1
   type FLEXRAMECC_TESTCB1_Register is record
      --  Test Check Bit
      TCB1          : FLEXRAMECC_TESTCB1_TCB1_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXRAMECC_TESTCB1_Register use record
      TCB1          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXRAMECC_SR_MEM_FIX_Field is Interfaces.SAM.Bit;
   subtype FLEXRAMECC_SR_CPT_FIX_Field is Interfaces.SAM.UInt5;
   subtype FLEXRAMECC_SR_OVER_FIX_Field is Interfaces.SAM.Bit;
   subtype FLEXRAMECC_SR_MEM_NOFIX_Field is Interfaces.SAM.Bit;
   subtype FLEXRAMECC_SR_CPT_NOFIX_Field is Interfaces.SAM.UInt5;
   subtype FLEXRAMECC_SR_OVER_NOFIX_Field is Interfaces.SAM.Bit;
   subtype FLEXRAMECC_SR_HES_Field is Interfaces.SAM.UInt3;
   subtype FLEXRAMECC_SR_TYPE_Field is Interfaces.SAM.Bit;

   --  FLEXRAMECC Status register
   type FLEXRAMECC_SR_Register is record
      --  Read-only. Fixable error status
      MEM_FIX        : FLEXRAMECC_SR_MEM_FIX_Field;
      --  unspecified
      Reserved_1_1   : Interfaces.SAM.Bit;
      --  Read-only. 5 bits counter
      CPT_FIX        : FLEXRAMECC_SR_CPT_FIX_Field;
      --  Read-only. counter overflow
      OVER_FIX       : FLEXRAMECC_SR_OVER_FIX_Field;
      --  Read-only. Un-fixable error status
      MEM_NOFIX      : FLEXRAMECC_SR_MEM_NOFIX_Field;
      --  unspecified
      Reserved_9_9   : Interfaces.SAM.Bit;
      --  Read-only. 5 bits counter
      CPT_NOFIX      : FLEXRAMECC_SR_CPT_NOFIX_Field;
      --  Read-only. counter overflow
      OVER_NOFIX     : FLEXRAMECC_SR_OVER_NOFIX_Field;
      --  unspecified
      Reserved_16_23 : Interfaces.SAM.Byte;
      --  Read-only. Hardware Error Size
      HES            : FLEXRAMECC_SR_HES_Field;
      --  Read-only. write or read access
      TYPE_k         : FLEXRAMECC_SR_TYPE_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.SAM.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXRAMECC_SR_Register use record
      MEM_FIX        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CPT_FIX        at 0 range 2 .. 6;
      OVER_FIX       at 0 range 7 .. 7;
      MEM_NOFIX      at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CPT_NOFIX      at 0 range 10 .. 14;
      OVER_NOFIX     at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      HES            at 0 range 24 .. 26;
      TYPE_k         at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype FLEXRAMECC_IER_MEM_FIX_Field is Interfaces.SAM.Bit;
   subtype FLEXRAMECC_IER_MEM_NOFIX_Field is Interfaces.SAM.Bit;

   --  FLEXRAMECC Interrupt Enable Register
   type FLEXRAMECC_IER_Register is record
      --  Write-only. Fixable error
      MEM_FIX       : FLEXRAMECC_IER_MEM_FIX_Field := 16#0#;
      --  Write-only. Un-fixable error
      MEM_NOFIX     : FLEXRAMECC_IER_MEM_NOFIX_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXRAMECC_IER_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FLEXRAMECC_IDR_MEM_FIX_Field is Interfaces.SAM.Bit;
   subtype FLEXRAMECC_IDR_MEM_NOFIX_Field is Interfaces.SAM.Bit;

   --  FLEXRAMECC Interrupt Disable Register
   type FLEXRAMECC_IDR_Register is record
      --  Write-only. fixable error
      MEM_FIX       : FLEXRAMECC_IDR_MEM_FIX_Field := 16#0#;
      --  Write-only. un-fixable error
      MEM_NOFIX     : FLEXRAMECC_IDR_MEM_NOFIX_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXRAMECC_IDR_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FLEXRAMECC_IMR_MEM_FIX_Field is Interfaces.SAM.Bit;
   subtype FLEXRAMECC_IMR_MEM_NOFIX_Field is Interfaces.SAM.Bit;

   --  FLEXRAMECC Interrupt Mask Register
   type FLEXRAMECC_IMR_Register is record
      --  Read-only. fixable error
      MEM_FIX       : FLEXRAMECC_IMR_MEM_FIX_Field;
      --  Read-only. un-fixable error
      MEM_NOFIX     : FLEXRAMECC_IMR_MEM_NOFIX_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXRAMECC_IMR_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FLEXRAMECC
   type FLEXRAMECC_Peripheral is record
      --  FLEXRAMECC Control Register
      CR      : aliased FLEXRAMECC_CR_Register;
      --  FLEXRAMECC Test mode register 1
      TESTCB1 : aliased FLEXRAMECC_TESTCB1_Register;
      --  FLEXRAMECC Status register
      SR      : aliased FLEXRAMECC_SR_Register;
      --  FLEXRAMECC Interrupt Enable Register
      IER     : aliased FLEXRAMECC_IER_Register;
      --  FLEXRAMECC Interrupt Disable Register
      IDR     : aliased FLEXRAMECC_IDR_Register;
      --  FLEXRAMECC Interrupt Mask Register
      IMR     : aliased FLEXRAMECC_IMR_Register;
      --  FLEXRAMECC Fail address register
      FAILAR  : aliased Interfaces.SAM.UInt32;
   end record
     with Volatile;

   for FLEXRAMECC_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      TESTCB1 at 16#4# range 0 .. 31;
      SR      at 16#C# range 0 .. 31;
      IER     at 16#10# range 0 .. 31;
      IDR     at 16#14# range 0 .. 31;
      IMR     at 16#18# range 0 .. 31;
      FAILAR  at 16#1C# range 0 .. 31;
   end record;

   --  FLEXRAMECC
   FLEXRAMECC_Periph : aliased FLEXRAMECC_Peripheral
     with Import, Address => FLEXRAMECC_Base;

end Interfaces.SAM.FLEXRAMECC;
