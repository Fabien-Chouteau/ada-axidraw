--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.SUPC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype SUPC_CR_ZERO_Field is Interfaces.SAM.Bit;

   --  Timing Domain Crystal Oscillator Select
   type CR_TDXTALSELSelect is
     (--  No effect.
      NO_EFFECT,
      --  If KEY is correct, XTALSEL switches the slow clock of the timing domain
--  (TD_SLCK) on the 32.768 kHz crystal oscillator output.
      CRYSTAL_SEL)
     with Size => 1;
   for CR_TDXTALSELSelect use
     (NO_EFFECT => 0,
      CRYSTAL_SEL => 1);

   --  Monitoring Domain RC Oscillator Select
   type CR_MDRCSELSelect is
     (--  No effect.
      NO_EFFECT,
      --  If KEY is correct, XTALSEL switches the slow clock of the monitoring domain
--  (MD_SLCK) on the slow RC oscillator output.
      CRYSTAL_SEL)
     with Size => 1;
   for CR_MDRCSELSelect use
     (NO_EFFECT => 0,
      CRYSTAL_SEL => 1);

   --  Password
   type CR_KEYSelect is
     (--  Reset value for the field
      CR_KEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.
      PASSWD)
     with Size => 8;
   for CR_KEYSelect use
     (CR_KEYSelect_Reset => 0,
      PASSWD => 165);

   --  Supply Controller Control Register
   type SUPC_CR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Shall be always write at '0'
      ZERO          : SUPC_CR_ZERO_Field := 16#0#;
      --  Write-only. Timing Domain Crystal Oscillator Select
      TDXTALSEL     : CR_TDXTALSELSelect := Interfaces.SAM.SUPC.NO_EFFECT;
      --  unspecified
      Reserved_4_4  : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Monitoring Domain RC Oscillator Select
      MDRCSEL       : CR_MDRCSELSelect := Interfaces.SAM.SUPC.NO_EFFECT;
      --  unspecified
      Reserved_6_23 : Interfaces.SAM.UInt18 := 16#0#;
      --  Write-only. Password
      KEY           : CR_KEYSelect := CR_KEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      ZERO          at 0 range 2 .. 2;
      TDXTALSEL     at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      MDRCSEL       at 0 range 5 .. 5;
      Reserved_6_23 at 0 range 6 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   subtype SUPC_SMMR_CORESMUSEL_Field is Interfaces.SAM.Bit;

   --  Supply Controller Supply Monitor Mode Register
   type SUPC_SMMR_Register is record
      --  unspecified
      Reserved_0_22  : Interfaces.SAM.UInt23 := 16#0#;
      --  Core Supply Monitor User Selection
      CORESMUSEL     : SUPC_SMMR_CORESMUSEL_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SMMR_Register use record
      Reserved_0_22  at 0 range 0 .. 22;
      CORESMUSEL     at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  VDDCORE Supply Monitor Reset Enable
   type MR_CORSMRSTENSelect is
     (--  The core reset signal vddcore_nreset is not affected when a VDDCORE supply
--  monitor detection occurs.
      NOT_ENABLE,
      --  The core reset signal, vddcore_nreset is asserted when a VDDCORE supply
--  monitor detection occurs.
      ENABLE)
     with Size => 1;
   for MR_CORSMRSTENSelect use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  VDDCORE Supply Monitor Disable
   type MR_CORSMDISSelect is
     (--  The VDDCORE supply monitor is enabled.
      ENABLE,
      --  The VDDCORE supply monitor is disabled.
      DISABLE)
     with Size => 1;
   for MR_CORSMDISSelect use
     (ENABLE => 0,
      DISABLE => 1);

   --  Oscillator Bypass
   type MR_OSCBYPASSSelect is
     (--  No effect. Clock selection depends on the value of XTALSEL (SUPC_CR).
      NO_EFFECT,
      --  The 32.768 kHz crystal oscillator is bypassed if XTALSEL (SUPC_CR) is set.
--  OSCBYPASS must be set prior to setting XTALSEL.
      BYPASS)
     with Size => 1;
   for MR_OSCBYPASSSelect use
     (NO_EFFECT => 0,
      BYPASS => 1);

   subtype SUPC_MR_FXTALSTUP_Field is Interfaces.SAM.Bit;

   --  Password Key
   type MR_KEYSelect is
     (--  Reset value for the field
      MR_KEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.
      PASSWD)
     with Size => 8;
   for MR_KEYSelect use
     (MR_KEYSelect_Reset => 0,
      PASSWD => 165);

   --  Supply Controller Mode Register
   type SUPC_MR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.SAM.UInt12 := 16#0#;
      --  VDDCORE Supply Monitor Reset Enable
      CORSMRSTEN     : MR_CORSMRSTENSelect := Interfaces.SAM.SUPC.NOT_ENABLE;
      --  VDDCORE Supply Monitor Disable
      CORSMDIS       : MR_CORSMDISSelect := Interfaces.SAM.SUPC.ENABLE;
      --  unspecified
      Reserved_14_19 : Interfaces.SAM.UInt6 := 16#0#;
      --  Oscillator Bypass
      OSCBYPASS      : MR_OSCBYPASSSelect := Interfaces.SAM.SUPC.NO_EFFECT;
      --  unspecified
      Reserved_21_21 : Interfaces.SAM.Bit := 16#0#;
      --  Fast Startup 32.768 kHz Crystal Oscillator
      FXTALSTUP      : SUPC_MR_FXTALSTUP_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit := 16#0#;
      --  Password Key
      KEY            : MR_KEYSelect := MR_KEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_MR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      CORSMRSTEN     at 0 range 12 .. 12;
      CORSMDIS       at 0 range 13 .. 13;
      Reserved_14_19 at 0 range 14 .. 19;
      OSCBYPASS      at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      FXTALSTUP      at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   --  VDDCORE Supply Monitor Reset Status (cleared on read)
   type SR_CORSMRSTSSelect is
     (--  No VDDCORE Supply Monitor reset event has been detected since the last read
--  of the SUPC_SR.
      NO,
      --  At least one VDDCORE Supply Monitor reset event has been detected since the
--  last read of the SUPC_SR.
      PRESENT)
     with Size => 1;
   for SR_CORSMRSTSSelect use
     (NO => 0,
      PRESENT => 1);

   --  32 kHz Oscillator Selection Status
   type SR_TDOSCSELSelect is
     (--  The timing domain slow clock, TD_SLCK, is generated by the slow RC
--  oscillator.
      RC,
      --  The timing domain slow clock, TD_SLCK, is generated by the 32.768 kHz
--  crystal oscillator.
      CRYST)
     with Size => 1;
   for SR_TDOSCSELSelect use
     (RC => 0,
      CRYST => 1);

   --  Supply Controller Status Register
   type SUPC_SR_Register is record
      --  unspecified
      Reserved_0_2  : Interfaces.SAM.UInt3;
      --  Read-only. VDDCORE Supply Monitor Reset Status (cleared on read)
      CORSMRSTS     : SR_CORSMRSTSSelect;
      --  unspecified
      Reserved_4_6  : Interfaces.SAM.UInt3;
      --  Read-only. 32 kHz Oscillator Selection Status
      TDOSCSEL      : SR_TDOSCSELSelect;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SR_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      CORSMRSTS     at 0 range 3 .. 3;
      Reserved_4_6  at 0 range 4 .. 6;
      TDOSCSEL      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SUPC_PWR_ZERO_Field is Interfaces.SAM.Bit;

   --  Supply Controller Power Register
   type SUPC_PWR_Register is record
      --  unspecified
      Reserved_0_17  : Interfaces.SAM.UInt18 := 16#0#;
      --  MD_SLCK always generated by the slow RC oscillator
      ZERO           : SUPC_PWR_ZERO_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_PWR_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      ZERO           at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SUPC_SYSC_WPMR_WPEN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key.
   type SYSC_WPMR_WPKEYSelect is
     (--  Reset value for the field
      SYSC_WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit. Always reads as 0.
      PASSWD)
     with Size => 24;
   for SYSC_WPMR_WPKEYSelect use
     (SYSC_WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5395523);

   --  Write Protection Mode Register
   type SUPC_SYSC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : SUPC_SYSC_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protection Key.
      WPKEY        : SYSC_WPMR_WPKEYSelect := SYSC_WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SYSC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Supply Controller
   type SUPC_Peripheral is record
      --  Supply Controller Control Register
      CR        : aliased SUPC_CR_Register;
      --  Supply Controller Supply Monitor Mode Register
      SMMR      : aliased SUPC_SMMR_Register;
      --  Supply Controller Mode Register
      MR        : aliased SUPC_MR_Register;
      --  Supply Controller Status Register
      SR        : aliased SUPC_SR_Register;
      --  Supply Controller Power Register
      PWR       : aliased SUPC_PWR_Register;
      --  Write Protection Mode Register
      SYSC_WPMR : aliased SUPC_SYSC_WPMR_Register;
   end record
     with Volatile;

   for SUPC_Peripheral use record
      CR        at 16#0# range 0 .. 31;
      SMMR      at 16#4# range 0 .. 31;
      MR        at 16#8# range 0 .. 31;
      SR        at 16#14# range 0 .. 31;
      PWR       at 16#1C# range 0 .. 31;
      SYSC_WPMR at 16#D4# range 0 .. 31;
   end record;

   --  Supply Controller
   SUPC_Periph : aliased SUPC_Peripheral
     with Import, Address => SUPC_Base;

end Interfaces.SAM.SUPC;
