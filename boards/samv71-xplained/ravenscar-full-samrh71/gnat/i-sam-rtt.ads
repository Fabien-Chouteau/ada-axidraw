--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.RTT is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype RTT_MR_RTPRES_Field is Interfaces.SAM.UInt16;
   subtype RTT_MR_ALMIEN_Field is Interfaces.SAM.Bit;
   subtype RTT_MR_RTTINCIEN_Field is Interfaces.SAM.Bit;
   subtype RTT_MR_RTTRST_Field is Interfaces.SAM.Bit;
   subtype RTT_MR_RTTDIS_Field is Interfaces.SAM.Bit;
   subtype RTT_MR_RTC1HZ_Field is Interfaces.SAM.Bit;

   --  Mode Register
   type RTT_MR_Register is record
      --  Real-time Timer Prescaler Value
      RTPRES         : RTT_MR_RTPRES_Field := 16#0#;
      --  Alarm Interrupt Enable
      ALMIEN         : RTT_MR_ALMIEN_Field := 16#0#;
      --  Real-time Timer Increment Interrupt Enable
      RTTINCIEN      : RTT_MR_RTTINCIEN_Field := 16#0#;
      --  Real-time Timer Restart
      RTTRST         : RTT_MR_RTTRST_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.SAM.Bit := 16#0#;
      --  Real-time Timer Disable
      RTTDIS         : RTT_MR_RTTDIS_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.SAM.UInt3 := 16#0#;
      --  Real-Time Clock 1Hz Clock Selection
      RTC1HZ         : RTT_MR_RTC1HZ_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTT_MR_Register use record
      RTPRES         at 0 range 0 .. 15;
      ALMIEN         at 0 range 16 .. 16;
      RTTINCIEN      at 0 range 17 .. 17;
      RTTRST         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      RTTDIS         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      RTC1HZ         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype RTT_SR_ALMS_Field is Interfaces.SAM.Bit;
   subtype RTT_SR_RTTINC_Field is Interfaces.SAM.Bit;

   --  Status Register
   type RTT_SR_Register is record
      --  Read-only. Real-time Alarm Status (cleared on read)
      ALMS          : RTT_SR_ALMS_Field;
      --  Read-only. Prescaler Roll-over Status (cleared on read)
      RTTINC        : RTT_SR_RTTINC_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTT_SR_Register use record
      ALMS          at 0 range 0 .. 0;
      RTTINC        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Real-time Timer
   type RTT_Peripheral is record
      --  Mode Register
      MR : aliased RTT_MR_Register;
      --  Alarm Register
      AR : aliased Interfaces.SAM.UInt32;
      --  Value Register
      VR : aliased Interfaces.SAM.UInt32;
      --  Status Register
      SR : aliased RTT_SR_Register;
   end record
     with Volatile;

   for RTT_Peripheral use record
      MR at 16#0# range 0 .. 31;
      AR at 16#4# range 0 .. 31;
      VR at 16#8# range 0 .. 31;
      SR at 16#C# range 0 .. 31;
   end record;

   --  Real-time Timer
   RTT_Periph : aliased RTT_Peripheral
     with Import, Address => RTT_Base;

end Interfaces.SAM.RTT;
