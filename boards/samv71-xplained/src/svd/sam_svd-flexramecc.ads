pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.FLEXRAMECC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  FLEXRAMECC Control Register
   type FLEXRAMECC_CR_Register is record
      --  Shall be always write at '1'
      ONE           : Boolean := False;
      --  test mode of ECC protection - read mode
      TEST_MODE_RD  : Boolean := False;
      --  test mode of ECC protection - write mode
      TEST_MODE_WR  : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  reset the fixable error counter
      RST_FIX_CPT   : Boolean := False;
      --  reset the un-fixable error counter
      RST_NOFIX_CPT : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
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

   subtype FLEXRAMECC_TESTCB1_TCB1_Field is HAL.UInt8;

   --  FLEXRAMECC Test mode register 1
   type FLEXRAMECC_TESTCB1_Register is record
      --  Test Check Bit
      TCB1          : FLEXRAMECC_TESTCB1_TCB1_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXRAMECC_TESTCB1_Register use record
      TCB1          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXRAMECC_SR_CPT_FIX_Field is HAL.UInt5;
   subtype FLEXRAMECC_SR_CPT_NOFIX_Field is HAL.UInt5;
   subtype FLEXRAMECC_SR_HES_Field is HAL.UInt3;

   --  FLEXRAMECC Status register
   type FLEXRAMECC_SR_Register is record
      --  Read-only. Fixable error status
      MEM_FIX        : Boolean;
      --  unspecified
      Reserved_1_1   : HAL.Bit;
      --  Read-only. 5 bits counter
      CPT_FIX        : FLEXRAMECC_SR_CPT_FIX_Field;
      --  Read-only. counter overflow
      OVER_FIX       : Boolean;
      --  Read-only. Un-fixable error status
      MEM_NOFIX      : Boolean;
      --  unspecified
      Reserved_9_9   : HAL.Bit;
      --  Read-only. 5 bits counter
      CPT_NOFIX      : FLEXRAMECC_SR_CPT_NOFIX_Field;
      --  Read-only. counter overflow
      OVER_NOFIX     : Boolean;
      --  unspecified
      Reserved_16_23 : HAL.UInt8;
      --  Read-only. Hardware Error Size
      HES            : FLEXRAMECC_SR_HES_Field;
      --  Read-only. write or read access
      TYPE_k         : Boolean;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
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

   --  FLEXRAMECC Interrupt Enable Register
   type FLEXRAMECC_IER_Register is record
      --  Write-only. Fixable error
      MEM_FIX       : Boolean := False;
      --  Write-only. Un-fixable error
      MEM_NOFIX     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXRAMECC_IER_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  FLEXRAMECC Interrupt Disable Register
   type FLEXRAMECC_IDR_Register is record
      --  Write-only. fixable error
      MEM_FIX       : Boolean := False;
      --  Write-only. un-fixable error
      MEM_NOFIX     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXRAMECC_IDR_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  FLEXRAMECC Interrupt Mask Register
   type FLEXRAMECC_IMR_Register is record
      --  Read-only. fixable error
      MEM_FIX       : Boolean;
      --  Read-only. un-fixable error
      MEM_NOFIX     : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
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
      FAILAR  : aliased HAL.UInt32;
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

end SAM_SVD.FLEXRAMECC;
