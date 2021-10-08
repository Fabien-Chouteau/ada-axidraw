pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.TC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ---------------------------------------
   -- TC_TC_CHANNEL cluster's Registers --
   ---------------------------------------

   --  Channel Control Register
   type TC_CCR_TC_TC_CHANNEL_Register is record
      --  Write-only. Counter Clock Enable Command
      CLKEN         : Boolean := False;
      --  Write-only. Counter Clock Disable Command
      CLKDIS        : Boolean := False;
      --  Write-only. Software Trigger Command
      SWTRG         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_CCR_TC_TC_CHANNEL_Register use record
      CLKEN         at 0 range 0 .. 0;
      CLKDIS        at 0 range 1 .. 1;
      SWTRG         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock Selection
   type CMR_CAPTURE_MODE_TCCLKSSelect is
     (--  Clock selected: internal GCLK clock signal (from PMC)
      TIMER_CLOCK1,
      --  Clock selected: internal MCK/8 clock signal (from PMC)
      TIMER_CLOCK2,
      --  Clock selected: internal MCK/32 clock signal (from PMC)
      TIMER_CLOCK3,
      --  Clock selected: internal MCK/128 clock signal (from PMC)
      TIMER_CLOCK4,
      --  Clock selected: internal SLCK clock signal (from PMC)
      TIMER_CLOCK5,
      --  Clock selected: XC0
      XC0,
      --  Clock selected: XC1
      XC1,
      --  Clock selected: XC2
      XC2)
     with Size => 3;
   for CMR_CAPTURE_MODE_TCCLKSSelect use
     (TIMER_CLOCK1 => 0,
      TIMER_CLOCK2 => 1,
      TIMER_CLOCK3 => 2,
      TIMER_CLOCK4 => 3,
      TIMER_CLOCK5 => 4,
      XC0 => 5,
      XC1 => 6,
      XC2 => 7);

   --  Burst Signal Selection
   type CMR_CAPTURE_MODE_BURSTSelect is
     (--  The clock is not gated by an external signal.
      NONE,
      --  XC0 is ANDed with the selected clock.
      XC0,
      --  XC1 is ANDed with the selected clock.
      XC1,
      --  XC2 is ANDed with the selected clock.
      XC2)
     with Size => 2;
   for CMR_CAPTURE_MODE_BURSTSelect use
     (NONE => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   --  External Trigger Edge Selection
   type CMR_CAPTURE_MODE_ETRGEDGSelect is
     (--  The clock is not gated by an external signal.
      NONE,
      --  Rising edge
      RISING,
      --  Falling edge
      FALLING,
      --  Each edge
      EDGE)
     with Size => 2;
   for CMR_CAPTURE_MODE_ETRGEDGSelect use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  RA Loading Edge Selection
   type CMR_CAPTURE_MODE_LDRASelect is
     (--  None
      NONE,
      --  Rising edge of TIOAx
      RISING,
      --  Falling edge of TIOAx
      FALLING,
      --  Each edge of TIOAx
      EDGE)
     with Size => 2;
   for CMR_CAPTURE_MODE_LDRASelect use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  RB Loading Edge Selection
   type CMR_CAPTURE_MODE_LDRBSelect is
     (--  None
      NONE,
      --  Rising edge of TIOAx
      RISING,
      --  Falling edge of TIOAx
      FALLING,
      --  Each edge of TIOAx
      EDGE)
     with Size => 2;
   for CMR_CAPTURE_MODE_LDRBSelect use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  Loading Edge Subsampling Ratio
   type CMR_CAPTURE_MODE_SBSMPLRSelect is
     (--  Load a Capture register each selected edge
      ONE,
      --  Load a Capture register every 2 selected edges
      HALF,
      --  Load a Capture register every 4 selected edges
      FOURTH,
      --  Load a Capture register every 8 selected edges
      EIGHTH,
      --  Load a Capture register every 16 selected edges
      SIXTEENTH)
     with Size => 3;
   for CMR_CAPTURE_MODE_SBSMPLRSelect use
     (ONE => 0,
      HALF => 1,
      FOURTH => 2,
      EIGHTH => 3,
      SIXTEENTH => 4);

   --  Channel Mode Register
   type TC_CMR_CAPTURE_MODE_TC_TC_CHANNEL_Register is record
      --  Clock Selection
      TCCLKS         : CMR_CAPTURE_MODE_TCCLKSSelect :=
                        SAM_SVD.TC.TIMER_CLOCK1;
      --  Clock Invert
      CLKI           : Boolean := False;
      --  Burst Signal Selection
      BURST          : CMR_CAPTURE_MODE_BURSTSelect := SAM_SVD.TC.NONE;
      --  Counter Clock Stopped with RB Loading
      LDBSTOP        : Boolean := False;
      --  Counter Clock Disable with RB Loading
      LDBDIS         : Boolean := False;
      --  External Trigger Edge Selection
      ETRGEDG        : CMR_CAPTURE_MODE_ETRGEDGSelect := SAM_SVD.TC.NONE;
      --  TIOAx or TIOBx External Trigger Selection
      ABETRG         : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  RC Compare Trigger Enable
      CPCTRG         : Boolean := False;
      --  Waveform Mode
      WAVE           : Boolean := False;
      --  RA Loading Edge Selection
      LDRA           : CMR_CAPTURE_MODE_LDRASelect := SAM_SVD.TC.NONE;
      --  RB Loading Edge Selection
      LDRB           : CMR_CAPTURE_MODE_LDRBSelect := SAM_SVD.TC.NONE;
      --  Loading Edge Subsampling Ratio
      SBSMPLR        : CMR_CAPTURE_MODE_SBSMPLRSelect := SAM_SVD.TC.ONE;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_CMR_CAPTURE_MODE_TC_TC_CHANNEL_Register use record
      TCCLKS         at 0 range 0 .. 2;
      CLKI           at 0 range 3 .. 3;
      BURST          at 0 range 4 .. 5;
      LDBSTOP        at 0 range 6 .. 6;
      LDBDIS         at 0 range 7 .. 7;
      ETRGEDG        at 0 range 8 .. 9;
      ABETRG         at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      CPCTRG         at 0 range 14 .. 14;
      WAVE           at 0 range 15 .. 15;
      LDRA           at 0 range 16 .. 17;
      LDRB           at 0 range 18 .. 19;
      SBSMPLR        at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Clock Selection
   type CMR_WAVEFORM_MODE_TCCLKSSelect is
     (--  Clock selected: internal GCLK clock signal (from PMC)
      TIMER_CLOCK1,
      --  Clock selected: internal MCK/8 clock signal (from PMC)
      TIMER_CLOCK2,
      --  Clock selected: internal MCK/32 clock signal (from PMC)
      TIMER_CLOCK3,
      --  Clock selected: internal MCK/128 clock signal (from PMC)
      TIMER_CLOCK4,
      --  Clock selected: internal SLCK clock signal (from PMC)
      TIMER_CLOCK5,
      --  Clock selected: XC0
      XC0,
      --  Clock selected: XC1
      XC1,
      --  Clock selected: XC2
      XC2)
     with Size => 3;
   for CMR_WAVEFORM_MODE_TCCLKSSelect use
     (TIMER_CLOCK1 => 0,
      TIMER_CLOCK2 => 1,
      TIMER_CLOCK3 => 2,
      TIMER_CLOCK4 => 3,
      TIMER_CLOCK5 => 4,
      XC0 => 5,
      XC1 => 6,
      XC2 => 7);

   --  Burst Signal Selection
   type CMR_WAVEFORM_MODE_BURSTSelect is
     (--  The clock is not gated by an external signal.
      NONE,
      --  XC0 is ANDed with the selected clock.
      XC0,
      --  XC1 is ANDed with the selected clock.
      XC1,
      --  XC2 is ANDed with the selected clock.
      XC2)
     with Size => 2;
   for CMR_WAVEFORM_MODE_BURSTSelect use
     (NONE => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   --  External Event Edge Selection
   type CMR_WAVEFORM_MODE_EEVTEDGSelect is
     (--  None
      NONE,
      --  Rising edge
      RISING,
      --  Falling edge
      FALLING,
      --  Each edge
      EDGE)
     with Size => 2;
   for CMR_WAVEFORM_MODE_EEVTEDGSelect use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  External Event Selection
   type CMR_WAVEFORM_MODE_EEVTSelect is
     (--  TIOB
      TIOB,
      --  XC0
      XC0,
      --  XC1
      XC1,
      --  XC2
      XC2)
     with Size => 2;
   for CMR_WAVEFORM_MODE_EEVTSelect use
     (TIOB => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   --  Waveform Selection
   type CMR_WAVEFORM_MODE_WAVSELSelect is
     (--  UP mode without automatic trigger on RC Compare
      UP,
      --  UPDOWN mode without automatic trigger on RC Compare
      UPDOWN,
      --  UP mode with automatic trigger on RC Compare
      UP_RC,
      --  UPDOWN mode with automatic trigger on RC Compare
      UPDOWN_RC)
     with Size => 2;
   for CMR_WAVEFORM_MODE_WAVSELSelect use
     (UP => 0,
      UPDOWN => 1,
      UP_RC => 2,
      UPDOWN_RC => 3);

   --  RA Compare Effect on TIOAx
   type CMR_WAVEFORM_MODE_ACPASelect is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR_WAVEFORM_MODE_ACPASelect use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOAx
   type CMR_WAVEFORM_MODE_ACPCSelect is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR_WAVEFORM_MODE_ACPCSelect use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOAx
   type CMR_WAVEFORM_MODE_AEEVTSelect is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR_WAVEFORM_MODE_AEEVTSelect use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOAx
   type CMR_WAVEFORM_MODE_ASWTRGSelect is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR_WAVEFORM_MODE_ASWTRGSelect use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RB Compare Effect on TIOBx
   type CMR_WAVEFORM_MODE_BCPBSelect is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR_WAVEFORM_MODE_BCPBSelect use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOBx
   type CMR_WAVEFORM_MODE_BCPCSelect is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR_WAVEFORM_MODE_BCPCSelect use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOBx
   type CMR_WAVEFORM_MODE_BEEVTSelect is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR_WAVEFORM_MODE_BEEVTSelect use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOBx
   type CMR_WAVEFORM_MODE_BSWTRGSelect is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR_WAVEFORM_MODE_BSWTRGSelect use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Channel Mode Register
   type TC_CMR_WAVEFORM_MODE_TC_TC_CHANNEL_Register is record
      --  Clock Selection
      TCCLKS  : CMR_WAVEFORM_MODE_TCCLKSSelect := SAM_SVD.TC.TIMER_CLOCK1;
      --  Clock Invert
      CLKI    : Boolean := False;
      --  Burst Signal Selection
      BURST   : CMR_WAVEFORM_MODE_BURSTSelect := SAM_SVD.TC.NONE;
      --  Counter Clock Stopped with RC Compare
      CPCSTOP : Boolean := False;
      --  Counter Clock Disable with RC Loading
      CPCDIS  : Boolean := False;
      --  External Event Edge Selection
      EEVTEDG : CMR_WAVEFORM_MODE_EEVTEDGSelect := SAM_SVD.TC.NONE;
      --  External Event Selection
      EEVT    : CMR_WAVEFORM_MODE_EEVTSelect := SAM_SVD.TC.TIOB;
      --  External Event Trigger Enable
      ENETRG  : Boolean := False;
      --  Waveform Selection
      WAVSEL  : CMR_WAVEFORM_MODE_WAVSELSelect := SAM_SVD.TC.UP;
      --  Waveform Mode
      WAVE    : Boolean := False;
      --  RA Compare Effect on TIOAx
      ACPA    : CMR_WAVEFORM_MODE_ACPASelect := SAM_SVD.TC.NONE;
      --  RC Compare Effect on TIOAx
      ACPC    : CMR_WAVEFORM_MODE_ACPCSelect := SAM_SVD.TC.NONE;
      --  External Event Effect on TIOAx
      AEEVT   : CMR_WAVEFORM_MODE_AEEVTSelect := SAM_SVD.TC.NONE;
      --  Software Trigger Effect on TIOAx
      ASWTRG  : CMR_WAVEFORM_MODE_ASWTRGSelect := SAM_SVD.TC.NONE;
      --  RB Compare Effect on TIOBx
      BCPB    : CMR_WAVEFORM_MODE_BCPBSelect := SAM_SVD.TC.NONE;
      --  RC Compare Effect on TIOBx
      BCPC    : CMR_WAVEFORM_MODE_BCPCSelect := SAM_SVD.TC.NONE;
      --  External Event Effect on TIOBx
      BEEVT   : CMR_WAVEFORM_MODE_BEEVTSelect := SAM_SVD.TC.NONE;
      --  Software Trigger Effect on TIOBx
      BSWTRG  : CMR_WAVEFORM_MODE_BSWTRGSelect := SAM_SVD.TC.NONE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_CMR_WAVEFORM_MODE_TC_TC_CHANNEL_Register use record
      TCCLKS  at 0 range 0 .. 2;
      CLKI    at 0 range 3 .. 3;
      BURST   at 0 range 4 .. 5;
      CPCSTOP at 0 range 6 .. 6;
      CPCDIS  at 0 range 7 .. 7;
      EEVTEDG at 0 range 8 .. 9;
      EEVT    at 0 range 10 .. 11;
      ENETRG  at 0 range 12 .. 12;
      WAVSEL  at 0 range 13 .. 14;
      WAVE    at 0 range 15 .. 15;
      ACPA    at 0 range 16 .. 17;
      ACPC    at 0 range 18 .. 19;
      AEEVT   at 0 range 20 .. 21;
      ASWTRG  at 0 range 22 .. 23;
      BCPB    at 0 range 24 .. 25;
      BCPC    at 0 range 26 .. 27;
      BEEVT   at 0 range 28 .. 29;
      BSWTRG  at 0 range 30 .. 31;
   end record;

   --  Stepper Motor Mode Register
   type TC_SMMR_TC_TC_CHANNEL_Register is record
      --  Gray Count Enable
      GCEN          : Boolean := False;
      --  Down Count
      DOWN          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_SMMR_TC_TC_CHANNEL_Register use record
      GCEN          at 0 range 0 .. 0;
      DOWN          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Interrupt Status Register
   type TC_SR_TC_TC_CHANNEL_Register is record
      --  Read-only. Counter Overflow Status (cleared on read)
      COVFS          : Boolean;
      --  Read-only. Load Overrun Status (cleared on read)
      LOVRS          : Boolean;
      --  Read-only. RA Compare Status (cleared on read)
      CPAS           : Boolean;
      --  Read-only. RB Compare Status (cleared on read)
      CPBS           : Boolean;
      --  Read-only. RC Compare Status (cleared on read)
      CPCS           : Boolean;
      --  Read-only. RA Loading Status (cleared on read)
      LDRAS          : Boolean;
      --  Read-only. RB Loading Status (cleared on read)
      LDRBS          : Boolean;
      --  Read-only. External Trigger Status (cleared on read)
      ETRGS          : Boolean;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Clock Enabling Status
      CLKSTA         : Boolean;
      --  Read-only. TIOAx Mirror
      MTIOA          : Boolean;
      --  Read-only. TIOBx Mirror
      MTIOB          : Boolean;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_SR_TC_TC_CHANNEL_Register use record
      COVFS          at 0 range 0 .. 0;
      LOVRS          at 0 range 1 .. 1;
      CPAS           at 0 range 2 .. 2;
      CPBS           at 0 range 3 .. 3;
      CPCS           at 0 range 4 .. 4;
      LDRAS          at 0 range 5 .. 5;
      LDRBS          at 0 range 6 .. 6;
      ETRGS          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CLKSTA         at 0 range 16 .. 16;
      MTIOA          at 0 range 17 .. 17;
      MTIOB          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Interrupt Enable Register
   type TC_IER_TC_TC_CHANNEL_Register is record
      --  Write-only. Counter Overflow
      COVFS         : Boolean := False;
      --  Write-only. Load Overrun
      LOVRS         : Boolean := False;
      --  Write-only. RA Compare
      CPAS          : Boolean := False;
      --  Write-only. RB Compare
      CPBS          : Boolean := False;
      --  Write-only. RC Compare
      CPCS          : Boolean := False;
      --  Write-only. RA Loading
      LDRAS         : Boolean := False;
      --  Write-only. RB Loading
      LDRBS         : Boolean := False;
      --  Write-only. External Trigger
      ETRGS         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_IER_TC_TC_CHANNEL_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Interrupt Disable Register
   type TC_IDR_TC_TC_CHANNEL_Register is record
      --  Write-only. Counter Overflow
      COVFS         : Boolean := False;
      --  Write-only. Load Overrun
      LOVRS         : Boolean := False;
      --  Write-only. RA Compare
      CPAS          : Boolean := False;
      --  Write-only. RB Compare
      CPBS          : Boolean := False;
      --  Write-only. RC Compare
      CPCS          : Boolean := False;
      --  Write-only. RA Loading
      LDRAS         : Boolean := False;
      --  Write-only. RB Loading
      LDRBS         : Boolean := False;
      --  Write-only. External Trigger
      ETRGS         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_IDR_TC_TC_CHANNEL_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Interrupt Mask Register
   type TC_IMR_TC_TC_CHANNEL_Register is record
      --  Read-only. Counter Overflow
      COVFS         : Boolean;
      --  Read-only. Load Overrun
      LOVRS         : Boolean;
      --  Read-only. RA Compare
      CPAS          : Boolean;
      --  Read-only. RB Compare
      CPBS          : Boolean;
      --  Read-only. RC Compare
      CPCS          : Boolean;
      --  Read-only. RA Loading
      LDRAS         : Boolean;
      --  Read-only. RB Loading
      LDRBS         : Boolean;
      --  Read-only.
      ETRGS         : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_IMR_TC_TC_CHANNEL_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Trigger Source for Input A
   type EMR_TRIGSRCASelect is
     (--  The trigger/capture input A is driven by external pin TIOAx
      EXTERNAL_TIOAx,
      --  The trigger/capture input A is driven internally by PWMx
      PWMx)
     with Size => 2;
   for EMR_TRIGSRCASelect use
     (EXTERNAL_TIOAx => 0,
      PWMx => 1);

   --  Trigger Source for Input B
   type EMR_TRIGSRCBSelect is
     (--  The trigger/capture input B is driven by external pin TIOBx
      EXTERNAL_TIOBx,
      --  For TC0 to TC10: The trigger/capture input B is driven internally by the
--  comparator output (see Figure 7-16) of the PWMx.For TC11: The
--  trigger/capture input B is driven internally by the GTSUCOMP signal of the
--  Ethernet MAC (GMAC).
      PWMx)
     with Size => 2;
   for EMR_TRIGSRCBSelect use
     (EXTERNAL_TIOBx => 0,
      PWMx => 1);

   --  Extended Mode Register
   type TC_EMR_TC_TC_CHANNEL_Register is record
      --  Trigger Source for Input A
      TRIGSRCA      : EMR_TRIGSRCASelect := SAM_SVD.TC.EXTERNAL_TIOAx;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Trigger Source for Input B
      TRIGSRCB      : EMR_TRIGSRCBSelect := SAM_SVD.TC.EXTERNAL_TIOBx;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  No Divided Clock
      NODIVCLK      : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_EMR_TC_TC_CHANNEL_Register use record
      TRIGSRCA      at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      TRIGSRCB      at 0 range 4 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      NODIVCLK      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   type TC_TC_CHANNEL_Disc is
     (CAPTURE_MODE,
      WAVEFORM_MODE);

   type TC_TC_CHANNEL_Cluster
     (Discriminent : TC_TC_CHANNEL_Disc := CAPTURE_MODE)
   is record
      --  Channel Control Register
      CCR               : aliased TC_CCR_TC_TC_CHANNEL_Register;
      --  Stepper Motor Mode Register
      SMMR              : aliased TC_SMMR_TC_TC_CHANNEL_Register;
      --  Register AB
      RAB               : aliased HAL.UInt32;
      --  Counter Value
      CV                : aliased HAL.UInt32;
      --  Register A
      RA                : aliased HAL.UInt32;
      --  Register B
      RB                : aliased HAL.UInt32;
      --  Register C
      RC                : aliased HAL.UInt32;
      --  Interrupt Status Register
      SR                : aliased TC_SR_TC_TC_CHANNEL_Register;
      --  Interrupt Enable Register
      IER               : aliased TC_IER_TC_TC_CHANNEL_Register;
      --  Interrupt Disable Register
      IDR               : aliased TC_IDR_TC_TC_CHANNEL_Register;
      --  Interrupt Mask Register
      IMR               : aliased TC_IMR_TC_TC_CHANNEL_Register;
      --  Extended Mode Register
      EMR               : aliased TC_EMR_TC_TC_CHANNEL_Register;
      case Discriminent is
         when CAPTURE_MODE =>
            --  Channel Mode Register
            CMR_CAPTURE_MODE : aliased TC_CMR_CAPTURE_MODE_TC_TC_CHANNEL_Register;
         when WAVEFORM_MODE =>
            --  Channel Mode Register
            CMR_WAVEFORM_MODE : aliased TC_CMR_WAVEFORM_MODE_TC_TC_CHANNEL_Register;
      end case;
   end record
     with Unchecked_Union, Size => 512;

   for TC_TC_CHANNEL_Cluster use record
      CCR               at 16#0# range 0 .. 31;
      SMMR              at 16#8# range 0 .. 31;
      RAB               at 16#C# range 0 .. 31;
      CV                at 16#10# range 0 .. 31;
      RA                at 16#14# range 0 .. 31;
      RB                at 16#18# range 0 .. 31;
      RC                at 16#1C# range 0 .. 31;
      SR                at 16#20# range 0 .. 31;
      IER               at 16#24# range 0 .. 31;
      IDR               at 16#28# range 0 .. 31;
      IMR               at 16#2C# range 0 .. 31;
      EMR               at 16#30# range 0 .. 31;
      CMR_CAPTURE_MODE  at 16#4# range 0 .. 31;
      CMR_WAVEFORM_MODE at 16#4# range 0 .. 31;
   end record;

   type TC_TC_CHANNEL_Clusters is array (0 .. 2) of TC_TC_CHANNEL_Cluster;

   --  Block Control Register
   type TC_BCR_Register is record
      --  Write-only. Synchro Command
      SYNC          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_BCR_Register use record
      SYNC          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  External Clock Signal 0 Selection
   type BMR_TC0XC0SSelect is
     (--  Signal connected to XC0: TCLK0
      TCLK0,
      --  Signal connected to XC0: TIOA1
      TIOA1,
      --  Signal connected to XC0: TIOA2
      TIOA2)
     with Size => 2;
   for BMR_TC0XC0SSelect use
     (TCLK0 => 0,
      TIOA1 => 2,
      TIOA2 => 3);

   --  External Clock Signal 1 Selection
   type BMR_TC1XC1SSelect is
     (--  Signal connected to XC1: TCLK1
      TCLK1,
      --  Signal connected to XC1: TIOA0
      TIOA0,
      --  Signal connected to XC1: TIOA2
      TIOA2)
     with Size => 2;
   for BMR_TC1XC1SSelect use
     (TCLK1 => 0,
      TIOA0 => 2,
      TIOA2 => 3);

   --  External Clock Signal 2 Selection
   type BMR_TC2XC2SSelect is
     (--  Signal connected to XC2: TCLK2
      TCLK2,
      --  Signal connected to XC2: TIOA0
      TIOA0,
      --  Signal connected to XC2: TIOA1
      TIOA1)
     with Size => 2;
   for BMR_TC2XC2SSelect use
     (TCLK2 => 0,
      TIOA0 => 2,
      TIOA1 => 3);

   subtype TC_BMR_MAXFILT_Field is HAL.UInt6;

   --  Block Mode Register
   type TC_BMR_Register is record
      --  External Clock Signal 0 Selection
      TC0XC0S        : BMR_TC0XC0SSelect := SAM_SVD.TC.TCLK0;
      --  External Clock Signal 1 Selection
      TC1XC1S        : BMR_TC1XC1SSelect := SAM_SVD.TC.TCLK1;
      --  External Clock Signal 2 Selection
      TC2XC2S        : BMR_TC2XC2SSelect := SAM_SVD.TC.TCLK2;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Quadrature Decoder Enabled
      QDEN           : Boolean := False;
      --  Position Enabled
      POSEN          : Boolean := False;
      --  Speed Enabled
      SPEEDEN        : Boolean := False;
      --  Quadrature Decoding Transparent
      QDTRANS        : Boolean := False;
      --  Edge on PHA Count Mode
      EDGPHA         : Boolean := False;
      --  Inverted PHA
      INVA           : Boolean := False;
      --  Inverted PHB
      INVB           : Boolean := False;
      --  Inverted Index
      INVIDX         : Boolean := False;
      --  Swap PHA and PHB
      SWAP           : Boolean := False;
      --  Index Pin is PHB Pin
      IDXPHB         : Boolean := False;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Maximum Filter
      MAXFILT        : TC_BMR_MAXFILT_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_BMR_Register use record
      TC0XC0S        at 0 range 0 .. 1;
      TC1XC1S        at 0 range 2 .. 3;
      TC2XC2S        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      QDEN           at 0 range 8 .. 8;
      POSEN          at 0 range 9 .. 9;
      SPEEDEN        at 0 range 10 .. 10;
      QDTRANS        at 0 range 11 .. 11;
      EDGPHA         at 0 range 12 .. 12;
      INVA           at 0 range 13 .. 13;
      INVB           at 0 range 14 .. 14;
      INVIDX         at 0 range 15 .. 15;
      SWAP           at 0 range 16 .. 16;
      IDXPHB         at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      MAXFILT        at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  QDEC Interrupt Enable Register
   type TC_QIER_Register is record
      --  Write-only. Index
      IDX           : Boolean := False;
      --  Write-only. Direction Change
      DIRCHG        : Boolean := False;
      --  Write-only. Quadrature Error
      QERR          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_QIER_Register use record
      IDX           at 0 range 0 .. 0;
      DIRCHG        at 0 range 1 .. 1;
      QERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  QDEC Interrupt Disable Register
   type TC_QIDR_Register is record
      --  Write-only. Index
      IDX           : Boolean := False;
      --  Write-only. Direction Change
      DIRCHG        : Boolean := False;
      --  Write-only. Quadrature Error
      QERR          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_QIDR_Register use record
      IDX           at 0 range 0 .. 0;
      DIRCHG        at 0 range 1 .. 1;
      QERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  QDEC Interrupt Mask Register
   type TC_QIMR_Register is record
      --  Read-only. Index
      IDX           : Boolean;
      --  Read-only. Direction Change
      DIRCHG        : Boolean;
      --  Read-only. Quadrature Error
      QERR          : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_QIMR_Register use record
      IDX           at 0 range 0 .. 0;
      DIRCHG        at 0 range 1 .. 1;
      QERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  QDEC Interrupt Status Register
   type TC_QISR_Register is record
      --  Read-only. Index
      IDX           : Boolean;
      --  Read-only. Direction Change
      DIRCHG        : Boolean;
      --  Read-only. Quadrature Error
      QERR          : Boolean;
      --  unspecified
      Reserved_3_7  : HAL.UInt5;
      --  Read-only. Direction
      DIR           : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_QISR_Register use record
      IDX           at 0 range 0 .. 0;
      DIRCHG        at 0 range 1 .. 1;
      QERR          at 0 range 2 .. 2;
      Reserved_3_7  at 0 range 3 .. 7;
      DIR           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  TC_FMR_ENCF array
   type TC_FMR_ENCF_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC_FMR_ENCF
   type TC_FMR_ENCF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENCF as a value
            Val : HAL.UInt2;
         when True =>
            --  ENCF as an array
            Arr : TC_FMR_ENCF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC_FMR_ENCF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Fault Mode Register
   type TC_FMR_Register is record
      --  Enable Compare Fault Channel 0
      ENCF          : TC_FMR_ENCF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_FMR_Register use record
      ENCF          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
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
      PASSWD => 5523789);

   --  Write Protection Mode Register
   type TC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   ---------------------------------------
   -- TC_TC_CHANNEL cluster's Registers --
   ---------------------------------------

   ---------------------------------------
   -- TC_TC_CHANNEL cluster's Registers --
   ---------------------------------------

   ---------------------------------------
   -- TC_TC_CHANNEL cluster's Registers --
   ---------------------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  Timer Counter
   type TC_Peripheral is record
      TC_TC_CHANNEL : aliased TC_TC_CHANNEL_Clusters;
      --  Block Control Register
      BCR           : aliased TC_BCR_Register;
      --  Block Mode Register
      BMR           : aliased TC_BMR_Register;
      --  QDEC Interrupt Enable Register
      QIER          : aliased TC_QIER_Register;
      --  QDEC Interrupt Disable Register
      QIDR          : aliased TC_QIDR_Register;
      --  QDEC Interrupt Mask Register
      QIMR          : aliased TC_QIMR_Register;
      --  QDEC Interrupt Status Register
      QISR          : aliased TC_QISR_Register;
      --  Fault Mode Register
      FMR           : aliased TC_FMR_Register;
      --  Write Protection Mode Register
      WPMR          : aliased TC_WPMR_Register;
   end record
     with Volatile;

   for TC_Peripheral use record
      TC_TC_CHANNEL at 16#0# range 0 .. 1535;
      BCR           at 16#C0# range 0 .. 31;
      BMR           at 16#C4# range 0 .. 31;
      QIER          at 16#C8# range 0 .. 31;
      QIDR          at 16#CC# range 0 .. 31;
      QIMR          at 16#D0# range 0 .. 31;
      QISR          at 16#D4# range 0 .. 31;
      FMR           at 16#D8# range 0 .. 31;
      WPMR          at 16#E4# range 0 .. 31;
   end record;

   --  Timer Counter
   TC0_Periph : aliased TC_Peripheral
     with Import, Address => TC0_Base;

   --  Timer Counter
   TC1_Periph : aliased TC_Peripheral
     with Import, Address => TC1_Base;

   --  Timer Counter
   TC2_Periph : aliased TC_Peripheral
     with Import, Address => TC2_Base;

   --  Timer Counter
   TC3_Periph : aliased TC_Peripheral
     with Import, Address => TC3_Base;

end SAM_SVD.TC;
