--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.NMIC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  NMIC_IER_NMI array element
   subtype NMIC_IER_NMI_Element is Interfaces.SAM.Bit;

   --  NMIC_IER_NMI array
   type NMIC_IER_NMI_Field_Array is array (0 .. 8) of NMIC_IER_NMI_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for NMIC_IER_NMI
   type NMIC_IER_NMI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NMI as a value
            Val : Interfaces.SAM.UInt9;
         when True =>
            --  NMI as an array
            Arr : NMIC_IER_NMI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for NMIC_IER_NMI_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Interrupt Enable Register
   type NMIC_IER_Register is record
      --  Write-only. Non-maskable Interrupt 0 Enable
      NMI           : NMIC_IER_NMI_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_IER_Register use record
      NMI           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  NMIC_IDR_NMI array element
   subtype NMIC_IDR_NMI_Element is Interfaces.SAM.Bit;

   --  NMIC_IDR_NMI array
   type NMIC_IDR_NMI_Field_Array is array (0 .. 8) of NMIC_IDR_NMI_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for NMIC_IDR_NMI
   type NMIC_IDR_NMI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NMI as a value
            Val : Interfaces.SAM.UInt9;
         when True =>
            --  NMI as an array
            Arr : NMIC_IDR_NMI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for NMIC_IDR_NMI_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Interrupt Disable Register
   type NMIC_IDR_Register is record
      --  Write-only. Non-maskable Interrupt 0 Disable
      NMI           : NMIC_IDR_NMI_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_IDR_Register use record
      NMI           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  NMIC_IAR_NMI array element
   subtype NMIC_IAR_NMI_Element is Interfaces.SAM.Bit;

   --  NMIC_IAR_NMI array
   type NMIC_IAR_NMI_Field_Array is array (0 .. 8) of NMIC_IAR_NMI_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for NMIC_IAR_NMI
   type NMIC_IAR_NMI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NMI as a value
            Val : Interfaces.SAM.UInt9;
         when True =>
            --  NMI as an array
            Arr : NMIC_IAR_NMI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for NMIC_IAR_NMI_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Interrupt Active Register
   type NMIC_IAR_Register is record
      --  Read-only. Active Interrupt 0
      NMI           : NMIC_IAR_NMI_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_IAR_Register use record
      NMI           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  NMIC_ISR_NMI array element
   subtype NMIC_ISR_NMI_Element is Interfaces.SAM.Bit;

   --  NMIC_ISR_NMI array
   type NMIC_ISR_NMI_Field_Array is array (0 .. 8) of NMIC_ISR_NMI_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for NMIC_ISR_NMI
   type NMIC_ISR_NMI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NMI as a value
            Val : Interfaces.SAM.UInt9;
         when True =>
            --  NMI as an array
            Arr : NMIC_ISR_NMI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for NMIC_ISR_NMI_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Interrupt Status Register
   type NMIC_ISR_Register is record
      --  Read-only. Non-maskable Interrupt Source 0 Pending (cleared on read)
      NMI           : NMIC_ISR_NMI_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_ISR_Register use record
      NMI           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  NMIC_GFCS_RDY array element
   subtype NMIC_GFCS_RDY_Element is Interfaces.SAM.Bit;

   --  NMIC_GFCS_RDY array
   type NMIC_GFCS_RDY_Field_Array is array (0 .. 8) of NMIC_GFCS_RDY_Element
     with Component_Size => 1, Size => 9;

   --  Type definition for NMIC_GFCS_RDY
   type NMIC_GFCS_RDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDY as a value
            Val : Interfaces.SAM.UInt9;
         when True =>
            --  RDY as an array
            Arr : NMIC_GFCS_RDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for NMIC_GFCS_RDY_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Glitch Filter Configuration Status Register
   type NMIC_GFCS_Register is record
      --  Read-only. Filter 0 Configuration Ready
      RDY           : NMIC_GFCS_RDY_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_GFCS_Register use record
      RDY           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype NMIC_SCFG0R_GFSEL_Field is Interfaces.SAM.UInt2;
   subtype NMIC_SCFG0R_GFEN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG0R_POL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG0R_LVL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG0R_EN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG0R_FRZ_Field is Interfaces.SAM.Bit;

   --  Source Configuration Register 0
   type NMIC_SCFG0R_Register is record
      --  Glitch Filter Selector (GFSEL field is read-only in NMIC_SCFG1 to 8)
      GFSEL          : NMIC_SCFG0R_GFSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Glitch Filter Enable (GFEN bit is read-only in NMIC_SCFG1 to 8)
      GFEN           : NMIC_SCFG0R_GFEN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Polarity (POL bit is read-only in NMIC_SCFG1 to 8)
      POL            : NMIC_SCFG0R_POL_Field := 16#0#;
      --  Level Detection (LVL bit is read-only in NMIC_SCFG1 to 8)
      LVL            : NMIC_SCFG0R_LVL_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Source Enable
      EN             : NMIC_SCFG0R_EN_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.SAM.UInt14 := 16#0#;
      --  Interrupt Line Freeze
      FRZ            : NMIC_SCFG0R_FRZ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_SCFG0R_Register use record
      GFSEL          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      GFEN           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      POL            at 0 range 8 .. 8;
      LVL            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EN             at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      FRZ            at 0 range 31 .. 31;
   end record;

   subtype NMIC_SCFG1R_GFSEL_Field is Interfaces.SAM.UInt2;
   subtype NMIC_SCFG1R_GFEN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG1R_POL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG1R_LVL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG1R_EN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG1R_FRZ_Field is Interfaces.SAM.Bit;

   --  Source Configuration Register 1
   type NMIC_SCFG1R_Register is record
      --  Glitch Filter Selector (GFSEL field is read-only in NMIC_SCFG1 to 8)
      GFSEL          : NMIC_SCFG1R_GFSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Glitch Filter Enable (GFEN bit is read-only in NMIC_SCFG1 to 8)
      GFEN           : NMIC_SCFG1R_GFEN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Polarity (POL bit is read-only in NMIC_SCFG1 to 8)
      POL            : NMIC_SCFG1R_POL_Field := 16#0#;
      --  Level Detection (LVL bit is read-only in NMIC_SCFG1 to 8)
      LVL            : NMIC_SCFG1R_LVL_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Source Enable
      EN             : NMIC_SCFG1R_EN_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.SAM.UInt14 := 16#0#;
      --  Interrupt Line Freeze
      FRZ            : NMIC_SCFG1R_FRZ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_SCFG1R_Register use record
      GFSEL          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      GFEN           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      POL            at 0 range 8 .. 8;
      LVL            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EN             at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      FRZ            at 0 range 31 .. 31;
   end record;

   subtype NMIC_SCFG2R_GFSEL_Field is Interfaces.SAM.UInt2;
   subtype NMIC_SCFG2R_GFEN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG2R_POL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG2R_LVL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG2R_EN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG2R_FRZ_Field is Interfaces.SAM.Bit;

   --  Source Configuration Register 2
   type NMIC_SCFG2R_Register is record
      --  Glitch Filter Selector (GFSEL field is read-only in NMIC_SCFG1 to 8)
      GFSEL          : NMIC_SCFG2R_GFSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Glitch Filter Enable (GFEN bit is read-only in NMIC_SCFG1 to 8)
      GFEN           : NMIC_SCFG2R_GFEN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Polarity (POL bit is read-only in NMIC_SCFG1 to 8)
      POL            : NMIC_SCFG2R_POL_Field := 16#0#;
      --  Level Detection (LVL bit is read-only in NMIC_SCFG1 to 8)
      LVL            : NMIC_SCFG2R_LVL_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Source Enable
      EN             : NMIC_SCFG2R_EN_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.SAM.UInt14 := 16#0#;
      --  Interrupt Line Freeze
      FRZ            : NMIC_SCFG2R_FRZ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_SCFG2R_Register use record
      GFSEL          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      GFEN           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      POL            at 0 range 8 .. 8;
      LVL            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EN             at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      FRZ            at 0 range 31 .. 31;
   end record;

   subtype NMIC_SCFG3R_GFSEL_Field is Interfaces.SAM.UInt2;
   subtype NMIC_SCFG3R_GFEN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG3R_POL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG3R_LVL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG3R_EN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG3R_FRZ_Field is Interfaces.SAM.Bit;

   --  Source Configuration Register 3
   type NMIC_SCFG3R_Register is record
      --  Glitch Filter Selector (GFSEL field is read-only in NMIC_SCFG1 to 8)
      GFSEL          : NMIC_SCFG3R_GFSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Glitch Filter Enable (GFEN bit is read-only in NMIC_SCFG1 to 8)
      GFEN           : NMIC_SCFG3R_GFEN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Polarity (POL bit is read-only in NMIC_SCFG1 to 8)
      POL            : NMIC_SCFG3R_POL_Field := 16#0#;
      --  Level Detection (LVL bit is read-only in NMIC_SCFG1 to 8)
      LVL            : NMIC_SCFG3R_LVL_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Source Enable
      EN             : NMIC_SCFG3R_EN_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.SAM.UInt14 := 16#0#;
      --  Interrupt Line Freeze
      FRZ            : NMIC_SCFG3R_FRZ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_SCFG3R_Register use record
      GFSEL          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      GFEN           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      POL            at 0 range 8 .. 8;
      LVL            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EN             at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      FRZ            at 0 range 31 .. 31;
   end record;

   subtype NMIC_SCFG4R_GFSEL_Field is Interfaces.SAM.UInt2;
   subtype NMIC_SCFG4R_GFEN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG4R_POL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG4R_LVL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG4R_EN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG4R_FRZ_Field is Interfaces.SAM.Bit;

   --  Source Configuration Register 4
   type NMIC_SCFG4R_Register is record
      --  Glitch Filter Selector (GFSEL field is read-only in NMIC_SCFG1 to 8)
      GFSEL          : NMIC_SCFG4R_GFSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Glitch Filter Enable (GFEN bit is read-only in NMIC_SCFG1 to 8)
      GFEN           : NMIC_SCFG4R_GFEN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Polarity (POL bit is read-only in NMIC_SCFG1 to 8)
      POL            : NMIC_SCFG4R_POL_Field := 16#0#;
      --  Level Detection (LVL bit is read-only in NMIC_SCFG1 to 8)
      LVL            : NMIC_SCFG4R_LVL_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Source Enable
      EN             : NMIC_SCFG4R_EN_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.SAM.UInt14 := 16#0#;
      --  Interrupt Line Freeze
      FRZ            : NMIC_SCFG4R_FRZ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_SCFG4R_Register use record
      GFSEL          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      GFEN           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      POL            at 0 range 8 .. 8;
      LVL            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EN             at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      FRZ            at 0 range 31 .. 31;
   end record;

   subtype NMIC_SCFG5R_GFSEL_Field is Interfaces.SAM.UInt2;
   subtype NMIC_SCFG5R_GFEN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG5R_POL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG5R_LVL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG5R_EN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG5R_FRZ_Field is Interfaces.SAM.Bit;

   --  Source Configuration Register 5
   type NMIC_SCFG5R_Register is record
      --  Glitch Filter Selector (GFSEL field is read-only in NMIC_SCFG1 to 8)
      GFSEL          : NMIC_SCFG5R_GFSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Glitch Filter Enable (GFEN bit is read-only in NMIC_SCFG1 to 8)
      GFEN           : NMIC_SCFG5R_GFEN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Polarity (POL bit is read-only in NMIC_SCFG1 to 8)
      POL            : NMIC_SCFG5R_POL_Field := 16#0#;
      --  Level Detection (LVL bit is read-only in NMIC_SCFG1 to 8)
      LVL            : NMIC_SCFG5R_LVL_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Source Enable
      EN             : NMIC_SCFG5R_EN_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.SAM.UInt14 := 16#0#;
      --  Interrupt Line Freeze
      FRZ            : NMIC_SCFG5R_FRZ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_SCFG5R_Register use record
      GFSEL          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      GFEN           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      POL            at 0 range 8 .. 8;
      LVL            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EN             at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      FRZ            at 0 range 31 .. 31;
   end record;

   subtype NMIC_SCFG6R_GFSEL_Field is Interfaces.SAM.UInt2;
   subtype NMIC_SCFG6R_GFEN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG6R_POL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG6R_LVL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG6R_EN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG6R_FRZ_Field is Interfaces.SAM.Bit;

   --  Source Configuration Register 6
   type NMIC_SCFG6R_Register is record
      --  Glitch Filter Selector (GFSEL field is read-only in NMIC_SCFG1 to 8)
      GFSEL          : NMIC_SCFG6R_GFSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Glitch Filter Enable (GFEN bit is read-only in NMIC_SCFG1 to 8)
      GFEN           : NMIC_SCFG6R_GFEN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Polarity (POL bit is read-only in NMIC_SCFG1 to 8)
      POL            : NMIC_SCFG6R_POL_Field := 16#0#;
      --  Level Detection (LVL bit is read-only in NMIC_SCFG1 to 8)
      LVL            : NMIC_SCFG6R_LVL_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Source Enable
      EN             : NMIC_SCFG6R_EN_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.SAM.UInt14 := 16#0#;
      --  Interrupt Line Freeze
      FRZ            : NMIC_SCFG6R_FRZ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_SCFG6R_Register use record
      GFSEL          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      GFEN           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      POL            at 0 range 8 .. 8;
      LVL            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EN             at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      FRZ            at 0 range 31 .. 31;
   end record;

   subtype NMIC_SCFG7R_GFSEL_Field is Interfaces.SAM.UInt2;
   subtype NMIC_SCFG7R_GFEN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG7R_POL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG7R_LVL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG7R_EN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG7R_FRZ_Field is Interfaces.SAM.Bit;

   --  Source Configuration Register 7
   type NMIC_SCFG7R_Register is record
      --  Glitch Filter Selector (GFSEL field is read-only in NMIC_SCFG1 to 8)
      GFSEL          : NMIC_SCFG7R_GFSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Glitch Filter Enable (GFEN bit is read-only in NMIC_SCFG1 to 8)
      GFEN           : NMIC_SCFG7R_GFEN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Polarity (POL bit is read-only in NMIC_SCFG1 to 8)
      POL            : NMIC_SCFG7R_POL_Field := 16#0#;
      --  Level Detection (LVL bit is read-only in NMIC_SCFG1 to 8)
      LVL            : NMIC_SCFG7R_LVL_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Source Enable
      EN             : NMIC_SCFG7R_EN_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.SAM.UInt14 := 16#0#;
      --  Interrupt Line Freeze
      FRZ            : NMIC_SCFG7R_FRZ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_SCFG7R_Register use record
      GFSEL          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      GFEN           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      POL            at 0 range 8 .. 8;
      LVL            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EN             at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      FRZ            at 0 range 31 .. 31;
   end record;

   subtype NMIC_SCFG8R_GFSEL_Field is Interfaces.SAM.UInt2;
   subtype NMIC_SCFG8R_GFEN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG8R_POL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG8R_LVL_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG8R_EN_Field is Interfaces.SAM.Bit;
   subtype NMIC_SCFG8R_FRZ_Field is Interfaces.SAM.Bit;

   --  Source Configuration Register 8
   type NMIC_SCFG8R_Register is record
      --  Glitch Filter Selector (GFSEL field is read-only in NMIC_SCFG1 to 8)
      GFSEL          : NMIC_SCFG8R_GFSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Glitch Filter Enable (GFEN bit is read-only in NMIC_SCFG1 to 8)
      GFEN           : NMIC_SCFG8R_GFEN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Polarity (POL bit is read-only in NMIC_SCFG1 to 8)
      POL            : NMIC_SCFG8R_POL_Field := 16#0#;
      --  Level Detection (LVL bit is read-only in NMIC_SCFG1 to 8)
      LVL            : NMIC_SCFG8R_LVL_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Source Enable
      EN             : NMIC_SCFG8R_EN_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.SAM.UInt14 := 16#0#;
      --  Interrupt Line Freeze
      FRZ            : NMIC_SCFG8R_FRZ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_SCFG8R_Register use record
      GFSEL          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      GFEN           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      POL            at 0 range 8 .. 8;
      LVL            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EN             at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      FRZ            at 0 range 31 .. 31;
   end record;

   subtype NMIC_WPMR_WPCFEN_Field is Interfaces.SAM.Bit;
   subtype NMIC_WPMR_WPITEN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type WPMR_WPKEYSelect is
     (--  Reset value for the field
      WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPCFEN and WPITEN bit. Always reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEYSelect use
     (WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5131593);

   --  Write Protection Mode Register
   type NMIC_WPMR_Register is record
      --  Write Protection Configuration Enable
      WPCFEN       : NMIC_WPMR_WPCFEN_Field := 16#0#;
      --  Write Protection Interrupt Enable
      WPITEN       : NMIC_WPMR_WPITEN_Field := 16#0#;
      --  unspecified
      Reserved_2_7 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_WPMR_Register use record
      WPCFEN       at 0 range 0 .. 0;
      WPITEN       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype NMIC_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype NMIC_WPSR_FZWVS_Field is Interfaces.SAM.Bit;
   subtype NMIC_WPSR_BSWVS_Field is Interfaces.SAM.Bit;
   subtype NMIC_WPSR_WVSRC_Field is Interfaces.SAM.Byte;

   --  Write Protection Status Register
   type NMIC_WPSR_Register is record
      --  Read-only. Write Protection Register Violation Status
      WPVS           : NMIC_WPSR_WPVS_Field;
      --  Read-only. Frozen Register Write Violation Status
      FZWVS          : NMIC_WPSR_FZWVS_Field;
      --  Read-only. Busy Register Write Violation Status
      BSWVS          : NMIC_WPSR_BSWVS_Field;
      --  unspecified
      Reserved_3_7   : Interfaces.SAM.UInt5;
      --  Read-only. Write Violation Source
      WVSRC          : NMIC_WPSR_WVSRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIC_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      FZWVS          at 0 range 1 .. 1;
      BSWVS          at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      WVSRC          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Non-maskable Interrupt Controller
   type NMIC_Peripheral is record
      --  Interrupt Enable Register
      IER    : aliased NMIC_IER_Register;
      --  Interrupt Disable Register
      IDR    : aliased NMIC_IDR_Register;
      --  Interrupt Active Register
      IAR    : aliased NMIC_IAR_Register;
      --  Interrupt Status Register
      ISR    : aliased NMIC_ISR_Register;
      --  Glitch Filter Configuration Status Register
      GFCS   : aliased NMIC_GFCS_Register;
      --  Source Configuration Register 0
      SCFG0R : aliased NMIC_SCFG0R_Register;
      --  Source Configuration Register 1
      SCFG1R : aliased NMIC_SCFG1R_Register;
      --  Source Configuration Register 2
      SCFG2R : aliased NMIC_SCFG2R_Register;
      --  Source Configuration Register 3
      SCFG3R : aliased NMIC_SCFG3R_Register;
      --  Source Configuration Register 4
      SCFG4R : aliased NMIC_SCFG4R_Register;
      --  Source Configuration Register 5
      SCFG5R : aliased NMIC_SCFG5R_Register;
      --  Source Configuration Register 6
      SCFG6R : aliased NMIC_SCFG6R_Register;
      --  Source Configuration Register 7
      SCFG7R : aliased NMIC_SCFG7R_Register;
      --  Source Configuration Register 8
      SCFG8R : aliased NMIC_SCFG8R_Register;
      --  Write Protection Mode Register
      WPMR   : aliased NMIC_WPMR_Register;
      --  Write Protection Status Register
      WPSR   : aliased NMIC_WPSR_Register;
   end record
     with Volatile;

   for NMIC_Peripheral use record
      IER    at 16#0# range 0 .. 31;
      IDR    at 16#4# range 0 .. 31;
      IAR    at 16#8# range 0 .. 31;
      ISR    at 16#C# range 0 .. 31;
      GFCS   at 16#10# range 0 .. 31;
      SCFG0R at 16#14# range 0 .. 31;
      SCFG1R at 16#18# range 0 .. 31;
      SCFG2R at 16#1C# range 0 .. 31;
      SCFG3R at 16#20# range 0 .. 31;
      SCFG4R at 16#24# range 0 .. 31;
      SCFG5R at 16#28# range 0 .. 31;
      SCFG6R at 16#2C# range 0 .. 31;
      SCFG7R at 16#30# range 0 .. 31;
      SCFG8R at 16#34# range 0 .. 31;
      WPMR   at 16#E4# range 0 .. 31;
      WPSR   at 16#E8# range 0 .. 31;
   end record;

   --  Non-maskable Interrupt Controller
   NMIC_Periph : aliased NMIC_Peripheral
     with Import, Address => NMIC_Base;

end Interfaces.SAM.NMIC;
