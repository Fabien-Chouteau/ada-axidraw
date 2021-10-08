pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.HEFC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  HEFC Flash Mode Register
   type HEFC_FMR_Register is record
      --  Flash Ready Interrupt Enable
      FRDY           : Boolean := False;
      --  Flash Power Status Interrupt Enable
      FPSI           : Boolean := False;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Must be written to 1
      ONE            : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
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

   subtype HEFC_FCR_FARG_Field is HAL.UInt16;

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
      FCMD : FCR_FCMDSelect := SAM_SVD.HEFC.GETD;
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

   --  HEFC Flash Status Register
   type HEFC_FSR_Register is record
      --  Read-only. Flash Ready Status (cleared when Flash is busy)
      FRDY          : Boolean;
      --  Read-only. Flash Command Error Status (cleared on read or by writing
      --  HEFC_FCR)
      FCMDE         : Boolean;
      --  Read-only. Flash Lock Error Status (cleared on read)
      FLOCKE        : Boolean;
      --  unspecified
      Reserved_3_3  : HAL.Bit;
      --  Read-only. Write Register Error Status (cleared on read)
      WREER         : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
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

   subtype HEFC_FPMR_VAR_FACTOR_Field is HAL.UInt6;

   --  HEFC Flash Power Management Register
   type HEFC_FPMR_Register is record
      --  Power switch enable
      PWS_EN           : Boolean := False;
      --  Power switch Status
      PWS_STAT         : Boolean := False;
      --  Power switch Delay
      PWS_DLY          : FPMR_PWS_DLYSelect := SAM_SVD.HEFC.Val_75US;
      --  unspecified
      Reserved_4_7     : HAL.UInt4 := 16#0#;
      --  Variation Factor
      VAR_FACTOR       : HEFC_FPMR_VAR_FACTOR_Field := 16#0#;
      --  unspecified
      Reserved_14_15   : HAL.UInt2 := 16#0#;
      --  Flash insulated Control Status
      FUNC_ISOL_CTRL_N : Boolean := False;
      --  unspecified
      Reserved_17_31   : HAL.UInt15 := 16#0#;
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
      WPEN         : Boolean := False;
      --  GPNVM Bit Write Protection
      GPNVMWP      : Boolean := False;
      --  Lock Bit Write Protection
      LOCKWP       : Boolean := False;
      --  Page, Sector and Plane Write Protection
      ERASEWP      : Boolean := False;
      --  User Signature Write Protection
      USER         : Boolean := False;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
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

   --  HECC Control Register ChannelNumbers (ChannelNumbers = 0) 0
   type HECC_CR_Register is record
      --  ECC protection enable
      ENABLE        : Boolean := False;
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
      --  BCH ECC enable
      ECC12_ENABLE  : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
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

   subtype HECC_TESTCB_TCB_Field is HAL.UInt16;

   --  HECC Test mode ChannelNumbers (ChannelNumbers = 0) 0
   type HECC_TESTCB_Register is record
      --  test check bit (16 bit)
      TCB            : HECC_TESTCB_TCB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HECC_TESTCB_Register use record
      TCB            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HEFC_HECC_SR_CPT_FIX_Field is HAL.UInt5;
   subtype HEFC_HECC_SR_CPT_NOFIX_Field is HAL.UInt5;
   subtype HEFC_HECC_SR_HES_Field is HAL.UInt3;
   subtype HEFC_HECC_SR_MEM_ID_Field is HAL.UInt2;

   --  HECC Status register
   type HEFC_HECC_SR_Register is record
      --  Read-only. Fixable error status
      MEM_FIX        : Boolean;
      --  unspecified
      Reserved_1_1   : HAL.Bit;
      --  Read-only. 5 bits counter
      CPT_FIX        : HEFC_HECC_SR_CPT_FIX_Field;
      --  Read-only. counter overflow
      OVER_FIX       : Boolean;
      --  Read-only. Un-fixable error status
      MEM_NOFIX      : Boolean;
      --  unspecified
      Reserved_9_9   : HAL.Bit;
      --  Read-only. 5 bits counter
      CPT_NOFIX      : HEFC_HECC_SR_CPT_NOFIX_Field;
      --  Read-only. counter overflow
      OVER_NOFIX     : Boolean;
      --  unspecified
      Reserved_16_23 : HAL.UInt8;
      --  Read-only. Hardware Error Size
      HES            : HEFC_HECC_SR_HES_Field;
      --  Read-only. write or read access
      TYPE_k         : Boolean;
      --  Read-only. memory identification number
      MEM_ID         : HEFC_HECC_SR_MEM_ID_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
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

   --  HECC Interrupt Enable Register
   type HEFC_HECC_IER_Register is record
      --  Write-only. Fixable error
      MEM_FIX       : Boolean := False;
      --  Write-only. Un-fixable error
      MEM_NOFIX     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEFC_HECC_IER_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  HECC Interrupt Disable Register
   type HEFC_HECC_IDR_Register is record
      --  Write-only. fixable error
      MEM_FIX       : Boolean := False;
      --  Write-only. un-fixable error
      MEM_NOFIX     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HEFC_HECC_IDR_Register use record
      MEM_FIX       at 0 range 0 .. 0;
      MEM_NOFIX     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  HECC Interrupt Mask Register
   type HEFC_HECC_IMR_Register is record
      --  Read-only. fixable error
      MEM_FIX       : Boolean;
      --  Read-only. un-fixable error
      MEM_NOFIX     : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
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
      FRR           : aliased HAL.UInt32;
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
      HECC_FAILAR   : aliased HAL.UInt32;
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

end SAM_SVD.HEFC;
