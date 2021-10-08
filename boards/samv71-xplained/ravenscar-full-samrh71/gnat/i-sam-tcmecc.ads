--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.TCMECC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype TCMECC_CR_ENABLE_Field is Interfaces.SAM.Bit;
   subtype TCMECC_CR_TEST_MODE_RD_Field is Interfaces.SAM.Bit;
   subtype TCMECC_CR_TEST_MODE_WR_Field is Interfaces.SAM.Bit;
   subtype TCMECC_CR_RST_FIX_CPT_Field is Interfaces.SAM.Bit;
   subtype TCMECC_CR_RST_NOFIX_CPT_Field is Interfaces.SAM.Bit;

   --  TCMECC Control Register
   type TCMECC_CR_Register is record
      --  ECC protection enable
      ENABLE        : TCMECC_CR_ENABLE_Field := 16#0#;
      --  test mode of ECC protection - read mode
      TEST_MODE_RD  : TCMECC_CR_TEST_MODE_RD_Field := 16#0#;
      --  test mode of ECC protection - write mode
      TEST_MODE_WR  : TCMECC_CR_TEST_MODE_WR_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : Interfaces.SAM.Bit := 16#0#;
      --  reset the fixable error counter
      RST_FIX_CPT   : TCMECC_CR_RST_FIX_CPT_Field := 16#0#;
      --  reset the un-fixable error counter
      RST_NOFIX_CPT : TCMECC_CR_RST_NOFIX_CPT_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCMECC_CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      TEST_MODE_RD  at 0 range 1 .. 1;
      TEST_MODE_WR  at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      RST_FIX_CPT   at 0 range 4 .. 4;
      RST_NOFIX_CPT at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  TCMECC_TESTCB1_TCB array element
   subtype TCMECC_TESTCB1_TCB_Element is Interfaces.SAM.Byte;

   --  TCMECC_TESTCB1_TCB array
   type TCMECC_TESTCB1_TCB_Field_Array is array (1 .. 2)
     of TCMECC_TESTCB1_TCB_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for TCMECC_TESTCB1_TCB
   type TCMECC_TESTCB1_TCB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCB as a value
            Val : Interfaces.SAM.UInt16;
         when True =>
            --  TCB as an array
            Arr : TCMECC_TESTCB1_TCB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for TCMECC_TESTCB1_TCB_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  TCMECC Test mode register 1
   type TCMECC_TESTCB1_Register is record
      --  test check bit (8 bit)
      TCB            : TCMECC_TESTCB1_TCB_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCMECC_TESTCB1_Register use record
      TCB            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TCMECC_SR_MEM_FIX_I_Field is Interfaces.SAM.Bit;
   subtype TCMECC_SR_MEM_FIX_D_Field is Interfaces.SAM.Bit;
   subtype TCMECC_SR_CPT_FIX_Field is Interfaces.SAM.UInt5;
   subtype TCMECC_SR_OVER_FIX_Field is Interfaces.SAM.Bit;
   subtype TCMECC_SR_MEM_NOFIX_I_Field is Interfaces.SAM.Bit;
   subtype TCMECC_SR_MEM_NOFIX_D_Field is Interfaces.SAM.Bit;
   subtype TCMECC_SR_CPT_NOFIX_Field is Interfaces.SAM.UInt5;
   subtype TCMECC_SR_OVER_NOFIX_Field is Interfaces.SAM.Bit;
   subtype TCMECC_SR_HES_Field is Interfaces.SAM.UInt3;
   subtype TCMECC_SR_ONE_Field is Interfaces.SAM.Bit;
   subtype TCMECC_SR_MEM_ID_I_Field is Interfaces.SAM.Bit;
   subtype TCMECC_SR_MEM_ID_D_Field is Interfaces.SAM.Bit;

   --  TCMECC Status register
   type TCMECC_SR_Register is record
      --  Read-only. Fixable error status in instruction memory
      MEM_FIX_I      : TCMECC_SR_MEM_FIX_I_Field;
      --  Read-only. Fixable error status in data memory
      MEM_FIX_D      : TCMECC_SR_MEM_FIX_D_Field;
      --  Read-only. 5 bits counter
      CPT_FIX        : TCMECC_SR_CPT_FIX_Field;
      --  Read-only. counter overflow
      OVER_FIX       : TCMECC_SR_OVER_FIX_Field;
      --  Read-only. Un-fixable error status in instruction memory
      MEM_NOFIX_I    : TCMECC_SR_MEM_NOFIX_I_Field;
      --  Read-only. Un-fixable error status in data memory
      MEM_NOFIX_D    : TCMECC_SR_MEM_NOFIX_D_Field;
      --  Read-only. 5 bits counter
      CPT_NOFIX      : TCMECC_SR_CPT_NOFIX_Field;
      --  Read-only. counter overflow
      OVER_NOFIX     : TCMECC_SR_OVER_NOFIX_Field;
      --  unspecified
      Reserved_16_23 : Interfaces.SAM.Byte;
      --  Read-only. Hardware Error Size
      HES            : TCMECC_SR_HES_Field;
      --  Read-only. one
      ONE            : TCMECC_SR_ONE_Field;
      --  Read-only. memory identification number
      MEM_ID_I       : TCMECC_SR_MEM_ID_I_Field;
      --  Read-only. memory identification number
      MEM_ID_D       : TCMECC_SR_MEM_ID_D_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCMECC_SR_Register use record
      MEM_FIX_I      at 0 range 0 .. 0;
      MEM_FIX_D      at 0 range 1 .. 1;
      CPT_FIX        at 0 range 2 .. 6;
      OVER_FIX       at 0 range 7 .. 7;
      MEM_NOFIX_I    at 0 range 8 .. 8;
      MEM_NOFIX_D    at 0 range 9 .. 9;
      CPT_NOFIX      at 0 range 10 .. 14;
      OVER_NOFIX     at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      HES            at 0 range 24 .. 26;
      ONE            at 0 range 27 .. 27;
      MEM_ID_I       at 0 range 28 .. 28;
      MEM_ID_D       at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TCMECC_IER_MEM_FIX_I_Field is Interfaces.SAM.Bit;
   subtype TCMECC_IER_MEM_NOFIX_I_Field is Interfaces.SAM.Bit;
   subtype TCMECC_IER_MEM_FIX_D_Field is Interfaces.SAM.Bit;
   subtype TCMECC_IER_MEM_NOFIX_D_Field is Interfaces.SAM.Bit;

   --  TCMECC Interrupt Enable Register
   type TCMECC_IER_Register is record
      --  Write-only. Fixable error on instruction
      MEM_FIX_I     : TCMECC_IER_MEM_FIX_I_Field := 16#0#;
      --  Write-only. Un-fixable error on instruction
      MEM_NOFIX_I   : TCMECC_IER_MEM_NOFIX_I_Field := 16#0#;
      --  Write-only. Fixable error on data
      MEM_FIX_D     : TCMECC_IER_MEM_FIX_D_Field := 16#0#;
      --  Write-only. Un-fixable error on data
      MEM_NOFIX_D   : TCMECC_IER_MEM_NOFIX_D_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCMECC_IER_Register use record
      MEM_FIX_I     at 0 range 0 .. 0;
      MEM_NOFIX_I   at 0 range 1 .. 1;
      MEM_FIX_D     at 0 range 2 .. 2;
      MEM_NOFIX_D   at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype TCMECC_IDR_MEM_FIX_I_Field is Interfaces.SAM.Bit;
   subtype TCMECC_IDR_MEM_NOFIX_I_Field is Interfaces.SAM.Bit;
   subtype TCMECC_IDR_MEM_FIX_D_Field is Interfaces.SAM.Bit;
   subtype TCMECC_IDR_MEM_NOFIX_D_Field is Interfaces.SAM.Bit;

   --  TCMECC Interrupt Disable Register
   type TCMECC_IDR_Register is record
      --  Write-only. fixable error on instruction
      MEM_FIX_I     : TCMECC_IDR_MEM_FIX_I_Field := 16#0#;
      --  Write-only. un-fixable error on instruction
      MEM_NOFIX_I   : TCMECC_IDR_MEM_NOFIX_I_Field := 16#0#;
      --  Write-only. fixable error on data
      MEM_FIX_D     : TCMECC_IDR_MEM_FIX_D_Field := 16#0#;
      --  Write-only. un-fixable error on data
      MEM_NOFIX_D   : TCMECC_IDR_MEM_NOFIX_D_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCMECC_IDR_Register use record
      MEM_FIX_I     at 0 range 0 .. 0;
      MEM_NOFIX_I   at 0 range 1 .. 1;
      MEM_FIX_D     at 0 range 2 .. 2;
      MEM_NOFIX_D   at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype TCMECC_IMR_MEM_FIX_I_Field is Interfaces.SAM.Bit;
   subtype TCMECC_IMR_MEM_NOFIX_I_Field is Interfaces.SAM.Bit;
   subtype TCMECC_IMR_MEM_FIX_D_Field is Interfaces.SAM.Bit;
   subtype TCMECC_IMR_MEM_NOFIX_D_Field is Interfaces.SAM.Bit;

   --  TCMECC Interrupt Mask Register
   type TCMECC_IMR_Register is record
      --  Read-only. fixable error on instruction
      MEM_FIX_I     : TCMECC_IMR_MEM_FIX_I_Field;
      --  Read-only. un-fixable error on instruction
      MEM_NOFIX_I   : TCMECC_IMR_MEM_NOFIX_I_Field;
      --  Read-only. fixable error on data
      MEM_FIX_D     : TCMECC_IMR_MEM_FIX_D_Field;
      --  Read-only. un-fixable error on data
      MEM_NOFIX_D   : TCMECC_IMR_MEM_NOFIX_D_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCMECC_IMR_Register use record
      MEM_FIX_I     at 0 range 0 .. 0;
      MEM_NOFIX_I   at 0 range 1 .. 1;
      MEM_FIX_D     at 0 range 2 .. 2;
      MEM_NOFIX_D   at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  HECC
   type TCMECC_Peripheral is record
      --  TCMECC Control Register
      CR      : aliased TCMECC_CR_Register;
      --  TCMECC Test mode register 1
      TESTCB1 : aliased TCMECC_TESTCB1_Register;
      --  TCMECC Status register
      SR      : aliased TCMECC_SR_Register;
      --  TCMECC Interrupt Enable Register
      IER     : aliased TCMECC_IER_Register;
      --  TCMECC Interrupt Disable Register
      IDR     : aliased TCMECC_IDR_Register;
      --  TCMECC Interrupt Mask Register
      IMR     : aliased TCMECC_IMR_Register;
      --  TCMECC Fail address register
      FAILAR  : aliased Interfaces.SAM.UInt32;
      --  TCMECC Fail address register data
      FAILARD : aliased Interfaces.SAM.UInt32;
   end record
     with Volatile;

   for TCMECC_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      TESTCB1 at 16#4# range 0 .. 31;
      SR      at 16#C# range 0 .. 31;
      IER     at 16#10# range 0 .. 31;
      IDR     at 16#14# range 0 .. 31;
      IMR     at 16#18# range 0 .. 31;
      FAILAR  at 16#1C# range 0 .. 31;
      FAILARD at 16#20# range 0 .. 31;
   end record;

   --  HECC
   TCMECC_Periph : aliased TCMECC_Peripheral
     with Import, Address => TCMECC_Base;

end Interfaces.SAM.TCMECC;
