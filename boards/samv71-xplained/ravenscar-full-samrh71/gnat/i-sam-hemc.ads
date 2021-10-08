--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.HEMC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype HEMC_CR_NCS0_ZERO_Field is Interfaces.SAM.Bit;

   --  Bank Size
   type CR_NCS0_BANKSIZESelect is
     (--  8Kbytes
      Val_8KB,
      --  16Kbytes
      Val_16KB,
      --  32Kbytes
      Val_32KB,
      --  64Kbytes
      Val_64KB,
      --  128Kbytes
      Val_128KB,
      --  256Kbytes
      Val_256KB,
      --  512Kbytes
      Val_512KB,
      --  1Mbytes
      Val_1MB,
      --  2Mbytes
      Val_2MB,
      --  4Mbytes
      Val_4MB,
      --  8Mbytes
      Val_8MB,
      --  16Mbytes
      Val_16MB,
      --  32Mbytes
      Val_32MB,
      --  64Mbytes
      Val_64MB,
      --  128Mbytes
      Val_128MB,
      --  256Mbytes (Default)
      Val_256MB,
      --  512Mbytes
      Val_512MB,
      --  NOT_USED
      NOT_USED)
     with Size => 5;
   for CR_NCS0_BANKSIZESelect use
     (Val_8KB => 0,
      Val_16KB => 1,
      Val_32KB => 2,
      Val_64KB => 3,
      Val_128KB => 4,
      Val_256KB => 5,
      Val_512KB => 6,
      Val_1MB => 7,
      Val_2MB => 8,
      Val_4MB => 9,
      Val_8MB => 10,
      Val_16MB => 11,
      Val_32MB => 12,
      Val_64MB => 13,
      Val_128MB => 14,
      Val_256MB => 15,
      Val_512MB => 16,
      NOT_USED => 31);

   subtype HEMC_CR_NCS0_TYPE_Field is Interfaces.SAM.Bit;
   subtype HEMC_CR_NCS0_ADDBASE_Field is Interfaces.SAM.UInt18;
   subtype HEMC_CR_NCS0_WRITE_ECC_CONF_Field is Interfaces.SAM.Bit;
   subtype HEMC_CR_NCS0_ECC_ENABLE_Field is Interfaces.SAM.Bit;
   subtype HEMC_CR_NCS0_ECC12_ENABLE_Field is Interfaces.SAM.Bit;

   --  HEMC Control Register NCS 0
   type HEMC_CR_NCS0_Register is record
      --  fixed to 0
      ZERO           : HEMC_CR_NCS0_ZERO_Field := 16#0#;
      --  Bank Size
      BANKSIZE       : CR_NCS0_BANKSIZESelect := Interfaces.SAM.HEMC.Val_8KB;
      --  type of memory used
      TYPE_k         : HEMC_CR_NCS0_TYPE_Field := 16#0#;
      --  relative base address of NCS area
      ADDBASE        : HEMC_CR_NCS0_ADDBASE_Field := 16#0#;
      --  unspecified
      Reserved_25_28 : Interfaces.SAM.UInt4 := 16#0#;
      --  ECC Configuration Protection Enable
      WRITE_ECC_CONF : HEMC_CR_NCS0_WRITE_ECC_CONF_Field := 16#0#;
      --  ECC Protection Enable
      ECC_ENABLE     : HEMC_CR_NCS0_ECC_ENABLE_Field := 16#0#;
      --  BCH ECC Enable
      ECC12_ENABLE   : HEMC_CR_NCS0_ECC12_ENABLE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEMC_CR_NCS0_Register use record
      ZERO           at 0 range 0 .. 0;
      BANKSIZE       at 0 range 1 .. 5;
      TYPE_k         at 0 range 6 .. 6;
      ADDBASE        at 0 range 7 .. 24;
      Reserved_25_28 at 0 range 25 .. 28;
      WRITE_ECC_CONF at 0 range 29 .. 29;
      ECC_ENABLE     at 0 range 30 .. 30;
      ECC12_ENABLE   at 0 range 31 .. 31;
   end record;

   subtype CR_NCS_ZERO_Field is Interfaces.SAM.Bit;

   --  Bank Size
   type CR_NCS1_BANKSIZESelect is
     (--  8Kbytes
      Val_8KB,
      --  16Kbytes
      Val_16KB,
      --  32Kbytes
      Val_32KB,
      --  64Kbytes
      Val_64KB,
      --  128Kbytes
      Val_128KB,
      --  256Kbytes
      Val_256KB,
      --  512Kbytes
      Val_512KB,
      --  1Mbytes
      Val_1MB,
      --  2Mbytes
      Val_2MB,
      --  4Mbytes
      Val_4MB,
      --  8Mbytes
      Val_8MB,
      --  16Mbytes
      Val_16MB,
      --  32Mbytes
      Val_32MB,
      --  64Mbytes
      Val_64MB,
      --  128Mbytes
      Val_128MB,
      --  256Mbytes (Default)
      Val_256MB,
      --  512Mbytes
      Val_512MB,
      --  NOT_USED
      NOT_USED)
     with Size => 5;
   for CR_NCS1_BANKSIZESelect use
     (Val_8KB => 0,
      Val_16KB => 1,
      Val_32KB => 2,
      Val_64KB => 3,
      Val_128KB => 4,
      Val_256KB => 5,
      Val_512KB => 6,
      Val_1MB => 7,
      Val_2MB => 8,
      Val_4MB => 9,
      Val_8MB => 10,
      Val_16MB => 11,
      Val_32MB => 12,
      Val_64MB => 13,
      Val_128MB => 14,
      Val_256MB => 15,
      Val_512MB => 16,
      NOT_USED => 31);

   subtype CR_NCS_TYPE_Field is Interfaces.SAM.Bit;
   subtype CR_NCS_ADDBASE_Field is Interfaces.SAM.UInt18;
   subtype CR_NCS_ECC_ENABLE_Field is Interfaces.SAM.Bit;
   subtype CR_NCS_ECC12_ENABLE_Field is Interfaces.SAM.Bit;

   --  HEMC Control Register NCS 1
   type CR_NCS_Register is record
      --  fixed to 0
      ZERO           : CR_NCS_ZERO_Field := 16#0#;
      --  Bank Size
      BANKSIZE       : CR_NCS1_BANKSIZESelect := Interfaces.SAM.HEMC.Val_8KB;
      --  type of memory used
      TYPE_k         : CR_NCS_TYPE_Field := 16#0#;
      --  relative base address of NCS area
      ADDBASE        : CR_NCS_ADDBASE_Field := 16#0#;
      --  unspecified
      Reserved_25_29 : Interfaces.SAM.UInt5 := 16#0#;
      --  ECC Protection Enable
      ECC_ENABLE     : CR_NCS_ECC_ENABLE_Field := 16#0#;
      --  BCH ECC Enable
      ECC12_ENABLE   : CR_NCS_ECC12_ENABLE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_NCS_Register use record
      ZERO           at 0 range 0 .. 0;
      BANKSIZE       at 0 range 1 .. 5;
      TYPE_k         at 0 range 6 .. 6;
      ADDBASE        at 0 range 7 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      ECC_ENABLE     at 0 range 30 .. 30;
      ECC12_ENABLE   at 0 range 31 .. 31;
   end record;

   subtype HEMC_CTRL_POL_Field is Interfaces.SAM.Bit;

   --  HEMC Polarity Control register
   type HEMC_CTRL_Register is record
      --  External control buffer active polarity
      POL           : HEMC_CTRL_POL_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEMC_CTRL_Register use record
      POL           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype HEMC_CRP_NCS_MASTERNUMBER_Field is Interfaces.SAM.UInt16;
   subtype HEMC_CRP_NCS_SUPERUSER_Field is Interfaces.SAM.Bit;
   subtype HEMC_CRP_NCS_WR_Field is Interfaces.SAM.Bit;
   subtype HEMC_CRP_NCS_RD_Field is Interfaces.SAM.Bit;
   subtype HEMC_CRP_NCS_SPLITBANKSIZE_Field is Interfaces.SAM.UInt5;
   subtype HEMC_CRP_NCS_PROTECTZONE_Field is Interfaces.SAM.Bit;
   subtype HEMC_CRP_NCS_PROTECTON_Field is Interfaces.SAM.Bit;

   --  HEMC Control Register Protection NCS
   type HEMC_CRP_NCS_Register is record
      --  Master Number ID
      MASTERNUMBER   : HEMC_CRP_NCS_MASTERNUMBER_Field := 16#0#;
      --  User or Superuser access
      SUPERUSER      : HEMC_CRP_NCS_SUPERUSER_Field := 16#0#;
      --  Write Access
      WR             : HEMC_CRP_NCS_WR_Field := 16#0#;
      --  Read Access
      RD             : HEMC_CRP_NCS_RD_Field := 16#0#;
      --  bank size internal separation
      SPLITBANKSIZE  : HEMC_CRP_NCS_SPLITBANKSIZE_Field := 16#0#;
      --  select area protected
      PROTECTZONE    : HEMC_CRP_NCS_PROTECTZONE_Field := 16#0#;
      --  protection activation
      PROTECTON      : HEMC_CRP_NCS_PROTECTON_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.SAM.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEMC_CRP_NCS_Register use record
      MASTERNUMBER   at 0 range 0 .. 15;
      SUPERUSER      at 0 range 16 .. 16;
      WR             at 0 range 17 .. 17;
      RD             at 0 range 18 .. 18;
      SPLITBANKSIZE  at 0 range 19 .. 23;
      PROTECTZONE    at 0 range 24 .. 24;
      PROTECTON      at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  HEMC Control Register Protection NCS
   type HEMC_CRP_NCS_Registers is array (0 .. 5) of HEMC_CRP_NCS_Register;

   subtype HEMC_IER_OUTOFRANGE_Field is Interfaces.SAM.Bit;
   subtype HEMC_IER_RDERRORACCESS_Field is Interfaces.SAM.Bit;
   subtype HEMC_IER_WRERRORACCESS_Field is Interfaces.SAM.Bit;
   subtype HEMC_IER_USERERRORACCESS_Field is Interfaces.SAM.Bit;

   --  HEMC Interrupt Enable Register
   type HEMC_IER_Register is record
      --  unspecified
      Reserved_0_0    : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. out of range
      OUTOFRANGE      : HEMC_IER_OUTOFRANGE_Field := 16#0#;
      --  Write-only. read access error
      RDERRORACCESS   : HEMC_IER_RDERRORACCESS_Field := 16#0#;
      --  Write-only. write access error
      WRERRORACCESS   : HEMC_IER_WRERRORACCESS_Field := 16#0#;
      --  Write-only. user or superuser access error
      USERERRORACCESS : HEMC_IER_USERERRORACCESS_Field := 16#0#;
      --  unspecified
      Reserved_5_31   : Interfaces.SAM.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEMC_IER_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      OUTOFRANGE      at 0 range 1 .. 1;
      RDERRORACCESS   at 0 range 2 .. 2;
      WRERRORACCESS   at 0 range 3 .. 3;
      USERERRORACCESS at 0 range 4 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype HEMC_IDR_OUTOFRANGE_Field is Interfaces.SAM.Bit;
   subtype HEMC_IDR_RDERRORACCESS_Field is Interfaces.SAM.Bit;
   subtype HEMC_IDR_WRERRORACCESS_Field is Interfaces.SAM.Bit;
   subtype HEMC_IDR_USERERRORACCESS_Field is Interfaces.SAM.Bit;

   --  HEMC Interrupt Disable Register
   type HEMC_IDR_Register is record
      --  unspecified
      Reserved_0_0    : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. out of range
      OUTOFRANGE      : HEMC_IDR_OUTOFRANGE_Field := 16#0#;
      --  Write-only. read access error
      RDERRORACCESS   : HEMC_IDR_RDERRORACCESS_Field := 16#0#;
      --  Write-only. write access error
      WRERRORACCESS   : HEMC_IDR_WRERRORACCESS_Field := 16#0#;
      --  Write-only. user or superuser access error
      USERERRORACCESS : HEMC_IDR_USERERRORACCESS_Field := 16#0#;
      --  unspecified
      Reserved_5_31   : Interfaces.SAM.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEMC_IDR_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      OUTOFRANGE      at 0 range 1 .. 1;
      RDERRORACCESS   at 0 range 2 .. 2;
      WRERRORACCESS   at 0 range 3 .. 3;
      USERERRORACCESS at 0 range 4 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype HEMC_IMR_OUTOFRANGE_Field is Interfaces.SAM.Bit;
   subtype HEMC_IMR_RDERRORACCESS_Field is Interfaces.SAM.Bit;
   subtype HEMC_IMR_WRERRORACCESS_Field is Interfaces.SAM.Bit;
   subtype HEMC_IMR_USERERRORACCESS_Field is Interfaces.SAM.Bit;

   --  HEMC Interrupt Mask Register
   type HEMC_IMR_Register is record
      --  unspecified
      Reserved_0_0    : Interfaces.SAM.Bit;
      --  Read-only. out of range
      OUTOFRANGE      : HEMC_IMR_OUTOFRANGE_Field;
      --  Read-only. read access error
      RDERRORACCESS   : HEMC_IMR_RDERRORACCESS_Field;
      --  Read-only. write access error
      WRERRORACCESS   : HEMC_IMR_WRERRORACCESS_Field;
      --  Read-only. user or superuser access error
      USERERRORACCESS : HEMC_IMR_USERERRORACCESS_Field;
      --  unspecified
      Reserved_5_31   : Interfaces.SAM.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEMC_IMR_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      OUTOFRANGE      at 0 range 1 .. 1;
      RDERRORACCESS   at 0 range 2 .. 2;
      WRERRORACCESS   at 0 range 3 .. 3;
      USERERRORACCESS at 0 range 4 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype HEMC_ISR_OUTOFRANGE_Field is Interfaces.SAM.Bit;
   subtype HEMC_ISR_RDERRORACCESS_Field is Interfaces.SAM.Bit;
   subtype HEMC_ISR_WRERRORACCESS_Field is Interfaces.SAM.Bit;
   subtype HEMC_ISR_USERERRORACCESS_Field is Interfaces.SAM.Bit;

   --  HEMC Interrupt Status Register
   type HEMC_ISR_Register is record
      --  unspecified
      Reserved_0_0    : Interfaces.SAM.Bit;
      --  Read-only. out of range
      OUTOFRANGE      : HEMC_ISR_OUTOFRANGE_Field;
      --  Read-only. read access error
      RDERRORACCESS   : HEMC_ISR_RDERRORACCESS_Field;
      --  Read-only. Write access error
      WRERRORACCESS   : HEMC_ISR_WRERRORACCESS_Field;
      --  Read-only. User or SuperUser Error Access
      USERERRORACCESS : HEMC_ISR_USERERRORACCESS_Field;
      --  unspecified
      Reserved_5_31   : Interfaces.SAM.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEMC_ISR_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      OUTOFRANGE      at 0 range 1 .. 1;
      RDERRORACCESS   at 0 range 2 .. 2;
      WRERRORACCESS   at 0 range 3 .. 3;
      USERERRORACCESS at 0 range 4 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype HEMC_SR_OUTOFRANGE_Field is Interfaces.SAM.Bit;
   subtype HEMC_SR_RDERRORACCESS_Field is Interfaces.SAM.Bit;
   subtype HEMC_SR_WRERRORACCESS_Field is Interfaces.SAM.Bit;
   subtype HEMC_SR_USERERRORACCESS_Field is Interfaces.SAM.Bit;

   --  HEMC Status Register
   type HEMC_SR_Register is record
      --  unspecified
      Reserved_0_0    : Interfaces.SAM.Bit;
      --  Read-only. out of range
      OUTOFRANGE      : HEMC_SR_OUTOFRANGE_Field;
      --  Read-only. Read access error
      RDERRORACCESS   : HEMC_SR_RDERRORACCESS_Field;
      --  Read-only. Write access error
      WRERRORACCESS   : HEMC_SR_WRERRORACCESS_Field;
      --  Read-only. User or SuperUser Error Access
      USERERRORACCESS : HEMC_SR_USERERRORACCESS_Field;
      --  unspecified
      Reserved_5_31   : Interfaces.SAM.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEMC_SR_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      OUTOFRANGE      at 0 range 1 .. 1;
      RDERRORACCESS   at 0 range 2 .. 2;
      WRERRORACCESS   at 0 range 3 .. 3;
      USERERRORACCESS at 0 range 4 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype HECC_CR_ENABLE_Field is Interfaces.SAM.Bit;
   subtype HECC_CR_TEST_MODE_RD_Field is Interfaces.SAM.Bit;
   subtype HECC_CR_TEST_MODE_WR_Field is Interfaces.SAM.Bit;
   subtype HECC_CR_RST_FIX_CPT_Field is Interfaces.SAM.Bit;
   subtype HECC_CR_RST_NOFIX_CPT_Field is Interfaces.SAM.Bit;
   subtype HECC_CR_ECC12_ENABLE_Field is Interfaces.SAM.Bit;

   --  HECC Control Register Channel 0 (HSMC)
   type HECC_CR_Register is record
      --  ECC protection enable
      ENABLE        : HECC_CR_ENABLE_Field := 16#0#;
      --  test mode of ECC protection - read mode
      TEST_MODE_RD  : HECC_CR_TEST_MODE_RD_Field := 16#0#;
      --  test mode of ECC protection - write mode
      TEST_MODE_WR  : HECC_CR_TEST_MODE_WR_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : Interfaces.SAM.Bit := 16#0#;
      --  reset the fixable error counter
      RST_FIX_CPT   : HECC_CR_RST_FIX_CPT_Field := 16#0#;
      --  reset the un-fixable error counter
      RST_NOFIX_CPT : HECC_CR_RST_NOFIX_CPT_Field := 16#0#;
      --  BCH ECC enable
      ECC12_ENABLE  : HECC_CR_ECC12_ENABLE_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.SAM.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HECC_CR_Register use record
      ENABLE        at 0 range 0 .. 0;
      TEST_MODE_RD  at 0 range 1 .. 1;
      TEST_MODE_WR  at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      RST_FIX_CPT   at 0 range 4 .. 4;
      RST_NOFIX_CPT at 0 range 5 .. 5;
      ECC12_ENABLE  at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype HECC_TESTCB_TCB1_Field is Interfaces.SAM.UInt16;

   --  HECC Test mode Register Channel 0 (HSMC)
   type HECC_TESTCB_Register is record
      --  test check bit (16 bit)
      TCB1           : HECC_TESTCB_TCB1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HECC_TESTCB_Register use record
      TCB1           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HEMC_HECC_SR_MEM_FIX_Field is Interfaces.SAM.Bit;
   subtype HEMC_HECC_SR_CPT_FIX_Field is Interfaces.SAM.UInt5;
   subtype HEMC_HECC_SR_OVER_FIX_Field is Interfaces.SAM.Bit;
   subtype HEMC_HECC_SR_MEM_NOFIX_Field is Interfaces.SAM.Bit;
   subtype HEMC_HECC_SR_CPT_NOFIX_Field is Interfaces.SAM.UInt5;
   subtype HEMC_HECC_SR_OVER_NOFIX_Field is Interfaces.SAM.Bit;
   subtype HEMC_HECC_SR_HES_Field is Interfaces.SAM.UInt3;
   subtype HEMC_HECC_SR_TYPE_Field is Interfaces.SAM.Bit;

   --  HECC Status Register
   type HEMC_HECC_SR_Register is record
      --  Read-only. Fixable error status
      MEM_FIX        : HEMC_HECC_SR_MEM_FIX_Field;
      --  unspecified
      Reserved_1_1   : Interfaces.SAM.Bit;
      --  Read-only. 5 bits counter
      CPT_FIX        : HEMC_HECC_SR_CPT_FIX_Field;
      --  Read-only. counter overflow
      OVER_FIX       : HEMC_HECC_SR_OVER_FIX_Field;
      --  Read-only. Un-fixable error status
      MEM_NOFIX      : HEMC_HECC_SR_MEM_NOFIX_Field;
      --  unspecified
      Reserved_9_9   : Interfaces.SAM.Bit;
      --  Read-only. 5 bits counter
      CPT_NOFIX      : HEMC_HECC_SR_CPT_NOFIX_Field;
      --  Read-only. counter overflow
      OVER_NOFIX     : HEMC_HECC_SR_OVER_NOFIX_Field;
      --  unspecified
      Reserved_16_23 : Interfaces.SAM.Byte;
      --  Read-only. Hardware Error Size
      HES            : HEMC_HECC_SR_HES_Field;
      --  Read-only. write or read access
      TYPE_k         : HEMC_HECC_SR_TYPE_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.SAM.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEMC_HECC_SR_Register use record
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

   subtype HEMC_HECC_IER_MEM_FIX_Field is Interfaces.SAM.Bit;
   subtype HEMC_HECC_IER_MEM_NOFIX_Field is Interfaces.SAM.Bit;

   --  HECC Interrupt Enable Register
   type HEMC_HECC_IER_Register is record
      --  Write-only. Fixable error
      MEM_FIX       : HEMC_HECC_IER_MEM_FIX_Field := 16#0#;
      --  Write-only. Un-fixable error
      MEM_NOFIX     : HEMC_HECC_IER_MEM_NOFIX_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEMC_HECC_IER_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype HEMC_HECC_IDR_MEM_FIX_Field is Interfaces.SAM.Bit;
   subtype HEMC_HECC_IDR_MEM_NOFIX_Field is Interfaces.SAM.Bit;

   --  HECC Interrupt Disable Register
   type HEMC_HECC_IDR_Register is record
      --  Write-only. fixable error
      MEM_FIX       : HEMC_HECC_IDR_MEM_FIX_Field := 16#0#;
      --  Write-only. un-fixable error
      MEM_NOFIX     : HEMC_HECC_IDR_MEM_NOFIX_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEMC_HECC_IDR_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype HEMC_HECC_IMR_MEM_FIX_Field is Interfaces.SAM.Bit;
   subtype HEMC_HECC_IMR_MEM_NOFIX_Field is Interfaces.SAM.Bit;

   --  HECC Interrupt Mask Register
   type HEMC_HECC_IMR_Register is record
      --  Read-only. fixable error
      MEM_FIX       : HEMC_HECC_IMR_MEM_FIX_Field;
      --  Read-only. un-fixable error
      MEM_NOFIX     : HEMC_HECC_IMR_MEM_NOFIX_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEMC_HECC_IMR_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  HEMC
   type HEMC_Peripheral is record
      --  HEMC Control Register NCS 0
      CR_NCS0      : aliased HEMC_CR_NCS0_Register;
      --  HEMC Control Register NCS 1
      CR_NCS1      : aliased CR_NCS_Register;
      --  HEMC Control Register NCS 2
      CR_NCS2      : aliased CR_NCS_Register;
      --  HEMC Control Register NCS 3
      CR_NCS3      : aliased CR_NCS_Register;
      --  HEMC Control Register NCS 4
      CR_NCS4      : aliased CR_NCS_Register;
      --  HEMC Control Register NCS 5
      CR_NCS5      : aliased CR_NCS_Register;
      --  HEMC Polarity Control register
      CTRL         : aliased HEMC_CTRL_Register;
      --  HEMC Control Register Protection NCS
      CRP_NCS      : aliased HEMC_CRP_NCS_Registers;
      --  HEMC Interrupt Enable Register
      IER          : aliased HEMC_IER_Register;
      --  HEMC Interrupt Disable Register
      IDR          : aliased HEMC_IDR_Register;
      --  HEMC Interrupt Mask Register
      IMR          : aliased HEMC_IMR_Register;
      --  HEMC Interrupt Status Register
      ISR          : aliased HEMC_ISR_Register;
      --  HEMC Status Register
      SR           : aliased HEMC_SR_Register;
      --  HECC Control Register Channel 0 (HSMC)
      HECC_CR0     : aliased HECC_CR_Register;
      --  HECC Control Register Channel 1 (HSDRAMC)
      HECC_CR1     : aliased HECC_CR_Register;
      --  HECC Control Register Channel 2 (HSDRAMC)
      HECC_CR2     : aliased HECC_CR_Register;
      --  HECC Test mode Register Channel 0 (HSMC)
      HECC_TESTCB0 : aliased HECC_TESTCB_Register;
      --  HECC Test mode Register Channel 1 (HSDRAMC)
      HECC_TESTCB1 : aliased HECC_TESTCB_Register;
      --  HECC Test mode Register Channel 2 (HSDRAMC)
      HECC_TESTCB2 : aliased HECC_TESTCB_Register;
      --  HECC Status Register
      HECC_SR      : aliased HEMC_HECC_SR_Register;
      --  HECC Interrupt Enable Register
      HECC_IER     : aliased HEMC_HECC_IER_Register;
      --  HECC Interrupt Disable Register
      HECC_IDR     : aliased HEMC_HECC_IDR_Register;
      --  HECC Interrupt Mask Register
      HECC_IMR     : aliased HEMC_HECC_IMR_Register;
      --  HECC Fail address register
      HECC_FAILAR  : aliased Interfaces.SAM.UInt32;
   end record
     with Volatile;

   for HEMC_Peripheral use record
      CR_NCS0      at 16#0# range 0 .. 31;
      CR_NCS1      at 16#4# range 0 .. 31;
      CR_NCS2      at 16#8# range 0 .. 31;
      CR_NCS3      at 16#C# range 0 .. 31;
      CR_NCS4      at 16#10# range 0 .. 31;
      CR_NCS5      at 16#14# range 0 .. 31;
      CTRL         at 16#18# range 0 .. 31;
      CRP_NCS      at 16#20# range 0 .. 191;
      IER          at 16#38# range 0 .. 31;
      IDR          at 16#3C# range 0 .. 31;
      IMR          at 16#40# range 0 .. 31;
      ISR          at 16#44# range 0 .. 31;
      SR           at 16#48# range 0 .. 31;
      HECC_CR0     at 16#100# range 0 .. 31;
      HECC_CR1     at 16#104# range 0 .. 31;
      HECC_CR2     at 16#108# range 0 .. 31;
      HECC_TESTCB0 at 16#140# range 0 .. 31;
      HECC_TESTCB1 at 16#144# range 0 .. 31;
      HECC_TESTCB2 at 16#148# range 0 .. 31;
      HECC_SR      at 16#180# range 0 .. 31;
      HECC_IER     at 16#184# range 0 .. 31;
      HECC_IDR     at 16#188# range 0 .. 31;
      HECC_IMR     at 16#18C# range 0 .. 31;
      HECC_FAILAR  at 16#190# range 0 .. 31;
   end record;

   --  HEMC
   HEMC_Periph : aliased HEMC_Peripheral
     with Import, Address => HEMC_Base;

end Interfaces.SAM.HEMC;
