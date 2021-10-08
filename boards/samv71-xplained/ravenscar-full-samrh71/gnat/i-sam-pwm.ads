--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.PWM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  CLKA Divide Factor
   type CLK_DIVASelect is
     (--  CLKA clock is turned off
      CLKA_POFF,
      --  CLKA clock is clock selected by PREA
      PREA)
     with Size => 8;
   for CLK_DIVASelect use
     (CLKA_POFF => 0,
      PREA => 1);

   --  CLKA Source Clock Selection
   type CLK_PREASelect is
     (--  Peripheral clock
      CLK,
      --  Peripheral clock/2
      CLK_DIV2,
      --  Peripheral clock/4
      CLK_DIV4,
      --  Peripheral clock/8
      CLK_DIV8,
      --  Peripheral clock/16
      CLK_DIV16,
      --  Peripheral clock/32
      CLK_DIV32,
      --  Peripheral clock/64
      CLK_DIV64,
      --  Peripheral clock/128
      CLK_DIV128,
      --  Peripheral clock/256
      CLK_DIV256,
      --  Peripheral clock/512
      CLK_DIV512,
      --  Peripheral clock/1024
      CLK_DIV1024)
     with Size => 4;
   for CLK_PREASelect use
     (CLK => 0,
      CLK_DIV2 => 1,
      CLK_DIV4 => 2,
      CLK_DIV8 => 3,
      CLK_DIV16 => 4,
      CLK_DIV32 => 5,
      CLK_DIV64 => 6,
      CLK_DIV128 => 7,
      CLK_DIV256 => 8,
      CLK_DIV512 => 9,
      CLK_DIV1024 => 10);

   --  CLKB Divide Factor
   type CLK_DIVBSelect is
     (--  CLKB clock is turned off
      CLKB_POFF,
      --  CLKB clock is clock selected by PREB
      PREB)
     with Size => 8;
   for CLK_DIVBSelect use
     (CLKB_POFF => 0,
      PREB => 1);

   --  CLKB Source Clock Selection
   type CLK_PREBSelect is
     (--  Peripheral clock
      CLK,
      --  Peripheral clock/2
      CLK_DIV2,
      --  Peripheral clock/4
      CLK_DIV4,
      --  Peripheral clock/8
      CLK_DIV8,
      --  Peripheral clock/16
      CLK_DIV16,
      --  Peripheral clock/32
      CLK_DIV32,
      --  Peripheral clock/64
      CLK_DIV64,
      --  Peripheral clock/128
      CLK_DIV128,
      --  Peripheral clock/256
      CLK_DIV256,
      --  Peripheral clock/512
      CLK_DIV512,
      --  Peripheral clock/1024
      CLK_DIV1024)
     with Size => 4;
   for CLK_PREBSelect use
     (CLK => 0,
      CLK_DIV2 => 1,
      CLK_DIV4 => 2,
      CLK_DIV8 => 3,
      CLK_DIV16 => 4,
      CLK_DIV32 => 5,
      CLK_DIV64 => 6,
      CLK_DIV128 => 7,
      CLK_DIV256 => 8,
      CLK_DIV512 => 9,
      CLK_DIV1024 => 10);

   --  PWM Clock Register
   type PWM_CLK_Register is record
      --  CLKA Divide Factor
      DIVA           : CLK_DIVASelect := Interfaces.SAM.PWM.CLKA_POFF;
      --  CLKA Source Clock Selection
      PREA           : CLK_PREASelect := Interfaces.SAM.PWM.CLK;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4 := 16#0#;
      --  CLKB Divide Factor
      DIVB           : CLK_DIVBSelect := Interfaces.SAM.PWM.CLKB_POFF;
      --  CLKB Source Clock Selection
      PREB           : CLK_PREBSelect := Interfaces.SAM.PWM.CLK;
      --  unspecified
      Reserved_28_31 : Interfaces.SAM.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CLK_Register use record
      DIVA           at 0 range 0 .. 7;
      PREA           at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DIVB           at 0 range 16 .. 23;
      PREB           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  PWM_ENA_CHID array element
   subtype PWM_ENA_CHID_Element is Interfaces.SAM.Bit;

   --  PWM_ENA_CHID array
   type PWM_ENA_CHID_Field_Array is array (0 .. 3) of PWM_ENA_CHID_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_ENA_CHID
   type PWM_ENA_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_ENA_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_ENA_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Enable Register
   type PWM_ENA_Register is record
      --  Write-only. Channel ID
      CHID          : PWM_ENA_CHID_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_ENA_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM_DIS_CHID array element
   subtype PWM_DIS_CHID_Element is Interfaces.SAM.Bit;

   --  PWM_DIS_CHID array
   type PWM_DIS_CHID_Field_Array is array (0 .. 3) of PWM_DIS_CHID_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_DIS_CHID
   type PWM_DIS_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_DIS_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_DIS_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Disable Register
   type PWM_DIS_Register is record
      --  Write-only. Channel ID
      CHID          : PWM_DIS_CHID_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_DIS_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM_SR_CHID array element
   subtype PWM_SR_CHID_Element is Interfaces.SAM.Bit;

   --  PWM_SR_CHID array
   type PWM_SR_CHID_Field_Array is array (0 .. 3) of PWM_SR_CHID_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_SR_CHID
   type PWM_SR_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_SR_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_SR_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Status Register
   type PWM_SR_Register is record
      --  Read-only. Channel ID
      CHID          : PWM_SR_CHID_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_SR_Register use record
      CHID          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWM_IER1_CHID array element
   subtype PWM_IER1_CHID_Element is Interfaces.SAM.Bit;

   --  PWM_IER1_CHID array
   type PWM_IER1_CHID_Field_Array is array (0 .. 3) of PWM_IER1_CHID_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_IER1_CHID
   type PWM_IER1_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_IER1_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_IER1_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM_IER1_FCHID array element
   subtype PWM_IER1_FCHID_Element is Interfaces.SAM.Bit;

   --  PWM_IER1_FCHID array
   type PWM_IER1_FCHID_Field_Array is array (0 .. 3)
     of PWM_IER1_FCHID_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_IER1_FCHID
   type PWM_IER1_FCHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FCHID as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  FCHID as an array
            Arr : PWM_IER1_FCHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_IER1_FCHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Interrupt Enable Register 1
   type PWM_IER1_Register is record
      --  Write-only. Counter Event on Channel 0 Interrupt Enable
      CHID           : PWM_IER1_CHID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12 := 16#0#;
      --  Write-only. Fault Protection Trigger on Channel 0 Interrupt Enable
      FCHID          : PWM_IER1_FCHID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_IER1_Register use record
      CHID           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FCHID          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM_IDR1_CHID array element
   subtype PWM_IDR1_CHID_Element is Interfaces.SAM.Bit;

   --  PWM_IDR1_CHID array
   type PWM_IDR1_CHID_Field_Array is array (0 .. 3) of PWM_IDR1_CHID_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_IDR1_CHID
   type PWM_IDR1_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_IDR1_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_IDR1_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM_IDR1_FCHID array element
   subtype PWM_IDR1_FCHID_Element is Interfaces.SAM.Bit;

   --  PWM_IDR1_FCHID array
   type PWM_IDR1_FCHID_Field_Array is array (0 .. 3)
     of PWM_IDR1_FCHID_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_IDR1_FCHID
   type PWM_IDR1_FCHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FCHID as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  FCHID as an array
            Arr : PWM_IDR1_FCHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_IDR1_FCHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Interrupt Disable Register 1
   type PWM_IDR1_Register is record
      --  Write-only. Counter Event on Channel 0 Interrupt Disable
      CHID           : PWM_IDR1_CHID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12 := 16#0#;
      --  Write-only. Fault Protection Trigger on Channel 0 Interrupt Disable
      FCHID          : PWM_IDR1_FCHID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_IDR1_Register use record
      CHID           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FCHID          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM_IMR1_CHID array element
   subtype PWM_IMR1_CHID_Element is Interfaces.SAM.Bit;

   --  PWM_IMR1_CHID array
   type PWM_IMR1_CHID_Field_Array is array (0 .. 3) of PWM_IMR1_CHID_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_IMR1_CHID
   type PWM_IMR1_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_IMR1_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_IMR1_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM_IMR1_FCHID array element
   subtype PWM_IMR1_FCHID_Element is Interfaces.SAM.Bit;

   --  PWM_IMR1_FCHID array
   type PWM_IMR1_FCHID_Field_Array is array (0 .. 3)
     of PWM_IMR1_FCHID_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_IMR1_FCHID
   type PWM_IMR1_FCHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FCHID as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  FCHID as an array
            Arr : PWM_IMR1_FCHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_IMR1_FCHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Interrupt Mask Register 1
   type PWM_IMR1_Register is record
      --  Read-only. Counter Event on Channel 0 Interrupt Mask
      CHID           : PWM_IMR1_CHID_Field;
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12;
      --  Read-only. Fault Protection Trigger on Channel 0 Interrupt Mask
      FCHID          : PWM_IMR1_FCHID_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_IMR1_Register use record
      CHID           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FCHID          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM_ISR1_CHID array element
   subtype PWM_ISR1_CHID_Element is Interfaces.SAM.Bit;

   --  PWM_ISR1_CHID array
   type PWM_ISR1_CHID_Field_Array is array (0 .. 3) of PWM_ISR1_CHID_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_ISR1_CHID
   type PWM_ISR1_CHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHID as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  CHID as an array
            Arr : PWM_ISR1_CHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_ISR1_CHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM_ISR1_FCHID array element
   subtype PWM_ISR1_FCHID_Element is Interfaces.SAM.Bit;

   --  PWM_ISR1_FCHID array
   type PWM_ISR1_FCHID_Field_Array is array (0 .. 3)
     of PWM_ISR1_FCHID_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_ISR1_FCHID
   type PWM_ISR1_FCHID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FCHID as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  FCHID as an array
            Arr : PWM_ISR1_FCHID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_ISR1_FCHID_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Interrupt Status Register 1
   type PWM_ISR1_Register is record
      --  Read-only. Counter Event on Channel 0
      CHID           : PWM_ISR1_CHID_Field;
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12;
      --  Read-only. Fault Protection Trigger on Channel 0
      FCHID          : PWM_ISR1_FCHID_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_ISR1_Register use record
      CHID           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FCHID          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM_SCM_SYNC array element
   subtype PWM_SCM_SYNC_Element is Interfaces.SAM.Bit;

   --  PWM_SCM_SYNC array
   type PWM_SCM_SYNC_Field_Array is array (0 .. 3) of PWM_SCM_SYNC_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_SCM_SYNC
   type PWM_SCM_SYNC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SYNC as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  SYNC as an array
            Arr : PWM_SCM_SYNC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_SCM_SYNC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Synchronous Channels Update Mode
   type SCM_UPDMSelect is
     (--  Manual write of double buffer registers and manual update of synchronous
--  channels
      MODE0,
      --  Manual write of double buffer registers and automatic update of synchronous
--  channels
      MODE1,
      --  Automatic write of duty-cycle update registers by the DMA Controller and
--  automatic update of synchronous channels
      MODE2)
     with Size => 2;
   for SCM_UPDMSelect use
     (MODE0 => 0,
      MODE1 => 1,
      MODE2 => 2);

   subtype PWM_SCM_PTRM_Field is Interfaces.SAM.Bit;
   subtype PWM_SCM_PTRCS_Field is Interfaces.SAM.UInt3;

   --  PWM Sync Channels Mode Register
   type PWM_SCM_Register is record
      --  Synchronous Channel 0
      SYNC           : PWM_SCM_SYNC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12 := 16#0#;
      --  Synchronous Channels Update Mode
      UPDM           : SCM_UPDMSelect := Interfaces.SAM.PWM.MODE0;
      --  unspecified
      Reserved_18_19 : Interfaces.SAM.UInt2 := 16#0#;
      --  DMA Controller Transfer Request Mode
      PTRM           : PWM_SCM_PTRM_Field := 16#0#;
      --  DMA Controller Transfer Request Comparison Selection
      PTRCS          : PWM_SCM_PTRCS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_SCM_Register use record
      SYNC           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      UPDM           at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      PTRM           at 0 range 20 .. 20;
      PTRCS          at 0 range 21 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM_DMAR_DMADUTY_Field is Interfaces.SAM.UInt24;

   --  PWM DMA Register
   type PWM_DMAR_Register is record
      --  Write-only. Duty-Cycle Holding Register for DMA Access
      DMADUTY        : PWM_DMAR_DMADUTY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_DMAR_Register use record
      DMADUTY        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM_SCUC_UPDULOCK_Field is Interfaces.SAM.Bit;

   --  PWM Sync Channels Update Control Register
   type PWM_SCUC_Register is record
      --  Synchronous Channels Update Unlock
      UPDULOCK      : PWM_SCUC_UPDULOCK_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_SCUC_Register use record
      UPDULOCK      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype PWM_SCUP_UPR_Field is Interfaces.SAM.UInt4;
   subtype PWM_SCUP_UPRCNT_Field is Interfaces.SAM.UInt4;

   --  PWM Sync Channels Update Period Register
   type PWM_SCUP_Register is record
      --  Update Period
      UPR           : PWM_SCUP_UPR_Field := 16#0#;
      --  Update Period Counter
      UPRCNT        : PWM_SCUP_UPRCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_SCUP_Register use record
      UPR           at 0 range 0 .. 3;
      UPRCNT        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PWM_SCUPUPD_UPRUPD_Field is Interfaces.SAM.UInt4;

   --  PWM Sync Channels Update Period Update Register
   type PWM_SCUPUPD_Register is record
      --  Write-only. Update Period Update
      UPRUPD        : PWM_SCUPUPD_UPRUPD_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_SCUPUPD_Register use record
      UPRUPD        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PWM_IER2_WRDY_Field is Interfaces.SAM.Bit;
   subtype PWM_IER2_UNRE_Field is Interfaces.SAM.Bit;
   --  PWM_IER2_CMPM array element
   subtype PWM_IER2_CMPM_Element is Interfaces.SAM.Bit;

   --  PWM_IER2_CMPM array
   type PWM_IER2_CMPM_Field_Array is array (0 .. 7) of PWM_IER2_CMPM_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM_IER2_CMPM
   type PWM_IER2_CMPM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPM as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  CMPM as an array
            Arr : PWM_IER2_CMPM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM_IER2_CMPM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM_IER2_CMPU array element
   subtype PWM_IER2_CMPU_Element is Interfaces.SAM.Bit;

   --  PWM_IER2_CMPU array
   type PWM_IER2_CMPU_Field_Array is array (0 .. 7) of PWM_IER2_CMPU_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM_IER2_CMPU
   type PWM_IER2_CMPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPU as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  CMPU as an array
            Arr : PWM_IER2_CMPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM_IER2_CMPU_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM Interrupt Enable Register 2
   type PWM_IER2_Register is record
      --  Write-only. Write Ready for Synchronous Channels Update Interrupt
      --  Enable
      WRDY           : PWM_IER2_WRDY_Field := 16#0#;
      --  unspecified
      Reserved_1_2   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Synchronous Channels Update Underrun Error Interrupt
      --  Enable
      UNRE           : PWM_IER2_UNRE_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Comparison 0 Match Interrupt Enable
      CMPM           : PWM_IER2_CMPM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Comparison 0 Update Interrupt Enable
      CMPU           : PWM_IER2_CMPU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_IER2_Register use record
      WRDY           at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      UNRE           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CMPM           at 0 range 8 .. 15;
      CMPU           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM_IDR2_WRDY_Field is Interfaces.SAM.Bit;
   subtype PWM_IDR2_UNRE_Field is Interfaces.SAM.Bit;
   --  PWM_IDR2_CMPM array element
   subtype PWM_IDR2_CMPM_Element is Interfaces.SAM.Bit;

   --  PWM_IDR2_CMPM array
   type PWM_IDR2_CMPM_Field_Array is array (0 .. 7) of PWM_IDR2_CMPM_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM_IDR2_CMPM
   type PWM_IDR2_CMPM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPM as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  CMPM as an array
            Arr : PWM_IDR2_CMPM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM_IDR2_CMPM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM_IDR2_CMPU array element
   subtype PWM_IDR2_CMPU_Element is Interfaces.SAM.Bit;

   --  PWM_IDR2_CMPU array
   type PWM_IDR2_CMPU_Field_Array is array (0 .. 7) of PWM_IDR2_CMPU_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM_IDR2_CMPU
   type PWM_IDR2_CMPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPU as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  CMPU as an array
            Arr : PWM_IDR2_CMPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM_IDR2_CMPU_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM Interrupt Disable Register 2
   type PWM_IDR2_Register is record
      --  Write-only. Write Ready for Synchronous Channels Update Interrupt
      --  Disable
      WRDY           : PWM_IDR2_WRDY_Field := 16#0#;
      --  unspecified
      Reserved_1_2   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Synchronous Channels Update Underrun Error Interrupt
      --  Disable
      UNRE           : PWM_IDR2_UNRE_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Comparison 0 Match Interrupt Disable
      CMPM           : PWM_IDR2_CMPM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Comparison 0 Update Interrupt Disable
      CMPU           : PWM_IDR2_CMPU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_IDR2_Register use record
      WRDY           at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      UNRE           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CMPM           at 0 range 8 .. 15;
      CMPU           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM_IMR2_WRDY_Field is Interfaces.SAM.Bit;
   subtype PWM_IMR2_UNRE_Field is Interfaces.SAM.Bit;
   --  PWM_IMR2_CMPM array element
   subtype PWM_IMR2_CMPM_Element is Interfaces.SAM.Bit;

   --  PWM_IMR2_CMPM array
   type PWM_IMR2_CMPM_Field_Array is array (0 .. 7) of PWM_IMR2_CMPM_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM_IMR2_CMPM
   type PWM_IMR2_CMPM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPM as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  CMPM as an array
            Arr : PWM_IMR2_CMPM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM_IMR2_CMPM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM_IMR2_CMPU array element
   subtype PWM_IMR2_CMPU_Element is Interfaces.SAM.Bit;

   --  PWM_IMR2_CMPU array
   type PWM_IMR2_CMPU_Field_Array is array (0 .. 7) of PWM_IMR2_CMPU_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM_IMR2_CMPU
   type PWM_IMR2_CMPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPU as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  CMPU as an array
            Arr : PWM_IMR2_CMPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM_IMR2_CMPU_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM Interrupt Mask Register 2
   type PWM_IMR2_Register is record
      --  Read-only. Write Ready for Synchronous Channels Update Interrupt Mask
      WRDY           : PWM_IMR2_WRDY_Field;
      --  unspecified
      Reserved_1_2   : Interfaces.SAM.UInt2;
      --  Read-only. Synchronous Channels Update Underrun Error Interrupt Mask
      UNRE           : PWM_IMR2_UNRE_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4;
      --  Read-only. Comparison 0 Match Interrupt Mask
      CMPM           : PWM_IMR2_CMPM_Field;
      --  Read-only. Comparison 0 Update Interrupt Mask
      CMPU           : PWM_IMR2_CMPU_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_IMR2_Register use record
      WRDY           at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      UNRE           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CMPM           at 0 range 8 .. 15;
      CMPU           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM_ISR2_WRDY_Field is Interfaces.SAM.Bit;
   subtype PWM_ISR2_UNRE_Field is Interfaces.SAM.Bit;
   --  PWM_ISR2_CMPM array element
   subtype PWM_ISR2_CMPM_Element is Interfaces.SAM.Bit;

   --  PWM_ISR2_CMPM array
   type PWM_ISR2_CMPM_Field_Array is array (0 .. 7) of PWM_ISR2_CMPM_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM_ISR2_CMPM
   type PWM_ISR2_CMPM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPM as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  CMPM as an array
            Arr : PWM_ISR2_CMPM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM_ISR2_CMPM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM_ISR2_CMPU array element
   subtype PWM_ISR2_CMPU_Element is Interfaces.SAM.Bit;

   --  PWM_ISR2_CMPU array
   type PWM_ISR2_CMPU_Field_Array is array (0 .. 7) of PWM_ISR2_CMPU_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM_ISR2_CMPU
   type PWM_ISR2_CMPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMPU as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  CMPU as an array
            Arr : PWM_ISR2_CMPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM_ISR2_CMPU_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM Interrupt Status Register 2
   type PWM_ISR2_Register is record
      --  Read-only. Write Ready for Synchronous Channels Update
      WRDY           : PWM_ISR2_WRDY_Field;
      --  unspecified
      Reserved_1_2   : Interfaces.SAM.UInt2;
      --  Read-only. Synchronous Channels Update Underrun Error
      UNRE           : PWM_ISR2_UNRE_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4;
      --  Read-only. Comparison 0 Match
      CMPM           : PWM_ISR2_CMPM_Field;
      --  Read-only. Comparison 0 Update
      CMPU           : PWM_ISR2_CMPU_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_ISR2_Register use record
      WRDY           at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      UNRE           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CMPM           at 0 range 8 .. 15;
      CMPU           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PWM_OOV_OOVH array element
   subtype PWM_OOV_OOVH_Element is Interfaces.SAM.Bit;

   --  PWM_OOV_OOVH array
   type PWM_OOV_OOVH_Field_Array is array (0 .. 3) of PWM_OOV_OOVH_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_OOV_OOVH
   type PWM_OOV_OOVH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OOVH as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  OOVH as an array
            Arr : PWM_OOV_OOVH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_OOV_OOVH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM_OOV_OOVL array element
   subtype PWM_OOV_OOVL_Element is Interfaces.SAM.Bit;

   --  PWM_OOV_OOVL array
   type PWM_OOV_OOVL_Field_Array is array (0 .. 3) of PWM_OOV_OOVL_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_OOV_OOVL
   type PWM_OOV_OOVL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OOVL as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  OOVL as an array
            Arr : PWM_OOV_OOVL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_OOV_OOVL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Output Override Value Register
   type PWM_OOV_Register is record
      --  Output Override Value for PWMH output of the channel 0
      OOVH           : PWM_OOV_OOVH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12 := 16#0#;
      --  Output Override Value for PWML output of the channel 0
      OOVL           : PWM_OOV_OOVL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_OOV_Register use record
      OOVH           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OOVL           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM_OS_OSH array element
   subtype PWM_OS_OSH_Element is Interfaces.SAM.Bit;

   --  PWM_OS_OSH array
   type PWM_OS_OSH_Field_Array is array (0 .. 3) of PWM_OS_OSH_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_OS_OSH
   type PWM_OS_OSH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSH as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  OSH as an array
            Arr : PWM_OS_OSH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_OS_OSH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM_OS_OSL array element
   subtype PWM_OS_OSL_Element is Interfaces.SAM.Bit;

   --  PWM_OS_OSL array
   type PWM_OS_OSL_Field_Array is array (0 .. 3) of PWM_OS_OSL_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_OS_OSL
   type PWM_OS_OSL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSL as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  OSL as an array
            Arr : PWM_OS_OSL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_OS_OSL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Output Selection Register
   type PWM_OS_Register is record
      --  Output Selection for PWMH output of the channel 0
      OSH            : PWM_OS_OSH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12 := 16#0#;
      --  Output Selection for PWML output of the channel 0
      OSL            : PWM_OS_OSL_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_OS_Register use record
      OSH            at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OSL            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM_OSS_OSSH array element
   subtype PWM_OSS_OSSH_Element is Interfaces.SAM.Bit;

   --  PWM_OSS_OSSH array
   type PWM_OSS_OSSH_Field_Array is array (0 .. 3) of PWM_OSS_OSSH_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_OSS_OSSH
   type PWM_OSS_OSSH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSSH as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  OSSH as an array
            Arr : PWM_OSS_OSSH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_OSS_OSSH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM_OSS_OSSL array element
   subtype PWM_OSS_OSSL_Element is Interfaces.SAM.Bit;

   --  PWM_OSS_OSSL array
   type PWM_OSS_OSSL_Field_Array is array (0 .. 3) of PWM_OSS_OSSL_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_OSS_OSSL
   type PWM_OSS_OSSL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSSL as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  OSSL as an array
            Arr : PWM_OSS_OSSL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_OSS_OSSL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Output Selection Set Register
   type PWM_OSS_Register is record
      --  Write-only. Output Selection Set for PWMH output of the channel 0
      OSSH           : PWM_OSS_OSSH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12 := 16#0#;
      --  Write-only. Output Selection Set for PWML output of the channel 0
      OSSL           : PWM_OSS_OSSL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_OSS_Register use record
      OSSH           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OSSL           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM_OSC_OSCH array element
   subtype PWM_OSC_OSCH_Element is Interfaces.SAM.Bit;

   --  PWM_OSC_OSCH array
   type PWM_OSC_OSCH_Field_Array is array (0 .. 3) of PWM_OSC_OSCH_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_OSC_OSCH
   type PWM_OSC_OSCH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSCH as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  OSCH as an array
            Arr : PWM_OSC_OSCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_OSC_OSCH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM_OSC_OSCL array element
   subtype PWM_OSC_OSCL_Element is Interfaces.SAM.Bit;

   --  PWM_OSC_OSCL array
   type PWM_OSC_OSCL_Field_Array is array (0 .. 3) of PWM_OSC_OSCL_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_OSC_OSCL
   type PWM_OSC_OSCL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSCL as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  OSCL as an array
            Arr : PWM_OSC_OSCL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_OSC_OSCL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Output Selection Clear Register
   type PWM_OSC_Register is record
      --  Write-only. Output Selection Clear for PWMH output of the channel 0
      OSCH           : PWM_OSC_OSCH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12 := 16#0#;
      --  Write-only. Output Selection Clear for PWML output of the channel 0
      OSCL           : PWM_OSC_OSCL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_OSC_Register use record
      OSCH           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OSCL           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM_OSSUPD_OSSUPH array element
   subtype PWM_OSSUPD_OSSUPH_Element is Interfaces.SAM.Bit;

   --  PWM_OSSUPD_OSSUPH array
   type PWM_OSSUPD_OSSUPH_Field_Array is array (0 .. 3)
     of PWM_OSSUPD_OSSUPH_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_OSSUPD_OSSUPH
   type PWM_OSSUPD_OSSUPH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSSUPH as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  OSSUPH as an array
            Arr : PWM_OSSUPD_OSSUPH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_OSSUPD_OSSUPH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM_OSSUPD_OSSUPL array element
   subtype PWM_OSSUPD_OSSUPL_Element is Interfaces.SAM.Bit;

   --  PWM_OSSUPD_OSSUPL array
   type PWM_OSSUPD_OSSUPL_Field_Array is array (0 .. 3)
     of PWM_OSSUPD_OSSUPL_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_OSSUPD_OSSUPL
   type PWM_OSSUPD_OSSUPL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSSUPL as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  OSSUPL as an array
            Arr : PWM_OSSUPD_OSSUPL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_OSSUPD_OSSUPL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Output Selection Set Update Register
   type PWM_OSSUPD_Register is record
      --  Write-only. Output Selection Set for PWMH output of the channel 0
      OSSUPH         : PWM_OSSUPD_OSSUPH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12 := 16#0#;
      --  Write-only. Output Selection Set for PWML output of the channel 0
      OSSUPL         : PWM_OSSUPD_OSSUPL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_OSSUPD_Register use record
      OSSUPH         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OSSUPL         at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM_OSCUPD_OSCUPH array element
   subtype PWM_OSCUPD_OSCUPH_Element is Interfaces.SAM.Bit;

   --  PWM_OSCUPD_OSCUPH array
   type PWM_OSCUPD_OSCUPH_Field_Array is array (0 .. 3)
     of PWM_OSCUPD_OSCUPH_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_OSCUPD_OSCUPH
   type PWM_OSCUPD_OSCUPH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSCUPH as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  OSCUPH as an array
            Arr : PWM_OSCUPD_OSCUPH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_OSCUPD_OSCUPH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM_OSCUPD_OSCUPL array element
   subtype PWM_OSCUPD_OSCUPL_Element is Interfaces.SAM.Bit;

   --  PWM_OSCUPD_OSCUPL array
   type PWM_OSCUPD_OSCUPL_Field_Array is array (0 .. 3)
     of PWM_OSCUPD_OSCUPL_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_OSCUPD_OSCUPL
   type PWM_OSCUPD_OSCUPL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSCUPL as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  OSCUPL as an array
            Arr : PWM_OSCUPD_OSCUPL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_OSCUPD_OSCUPL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Output Selection Clear Update Register
   type PWM_OSCUPD_Register is record
      --  Write-only. Output Selection Clear for PWMH output of the channel 0
      OSCUPH         : PWM_OSCUPD_OSCUPH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12 := 16#0#;
      --  Write-only. Output Selection Clear for PWML output of the channel 0
      OSCUPL         : PWM_OSCUPD_OSCUPL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_OSCUPD_Register use record
      OSCUPH         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OSCUPL         at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype PWM_FMR_FPOL_Field is Interfaces.SAM.Byte;
   subtype PWM_FMR_FMOD_Field is Interfaces.SAM.Byte;
   subtype PWM_FMR_FFIL_Field is Interfaces.SAM.Byte;

   --  PWM Fault Mode Register
   type PWM_FMR_Register is record
      --  Fault Polarity
      FPOL           : PWM_FMR_FPOL_Field := 16#0#;
      --  Fault Activation Mode
      FMOD           : PWM_FMR_FMOD_Field := 16#0#;
      --  Fault Filtering
      FFIL           : PWM_FMR_FFIL_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_FMR_Register use record
      FPOL           at 0 range 0 .. 7;
      FMOD           at 0 range 8 .. 15;
      FFIL           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM_FSR_FIV_Field is Interfaces.SAM.Byte;
   subtype PWM_FSR_FS_Field is Interfaces.SAM.Byte;

   --  PWM Fault Status Register
   type PWM_FSR_Register is record
      --  Read-only. Fault Input Value
      FIV            : PWM_FSR_FIV_Field;
      --  Read-only. Fault Status
      FS             : PWM_FSR_FS_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_FSR_Register use record
      FIV            at 0 range 0 .. 7;
      FS             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PWM_FCR_FCLR_Field is Interfaces.SAM.Byte;

   --  PWM Fault Clear Register
   type PWM_FCR_Register is record
      --  Write-only. Fault Clear
      FCLR          : PWM_FCR_FCLR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_FCR_Register use record
      FCLR          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWM_FPV1_FPVH array element
   subtype PWM_FPV1_FPVH_Element is Interfaces.SAM.Bit;

   --  PWM_FPV1_FPVH array
   type PWM_FPV1_FPVH_Field_Array is array (0 .. 3) of PWM_FPV1_FPVH_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_FPV1_FPVH
   type PWM_FPV1_FPVH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPVH as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  FPVH as an array
            Arr : PWM_FPV1_FPVH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_FPV1_FPVH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM_FPV1_FPVL array element
   subtype PWM_FPV1_FPVL_Element is Interfaces.SAM.Bit;

   --  PWM_FPV1_FPVL array
   type PWM_FPV1_FPVL_Field_Array is array (0 .. 3) of PWM_FPV1_FPVL_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_FPV1_FPVL
   type PWM_FPV1_FPVL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPVL as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  FPVL as an array
            Arr : PWM_FPV1_FPVL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_FPV1_FPVL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Fault Protection Value Register 1
   type PWM_FPV1_Register is record
      --  Fault Protection Value for PWMH output on channel 0
      FPVH           : PWM_FPV1_FPVH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12 := 16#0#;
      --  Fault Protection Value for PWML output on channel 0
      FPVL           : PWM_FPV1_FPVL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_FPV1_Register use record
      FPVH           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FPVL           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM_FPE_FPE array element
   subtype PWM_FPE_FPE_Element is Interfaces.SAM.Byte;

   --  PWM_FPE_FPE array
   type PWM_FPE_FPE_Field_Array is array (0 .. 3) of PWM_FPE_FPE_Element
     with Component_Size => 8, Size => 32;

   --  PWM Fault Protection Enable Register
   type PWM_FPE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPE as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  FPE as an array
            Arr : PWM_FPE_FPE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_FPE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PWM_ELMR_CSEL array element
   subtype PWM_ELMR_CSEL_Element is Interfaces.SAM.Bit;

   --  PWM_ELMR_CSEL array
   type PWM_ELMR_CSEL_Field_Array is array (0 .. 7) of PWM_ELMR_CSEL_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PWM_ELMR_CSEL
   type PWM_ELMR_CSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CSEL as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  CSEL as an array
            Arr : PWM_ELMR_CSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWM_ELMR_CSEL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWM Event Line 0 Mode Register
   type PWM_ELMR_Register is record
      --  Comparison 0 Selection
      CSEL          : PWM_ELMR_CSEL_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_ELMR_Register use record
      CSEL          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWM Event Line 0 Mode Register
   type PWM_ELMR_Registers is array (0 .. 1) of PWM_ELMR_Register;

   subtype PWM_SSPR_SPRD_Field is Interfaces.SAM.UInt24;
   subtype PWM_SSPR_SPRDM_Field is Interfaces.SAM.Bit;

   --  PWM Spread Spectrum Register
   type PWM_SSPR_Register is record
      --  Spread Spectrum Limit Value
      SPRD           : PWM_SSPR_SPRD_Field := 16#0#;
      --  Spread Spectrum Counter Mode
      SPRDM          : PWM_SSPR_SPRDM_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_SSPR_Register use record
      SPRD           at 0 range 0 .. 23;
      SPRDM          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype PWM_SSPUP_SPRDUP_Field is Interfaces.SAM.UInt24;

   --  PWM Spread Spectrum Update Register
   type PWM_SSPUP_Register is record
      --  Write-only. Spread Spectrum Limit Value Update
      SPRDUP         : PWM_SSPUP_SPRDUP_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_SSPUP_Register use record
      SPRDUP         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PWM_SMMR_GCEN array element
   subtype PWM_SMMR_GCEN_Element is Interfaces.SAM.Bit;

   --  PWM_SMMR_GCEN array
   type PWM_SMMR_GCEN_Field_Array is array (0 .. 1) of PWM_SMMR_GCEN_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PWM_SMMR_GCEN
   type PWM_SMMR_GCEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GCEN as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  GCEN as an array
            Arr : PWM_SMMR_GCEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWM_SMMR_GCEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWM_SMMR_DOWN array element
   subtype PWM_SMMR_DOWN_Element is Interfaces.SAM.Bit;

   --  PWM_SMMR_DOWN array
   type PWM_SMMR_DOWN_Field_Array is array (0 .. 1) of PWM_SMMR_DOWN_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PWM_SMMR_DOWN
   type PWM_SMMR_DOWN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DOWN as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  DOWN as an array
            Arr : PWM_SMMR_DOWN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWM_SMMR_DOWN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWM Stepper Motor Mode Register
   type PWM_SMMR_Register is record
      --  Gray Count Enable
      GCEN           : PWM_SMMR_GCEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_15  : Interfaces.SAM.UInt14 := 16#0#;
      --  Down Count
      DOWN           : PWM_SMMR_DOWN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : Interfaces.SAM.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_SMMR_Register use record
      GCEN           at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      DOWN           at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  PWM_FPV2_FPZH array element
   subtype PWM_FPV2_FPZH_Element is Interfaces.SAM.Bit;

   --  PWM_FPV2_FPZH array
   type PWM_FPV2_FPZH_Field_Array is array (0 .. 3) of PWM_FPV2_FPZH_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_FPV2_FPZH
   type PWM_FPV2_FPZH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPZH as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  FPZH as an array
            Arr : PWM_FPV2_FPZH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_FPV2_FPZH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM_FPV2_FPZL array element
   subtype PWM_FPV2_FPZL_Element is Interfaces.SAM.Bit;

   --  PWM_FPV2_FPZL array
   type PWM_FPV2_FPZL_Field_Array is array (0 .. 3) of PWM_FPV2_FPZL_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PWM_FPV2_FPZL
   type PWM_FPV2_FPZL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPZL as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  FPZL as an array
            Arr : PWM_FPV2_FPZL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWM_FPV2_FPZL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWM Fault Protection Value 2 Register
   type PWM_FPV2_Register is record
      --  Fault Protection to Hi-Z for PWMH output on channel 0
      FPZH           : PWM_FPV2_FPZH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12 := 16#0#;
      --  Fault Protection to Hi-Z for PWML output on channel 0
      FPZL           : PWM_FPV2_FPZL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_FPV2_Register use record
      FPZH           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FPZL           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Write Protection Command
   type WPCR_WPCMDSelect is
     (--  Disables the software write protection of the register groups of which the
--  bit WPRGx is at '1'.
      DISABLE_SW_PROT,
      --  Enables the software write protection of the register groups of which the
--  bit WPRGx is at '1'.
      ENABLE_SW_PROT,
      --  Enables the hardware write protection of the register groups of which the
--  bit WPRGx is at '1'. Only a hardware reset of the PWM controller can
--  disable the hardware write protection. Moreover, to meet security
--  requirements, the PIO lines associated with the PWM can not be configured
--  through the PIO interface.
      ENABLE_HW_PROT)
     with Size => 2;
   for WPCR_WPCMDSelect use
     (DISABLE_SW_PROT => 0,
      ENABLE_SW_PROT => 1,
      ENABLE_HW_PROT => 2);

   --  PWM_WPCR_WPRG array element
   subtype PWM_WPCR_WPRG_Element is Interfaces.SAM.Bit;

   --  PWM_WPCR_WPRG array
   type PWM_WPCR_WPRG_Field_Array is array (0 .. 5) of PWM_WPCR_WPRG_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for PWM_WPCR_WPRG
   type PWM_WPCR_WPRG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WPRG as a value
            Val : Interfaces.SAM.UInt6;
         when True =>
            --  WPRG as an array
            Arr : PWM_WPCR_WPRG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PWM_WPCR_WPRG_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Write Protection Key
   type WPCR_WPKEYSelect is
     (--  Reset value for the field
      WPCR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPCMD field. Always reads as 0
      PASSWD)
     with Size => 24;
   for WPCR_WPKEYSelect use
     (WPCR_WPKEYSelect_Reset => 0,
      PASSWD => 5265229);

   --  PWM Write Protection Control Register
   type PWM_WPCR_Register is record
      --  Write-only. Write Protection Command
      WPCMD : WPCR_WPCMDSelect := Interfaces.SAM.PWM.DISABLE_SW_PROT;
      --  Write-only. Write Protection Register Group 0
      WPRG  : PWM_WPCR_WPRG_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Write Protection Key
      WPKEY : WPCR_WPKEYSelect := WPCR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_WPCR_Register use record
      WPCMD at 0 range 0 .. 1;
      WPRG  at 0 range 2 .. 7;
      WPKEY at 0 range 8 .. 31;
   end record;

   --  PWM_WPSR_WPSWS array element
   subtype PWM_WPSR_WPSWS_Element is Interfaces.SAM.Bit;

   --  PWM_WPSR_WPSWS array
   type PWM_WPSR_WPSWS_Field_Array is array (0 .. 5)
     of PWM_WPSR_WPSWS_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for PWM_WPSR_WPSWS
   type PWM_WPSR_WPSWS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WPSWS as a value
            Val : Interfaces.SAM.UInt6;
         when True =>
            --  WPSWS as an array
            Arr : PWM_WPSR_WPSWS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PWM_WPSR_WPSWS_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype PWM_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   --  PWM_WPSR_WPHWS array element
   subtype PWM_WPSR_WPHWS_Element is Interfaces.SAM.Bit;

   --  PWM_WPSR_WPHWS array
   type PWM_WPSR_WPHWS_Field_Array is array (0 .. 5)
     of PWM_WPSR_WPHWS_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for PWM_WPSR_WPHWS
   type PWM_WPSR_WPHWS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WPHWS as a value
            Val : Interfaces.SAM.UInt6;
         when True =>
            --  WPHWS as an array
            Arr : PWM_WPSR_WPHWS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PWM_WPSR_WPHWS_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype PWM_WPSR_WPVSRC_Field is Interfaces.SAM.UInt16;

   --  PWM Write Protection Status Register
   type PWM_WPSR_Register is record
      --  Read-only. Write Protect SW Status
      WPSWS          : PWM_WPSR_WPSWS_Field;
      --  unspecified
      Reserved_6_6   : Interfaces.SAM.Bit;
      --  Read-only. Write Protect Violation Status
      WPVS           : PWM_WPSR_WPVS_Field;
      --  Read-only. Write Protect HW Status
      WPHWS          : PWM_WPSR_WPHWS_Field;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2;
      --  Read-only. Write Protect Violation Source
      WPVSRC         : PWM_WPSR_WPVSRC_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_WPSR_Register use record
      WPSWS          at 0 range 0 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      WPVS           at 0 range 7 .. 7;
      WPHWS          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      WPVSRC         at 0 range 16 .. 31;
   end record;

   -------------------------------------
   -- PWM_PWM_CMP cluster's Registers --
   -------------------------------------

   subtype PWM_CMPV_PWM_PWM_CMP_CV_Field is Interfaces.SAM.UInt24;

   --  Comparison x Value Mode
   type CMPV_CVMSelect is
     (--  Compare when counter is incrementing
      COMPARE_AT_INCREMENT,
      --  Compare when counter is decrementing
      COMPARE_AT_DECREMENT)
     with Size => 1;
   for CMPV_CVMSelect use
     (COMPARE_AT_INCREMENT => 0,
      COMPARE_AT_DECREMENT => 1);

   --  PWM Comparison x Value Register
   type PWM_CMPV_PWM_PWM_CMP_Register is record
      --  Comparison x Value
      CV             : PWM_CMPV_PWM_PWM_CMP_CV_Field := 16#0#;
      --  Comparison x Value Mode
      CVM            : CMPV_CVMSelect :=
                        Interfaces.SAM.PWM.COMPARE_AT_INCREMENT;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CMPV_PWM_PWM_CMP_Register use record
      CV             at 0 range 0 .. 23;
      CVM            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype PWM_CMPVUPD_PWM_PWM_CMP_CVUPD_Field is Interfaces.SAM.UInt24;
   subtype PWM_CMPVUPD_PWM_PWM_CMP_CVMUPD_Field is Interfaces.SAM.Bit;

   --  PWM Comparison x Value Update Register
   type PWM_CMPVUPD_PWM_PWM_CMP_Register is record
      --  Write-only. Comparison x Value Update
      CVUPD          : PWM_CMPVUPD_PWM_PWM_CMP_CVUPD_Field := 16#0#;
      --  Write-only. Comparison x Value Mode Update
      CVMUPD         : PWM_CMPVUPD_PWM_PWM_CMP_CVMUPD_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CMPVUPD_PWM_PWM_CMP_Register use record
      CVUPD          at 0 range 0 .. 23;
      CVMUPD         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype PWM_CMPM_PWM_PWM_CMP_CEN_Field is Interfaces.SAM.Bit;
   subtype PWM_CMPM_PWM_PWM_CMP_CTR_Field is Interfaces.SAM.UInt4;
   subtype PWM_CMPM_PWM_PWM_CMP_CPR_Field is Interfaces.SAM.UInt4;
   subtype PWM_CMPM_PWM_PWM_CMP_CPRCNT_Field is Interfaces.SAM.UInt4;
   subtype PWM_CMPM_PWM_PWM_CMP_CUPR_Field is Interfaces.SAM.UInt4;
   subtype PWM_CMPM_PWM_PWM_CMP_CUPRCNT_Field is Interfaces.SAM.UInt4;

   --  PWM Comparison x Mode Register
   type PWM_CMPM_PWM_PWM_CMP_Register is record
      --  Comparison x Enable
      CEN            : PWM_CMPM_PWM_PWM_CMP_CEN_Field := 16#0#;
      --  unspecified
      Reserved_1_3   : Interfaces.SAM.UInt3 := 16#0#;
      --  Comparison x Trigger
      CTR            : PWM_CMPM_PWM_PWM_CMP_CTR_Field := 16#0#;
      --  Comparison x Period
      CPR            : PWM_CMPM_PWM_PWM_CMP_CPR_Field := 16#0#;
      --  Comparison x Period Counter
      CPRCNT         : PWM_CMPM_PWM_PWM_CMP_CPRCNT_Field := 16#0#;
      --  Comparison x Update Period
      CUPR           : PWM_CMPM_PWM_PWM_CMP_CUPR_Field := 16#0#;
      --  Comparison x Update Period Counter
      CUPRCNT        : PWM_CMPM_PWM_PWM_CMP_CUPRCNT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CMPM_PWM_PWM_CMP_Register use record
      CEN            at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      CTR            at 0 range 4 .. 7;
      CPR            at 0 range 8 .. 11;
      CPRCNT         at 0 range 12 .. 15;
      CUPR           at 0 range 16 .. 19;
      CUPRCNT        at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM_CMPMUPD_PWM_PWM_CMP_CENUPD_Field is Interfaces.SAM.Bit;
   subtype PWM_CMPMUPD_PWM_PWM_CMP_CTRUPD_Field is Interfaces.SAM.UInt4;
   subtype PWM_CMPMUPD_PWM_PWM_CMP_CPRUPD_Field is Interfaces.SAM.UInt4;
   subtype PWM_CMPMUPD_PWM_PWM_CMP_CUPRUPD_Field is Interfaces.SAM.UInt4;

   --  PWM Comparison x Mode Update Register
   type PWM_CMPMUPD_PWM_PWM_CMP_Register is record
      --  Write-only. Comparison x Enable Update
      CENUPD         : PWM_CMPMUPD_PWM_PWM_CMP_CENUPD_Field := 16#0#;
      --  unspecified
      Reserved_1_3   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Comparison x Trigger Update
      CTRUPD         : PWM_CMPMUPD_PWM_PWM_CMP_CTRUPD_Field := 16#0#;
      --  Write-only. Comparison x Period Update
      CPRUPD         : PWM_CMPMUPD_PWM_PWM_CMP_CPRUPD_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Comparison x Update Period Update
      CUPRUPD        : PWM_CMPMUPD_PWM_PWM_CMP_CUPRUPD_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CMPMUPD_PWM_PWM_CMP_Register use record
      CENUPD         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      CTRUPD         at 0 range 4 .. 7;
      CPRUPD         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      CUPRUPD        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWM Comparison 0 Value Register
   type PWM_PWM_CMP_Cluster is record
      --  PWM Comparison x Value Register
      CMPV    : aliased PWM_CMPV_PWM_PWM_CMP_Register;
      --  PWM Comparison x Value Update Register
      CMPVUPD : aliased PWM_CMPVUPD_PWM_PWM_CMP_Register;
      --  PWM Comparison x Mode Register
      CMPM    : aliased PWM_CMPM_PWM_PWM_CMP_Register;
      --  PWM Comparison x Mode Update Register
      CMPMUPD : aliased PWM_CMPMUPD_PWM_PWM_CMP_Register;
   end record
     with Size => 128;

   for PWM_PWM_CMP_Cluster use record
      CMPV    at 16#0# range 0 .. 31;
      CMPVUPD at 16#4# range 0 .. 31;
      CMPM    at 16#8# range 0 .. 31;
      CMPMUPD at 16#C# range 0 .. 31;
   end record;

   --  PWM Comparison 0 Value Register
   type PWM_PWM_CMP_Clusters is array (0 .. 7) of PWM_PWM_CMP_Cluster;

   ----------------------------------------
   -- PWM_PWM_CH_NUM cluster's Registers --
   ----------------------------------------

   --  Channel Pre-scaler
   type CMR_CPRESelect is
     (--  Peripheral clock
      MCK,
      --  Peripheral clock/2
      MCK_DIV_2,
      --  Peripheral clock/4
      MCK_DIV_4,
      --  Peripheral clock/8
      MCK_DIV_8,
      --  Peripheral clock/16
      MCK_DIV_16,
      --  Peripheral clock/32
      MCK_DIV_32,
      --  Peripheral clock/64
      MCK_DIV_64,
      --  Peripheral clock/128
      MCK_DIV_128,
      --  Peripheral clock/256
      MCK_DIV_256,
      --  Peripheral clock/512
      MCK_DIV_512,
      --  Peripheral clock/1024
      MCK_DIV_1024,
      --  Clock A
      CLKA,
      --  Clock B
      CLKB)
     with Size => 4;
   for CMR_CPRESelect use
     (MCK => 0,
      MCK_DIV_2 => 1,
      MCK_DIV_4 => 2,
      MCK_DIV_8 => 3,
      MCK_DIV_16 => 4,
      MCK_DIV_32 => 5,
      MCK_DIV_64 => 6,
      MCK_DIV_128 => 7,
      MCK_DIV_256 => 8,
      MCK_DIV_512 => 9,
      MCK_DIV_1024 => 10,
      CLKA => 11,
      CLKB => 12);

   --  Channel Alignment
   type CMR_CALGSelect is
     (--  Left aligned
      LEFT_ALIGNED,
      --  Center aligned
      CENTER_ALIGNED)
     with Size => 1;
   for CMR_CALGSelect use
     (LEFT_ALIGNED => 0,
      CENTER_ALIGNED => 1);

   --  Channel Polarity
   type CMR_CPOLSelect is
     (--  Waveform starts at low level
      LOW_POLARITY,
      --  Waveform starts at high level
      HIGH_POLARITY)
     with Size => 1;
   for CMR_CPOLSelect use
     (LOW_POLARITY => 0,
      HIGH_POLARITY => 1);

   --  Counter Event Selection
   type CMR_CESSelect is
     (--  At the end of PWM period
      SINGLE_EVENT,
      --  At half of PWM period AND at the end of PWM period
      DOUBLE_EVENT)
     with Size => 1;
   for CMR_CESSelect use
     (SINGLE_EVENT => 0,
      DOUBLE_EVENT => 1);

   --  Update Selection
   type CMR_UPDSSelect is
     (--  At the next end of PWM period
      UPDATE_AT_PERIOD,
      --  At the next end of Half PWM period
      UPDATE_AT_HALF_PERIOD)
     with Size => 1;
   for CMR_UPDSSelect use
     (UPDATE_AT_PERIOD => 0,
      UPDATE_AT_HALF_PERIOD => 1);

   subtype PWM_CMR_PWM_PWM_CH_NUM_DPOLI_Field is Interfaces.SAM.Bit;
   subtype PWM_CMR_PWM_PWM_CH_NUM_TCTS_Field is Interfaces.SAM.Bit;
   subtype PWM_CMR_PWM_PWM_CH_NUM_DTE_Field is Interfaces.SAM.Bit;
   subtype PWM_CMR_PWM_PWM_CH_NUM_DTHI_Field is Interfaces.SAM.Bit;
   subtype PWM_CMR_PWM_PWM_CH_NUM_DTLI_Field is Interfaces.SAM.Bit;
   subtype PWM_CMR_PWM_PWM_CH_NUM_PPM_Field is Interfaces.SAM.Bit;

   --  PWM Channel Mode Register
   type PWM_CMR_PWM_PWM_CH_NUM_Register is record
      --  Channel Pre-scaler
      CPRE           : CMR_CPRESelect := Interfaces.SAM.PWM.MCK;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Channel Alignment
      CALG           : CMR_CALGSelect := Interfaces.SAM.PWM.LEFT_ALIGNED;
      --  Channel Polarity
      CPOL           : CMR_CPOLSelect := Interfaces.SAM.PWM.LOW_POLARITY;
      --  Counter Event Selection
      CES            : CMR_CESSelect := Interfaces.SAM.PWM.SINGLE_EVENT;
      --  Update Selection
      UPDS           : CMR_UPDSSelect := Interfaces.SAM.PWM.UPDATE_AT_PERIOD;
      --  Disabled Polarity Inverted
      DPOLI          : PWM_CMR_PWM_PWM_CH_NUM_DPOLI_Field := 16#0#;
      --  Timer Counter Trigger Selection
      TCTS           : PWM_CMR_PWM_PWM_CH_NUM_TCTS_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2 := 16#0#;
      --  Dead-Time Generator Enable
      DTE            : PWM_CMR_PWM_PWM_CH_NUM_DTE_Field := 16#0#;
      --  Dead-Time PWMHx Output Inverted
      DTHI           : PWM_CMR_PWM_PWM_CH_NUM_DTHI_Field := 16#0#;
      --  Dead-Time PWMLx Output Inverted
      DTLI           : PWM_CMR_PWM_PWM_CH_NUM_DTLI_Field := 16#0#;
      --  Push-Pull Mode
      PPM            : PWM_CMR_PWM_PWM_CH_NUM_PPM_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CMR_PWM_PWM_CH_NUM_Register use record
      CPRE           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CALG           at 0 range 8 .. 8;
      CPOL           at 0 range 9 .. 9;
      CES            at 0 range 10 .. 10;
      UPDS           at 0 range 11 .. 11;
      DPOLI          at 0 range 12 .. 12;
      TCTS           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DTE            at 0 range 16 .. 16;
      DTHI           at 0 range 17 .. 17;
      DTLI           at 0 range 18 .. 18;
      PPM            at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype PWM_CDTY_PWM_PWM_CH_NUM_CDTY_Field is Interfaces.SAM.UInt24;

   --  PWM Channel Duty Cycle Register
   type PWM_CDTY_PWM_PWM_CH_NUM_Register is record
      --  Channel Duty-Cycle
      CDTY           : PWM_CDTY_PWM_PWM_CH_NUM_CDTY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CDTY_PWM_PWM_CH_NUM_Register use record
      CDTY           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM_CDTYUPD_PWM_PWM_CH_NUM_CDTYUPD_Field is Interfaces.SAM.UInt24;

   --  PWM Channel Duty Cycle Update Register
   type PWM_CDTYUPD_PWM_PWM_CH_NUM_Register is record
      --  Write-only. Channel Duty-Cycle Update
      CDTYUPD        : PWM_CDTYUPD_PWM_PWM_CH_NUM_CDTYUPD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CDTYUPD_PWM_PWM_CH_NUM_Register use record
      CDTYUPD        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM_CPRD_PWM_PWM_CH_NUM_CPRD_Field is Interfaces.SAM.UInt24;

   --  PWM Channel Period Register
   type PWM_CPRD_PWM_PWM_CH_NUM_Register is record
      --  Channel Period
      CPRD           : PWM_CPRD_PWM_PWM_CH_NUM_CPRD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CPRD_PWM_PWM_CH_NUM_Register use record
      CPRD           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM_CPRDUPD_PWM_PWM_CH_NUM_CPRDUPD_Field is Interfaces.SAM.UInt24;

   --  PWM Channel Period Update Register
   type PWM_CPRDUPD_PWM_PWM_CH_NUM_Register is record
      --  Write-only. Channel Period Update
      CPRDUPD        : PWM_CPRDUPD_PWM_PWM_CH_NUM_CPRDUPD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CPRDUPD_PWM_PWM_CH_NUM_Register use record
      CPRDUPD        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM_CCNT_PWM_PWM_CH_NUM_CNT_Field is Interfaces.SAM.UInt24;

   --  PWM Channel Counter Register
   type PWM_CCNT_PWM_PWM_CH_NUM_Register is record
      --  Read-only. Channel Counter Register
      CNT            : PWM_CCNT_PWM_PWM_CH_NUM_CNT_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CCNT_PWM_PWM_CH_NUM_Register use record
      CNT            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWM_DT_PWM_PWM_CH_NUM_DTH_Field is Interfaces.SAM.UInt16;
   subtype PWM_DT_PWM_PWM_CH_NUM_DTL_Field is Interfaces.SAM.UInt16;

   --  PWM Channel Dead Time Register
   type PWM_DT_PWM_PWM_CH_NUM_Register is record
      --  Dead-Time Value for PWMHx Output
      DTH : PWM_DT_PWM_PWM_CH_NUM_DTH_Field := 16#0#;
      --  Dead-Time Value for PWMLx Output
      DTL : PWM_DT_PWM_PWM_CH_NUM_DTL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_DT_PWM_PWM_CH_NUM_Register use record
      DTH at 0 range 0 .. 15;
      DTL at 0 range 16 .. 31;
   end record;

   subtype PWM_DTUPD_PWM_PWM_CH_NUM_DTHUPD_Field is Interfaces.SAM.UInt16;
   subtype PWM_DTUPD_PWM_PWM_CH_NUM_DTLUPD_Field is Interfaces.SAM.UInt16;

   --  PWM Channel Dead Time Update Register
   type PWM_DTUPD_PWM_PWM_CH_NUM_Register is record
      --  Write-only. Dead-Time Value Update for PWMHx Output
      DTHUPD : PWM_DTUPD_PWM_PWM_CH_NUM_DTHUPD_Field := 16#0#;
      --  Write-only. Dead-Time Value Update for PWMLx Output
      DTLUPD : PWM_DTUPD_PWM_PWM_CH_NUM_DTLUPD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_DTUPD_PWM_PWM_CH_NUM_Register use record
      DTHUPD at 0 range 0 .. 15;
      DTLUPD at 0 range 16 .. 31;
   end record;

   --  PWM Channel Mode Register
   type PWM_PWM_CH_NUM_Cluster is record
      --  PWM Channel Mode Register
      CMR     : aliased PWM_CMR_PWM_PWM_CH_NUM_Register;
      --  PWM Channel Duty Cycle Register
      CDTY    : aliased PWM_CDTY_PWM_PWM_CH_NUM_Register;
      --  PWM Channel Duty Cycle Update Register
      CDTYUPD : aliased PWM_CDTYUPD_PWM_PWM_CH_NUM_Register;
      --  PWM Channel Period Register
      CPRD    : aliased PWM_CPRD_PWM_PWM_CH_NUM_Register;
      --  PWM Channel Period Update Register
      CPRDUPD : aliased PWM_CPRDUPD_PWM_PWM_CH_NUM_Register;
      --  PWM Channel Counter Register
      CCNT    : aliased PWM_CCNT_PWM_PWM_CH_NUM_Register;
      --  PWM Channel Dead Time Register
      DT      : aliased PWM_DT_PWM_PWM_CH_NUM_Register;
      --  PWM Channel Dead Time Update Register
      DTUPD   : aliased PWM_DTUPD_PWM_PWM_CH_NUM_Register;
   end record
     with Size => 256;

   for PWM_PWM_CH_NUM_Cluster use record
      CMR     at 16#0# range 0 .. 31;
      CDTY    at 16#4# range 0 .. 31;
      CDTYUPD at 16#8# range 0 .. 31;
      CPRD    at 16#C# range 0 .. 31;
      CPRDUPD at 16#10# range 0 .. 31;
      CCNT    at 16#14# range 0 .. 31;
      DT      at 16#18# range 0 .. 31;
      DTUPD   at 16#1C# range 0 .. 31;
   end record;

   --  PWM Channel Mode Register
   type PWM_PWM_CH_NUM_Clusters is array (0 .. 3) of PWM_PWM_CH_NUM_Cluster;

   subtype CMUPD_CPOLUP_Field is Interfaces.SAM.Bit;
   subtype CMUPD_CPOLINVUP_Field is Interfaces.SAM.Bit;

   --  PWM Channel Mode Update Register (ch_num = 0)
   type CMUPD_Register is record
      --  unspecified
      Reserved_0_8   : Interfaces.SAM.UInt9 := 16#0#;
      --  Write-only. Channel Polarity Update
      CPOLUP         : CMUPD_CPOLUP_Field := 16#0#;
      --  unspecified
      Reserved_10_12 : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Channel Polarity Inversion Update
      CPOLINVUP      : CMUPD_CPOLINVUP_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMUPD_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      CPOLUP         at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      CPOLINVUP      at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ETRG_MAXCNT_Field is Interfaces.SAM.UInt24;

   --  External Trigger Mode
   type ETRG1_TRGMODESelect is
     (--  External trigger is not enabled.
      OFF,
      --  External PWM Reset Mode
      MODE1,
      --  External PWM Start Mode
      MODE2,
      --  Cycle-by-cycle Duty Mode
      MODE3)
     with Size => 2;
   for ETRG1_TRGMODESelect use
     (OFF => 0,
      MODE1 => 1,
      MODE2 => 2,
      MODE3 => 3);

   --  Edge Selection
   type ETRG1_TRGEDGESelect is
     (--  TRGMODE = 1: TRGINx event detection on falling edge. TRGMODE = 2, 3: TRGINx
--  active level is 0
      FALLING_ZERO,
      --  TRGMODE = 1: TRGINx event detection on rising edge. TRGMODE = 2, 3: TRGINx
--  active level is 1
      RISING_ONE)
     with Size => 1;
   for ETRG1_TRGEDGESelect use
     (FALLING_ZERO => 0,
      RISING_ONE => 1);

   subtype ETRG_TRGFILT_Field is Interfaces.SAM.Bit;
   subtype ETRG_TRGSRC_Field is Interfaces.SAM.Bit;
   subtype ETRG_RFEN_Field is Interfaces.SAM.Bit;

   --  PWM External Trigger Register (trg_num = 1)
   type ETRG_Register is record
      --  Maximum Counter value
      MAXCNT         : ETRG_MAXCNT_Field := 16#0#;
      --  External Trigger Mode
      TRGMODE        : ETRG1_TRGMODESelect := Interfaces.SAM.PWM.OFF;
      --  unspecified
      Reserved_26_27 : Interfaces.SAM.UInt2 := 16#0#;
      --  Edge Selection
      TRGEDGE        : ETRG1_TRGEDGESelect := Interfaces.SAM.PWM.FALLING_ZERO;
      --  Filtered input
      TRGFILT        : ETRG_TRGFILT_Field := 16#0#;
      --  Trigger Source
      TRGSRC         : ETRG_TRGSRC_Field := 16#0#;
      --  Recoverable Fault Enable
      RFEN           : ETRG_RFEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETRG_Register use record
      MAXCNT         at 0 range 0 .. 23;
      TRGMODE        at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      TRGEDGE        at 0 range 28 .. 28;
      TRGFILT        at 0 range 29 .. 29;
      TRGSRC         at 0 range 30 .. 30;
      RFEN           at 0 range 31 .. 31;
   end record;

   subtype LEBR_LEBDELAY_Field is Interfaces.SAM.UInt7;
   subtype LEBR_PWMLFEN_Field is Interfaces.SAM.Bit;
   subtype LEBR_PWMLREN_Field is Interfaces.SAM.Bit;
   subtype LEBR_PWMHFEN_Field is Interfaces.SAM.Bit;
   subtype LEBR_PWMHREN_Field is Interfaces.SAM.Bit;

   --  PWM Leading-Edge Blanking Register (trg_num = 1)
   type LEBR_Register is record
      --  Leading-Edge Blanking Delay for TRGINx
      LEBDELAY       : LEBR_LEBDELAY_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.SAM.UInt9 := 16#0#;
      --  PWML Falling Edge Enable
      PWMLFEN        : LEBR_PWMLFEN_Field := 16#0#;
      --  PWML Rising Edge Enable
      PWMLREN        : LEBR_PWMLREN_Field := 16#0#;
      --  PWMH Falling Edge Enable
      PWMHFEN        : LEBR_PWMHFEN_Field := 16#0#;
      --  PWMH Rising Edge Enable
      PWMHREN        : LEBR_PWMHREN_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LEBR_Register use record
      LEBDELAY       at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      PWMLFEN        at 0 range 16 .. 16;
      PWMLREN        at 0 range 17 .. 17;
      PWMHFEN        at 0 range 18 .. 18;
      PWMHREN        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -------------------------------------
   -- PWM_PWM_CMP cluster's Registers --
   -------------------------------------

   ----------------------------------------
   -- PWM_PWM_CH_NUM cluster's Registers --
   ----------------------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  Pulse Width Modulation Controller
   type PWM_Peripheral is record
      --  PWM Clock Register
      CLK            : aliased PWM_CLK_Register;
      --  PWM Enable Register
      ENA            : aliased PWM_ENA_Register;
      --  PWM Disable Register
      DIS            : aliased PWM_DIS_Register;
      --  PWM Status Register
      SR             : aliased PWM_SR_Register;
      --  PWM Interrupt Enable Register 1
      IER1           : aliased PWM_IER1_Register;
      --  PWM Interrupt Disable Register 1
      IDR1           : aliased PWM_IDR1_Register;
      --  PWM Interrupt Mask Register 1
      IMR1           : aliased PWM_IMR1_Register;
      --  PWM Interrupt Status Register 1
      ISR1           : aliased PWM_ISR1_Register;
      --  PWM Sync Channels Mode Register
      SCM            : aliased PWM_SCM_Register;
      --  PWM DMA Register
      DMAR           : aliased PWM_DMAR_Register;
      --  PWM Sync Channels Update Control Register
      SCUC           : aliased PWM_SCUC_Register;
      --  PWM Sync Channels Update Period Register
      SCUP           : aliased PWM_SCUP_Register;
      --  PWM Sync Channels Update Period Update Register
      SCUPUPD        : aliased PWM_SCUPUPD_Register;
      --  PWM Interrupt Enable Register 2
      IER2           : aliased PWM_IER2_Register;
      --  PWM Interrupt Disable Register 2
      IDR2           : aliased PWM_IDR2_Register;
      --  PWM Interrupt Mask Register 2
      IMR2           : aliased PWM_IMR2_Register;
      --  PWM Interrupt Status Register 2
      ISR2           : aliased PWM_ISR2_Register;
      --  PWM Output Override Value Register
      OOV            : aliased PWM_OOV_Register;
      --  PWM Output Selection Register
      OS             : aliased PWM_OS_Register;
      --  PWM Output Selection Set Register
      OSS            : aliased PWM_OSS_Register;
      --  PWM Output Selection Clear Register
      OSC            : aliased PWM_OSC_Register;
      --  PWM Output Selection Set Update Register
      OSSUPD         : aliased PWM_OSSUPD_Register;
      --  PWM Output Selection Clear Update Register
      OSCUPD         : aliased PWM_OSCUPD_Register;
      --  PWM Fault Mode Register
      FMR            : aliased PWM_FMR_Register;
      --  PWM Fault Status Register
      FSR            : aliased PWM_FSR_Register;
      --  PWM Fault Clear Register
      FCR            : aliased PWM_FCR_Register;
      --  PWM Fault Protection Value Register 1
      FPV1           : aliased PWM_FPV1_Register;
      --  PWM Fault Protection Enable Register
      FPE            : aliased PWM_FPE_Register;
      --  PWM Event Line 0 Mode Register
      ELMR           : aliased PWM_ELMR_Registers;
      --  PWM Spread Spectrum Register
      SSPR           : aliased PWM_SSPR_Register;
      --  PWM Spread Spectrum Update Register
      SSPUP          : aliased PWM_SSPUP_Register;
      --  PWM Stepper Motor Mode Register
      SMMR           : aliased PWM_SMMR_Register;
      --  PWM Fault Protection Value 2 Register
      FPV2           : aliased PWM_FPV2_Register;
      --  PWM Write Protection Control Register
      WPCR           : aliased PWM_WPCR_Register;
      --  PWM Write Protection Status Register
      WPSR           : aliased PWM_WPSR_Register;
      --  PWM Comparison 0 Value Register
      PWM_PWM_CMP    : aliased PWM_PWM_CMP_Clusters;
      --  PWM Channel Mode Register
      PWM_PWM_CH_NUM : aliased PWM_PWM_CH_NUM_Clusters;
      --  PWM Channel Mode Update Register (ch_num = 0)
      CMUPD0         : aliased CMUPD_Register;
      --  PWM Channel Mode Update Register (ch_num = 1)
      CMUPD1         : aliased CMUPD_Register;
      --  PWM External Trigger Register (trg_num = 1)
      ETRG1          : aliased ETRG_Register;
      --  PWM Leading-Edge Blanking Register (trg_num = 1)
      LEBR1          : aliased LEBR_Register;
      --  PWM Channel Mode Update Register (ch_num = 2)
      CMUPD2         : aliased CMUPD_Register;
      --  PWM External Trigger Register (trg_num = 2)
      ETRG2          : aliased ETRG_Register;
      --  PWM Leading-Edge Blanking Register (trg_num = 2)
      LEBR2          : aliased LEBR_Register;
      --  PWM Channel Mode Update Register (ch_num = 3)
      CMUPD3         : aliased CMUPD_Register;
   end record
     with Volatile;

   for PWM_Peripheral use record
      CLK            at 16#0# range 0 .. 31;
      ENA            at 16#4# range 0 .. 31;
      DIS            at 16#8# range 0 .. 31;
      SR             at 16#C# range 0 .. 31;
      IER1           at 16#10# range 0 .. 31;
      IDR1           at 16#14# range 0 .. 31;
      IMR1           at 16#18# range 0 .. 31;
      ISR1           at 16#1C# range 0 .. 31;
      SCM            at 16#20# range 0 .. 31;
      DMAR           at 16#24# range 0 .. 31;
      SCUC           at 16#28# range 0 .. 31;
      SCUP           at 16#2C# range 0 .. 31;
      SCUPUPD        at 16#30# range 0 .. 31;
      IER2           at 16#34# range 0 .. 31;
      IDR2           at 16#38# range 0 .. 31;
      IMR2           at 16#3C# range 0 .. 31;
      ISR2           at 16#40# range 0 .. 31;
      OOV            at 16#44# range 0 .. 31;
      OS             at 16#48# range 0 .. 31;
      OSS            at 16#4C# range 0 .. 31;
      OSC            at 16#50# range 0 .. 31;
      OSSUPD         at 16#54# range 0 .. 31;
      OSCUPD         at 16#58# range 0 .. 31;
      FMR            at 16#5C# range 0 .. 31;
      FSR            at 16#60# range 0 .. 31;
      FCR            at 16#64# range 0 .. 31;
      FPV1           at 16#68# range 0 .. 31;
      FPE            at 16#6C# range 0 .. 31;
      ELMR           at 16#7C# range 0 .. 63;
      SSPR           at 16#A0# range 0 .. 31;
      SSPUP          at 16#A4# range 0 .. 31;
      SMMR           at 16#B0# range 0 .. 31;
      FPV2           at 16#C0# range 0 .. 31;
      WPCR           at 16#E4# range 0 .. 31;
      WPSR           at 16#E8# range 0 .. 31;
      PWM_PWM_CMP    at 16#130# range 0 .. 1023;
      PWM_PWM_CH_NUM at 16#200# range 0 .. 1023;
      CMUPD0         at 16#400# range 0 .. 31;
      CMUPD1         at 16#420# range 0 .. 31;
      ETRG1          at 16#42C# range 0 .. 31;
      LEBR1          at 16#430# range 0 .. 31;
      CMUPD2         at 16#440# range 0 .. 31;
      ETRG2          at 16#44C# range 0 .. 31;
      LEBR2          at 16#450# range 0 .. 31;
      CMUPD3         at 16#460# range 0 .. 31;
   end record;

   --  Pulse Width Modulation Controller
   PWM0_Periph : aliased PWM_Peripheral
     with Import, Address => PWM0_Base;

   --  Pulse Width Modulation Controller
   PWM1_Periph : aliased PWM_Peripheral
     with Import, Address => PWM1_Base;

end Interfaces.SAM.PWM;
