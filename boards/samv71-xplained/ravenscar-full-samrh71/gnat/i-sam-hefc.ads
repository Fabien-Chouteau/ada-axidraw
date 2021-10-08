--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.HEFC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype HEFC_FMR_FRDY_Field is Interfaces.SAM.Bit;
   subtype HEFC_FMR_FPSI_Field is Interfaces.SAM.Bit;
   subtype HEFC_FMR_ONE_Field is Interfaces.SAM.Bit;

   --  HEFC Flash Mode Register
   type HEFC_FMR_Register is record
      --  Flash Ready Interrupt Enable
      FRDY           : HEFC_FMR_FRDY_Field := 16#0#;
      --  Flash Power Status Interrupt Enable
      FPSI           : HEFC_FMR_FPSI_Field := 16#0#;
      --  unspecified
      Reserved_2_15  : Interfaces.SAM.UInt14 := 16#0#;
      --  Must be written to 1
      ONE            : HEFC_FMR_ONE_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.SAM.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEFC_FMR_Register use record
      FRDY           at 0 range 0 .. 0;
      FPSI           at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      ONE            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Flash Command
   type FCR_FCMDSelect is
     (--  Get Flash descriptor
      GETD,
      --  Write page
      WP,
      --  Write page and lock
      WPL,
      --  Erase all
      EA,
      --  Erase page
      EP,
      --  Erase pages
      EPA,
      --  Set lock bit
      SLB,
      --  Clear lock bit
      CLB,
      --  Get lock bit
      GLB,
      --  Set GPNVM bit
      SGPB,
      --  Clear GPNVM bit
      CGPB,
      --  Get GPNVM bit
      GGPB,
      --  Get CALIB bit
      GCALB,
      --  Write user signature
      WUS,
      --  Erase user signature
      EUS,
      --  Start read user signature
      STUS,
      --  Stop read user signature
      SPUS)
     with Size => 8;
   for FCR_FCMDSelect use
     (GETD => 0,
      WP => 1,
      WPL => 2,
      EA => 5,
      EP => 6,
      EPA => 7,
      SLB => 8,
      CLB => 9,
      GLB => 10,
      SGPB => 11,
      CGPB => 12,
      GGPB => 13,
      GCALB => 16,
      WUS => 18,
      EUS => 19,
      STUS => 20,
      SPUS => 21);

   subtype HEFC_FCR_FARG_Field is Interfaces.SAM.UInt16;

   --  Flash Writing Protection Key
   type FCR_FKEYSelect is
     (--  Reset value for the field
      FCR_FKEYSelect_Reset,
      --  The 0x5A value enables the command defined by the bits of the register. If
--  the field is written with a different value, the write is not performed and
--  no action is started.
      PASSWD)
     with Size => 8;
   for FCR_FKEYSelect use
     (FCR_FKEYSelect_Reset => 0,
      PASSWD => 90);

   --  HEFC Flash Command Register
   type HEFC_FCR_Register is record
      --  Write-only. Flash Command
      FCMD : FCR_FCMDSelect := Interfaces.SAM.HEFC.GETD;
      --  Write-only. Flash Command Argument
      FARG : HEFC_FCR_FARG_Field := 16#0#;
      --  Write-only. Flash Writing Protection Key
      FKEY : FCR_FKEYSelect := FCR_FKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEFC_FCR_Register use record
      FCMD at 0 range 0 .. 7;
      FARG at 0 range 8 .. 23;
      FKEY at 0 range 24 .. 31;
   end record;

   subtype HEFC_FSR_FRDY_Field is Interfaces.SAM.Bit;
   subtype HEFC_FSR_FCMDE_Field is Interfaces.SAM.Bit;
   subtype HEFC_FSR_FLOCKE_Field is Interfaces.SAM.Bit;
   subtype HEFC_FSR_WREER_Field is Interfaces.SAM.Bit;

   --  HEFC Flash Status Register
   type HEFC_FSR_Register is record
      --  Read-only. Flash Ready Status (cleared when Flash is busy)
      FRDY          : HEFC_FSR_FRDY_Field;
      --  Read-only. Flash Command Error Status (cleared on read or by writing
      --  HEFC_FCR)
      FCMDE         : HEFC_FSR_FCMDE_Field;
      --  Read-only. Flash Lock Error Status (cleared on read)
      FLOCKE        : HEFC_FSR_FLOCKE_Field;
      --  unspecified
      Reserved_3_3  : Interfaces.SAM.Bit;
      --  Read-only. Write Register Error Status (cleared on read)
      WREER         : HEFC_FSR_WREER_Field;
      --  unspecified
      Reserved_5_31 : Interfaces.SAM.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEFC_FSR_Register use record
      FRDY          at 0 range 0 .. 0;
      FCMDE         at 0 range 1 .. 1;
      FLOCKE        at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      WREER         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype HEFC_FPMR_PWS_EN_Field is Interfaces.SAM.Bit;
   subtype HEFC_FPMR_PWS_STAT_Field is Interfaces.SAM.Bit;

   --  Power switch Delay
   type FPMR_PWS_DLYSelect is
     (--  delay is set to 75 usec
      Val_75US,
      --  delay is set to 150 usec
      Val_150US,
      --  delay is set to 300 usec
      Val_300US,
      --  delay is set to 600 usec
      Val_600US)
     with Size => 2;
   for FPMR_PWS_DLYSelect use
     (Val_75US => 0,
      Val_150US => 1,
      Val_300US => 2,
      Val_600US => 3);

   subtype HEFC_FPMR_VAR_FACTOR_Field is Interfaces.SAM.UInt6;
   subtype HEFC_FPMR_FUNC_ISOL_CTRL_N_Field is Interfaces.SAM.Bit;

   --  HEFC Flash Power Management Register
   type HEFC_FPMR_Register is record
      --  Power switch enable
      PWS_EN           : HEFC_FPMR_PWS_EN_Field := 16#0#;
      --  Power switch Status
      PWS_STAT         : HEFC_FPMR_PWS_STAT_Field := 16#0#;
      --  Power switch Delay
      PWS_DLY          : FPMR_PWS_DLYSelect := Interfaces.SAM.HEFC.Val_75US;
      --  unspecified
      Reserved_4_7     : Interfaces.SAM.UInt4 := 16#0#;
      --  Variation Factor
      VAR_FACTOR       : HEFC_FPMR_VAR_FACTOR_Field := 16#0#;
      --  unspecified
      Reserved_14_15   : Interfaces.SAM.UInt2 := 16#0#;
      --  Flash insulated Control Status
      FUNC_ISOL_CTRL_N : HEFC_FPMR_FUNC_ISOL_CTRL_N_Field := 16#0#;
      --  unspecified
      Reserved_17_31   : Interfaces.SAM.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEFC_FPMR_Register use record
      PWS_EN           at 0 range 0 .. 0;
      PWS_STAT         at 0 range 1 .. 1;
      PWS_DLY          at 0 range 2 .. 3;
      Reserved_4_7     at 0 range 4 .. 7;
      VAR_FACTOR       at 0 range 8 .. 13;
      Reserved_14_15   at 0 range 14 .. 15;
      FUNC_ISOL_CTRL_N at 0 range 16 .. 16;
      Reserved_17_31   at 0 range 17 .. 31;
   end record;

   subtype HEFC_WPMR_WPEN_Field is Interfaces.SAM.Bit;
   subtype HEFC_WPMR_GPNVMWP_Field is Interfaces.SAM.Bit;
   subtype HEFC_WPMR_LOCKWP_Field is Interfaces.SAM.Bit;
   subtype HEFC_WPMR_ERASEWP_Field is Interfaces.SAM.Bit;
   subtype HEFC_WPMR_USER_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type WPMR_WPKEYSelect is
     (--  Reset value for the field
      WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.Always
--  reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEYSelect use
     (WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 4539971);

   --  Write Protection Mode Register
   type HEFC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : HEFC_WPMR_WPEN_Field := 16#0#;
      --  GPNVM Bit Write Protection
      GPNVMWP      : HEFC_WPMR_GPNVMWP_Field := 16#0#;
      --  Lock Bit Write Protection
      LOCKWP       : HEFC_WPMR_LOCKWP_Field := 16#0#;
      --  Page, Sector and Plane Write Protection
      ERASEWP      : HEFC_WPMR_ERASEWP_Field := 16#0#;
      --  User Signature Write Protection
      USER         : HEFC_WPMR_USER_Field := 16#0#;
      --  unspecified
      Reserved_5_7 : Interfaces.SAM.UInt3 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEFC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      GPNVMWP      at 0 range 1 .. 1;
      LOCKWP       at 0 range 2 .. 2;
      ERASEWP      at 0 range 3 .. 3;
      USER         at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype HECC_CR_ENABLE_Field is Interfaces.SAM.Bit;
   subtype HECC_CR_TEST_MODE_RD_Field is Interfaces.SAM.Bit;
   subtype HECC_CR_TEST_MODE_WR_Field is Interfaces.SAM.Bit;
   subtype HECC_CR_RST_FIX_CPT_Field is Interfaces.SAM.Bit;
   subtype HECC_CR_RST_NOFIX_CPT_Field is Interfaces.SAM.Bit;
   subtype HECC_CR_ECC12_ENABLE_Field is Interfaces.SAM.Bit;

   --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 0
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

   subtype HECC_TESTCB_TCB_Field is Interfaces.SAM.UInt16;

   --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 0
   type HECC_TESTCB_Register is record
      --  test check bit (16 bit)
      TCB            : HECC_TESTCB_TCB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HECC_TESTCB_Register use record
      TCB            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HEFC_HECC_SR_MEM_FIX_Field is Interfaces.SAM.Bit;
   subtype HEFC_HECC_SR_CPT_FIX_Field is Interfaces.SAM.UInt5;
   subtype HEFC_HECC_SR_OVER_FIX_Field is Interfaces.SAM.Bit;
   subtype HEFC_HECC_SR_MEM_NOFIX_Field is Interfaces.SAM.Bit;
   subtype HEFC_HECC_SR_CPT_NOFIX_Field is Interfaces.SAM.UInt5;
   subtype HEFC_HECC_SR_OVER_NOFIX_Field is Interfaces.SAM.Bit;
   subtype HEFC_HECC_SR_HES_Field is Interfaces.SAM.UInt3;
   subtype HEFC_HECC_SR_TYPE_Field is Interfaces.SAM.Bit;
   subtype HEFC_HECC_SR_MEM_ID_Field is Interfaces.SAM.UInt2;

   --  HECC Status register
   type HEFC_HECC_SR_Register is record
      --  Read-only. Fixable error status
      MEM_FIX        : HEFC_HECC_SR_MEM_FIX_Field;
      --  unspecified
      Reserved_1_1   : Interfaces.SAM.Bit;
      --  Read-only. 5 bits counter
      CPT_FIX        : HEFC_HECC_SR_CPT_FIX_Field;
      --  Read-only. counter overflow
      OVER_FIX       : HEFC_HECC_SR_OVER_FIX_Field;
      --  Read-only. Un-fixable error status
      MEM_NOFIX      : HEFC_HECC_SR_MEM_NOFIX_Field;
      --  unspecified
      Reserved_9_9   : Interfaces.SAM.Bit;
      --  Read-only. 5 bits counter
      CPT_NOFIX      : HEFC_HECC_SR_CPT_NOFIX_Field;
      --  Read-only. counter overflow
      OVER_NOFIX     : HEFC_HECC_SR_OVER_NOFIX_Field;
      --  unspecified
      Reserved_16_23 : Interfaces.SAM.Byte;
      --  Read-only. Hardware Error Size
      HES            : HEFC_HECC_SR_HES_Field;
      --  Read-only. write or read access
      TYPE_k         : HEFC_HECC_SR_TYPE_Field;
      --  Read-only. memory identification number
      MEM_ID         : HEFC_HECC_SR_MEM_ID_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEFC_HECC_SR_Register use record
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
      MEM_ID         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype HEFC_HECC_IER_MEM_FIX_Field is Interfaces.SAM.Bit;
   subtype HEFC_HECC_IER_MEM_NOFIX_Field is Interfaces.SAM.Bit;

   --  HECC Interrupt Enable Register
   type HEFC_HECC_IER_Register is record
      --  Write-only. Fixable error
      MEM_FIX       : HEFC_HECC_IER_MEM_FIX_Field := 16#0#;
      --  Write-only. Un-fixable error
      MEM_NOFIX     : HEFC_HECC_IER_MEM_NOFIX_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEFC_HECC_IER_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype HEFC_HECC_IDR_MEM_FIX_Field is Interfaces.SAM.Bit;
   subtype HEFC_HECC_IDR_MEM_NOFIX_Field is Interfaces.SAM.Bit;

   --  HECC Interrupt Disable Register
   type HEFC_HECC_IDR_Register is record
      --  Write-only. fixable error
      MEM_FIX       : HEFC_HECC_IDR_MEM_FIX_Field := 16#0#;
      --  Write-only. un-fixable error
      MEM_NOFIX     : HEFC_HECC_IDR_MEM_NOFIX_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEFC_HECC_IDR_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype HEFC_HECC_IMR_MEM_FIX_Field is Interfaces.SAM.Bit;
   subtype HEFC_HECC_IMR_MEM_NOFIX_Field is Interfaces.SAM.Bit;

   --  HECC Interrupt Mask Register
   type HEFC_HECC_IMR_Register is record
      --  Read-only. fixable error
      MEM_FIX       : HEFC_HECC_IMR_MEM_FIX_Field;
      --  Read-only. un-fixable error
      MEM_NOFIX     : HEFC_HECC_IMR_MEM_NOFIX_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEFC_HECC_IMR_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Harden Embedded Flash Controller
   type HEFC_Peripheral is record
      --  HEFC Flash Mode Register
      FMR           : aliased HEFC_FMR_Register;
      --  HEFC Flash Command Register
      FCR           : aliased HEFC_FCR_Register;
      --  HEFC Flash Status Register
      FSR           : aliased HEFC_FSR_Register;
      --  HEFC Flash Result Register
      FRR           : aliased Interfaces.SAM.UInt32;
      --  HEFC Flash Power Management Register
      FPMR          : aliased HEFC_FPMR_Register;
      --  Write Protection Mode Register
      WPMR          : aliased HEFC_WPMR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 0
      HECC_CR0      : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 1
      HECC_CR1      : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 2
      HECC_CR2      : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 3
      HECC_CR3      : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 4
      HECC_CR4      : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 5
      HECC_CR5      : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 6
      HECC_CR6      : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 7
      HECC_CR7      : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 8
      HECC_CR8      : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 9
      HECC_CR9      : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 10
      HECC_CR10     : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 11
      HECC_CR11     : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 12
      HECC_CR12     : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 13
      HECC_CR13     : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 14
      HECC_CR14     : aliased HECC_CR_Register;
      --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 15
      HECC_CR15     : aliased HECC_CR_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 0
      HECC_TESTCB0  : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 1
      HECC_TESTCB1  : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 2
      HECC_TESTCB2  : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 3
      HECC_TESTCB3  : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 4
      HECC_TESTCB4  : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 5
      HECC_TESTCB5  : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 6
      HECC_TESTCB6  : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 7
      HECC_TESTCB7  : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 8
      HECC_TESTCB8  : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 9
      HECC_TESTCB9  : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 10
      HECC_TESTCB10 : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 11
      HECC_TESTCB11 : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 12
      HECC_TESTCB12 : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 13
      HECC_TESTCB13 : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 14
      HECC_TESTCB14 : aliased HECC_TESTCB_Register;
      --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 15
      HECC_TESTCB15 : aliased HECC_TESTCB_Register;
      --  HECC Status register
      HECC_SR       : aliased HEFC_HECC_SR_Register;
      --  HECC Interrupt Enable Register
      HECC_IER      : aliased HEFC_HECC_IER_Register;
      --  HECC Interrupt Disable Register
      HECC_IDR      : aliased HEFC_HECC_IDR_Register;
      --  HECC Interrupt Mask Register
      HECC_IMR      : aliased HEFC_HECC_IMR_Register;
      --  HECC Fail address register
      HECC_FAILAR   : aliased Interfaces.SAM.UInt32;
   end record
     with Volatile;

   for HEFC_Peripheral use record
      FMR           at 16#0# range 0 .. 31;
      FCR           at 16#4# range 0 .. 31;
      FSR           at 16#8# range 0 .. 31;
      FRR           at 16#C# range 0 .. 31;
      FPMR          at 16#40# range 0 .. 31;
      WPMR          at 16#E4# range 0 .. 31;
      HECC_CR0      at 16#100# range 0 .. 31;
      HECC_CR1      at 16#104# range 0 .. 31;
      HECC_CR2      at 16#108# range 0 .. 31;
      HECC_CR3      at 16#10C# range 0 .. 31;
      HECC_CR4      at 16#110# range 0 .. 31;
      HECC_CR5      at 16#114# range 0 .. 31;
      HECC_CR6      at 16#118# range 0 .. 31;
      HECC_CR7      at 16#11C# range 0 .. 31;
      HECC_CR8      at 16#120# range 0 .. 31;
      HECC_CR9      at 16#124# range 0 .. 31;
      HECC_CR10     at 16#128# range 0 .. 31;
      HECC_CR11     at 16#12C# range 0 .. 31;
      HECC_CR12     at 16#130# range 0 .. 31;
      HECC_CR13     at 16#134# range 0 .. 31;
      HECC_CR14     at 16#138# range 0 .. 31;
      HECC_CR15     at 16#13C# range 0 .. 31;
      HECC_TESTCB0  at 16#140# range 0 .. 31;
      HECC_TESTCB1  at 16#144# range 0 .. 31;
      HECC_TESTCB2  at 16#148# range 0 .. 31;
      HECC_TESTCB3  at 16#14C# range 0 .. 31;
      HECC_TESTCB4  at 16#150# range 0 .. 31;
      HECC_TESTCB5  at 16#154# range 0 .. 31;
      HECC_TESTCB6  at 16#158# range 0 .. 31;
      HECC_TESTCB7  at 16#15C# range 0 .. 31;
      HECC_TESTCB8  at 16#160# range 0 .. 31;
      HECC_TESTCB9  at 16#164# range 0 .. 31;
      HECC_TESTCB10 at 16#168# range 0 .. 31;
      HECC_TESTCB11 at 16#16C# range 0 .. 31;
      HECC_TESTCB12 at 16#170# range 0 .. 31;
      HECC_TESTCB13 at 16#174# range 0 .. 31;
      HECC_TESTCB14 at 16#178# range 0 .. 31;
      HECC_TESTCB15 at 16#17C# range 0 .. 31;
      HECC_SR       at 16#180# range 0 .. 31;
      HECC_IER      at 16#184# range 0 .. 31;
      HECC_IDR      at 16#188# range 0 .. 31;
      HECC_IMR      at 16#18C# range 0 .. 31;
      HECC_FAILAR   at 16#190# range 0 .. 31;
   end record;

   --  Harden Embedded Flash Controller
   HEFC_Periph : aliased HEFC_Peripheral
     with Import, Address => HEFC_Base;

end Interfaces.SAM.HEFC;
