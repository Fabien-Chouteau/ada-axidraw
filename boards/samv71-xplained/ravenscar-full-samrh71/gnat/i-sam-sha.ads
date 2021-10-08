--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.SHA is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype SHA_CR_START_Field is Interfaces.SAM.Bit;
   subtype SHA_CR_FIRST_Field is Interfaces.SAM.Bit;
   subtype SHA_CR_SWRST_Field is Interfaces.SAM.Bit;
   subtype SHA_CR_WUIHV_Field is Interfaces.SAM.Bit;
   subtype SHA_CR_WUIEHV_Field is Interfaces.SAM.Bit;

   --  Control Register
   type SHA_CR_Register is record
      --  Write-only. Start Processing
      START          : SHA_CR_START_Field := 16#0#;
      --  unspecified
      Reserved_1_3   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. First Block of a Message
      FIRST          : SHA_CR_FIRST_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Software Reset
      SWRST          : SHA_CR_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Write User Initial Hash Values
      WUIHV          : SHA_CR_WUIHV_Field := 16#0#;
      --  Write-only. Write User Initial or Expected Hash Values
      WUIEHV         : SHA_CR_WUIEHV_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHA_CR_Register use record
      START          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      FIRST          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SWRST          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      WUIHV          at 0 range 12 .. 12;
      WUIEHV         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Start Mode
   type MR_SMODSelect is
     (--  Manual mode
      MANUAL_START,
      --  Auto mode
      AUTO_START,
      --  SHA_IDATAR0 access only mode (mandatory when DMA is used)
      IDATAR0_START)
     with Size => 2;
   for MR_SMODSelect use
     (MANUAL_START => 0,
      AUTO_START => 1,
      IDATAR0_START => 2);

   subtype SHA_MR_UIHV_Field is Interfaces.SAM.Bit;
   subtype SHA_MR_UIEHV_Field is Interfaces.SAM.Bit;

   --  SHA Algorithm
   type MR_ALGOSelect is
     (--  SHA1 algorithm processed
      SHA1,
      --  SHA256 algorithm processed
      SHA256,
      --  SHA384 algorithm processed
      SHA384,
      --  SHA512 algorithm processed
      SHA512,
      --  SHA224 algorithm processed
      SHA224,
      --  HMAC algorithm with SHA1 Hash processed
      HMAC_SHA1,
      --  HMAC algorithm with SHA256 Hash processed
      HMAC_SHA256,
      --  HMAC algorithm with SHA384 Hash processed
      HMAC_SHA384,
      --  HMAC algorithm with SHA512 Hash processed
      HMAC_SHA512,
      --  HMAC algorithm with SHA224 Hash processed
      HMAC_SHA224)
     with Size => 4;
   for MR_ALGOSelect use
     (SHA1 => 0,
      SHA256 => 1,
      SHA384 => 2,
      SHA512 => 3,
      SHA224 => 4,
      HMAC_SHA1 => 8,
      HMAC_SHA256 => 9,
      HMAC_SHA384 => 10,
      HMAC_SHA512 => 11,
      HMAC_SHA224 => 12);

   --  Dual Input Buffer
   type MR_DUALBUFFSelect is
     (--  SHA_IDATARx and SHA_IODATARx cannot be written during processing of
--  previous block.
      INACTIVE,
      --  SHA_IDATARx and SHA_IODATARx can be written during processing of previous
--  block when SMOD value = 2. It speeds up the overall runtime of large files.
      ACTIVE)
     with Size => 1;
   for MR_DUALBUFFSelect use
     (INACTIVE => 0,
      ACTIVE => 1);

   --  Hash Check
   type MR_CHECKSelect is
     (--  No check is performed
      NO_CHECK,
      --  Check is performed with expected hash stored in internal expected hash
--  value registers.
      CHECK_EHV,
      --  Check is performed with expected hash provided after the message.
      CHECK_MESSAGE)
     with Size => 2;
   for MR_CHECKSelect use
     (NO_CHECK => 0,
      CHECK_EHV => 1,
      CHECK_MESSAGE => 2);

   subtype SHA_MR_CHKCNT_Field is Interfaces.SAM.UInt4;

   --  Mode Register
   type SHA_MR_Register is record
      --  Start Mode
      SMOD           : MR_SMODSelect := Interfaces.SAM.SHA.MANUAL_START;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3 := 16#0#;
      --  User Initial Hash Value Registers
      UIHV           : SHA_MR_UIHV_Field := 16#0#;
      --  User Initial or Expected Hash Value Registers
      UIEHV          : SHA_MR_UIEHV_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  SHA Algorithm
      ALGO           : MR_ALGOSelect := Interfaces.SAM.SHA.SHA1;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4 := 16#0#;
      --  Dual Input Buffer
      DUALBUFF       : MR_DUALBUFFSelect := Interfaces.SAM.SHA.INACTIVE;
      --  unspecified
      Reserved_17_23 : Interfaces.SAM.UInt7 := 16#0#;
      --  Hash Check
      CHECK          : MR_CHECKSelect := Interfaces.SAM.SHA.NO_CHECK;
      --  unspecified
      Reserved_26_27 : Interfaces.SAM.UInt2 := 16#0#;
      --  Check Counter
      CHKCNT         : SHA_MR_CHKCNT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHA_MR_Register use record
      SMOD           at 0 range 0 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      UIHV           at 0 range 5 .. 5;
      UIEHV          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ALGO           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DUALBUFF       at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      CHECK          at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      CHKCNT         at 0 range 28 .. 31;
   end record;

   subtype SHA_IER_DATRDY_Field is Interfaces.SAM.Bit;
   subtype SHA_IER_URAD_Field is Interfaces.SAM.Bit;
   subtype SHA_IER_CHECKF_Field is Interfaces.SAM.Bit;
   subtype SHA_IER_SECE_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type SHA_IER_Register is record
      --  Write-only. Data Ready Interrupt Enable
      DATRDY         : SHA_IER_DATRDY_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7 := 16#0#;
      --  Write-only. Unspecified Register Access Detection Interrupt Enable
      URAD           : SHA_IER_URAD_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7 := 16#0#;
      --  Write-only. Check Done Interrupt Enable
      CHECKF         : SHA_IER_CHECKF_Field := 16#0#;
      --  unspecified
      Reserved_17_23 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write-only. Safety Event Interrupt Enable
      SECE           : SHA_IER_SECE_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHA_IER_Register use record
      DATRDY         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      URAD           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CHECKF         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      SECE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SHA_IDR_DATRDY_Field is Interfaces.SAM.Bit;
   subtype SHA_IDR_URAD_Field is Interfaces.SAM.Bit;
   subtype SHA_IDR_CHECKF_Field is Interfaces.SAM.Bit;
   subtype SHA_IDR_SECE_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type SHA_IDR_Register is record
      --  Write-only. Data Ready Interrupt Disable
      DATRDY         : SHA_IDR_DATRDY_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7 := 16#0#;
      --  Write-only. Unspecified Register Access Detection Interrupt Disable
      URAD           : SHA_IDR_URAD_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7 := 16#0#;
      --  Write-only. Check Done Interrupt Disable
      CHECKF         : SHA_IDR_CHECKF_Field := 16#0#;
      --  unspecified
      Reserved_17_23 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write-only. Safety Event Interrupt Disable
      SECE           : SHA_IDR_SECE_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHA_IDR_Register use record
      DATRDY         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      URAD           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CHECKF         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      SECE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SHA_IMR_DATRDY_Field is Interfaces.SAM.Bit;
   subtype SHA_IMR_URAD_Field is Interfaces.SAM.Bit;
   subtype SHA_IMR_CHECKF_Field is Interfaces.SAM.Bit;
   subtype SHA_IMR_SECE_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type SHA_IMR_Register is record
      --  Read-only. Data Ready Interrupt Mask
      DATRDY         : SHA_IMR_DATRDY_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Unspecified Register Access Detection Interrupt Mask
      URAD           : SHA_IMR_URAD_Field;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7;
      --  Read-only. Check Done Interrupt Mask
      CHECKF         : SHA_IMR_CHECKF_Field;
      --  unspecified
      Reserved_17_23 : Interfaces.SAM.UInt7;
      --  Read-only. Safety Event Interrupt Mask
      SECE           : SHA_IMR_SECE_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHA_IMR_Register use record
      DATRDY         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      URAD           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CHECKF         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      SECE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SHA_ISR_DATRDY_Field is Interfaces.SAM.Bit;
   subtype SHA_ISR_WRDY_Field is Interfaces.SAM.Bit;
   subtype SHA_ISR_URAD_Field is Interfaces.SAM.Bit;
   subtype SHA_ISR_URAT_Field is Interfaces.SAM.UInt3;
   subtype SHA_ISR_CHECKF_Field is Interfaces.SAM.Bit;
   subtype SHA_ISR_CHKST_Field is Interfaces.SAM.UInt4;
   subtype SHA_ISR_SECE_Field is Interfaces.SAM.Bit;

   --  Interrupt Status Register
   type SHA_ISR_Register is record
      --  Read-only. Data Ready (cleared by writing a 1 to bit SWRST or START
      --  in SHA_CR, or by reading SHA_IODATARx)
      DATRDY         : SHA_ISR_DATRDY_Field;
      --  unspecified
      Reserved_1_3   : Interfaces.SAM.UInt3;
      --  Read-only. Input Data Register Write Ready
      WRDY           : SHA_ISR_WRDY_Field;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3;
      --  Read-only. Unspecified Register Access Detection Status (cleared by
      --  writing a 1 to SWRST bit in SHA_CR)
      URAD           : SHA_ISR_URAD_Field;
      --  unspecified
      Reserved_9_11  : Interfaces.SAM.UInt3;
      --  Read-only. Unspecified Register Access Type (cleared by writing a 1
      --  to SWRST bit in SHA_CR)
      URAT           : SHA_ISR_URAT_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit;
      --  Read-only. Check Done Status (cleared by writing START or SWRST bits
      --  in SHA_CR or by reading SHA_IODATARx)
      CHECKF         : SHA_ISR_CHECKF_Field;
      --  unspecified
      Reserved_17_19 : Interfaces.SAM.UInt3;
      --  Read-only. Check Status (cleared by writing START or SWRST bits in
      --  SHA_CR or by reading SHA_IODATARx)
      CHKST          : SHA_ISR_CHKST_Field;
      --  Read-only. Security and/or Safety Event
      SECE           : SHA_ISR_SECE_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHA_ISR_Register use record
      DATRDY         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      WRDY           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      URAD           at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      URAT           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CHECKF         at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      CHKST          at 0 range 20 .. 23;
      SECE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SHA_WPMR_WPEN_Field is Interfaces.SAM.Bit;
   subtype SHA_WPMR_WPITEN_Field is Interfaces.SAM.Bit;
   subtype SHA_WPMR_WPCREN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type WPMR_WPKEYSelect is
     (--  Reset value for the field
      WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN,WPITEN,WPCREN bits. Always reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEYSelect use
     (WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5457985);

   --  Write Protection Mode Register
   type SHA_WPMR_Register is record
      --  Write Protection Configuration Enable
      WPEN         : SHA_WPMR_WPEN_Field := 16#0#;
      --  Write Protection Interruption Enable
      WPITEN       : SHA_WPMR_WPITEN_Field := 16#0#;
      --  Write Protection Control Enable
      WPCREN       : SHA_WPMR_WPCREN_Field := 16#0#;
      --  unspecified
      Reserved_3_7 : Interfaces.SAM.UInt5 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHA_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      WPITEN       at 0 range 1 .. 1;
      WPCREN       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype SHA_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype SHA_WPSR_WPVSRC_Field is Interfaces.SAM.Byte;

   --  Write Protection Status Register
   type SHA_WPSR_Register is record
      --  Read-only. Write Protection Violation Status (cleared on read)
      WPVS           : SHA_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : SHA_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHA_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Secure Hash Algorithm
   type SHA_Peripheral is record
      --  Control Register
      CR        : aliased SHA_CR_Register;
      --  Mode Register
      MR        : aliased SHA_MR_Register;
      --  Interrupt Enable Register
      IER       : aliased SHA_IER_Register;
      --  Interrupt Disable Register
      IDR       : aliased SHA_IDR_Register;
      --  Interrupt Mask Register
      IMR       : aliased SHA_IMR_Register;
      --  Interrupt Status Register
      ISR       : aliased SHA_ISR_Register;
      --  Message Size Register
      MSR       : aliased Interfaces.SAM.UInt32;
      --  Bytes Count Register
      BCR       : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 0
      IDATAR0   : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 1
      IDATAR1   : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 2
      IDATAR2   : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 3
      IDATAR3   : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 4
      IDATAR4   : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 5
      IDATAR5   : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 6
      IDATAR6   : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 7
      IDATAR7   : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 8
      IDATAR8   : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 9
      IDATAR9   : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 10
      IDATAR10  : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 11
      IDATAR11  : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 12
      IDATAR12  : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 13
      IDATAR13  : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 14
      IDATAR14  : aliased Interfaces.SAM.UInt32;
      --  Input Data 0 Register 15
      IDATAR15  : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 0
      IODATAR0  : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 1
      IODATAR1  : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 2
      IODATAR2  : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 3
      IODATAR3  : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 4
      IODATAR4  : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 5
      IODATAR5  : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 6
      IODATAR6  : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 7
      IODATAR7  : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 8
      IODATAR8  : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 9
      IODATAR9  : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 10
      IODATAR10 : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 11
      IODATAR11 : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 12
      IODATAR12 : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 13
      IODATAR13 : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 14
      IODATAR14 : aliased Interfaces.SAM.UInt32;
      --  Input/Output Data 0 Register 15
      IODATAR15 : aliased Interfaces.SAM.UInt32;
      --  Write Protection Mode Register
      WPMR      : aliased SHA_WPMR_Register;
      --  Write Protection Status Register
      WPSR      : aliased SHA_WPSR_Register;
   end record
     with Volatile;

   for SHA_Peripheral use record
      CR        at 16#0# range 0 .. 31;
      MR        at 16#4# range 0 .. 31;
      IER       at 16#10# range 0 .. 31;
      IDR       at 16#14# range 0 .. 31;
      IMR       at 16#18# range 0 .. 31;
      ISR       at 16#1C# range 0 .. 31;
      MSR       at 16#20# range 0 .. 31;
      BCR       at 16#30# range 0 .. 31;
      IDATAR0   at 16#40# range 0 .. 31;
      IDATAR1   at 16#44# range 0 .. 31;
      IDATAR2   at 16#48# range 0 .. 31;
      IDATAR3   at 16#4C# range 0 .. 31;
      IDATAR4   at 16#50# range 0 .. 31;
      IDATAR5   at 16#54# range 0 .. 31;
      IDATAR6   at 16#58# range 0 .. 31;
      IDATAR7   at 16#5C# range 0 .. 31;
      IDATAR8   at 16#60# range 0 .. 31;
      IDATAR9   at 16#64# range 0 .. 31;
      IDATAR10  at 16#68# range 0 .. 31;
      IDATAR11  at 16#6C# range 0 .. 31;
      IDATAR12  at 16#70# range 0 .. 31;
      IDATAR13  at 16#74# range 0 .. 31;
      IDATAR14  at 16#78# range 0 .. 31;
      IDATAR15  at 16#7C# range 0 .. 31;
      IODATAR0  at 16#80# range 0 .. 31;
      IODATAR1  at 16#84# range 0 .. 31;
      IODATAR2  at 16#88# range 0 .. 31;
      IODATAR3  at 16#8C# range 0 .. 31;
      IODATAR4  at 16#90# range 0 .. 31;
      IODATAR5  at 16#94# range 0 .. 31;
      IODATAR6  at 16#98# range 0 .. 31;
      IODATAR7  at 16#9C# range 0 .. 31;
      IODATAR8  at 16#A0# range 0 .. 31;
      IODATAR9  at 16#A4# range 0 .. 31;
      IODATAR10 at 16#A8# range 0 .. 31;
      IODATAR11 at 16#AC# range 0 .. 31;
      IODATAR12 at 16#B0# range 0 .. 31;
      IODATAR13 at 16#B4# range 0 .. 31;
      IODATAR14 at 16#B8# range 0 .. 31;
      IODATAR15 at 16#BC# range 0 .. 31;
      WPMR      at 16#E4# range 0 .. 31;
      WPSR      at 16#E8# range 0 .. 31;
   end record;

   --  Secure Hash Algorithm
   SHA_Periph : aliased SHA_Peripheral
     with Import, Address => SHA_Base;

end Interfaces.SAM.SHA;