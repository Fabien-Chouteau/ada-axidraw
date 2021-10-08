pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.PMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  PMC_SCER_PCK array
   type PMC_SCER_PCK_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PMC_SCER_PCK
   type PMC_SCER_PCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCK as a value
            Val : HAL.UInt4;
         when True =>
            --  PCK as an array
            Arr : PMC_SCER_PCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PMC_SCER_PCK_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  System Clock Enable Register
   type PMC_SCER_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. Programmable Clock 0 Output Enable
      PCK            : PMC_SCER_PCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_SCER_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PCK            at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  PMC_SCDR_PCK array
   type PMC_SCDR_PCK_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PMC_SCDR_PCK
   type PMC_SCDR_PCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCK as a value
            Val : HAL.UInt4;
         when True =>
            --  PCK as an array
            Arr : PMC_SCDR_PCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PMC_SCDR_PCK_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  System Clock Disable Register
   type PMC_SCDR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. Programmable Clock 0 Output Disable
      PCK            : PMC_SCDR_PCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_SCDR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PCK            at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  PMC_SCSR_PCK array
   type PMC_SCSR_PCK_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PMC_SCSR_PCK
   type PMC_SCSR_PCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCK as a value
            Val : HAL.UInt4;
         when True =>
            --  PCK as an array
            Arr : PMC_SCSR_PCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PMC_SCSR_PCK_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  System Clock Status Register
   type PMC_SCSR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. Programmable Clock 0 Output Status
      PCK            : PMC_SCSR_PCK_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_SCSR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PCK            at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Main RC Oscillator Frequency Selection
   type CKGR_MOR_MOSCRCFSelect is
     (--  The RC oscillator frequency is at 4 MHz
      Val_4_MHZ,
      --  The RC oscillator frequency is at 8 MHz
      Val_8_MHZ,
      --  The RC oscillator frequency is at 10 MHz
      Val_10_MHZ,
      --  The RC oscillator frequency is at 12 MHz
      Val_12_MHZ)
     with Size => 3;
   for CKGR_MOR_MOSCRCFSelect use
     (Val_4_MHZ => 0,
      Val_8_MHZ => 1,
      Val_10_MHZ => 2,
      Val_12_MHZ => 3);

   subtype PMC_CKGR_MOR_MOSCXTST_Field is HAL.UInt8;

   --  Write Access Password
   type CKGR_MOR_KEYSelect is
     (--  Reset value for the field
      CKGR_MOR_KEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation. Always
--  reads as 0.
      PASSWD)
     with Size => 8;
   for CKGR_MOR_KEYSelect use
     (CKGR_MOR_KEYSelect_Reset => 0,
      PASSWD => 55);

   --  Main Oscillator Register
   type PMC_CKGR_MOR_Register is record
      --  Main Crystal Oscillator Enable
      MOSCXTEN       : Boolean := False;
      --  Main Crystal Oscillator Bypass
      MOSCXTBY       : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Main RC Oscillator Enable
      MOSCRCEN       : Boolean := False;
      --  Main RC Oscillator Frequency Selection
      MOSCRCF        : CKGR_MOR_MOSCRCFSelect := SAM_SVD.PMC.Val_4_MHZ;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Main Crystal Oscillator Startup Time
      MOSCXTST       : PMC_CKGR_MOR_MOSCXTST_Field := 16#0#;
      --  Write Access Password
      KEY            : CKGR_MOR_KEYSelect := CKGR_MOR_KEYSelect_Reset;
      --  Main Clock Oscillator Selection
      MOSCSEL        : Boolean := False;
      --  Clock Failure Detector Enable
      CFDEN          : Boolean := False;
      --  32.768 kHz Crystal Oscillator Frequency Monitoring Enable
      EXT32KFME      : Boolean := False;
      --  Bad CPU Clock Reset Enable
      BCPURST        : Boolean := False;
      --  Bad CPU Clock Interrupt to NMIC Enable
      BCPUNMIC       : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_CKGR_MOR_Register use record
      MOSCXTEN       at 0 range 0 .. 0;
      MOSCXTBY       at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      MOSCRCEN       at 0 range 3 .. 3;
      MOSCRCF        at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MOSCXTST       at 0 range 8 .. 15;
      KEY            at 0 range 16 .. 23;
      MOSCSEL        at 0 range 24 .. 24;
      CFDEN          at 0 range 25 .. 25;
      EXT32KFME      at 0 range 26 .. 26;
      BCPURST        at 0 range 27 .. 27;
      BCPUNMIC       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype PMC_CKGR_MCFR_MAINF_Field is HAL.UInt16;

   --  Main Clock Frequency Register
   type PMC_CKGR_MCFR_Register is record
      --  Main Clock Frequency
      MAINF          : PMC_CKGR_MCFR_MAINF_Field := 16#0#;
      --  Main Clock Frequency Measure Ready
      MAINFRDY       : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  RC Oscillator Frequency Measure (write-only)
      RCMEAS         : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Counter Clock Source Selection
      CCSS           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_CKGR_MCFR_Register use record
      MAINF          at 0 range 0 .. 15;
      MAINFRDY       at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      RCMEAS         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      CCSS           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  PLLA Front End Divider
   type CKGR_PLLAR_DIVASelect is
     (--  PLLA is disabled.
      Val_0,
      --  Divider is bypassed (divide by 1) and PLLA is enabled.
      BYPASS)
     with Size => 8;
   for CKGR_PLLAR_DIVASelect use
     (Val_0 => 0,
      BYPASS => 1);

   subtype PMC_CKGR_PLLAR_PLLACOUNT_Field is HAL.UInt6;

   --  VCO Frequency Configuratio
   type CKGR_PLLAR_FREQ_VCOSelect is
     (--  Frequency range: 40-80 MHz
      VCO0,
      --  Frequency range: 70-150 MHz
      VCO1,
      --  Frequency range: 125-275 MHz
      VCO2,
      --  Frequency range: 250-450 MHz
      VCO3)
     with Size => 2;
   for CKGR_PLLAR_FREQ_VCOSelect use
     (VCO0 => 0,
      VCO1 => 1,
      VCO2 => 2,
      VCO3 => 3);

   subtype PMC_CKGR_PLLAR_MULA_Field is HAL.UInt11;

   --  PLLA Register
   type PMC_CKGR_PLLAR_Register is record
      --  PLLA Front End Divider
      DIVA           : CKGR_PLLAR_DIVASelect := SAM_SVD.PMC.Val_0;
      --  PLLA Counter
      PLLACOUNT      : PMC_CKGR_PLLAR_PLLACOUNT_Field := 16#0#;
      --  VCO Frequency Configuratio
      FREQ_VCO       : CKGR_PLLAR_FREQ_VCOSelect := SAM_SVD.PMC.VCO0;
      --  PLLA Multiplier
      MULA           : PMC_CKGR_PLLAR_MULA_Field := 16#0#;
      --  unspecified
      Reserved_27_28 : HAL.UInt2 := 16#0#;
      --  Must Be Set to 1
      ONE            : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_CKGR_PLLAR_Register use record
      DIVA           at 0 range 0 .. 7;
      PLLACOUNT      at 0 range 8 .. 13;
      FREQ_VCO       at 0 range 14 .. 15;
      MULA           at 0 range 16 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      ONE            at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  PLLB Front End Divider
   type CKGR_PLLBR_DIVBSelect is
     (--  PLLBis disabled.
      Val_0,
      --  Divider is bypassed (divide by 1) and PLLB is enabled.
      BYPASS)
     with Size => 8;
   for CKGR_PLLBR_DIVBSelect use
     (Val_0 => 0,
      BYPASS => 1);

   subtype PMC_CKGR_PLLBR_PLLBCOUNT_Field is HAL.UInt6;

   --  VCO Frequency Configuration
   type CKGR_PLLBR_FREQ_VCOSelect is
     (--  Frequency range: 40-80 MHz
      VCO0,
      --  Frequency range: 70-150 MHz
      VCO1,
      --  Frequency range: 125-275 MHz
      VCO2,
      --  Frequency range: 250-450 MHz
      VCO3)
     with Size => 2;
   for CKGR_PLLBR_FREQ_VCOSelect use
     (VCO0 => 0,
      VCO1 => 1,
      VCO2 => 2,
      VCO3 => 3);

   subtype PMC_CKGR_PLLBR_MULB_Field is HAL.UInt11;

   --  PLLB Source Clock Selection
   type CKGR_PLLBR_SRCBSelect is
     (--  MAINCK is the source clock of PLLB.
      MAINCK,
      --  RC2CK is the source clock of PLLB.
      RC2CK)
     with Size => 2;
   for CKGR_PLLBR_SRCBSelect use
     (MAINCK => 0,
      RC2CK => 2);

   --  PLLB Register
   type PMC_CKGR_PLLBR_Register is record
      --  PLLB Front End Divider
      DIVB           : CKGR_PLLBR_DIVBSelect := SAM_SVD.PMC.Val_0;
      --  PLLB Counter
      PLLBCOUNT      : PMC_CKGR_PLLBR_PLLBCOUNT_Field := 16#0#;
      --  VCO Frequency Configuration
      FREQ_VCO       : CKGR_PLLBR_FREQ_VCOSelect := SAM_SVD.PMC.VCO0;
      --  PLLB Multiplier
      MULB           : PMC_CKGR_PLLBR_MULB_Field := 16#0#;
      --  unspecified
      Reserved_27_28 : HAL.UInt2 := 16#0#;
      --  PLLB Source Clock Selection
      SRCB           : CKGR_PLLBR_SRCBSelect := SAM_SVD.PMC.MAINCK;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_CKGR_PLLBR_Register use record
      DIVB           at 0 range 0 .. 7;
      PLLBCOUNT      at 0 range 8 .. 13;
      FREQ_VCO       at 0 range 14 .. 15;
      MULB           at 0 range 16 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      SRCB           at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Master Clock Source Selection
   type MCKR_CSSSelect is
     (--  MD_SLCK is selected
      SLOW_CLK,
      --  MAINCK is selected
      MAIN_CLK,
      --  PLLACK is selected
      PLLA_CLK)
     with Size => 2;
   for MCKR_CSSSelect use
     (SLOW_CLK => 0,
      MAIN_CLK => 1,
      PLLA_CLK => 2);

   --  Processor Clock Prescaler
   type MCKR_PRESSelect is
     (--  Selected clock
      CLK_1,
      --  Selected clock divided by 2
      CLK_2,
      --  Selected clock divided by 4
      CLK_4,
      --  Selected clock divided by 8
      CLK_8,
      --  Selected clock divided by 16
      CLK_16,
      --  Selected clock divided by 32
      CLK_32,
      --  Selected clock divided by 64
      CLK_64)
     with Size => 3;
   for MCKR_PRESSelect use
     (CLK_1 => 0,
      CLK_2 => 1,
      CLK_4 => 2,
      CLK_8 => 3,
      CLK_16 => 4,
      CLK_32 => 5,
      CLK_64 => 6);

   --  Master Clock Division
   type MCKR_MDIVSelect is
     (--  MCK is FCLK divided by 1.
      EQ_PCK,
      --  MCK is FCLK divided by 2.
      PCK_DIV2)
     with Size => 1;
   for MCKR_MDIVSelect use
     (EQ_PCK => 0,
      PCK_DIV2 => 1);

   --  Master Clock Register
   type PMC_MCKR_Register is record
      --  Master Clock Source Selection
      CSS            : MCKR_CSSSelect := SAM_SVD.PMC.SLOW_CLK;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Processor Clock Prescaler
      PRES           : MCKR_PRESSelect := SAM_SVD.PMC.CLK_1;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Master Clock Division
      MDIV           : MCKR_MDIVSelect := SAM_SVD.PMC.EQ_PCK;
      --  unspecified
      Reserved_9_12  : HAL.UInt4 := 16#0#;
      --  Shall be always write at '0'
      ZERO           : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_MCKR_Register use record
      CSS            at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PRES           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MDIV           at 0 range 8 .. 8;
      Reserved_9_12  at 0 range 9 .. 12;
      ZERO           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Programmable Clock Source Selection
   type PCK_CSSSelect is
     (--  MD_SLCK is selected
      SLOW_CLK,
      --  MAINCK is selected
      MAIN_CLK,
      --  PLLACK is selected
      PLLA_CLK,
      --  PLLBCKDIV is selected
      PLLB_CLK,
      --  MCK is selected
      MCK)
     with Size => 3;
   for PCK_CSSSelect use
     (SLOW_CLK => 0,
      MAIN_CLK => 1,
      PLLA_CLK => 2,
      PLLB_CLK => 3,
      MCK => 4);

   subtype PMC_PCK_PRES_Field is HAL.UInt8;

   --  Programmable Clock Register
   type PMC_PCK_Register is record
      --  Programmable Clock Source Selection
      CSS            : PCK_CSSSelect := SAM_SVD.PMC.SLOW_CLK;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Programmable Clock Prescaler
      PRES           : PMC_PCK_PRES_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_PCK_Register use record
      CSS            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PRES           at 0 range 4 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Programmable Clock Register
   type PMC_PCK_Registers is array (0 .. 3) of PMC_PCK_Register;

   --  PMC_IER_PCKRDY array
   type PMC_IER_PCKRDY_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PMC_IER_PCKRDY
   type PMC_IER_PCKRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCKRDY as a value
            Val : HAL.UInt4;
         when True =>
            --  PCKRDY as an array
            Arr : PMC_IER_PCKRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PMC_IER_PCKRDY_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Enable Register
   type PMC_IER_Register is record
      --  Write-only. Main Crystal Oscillator Status Interrupt Enable
      MOSCXTS        : Boolean := False;
      --  Write-only. PLLA Lock Interrupt Enable
      LOCKA          : Boolean := False;
      --  Write-only. PLLB Lock Interrupt Enable
      LOCKB          : Boolean := False;
      --  Write-only. Master Clock Ready Interrupt Enable
      MCKRDY         : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. Programmable Clock Ready 0 Interrupt Enable
      PCKRDY         : PMC_IER_PCKRDY_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Write-only. Main Clock Source Oscillator Selection Status Interrupt
      --  Enable
      MOSCSELS       : Boolean := False;
      --  Write-only. Main RC Oscillator Status Interrupt Enable
      MOSCRCS        : Boolean := False;
      --  Write-only. Clock Failure Detector Event Interrupt Enable
      CFDEV          : Boolean := False;
      --  unspecified
      Reserved_19_20 : HAL.UInt2 := 16#0#;
      --  Write-only. 32.768 kHz Crystal Oscillator Error Interrupt Enable
      EXT32KERR      : Boolean := False;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Write-only. CPU Clock Monitor Interrupt Enable
      CPUMON         : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_IER_Register use record
      MOSCXTS        at 0 range 0 .. 0;
      LOCKA          at 0 range 1 .. 1;
      LOCKB          at 0 range 2 .. 2;
      MCKRDY         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PCKRDY         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MOSCSELS       at 0 range 16 .. 16;
      MOSCRCS        at 0 range 17 .. 17;
      CFDEV          at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      EXT32KERR      at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      CPUMON         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PMC_IDR_PCKRDY array
   type PMC_IDR_PCKRDY_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PMC_IDR_PCKRDY
   type PMC_IDR_PCKRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCKRDY as a value
            Val : HAL.UInt4;
         when True =>
            --  PCKRDY as an array
            Arr : PMC_IDR_PCKRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PMC_IDR_PCKRDY_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Disable Register
   type PMC_IDR_Register is record
      --  Write-only. Main Crystal Oscillator Status Interrupt Disable
      MOSCXTS        : Boolean := False;
      --  Write-only. PLLA Lock Interrupt Disable
      LOCKA          : Boolean := False;
      --  Write-only. PLLB Lock Interrupt Disable
      LOCKB          : Boolean := False;
      --  Write-only. Master Clock Ready Interrupt Disable
      MCKRDY         : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. Programmable Clock Ready 0 Interrupt Disable
      PCKRDY         : PMC_IDR_PCKRDY_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Write-only. Main Clock Source Oscillator Selection Status Interrupt
      --  Disable
      MOSCSELS       : Boolean := False;
      --  Write-only. Main RC Status Interrupt Disable
      MOSCRCS        : Boolean := False;
      --  Write-only. Clock Failure Detector Event Interrupt Disable
      CFDEV          : Boolean := False;
      --  unspecified
      Reserved_19_20 : HAL.UInt2 := 16#0#;
      --  Write-only. 32.768 kHz Crystal Oscillator Error Interrupt Disable
      EXT32KERR      : Boolean := False;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Write-only. CPU Clock Monitor Interrupt Disable
      CPUMON         : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_IDR_Register use record
      MOSCXTS        at 0 range 0 .. 0;
      LOCKA          at 0 range 1 .. 1;
      LOCKB          at 0 range 2 .. 2;
      MCKRDY         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PCKRDY         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MOSCSELS       at 0 range 16 .. 16;
      MOSCRCS        at 0 range 17 .. 17;
      CFDEV          at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      EXT32KERR      at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      CPUMON         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PMC_SR_PCKRDY array
   type PMC_SR_PCKRDY_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PMC_SR_PCKRDY
   type PMC_SR_PCKRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCKRDY as a value
            Val : HAL.UInt4;
         when True =>
            --  PCKRDY as an array
            Arr : PMC_SR_PCKRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PMC_SR_PCKRDY_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Status Register
   type PMC_SR_Register is record
      --  Read-only. Main Crystal Oscillator Status
      MOSCXTS        : Boolean;
      --  Read-only. PLLA Lock Status
      LOCKA          : Boolean;
      --  Read-only. PLLB Lock Status
      LOCKB          : Boolean;
      --  Read-only. Master Clock Status
      MCKRDY         : Boolean;
      --  unspecified
      Reserved_4_6   : HAL.UInt3;
      --  Read-only. Monitoring Domain Slow Clock Source Oscillator Selection
      OSCSELS        : Boolean;
      --  Read-only. Programmable Clock Ready Status
      PCKRDY         : PMC_SR_PCKRDY_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Main Clock Source Oscillator Selection Status
      MOSCSELS       : Boolean;
      --  Read-only. Main RC Oscillator Status
      MOSCRCS        : Boolean;
      --  Read-only. Clock Failure Detector Event
      CFDEV          : Boolean;
      --  Read-only. Clock Failure Detector Status
      CFDS           : Boolean;
      --  Read-only. Clock Failure Detector Fault Output Status
      FOS            : Boolean;
      --  Read-only. Slow Crystal Oscillator Error
      EXT32KERR      : Boolean;
      --  unspecified
      Reserved_22_22 : HAL.Bit;
      --  Read-only. CPU Clock Monitor Error
      CPUMON         : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_SR_Register use record
      MOSCXTS        at 0 range 0 .. 0;
      LOCKA          at 0 range 1 .. 1;
      LOCKB          at 0 range 2 .. 2;
      MCKRDY         at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      OSCSELS        at 0 range 7 .. 7;
      PCKRDY         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MOSCSELS       at 0 range 16 .. 16;
      MOSCRCS        at 0 range 17 .. 17;
      CFDEV          at 0 range 18 .. 18;
      CFDS           at 0 range 19 .. 19;
      FOS            at 0 range 20 .. 20;
      EXT32KERR      at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      CPUMON         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PMC_IMR_PCKRDY array
   type PMC_IMR_PCKRDY_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PMC_IMR_PCKRDY
   type PMC_IMR_PCKRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCKRDY as a value
            Val : HAL.UInt4;
         when True =>
            --  PCKRDY as an array
            Arr : PMC_IMR_PCKRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PMC_IMR_PCKRDY_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Mask Register
   type PMC_IMR_Register is record
      --  Read-only. Main Crystal Oscillator Status Interrupt Mask
      MOSCXTS        : Boolean;
      --  Read-only. PLLA Lock Interrupt Mask
      LOCKA          : Boolean;
      --  Read-only. PLLB Lock Interrupt Mask
      LOCKB          : Boolean;
      --  Read-only. Master Clock Ready Interrupt Mask
      MCKRDY         : Boolean;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Programmable Clock Ready 0 Interrupt Mask
      PCKRDY         : PMC_IMR_PCKRDY_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Main Clock Source Oscillator Selection Status Interrupt
      --  Mask
      MOSCSELS       : Boolean;
      --  Read-only. Main RC Status Interrupt Mask
      MOSCRCS        : Boolean;
      --  Read-only. Clock Failure Detector Event Interrupt Mask
      CFDEV          : Boolean;
      --  unspecified
      Reserved_19_20 : HAL.UInt2;
      --  Read-only. 32.768 kHz Crystal Oscillator Error Interrupt Mask
      EXT32KERR      : Boolean;
      --  unspecified
      Reserved_22_22 : HAL.Bit;
      --  Read-only. CPU Clock Monitor Error Interrupt Mask
      CPUMON         : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_IMR_Register use record
      MOSCXTS        at 0 range 0 .. 0;
      LOCKA          at 0 range 1 .. 1;
      LOCKB          at 0 range 2 .. 2;
      MCKRDY         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PCKRDY         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MOSCSELS       at 0 range 16 .. 16;
      MOSCRCS        at 0 range 17 .. 17;
      CFDEV          at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      EXT32KERR      at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      CPUMON         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Fault Output Clear Register
   type PMC_FOCR_Register is record
      --  Write-only. Fault Output Clear
      FOCLR         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_FOCR_Register use record
      FOCLR         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PLLA Output Current
   type PLL_CFG_OUTCUR_PLLASelect is
     (--  0.5 mA
      ICP0,
      --  0.75 mA
      ICP1,
      --  1 mA
      ICP2,
      --  1.25 mA
      ICP3)
     with Size => 4;
   for PLL_CFG_OUTCUR_PLLASelect use
     (ICP0 => 0,
      ICP1 => 1,
      ICP2 => 2,
      ICP3 => 3);

   --  Internal Filter PLL - Select Internal Capaticance Value
   type PLL_CFG_SCASelect is
     (--  20 pF
      SC_VAL_20p,
      --  40 pF
      SC_VAL_40p,
      --  30 pF
      SC_VAL_30p,
      --  60 pF
      SC_VAL_60p)
     with Size => 2;
   for PLL_CFG_SCASelect use
     (SC_VAL_20p => 0,
      SC_VAL_40p => 1,
      SC_VAL_30p => 2,
      SC_VAL_60p => 3);

   --  Internal Filter PLL - Select Internal Resistor Value
   type PLL_CFG_SRASelect is
     (--  24 Ohms
      SR_VAL_24K,
      --  6 Ohms
      SR_VAL_6K,
      --  3 Ohms
      SR_VAL_3K,
      --  12 Ohms
      SR_VAL_12K)
     with Size => 2;
   for PLL_CFG_SRASelect use
     (SR_VAL_24K => 0,
      SR_VAL_6K => 1,
      SR_VAL_3K => 2,
      SR_VAL_12K => 3);

   --  PLLB Output Current
   type PLL_CFG_OUTCUR_PLLBSelect is
     (--  0.5 mA
      ICP0,
      --  0.75 mA
      ICP1,
      --  1 mA
      ICP2,
      --  1.25 mA
      ICP3)
     with Size => 4;
   for PLL_CFG_OUTCUR_PLLBSelect use
     (ICP0 => 0,
      ICP1 => 1,
      ICP2 => 2,
      ICP3 => 3);

   --  Internal Filter PLL - Select Internal Capaticance Value
   type PLL_CFG_SCBSelect is
     (--  20 pF
      SC_VAL_20p,
      --  40 pF
      SC_VAL_40p,
      --  30 pF
      SC_VAL_30p,
      --  60 pF
      SC_VAL_60p)
     with Size => 2;
   for PLL_CFG_SCBSelect use
     (SC_VAL_20p => 0,
      SC_VAL_40p => 1,
      SC_VAL_30p => 2,
      SC_VAL_60p => 3);

   --  Internal Filter PLL - Select Internal Resistor Value
   type PLL_CFG_SRBSelect is
     (--  24 Ohms
      SR_VAL_24K,
      --  6 Ohms
      SR_VAL_6K,
      --  3 Ohms
      SR_VAL_3K,
      --  12 Ohms
      SR_VAL_12K)
     with Size => 2;
   for PLL_CFG_SRBSelect use
     (SR_VAL_24K => 0,
      SR_VAL_6K => 1,
      SR_VAL_3K => 2,
      SR_VAL_12K => 3);

   --  PLL Configuration Register
   type PMC_PLL_CFG_Register is record
      --  PLLA Output Current
      OUTCUR_PLLA    : PLL_CFG_OUTCUR_PLLASelect := SAM_SVD.PMC.ICP0;
      --  unspecified
      Reserved_4_11  : HAL.UInt8 := 16#0#;
      --  Internal Filter PLL - Select Internal Capaticance Value
      SCA            : PLL_CFG_SCASelect := SAM_SVD.PMC.SC_VAL_20p;
      --  Internal Filter PLL - Select Internal Resistor Value
      SRA            : PLL_CFG_SRASelect := SAM_SVD.PMC.SR_VAL_24K;
      --  PLLB Output Current
      OUTCUR_PLLB    : PLL_CFG_OUTCUR_PLLBSelect := SAM_SVD.PMC.ICP0;
      --  unspecified
      Reserved_20_27 : HAL.UInt8 := 16#0#;
      --  Internal Filter PLL - Select Internal Capaticance Value
      SCB            : PLL_CFG_SCBSelect := SAM_SVD.PMC.SC_VAL_20p;
      --  Internal Filter PLL - Select Internal Resistor Value
      SRB            : PLL_CFG_SRBSelect := SAM_SVD.PMC.SR_VAL_24K;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_PLL_CFG_Register use record
      OUTCUR_PLLA    at 0 range 0 .. 3;
      Reserved_4_11  at 0 range 4 .. 11;
      SCA            at 0 range 12 .. 13;
      SRA            at 0 range 14 .. 15;
      OUTCUR_PLLB    at 0 range 16 .. 19;
      Reserved_20_27 at 0 range 20 .. 27;
      SCB            at 0 range 28 .. 29;
      SRB            at 0 range 30 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEYSelect is
     (--  Reset value for the field
      WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit. Always reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEYSelect use
     (WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5262659);

   --  Write Protection Mode Register
   type PMC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  Write Protection Interrupt Enable
      WPITEN       : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      WPITEN       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype PMC_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protection Status Register
   type PMC_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : PMC_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PMC_PCR_PID_Field is HAL.UInt7;

   --  Generic Clock Source Selection
   type PCR_GCLKCSSSelect is
     (--  MD_SLCK is selected
      SLOW_CLK,
      --  MAINCK is selected
      MAIN_CLK,
      --  PLLACK is selected
      PLLA_CLK,
      --  PLLBCK is selected
      PLLB_CLK,
      --  MCK is selected
      MCK_CLK,
      --  RC2 is selected
      MCK_RC2)
     with Size => 3;
   for PCR_GCLKCSSSelect use
     (SLOW_CLK => 0,
      MAIN_CLK => 1,
      PLLA_CLK => 2,
      PLLB_CLK => 3,
      MCK_CLK => 4,
      MCK_RC2 => 5);

   subtype PMC_PCR_GCLKDIV_Field is HAL.UInt8;

   --  Peripheral Control Register
   type PMC_PCR_Register is record
      --  Peripheral ID
      PID            : PMC_PCR_PID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Generic Clock Source Selection
      GCLKCSS        : PCR_GCLKCSSSelect := SAM_SVD.PMC.SLOW_CLK;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Command
      CMD            : Boolean := False;
      --  unspecified
      Reserved_13_19 : HAL.UInt7 := 16#0#;
      --  Generic Clock Division Ratio
      GCLKDIV        : PMC_PCR_GCLKDIV_Field := 16#0#;
      --  Enable
      EN             : Boolean := False;
      --  Generic Clock Enable
      GCLKEN         : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_PCR_Register use record
      PID            at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      GCLKCSS        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CMD            at 0 range 12 .. 12;
      Reserved_13_19 at 0 range 13 .. 19;
      GCLKDIV        at 0 range 20 .. 27;
      EN             at 0 range 28 .. 28;
      GCLKEN         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype PMC_OCR1_CAL4_Field is HAL.UInt7;
   subtype PMC_OCR1_CAL8_Field is HAL.UInt7;
   subtype PMC_OCR1_CAL12_Field is HAL.UInt7;
   subtype PMC_OCR1_CAL10_Field is HAL.UInt7;

   --  Oscillator Calibration Register
   type PMC_OCR1_Register is record
      --  Main RC Oscillator Calibration Bits for 4 MHz
      CAL4  : PMC_OCR1_CAL4_Field := 16#0#;
      --  Selection of Main RC Oscillator Calibration Bits for 4 MHz
      SEL4  : Boolean := False;
      --  Main RC Oscillator Calibration Bits for 8 MHz
      CAL8  : PMC_OCR1_CAL8_Field := 16#0#;
      --  Selection of Main RC Oscillator Calibration Bits for 8 MHz
      SEL8  : Boolean := False;
      --  Main RC Oscillator Calibration Bits for 12 MHz
      CAL12 : PMC_OCR1_CAL12_Field := 16#0#;
      --  Selection of Main RC Oscillator Calibration Bits for 10 MHz
      SEL10 : Boolean := False;
      --  Main RC Oscillator Calibration Bits for 10 MHz
      CAL10 : PMC_OCR1_CAL10_Field := 16#0#;
      --  Selection of Main RC Oscillator Calibration Bits for 12 MHz
      SEL12 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_OCR1_Register use record
      CAL4  at 0 range 0 .. 6;
      SEL4  at 0 range 7 .. 7;
      CAL8  at 0 range 8 .. 14;
      SEL8  at 0 range 15 .. 15;
      CAL12 at 0 range 16 .. 22;
      SEL10 at 0 range 23 .. 23;
      CAL10 at 0 range 24 .. 30;
      SEL12 at 0 range 31 .. 31;
   end record;

   subtype PMC_PMMR_PLLA_MMAX_Field is HAL.UInt11;
   subtype PMC_PMMR_PLLB_MMAX_Field is HAL.UInt11;

   --  PLL Maximum Multiplier Value Register
   type PMC_PMMR_Register is record
      --  PLLA Maximum Allowed Multiplier Value
      PLLA_MMAX      : PMC_PMMR_PLLA_MMAX_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  PLLB Maximum Allowed Multiplier Value
      PLLB_MMAX      : PMC_PMMR_PLLB_MMAX_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_PMMR_Register use record
      PLLA_MMAX      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      PLLB_MMAX      at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype PMC_CPULIM_CPU_LOW_IT_Field is HAL.UInt8;
   subtype PMC_CPULIM_CPU_HIGH_IT_Field is HAL.UInt8;
   subtype PMC_CPULIM_CPU_LOW_RES_Field is HAL.UInt8;
   subtype PMC_CPULIM_CPU_HIGH_RES_Field is HAL.UInt8;

   --  CPU Monitor Limits Register
   type PMC_CPULIM_Register is record
      --  CPU Monitoring Low IT Limit
      CPU_LOW_IT   : PMC_CPULIM_CPU_LOW_IT_Field := 16#0#;
      --  CPU Monitoring High IT Limit
      CPU_HIGH_IT  : PMC_CPULIM_CPU_HIGH_IT_Field := 16#0#;
      --  CPU Monitoring Low RESET Limit
      CPU_LOW_RES  : PMC_CPULIM_CPU_LOW_RES_Field := 16#0#;
      --  CPU Monitoring High Reset Limit
      CPU_HIGH_RES : PMC_CPULIM_CPU_HIGH_RES_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_CPULIM_Register use record
      CPU_LOW_IT   at 0 range 0 .. 7;
      CPU_HIGH_IT  at 0 range 8 .. 15;
      CPU_LOW_RES  at 0 range 16 .. 23;
      CPU_HIGH_RES at 0 range 24 .. 31;
   end record;

   --  PMC_CSR0_PID array
   type PMC_CSR0_PID_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Clock Status Register 0
   type PMC_CSR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PID as a value
            Val : HAL.UInt32;
         when True =>
            --  PID as an array
            Arr : PMC_CSR0_PID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_CSR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMC_CSR1_PID array
   type PMC_CSR1_PID_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Clock Status Register 1
   type PMC_CSR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PID as a value
            Val : HAL.UInt32;
         when True =>
            --  PID as an array
            Arr : PMC_CSR1_PID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_CSR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMC_CSR2_PID array
   type PMC_CSR2_PID_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Clock Status Register 2
   type PMC_CSR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PID as a value
            Val : HAL.UInt32;
         when True =>
            --  PID as an array
            Arr : PMC_CSR2_PID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_CSR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMC_CSR3_PID array
   type PMC_CSR3_PID_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Clock Status Register 3
   type PMC_CSR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PID as a value
            Val : HAL.UInt32;
         when True =>
            --  PID as an array
            Arr : PMC_CSR3_PID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_CSR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMC_GCSR0_GPID array
   type PMC_GCSR0_GPID_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Generic Clock Status Register 0
   type PMC_GCSR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPID as a value
            Val : HAL.UInt32;
         when True =>
            --  GPID as an array
            Arr : PMC_GCSR0_GPID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_GCSR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMC_GCSR1_GPID array
   type PMC_GCSR1_GPID_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  Generic Clock Status Register 1
   type PMC_GCSR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPID as a value
            Val : HAL.UInt32;
         when True =>
            --  GPID as an array
            Arr : PMC_GCSR1_GPID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_GCSR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMC_GCSR2_GPID array
   type PMC_GCSR2_GPID_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  Generic Clock Status Register 2
   type PMC_GCSR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPID as a value
            Val : HAL.UInt32;
         when True =>
            --  GPID as an array
            Arr : PMC_GCSR2_GPID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_GCSR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMC_GCSR3_GPID array
   type PMC_GCSR3_GPID_Field_Array is array (96 .. 120) of Boolean
     with Component_Size => 1, Size => 25;

   --  Type definition for PMC_GCSR3_GPID
   type PMC_GCSR3_GPID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPID as a value
            Val : HAL.UInt25;
         when True =>
            --  GPID as an array
            Arr : PMC_GCSR3_GPID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 25;

   for PMC_GCSR3_GPID_Field use record
      Val at 0 range 0 .. 24;
      Arr at 0 range 0 .. 24;
   end record;

   subtype PMC_GCSR3_GPID122_Field is HAL.UInt2;

   --  PMC_GCSR3_GPID array
   type PMC_GCSR3_GPID_Field_Array_1 is array (123 .. 127) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for PMC_GCSR3_GPID
   type PMC_GCSR3_GPID_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPID as a value
            Val : HAL.UInt5;
         when True =>
            --  GPID as an array
            Arr : PMC_GCSR3_GPID_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for PMC_GCSR3_GPID_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Generic Clock Status Register 3
   type PMC_GCSR3_Register is record
      --  Read-only. Generic Clock 96 Status
      GPID    : PMC_GCSR3_GPID_Field;
      --  Read-only. Generic Clock 122 Status
      GPID122 : PMC_GCSR3_GPID122_Field;
      --  Read-only. Generic Clock 123 Status
      GPID_1  : PMC_GCSR3_GPID_Field_1;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_GCSR3_Register use record
      GPID    at 0 range 0 .. 24;
      GPID122 at 0 range 25 .. 26;
      GPID_1  at 0 range 27 .. 31;
   end record;

   --  2nd Oscillator Frequency Selection
   type OSC2_OSCRCFSelect is
     (--  The 2nd RC oscillator frequency is at 4 MHZ
      Val_4_MHZ,
      --  The 2nd RC oscillator frequency is at 8 MHZ
      Val_8_MHZ,
      --  The 2nd RC oscillator frequency is at 10 MHZ
      Val_10_MHZ,
      --  The 2nd RC oscillator frequency is at 12 MHZ
      Val_12_MHZ)
     with Size => 2;
   for OSC2_OSCRCFSelect use
     (Val_4_MHZ => 0,
      Val_8_MHZ => 1,
      Val_10_MHZ => 2,
      Val_12_MHZ => 3);

   --  Register Write Access Password
   type OSC2_KEYSelect is
     (--  Reset value for the field
      OSC2_KEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.Always
--  reads as 0.
      PASSWD)
     with Size => 8;
   for OSC2_KEYSelect use
     (OSC2_KEYSelect_Reset => 0,
      PASSWD => 55);

   --  Oscillator Control Register 2
   type PMC_OSC2_Register is record
      --  Enable
      EN             : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  2nd Oscillator Frequency Selection
      OSCRCF         : OSC2_OSCRCFSelect := SAM_SVD.PMC.Val_4_MHZ;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Enable Calibration Register Write
      EN_WR_CALIB    : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Register Write Access Password
      KEY            : OSC2_KEYSelect := OSC2_KEYSelect_Reset;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_OSC2_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      OSCRCF         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EN_WR_CALIB    at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      KEY            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PMC_OCR2_CAL4_Field is HAL.UInt7;
   subtype PMC_OCR2_CAL8_Field is HAL.UInt7;
   subtype PMC_OCR2_CAL12_Field is HAL.UInt7;
   subtype PMC_OCR2_CAL10_Field is HAL.UInt7;

   --  Oscillator Calibration Register 2
   type PMC_OCR2_Register is record
      --  Main RC Oscillator Calibration Bits for 4 MHz
      CAL4  : PMC_OCR2_CAL4_Field := 16#0#;
      --  Selection of Main RC Oscillator Calibration Bits for 4 MHz
      SEL4  : Boolean := False;
      --  Main RC Oscillator Calibration Bits for 8 MHz
      CAL8  : PMC_OCR2_CAL8_Field := 16#0#;
      --  Selection of Main RC Oscillator Calibration Bits for 8 MHz
      SEL8  : Boolean := False;
      --  Main RC Oscillator Calibration Bits for 12 MHz
      CAL12 : PMC_OCR2_CAL12_Field := 16#0#;
      --  Selection of Main RC Oscillator Calibration Bits for 12 MHz
      SEL12 : Boolean := False;
      --  Main RC Oscillator Calibration Bits for 10 MHz
      CAL10 : PMC_OCR2_CAL10_Field := 16#0#;
      --  Selection of Main RC Oscillator Calibration Bits for 10 MHz
      SEL10 : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_OCR2_Register use record
      CAL4  at 0 range 0 .. 6;
      SEL4  at 0 range 7 .. 7;
      CAL8  at 0 range 8 .. 14;
      SEL8  at 0 range 15 .. 15;
      CAL12 at 0 range 16 .. 22;
      SEL12 at 0 range 23 .. 23;
      CAL10 at 0 range 24 .. 30;
      SEL10 at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power Management Controller
   type PMC_Peripheral is record
      --  System Clock Enable Register
      SCER       : aliased PMC_SCER_Register;
      --  System Clock Disable Register
      SCDR       : aliased PMC_SCDR_Register;
      --  System Clock Status Register
      SCSR       : aliased PMC_SCSR_Register;
      --  Main Oscillator Register
      CKGR_MOR   : aliased PMC_CKGR_MOR_Register;
      --  Main Clock Frequency Register
      CKGR_MCFR  : aliased PMC_CKGR_MCFR_Register;
      --  PLLA Register
      CKGR_PLLAR : aliased PMC_CKGR_PLLAR_Register;
      --  PLLB Register
      CKGR_PLLBR : aliased PMC_CKGR_PLLBR_Register;
      --  Master Clock Register
      MCKR       : aliased PMC_MCKR_Register;
      --  Programmable Clock Register
      PCK        : aliased PMC_PCK_Registers;
      --  Interrupt Enable Register
      IER        : aliased PMC_IER_Register;
      --  Interrupt Disable Register
      IDR        : aliased PMC_IDR_Register;
      --  Status Register
      SR         : aliased PMC_SR_Register;
      --  Interrupt Mask Register
      IMR        : aliased PMC_IMR_Register;
      --  Fault Output Clear Register
      FOCR       : aliased PMC_FOCR_Register;
      --  PLL Configuration Register
      PLL_CFG    : aliased PMC_PLL_CFG_Register;
      --  Write Protection Mode Register
      WPMR       : aliased PMC_WPMR_Register;
      --  Write Protection Status Register
      WPSR       : aliased PMC_WPSR_Register;
      --  Peripheral Control Register
      PCR        : aliased PMC_PCR_Register;
      --  Oscillator Calibration Register
      OCR1       : aliased PMC_OCR1_Register;
      --  PLL Maximum Multiplier Value Register
      PMMR       : aliased PMC_PMMR_Register;
      --  CPU Monitor Limits Register
      CPULIM     : aliased PMC_CPULIM_Register;
      --  Peripheral Clock Status Register 0
      CSR0       : aliased PMC_CSR0_Register;
      --  Peripheral Clock Status Register 1
      CSR1       : aliased PMC_CSR1_Register;
      --  Peripheral Clock Status Register 2
      CSR2       : aliased PMC_CSR2_Register;
      --  Peripheral Clock Status Register 3
      CSR3       : aliased PMC_CSR3_Register;
      --  Generic Clock Status Register 0
      GCSR0      : aliased PMC_GCSR0_Register;
      --  Generic Clock Status Register 1
      GCSR1      : aliased PMC_GCSR1_Register;
      --  Generic Clock Status Register 2
      GCSR2      : aliased PMC_GCSR2_Register;
      --  Generic Clock Status Register 3
      GCSR3      : aliased PMC_GCSR3_Register;
      --  Oscillator Control Register 2
      OSC2       : aliased PMC_OSC2_Register;
      --  Oscillator Calibration Register 2
      OCR2       : aliased PMC_OCR2_Register;
   end record
     with Volatile;

   for PMC_Peripheral use record
      SCER       at 16#0# range 0 .. 31;
      SCDR       at 16#4# range 0 .. 31;
      SCSR       at 16#8# range 0 .. 31;
      CKGR_MOR   at 16#20# range 0 .. 31;
      CKGR_MCFR  at 16#24# range 0 .. 31;
      CKGR_PLLAR at 16#28# range 0 .. 31;
      CKGR_PLLBR at 16#2C# range 0 .. 31;
      MCKR       at 16#30# range 0 .. 31;
      PCK        at 16#40# range 0 .. 127;
      IER        at 16#60# range 0 .. 31;
      IDR        at 16#64# range 0 .. 31;
      SR         at 16#68# range 0 .. 31;
      IMR        at 16#6C# range 0 .. 31;
      FOCR       at 16#78# range 0 .. 31;
      PLL_CFG    at 16#80# range 0 .. 31;
      WPMR       at 16#E4# range 0 .. 31;
      WPSR       at 16#E8# range 0 .. 31;
      PCR        at 16#10C# range 0 .. 31;
      OCR1       at 16#110# range 0 .. 31;
      PMMR       at 16#130# range 0 .. 31;
      CPULIM     at 16#160# range 0 .. 31;
      CSR0       at 16#170# range 0 .. 31;
      CSR1       at 16#174# range 0 .. 31;
      CSR2       at 16#178# range 0 .. 31;
      CSR3       at 16#17C# range 0 .. 31;
      GCSR0      at 16#190# range 0 .. 31;
      GCSR1      at 16#194# range 0 .. 31;
      GCSR2      at 16#198# range 0 .. 31;
      GCSR3      at 16#19C# range 0 .. 31;
      OSC2       at 16#1B0# range 0 .. 31;
      OCR2       at 16#1B4# range 0 .. 31;
   end record;

   --  Power Management Controller
   PMC_Periph : aliased PMC_Peripheral
     with Import, Address => PMC_Base;

end SAM_SVD.PMC;
