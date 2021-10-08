pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.RTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Time Event Selection
   type CR_TIMEVSELSelect is
     (--  Minute change
      MINUTE,
      --  Hour change
      HOUR,
      --  Every day at midnight
      MIDNIGHT,
      --  Every day at noon
      NOON)
     with Size => 2;
   for CR_TIMEVSELSelect use
     (MINUTE => 0,
      HOUR => 1,
      MIDNIGHT => 2,
      NOON => 3);

   --  Calendar Event Selection
   type CR_CALEVSELSelect is
     (--  Week change (every Monday at time 00:00:00)
      WEEK,
      --  Month change (every 01 of each month at time 00:00:00)
      MONTH,
      --  Year change (every January 1 at time 00:00:00)
      YEAR)
     with Size => 2;
   for CR_CALEVSELSelect use
     (WEEK => 0,
      MONTH => 1,
      YEAR => 2);

   --  Control Register
   type RTC_CR_Register is record
      --  Update Request Time Register
      UPDTIM         : Boolean := False;
      --  Update Request Calendar Register
      UPDCAL         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Time Event Selection
      TIMEVSEL       : CR_TIMEVSELSelect := SAM_SVD.RTC.MINUTE;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Calendar Event Selection
      CALEVSEL       : CR_CALEVSELSelect := SAM_SVD.RTC.WEEK;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CR_Register use record
      UPDTIM         at 0 range 0 .. 0;
      UPDCAL         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TIMEVSEL       at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CALEVSEL       at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RTC_MR_CORRECTION_Field is HAL.UInt7;

   --  RTCOUT0 OutputSource Selection
   type MR_OUT0Select is
     (--  No waveform, stuck at '0'
      NO_WAVE,
      --  1 Hz square wave
      FREQ1HZ,
      --  32 Hz square wave
      FREQ32HZ,
      --  64 Hz square wave
      FREQ64HZ,
      --  512 Hz square wave
      FREQ512HZ,
      --  Output toggles when alarm flag rises
      ALARM_TOGGLE,
      --  Output is a copy of the alarm flag
      ALARM_FLAG,
      --  Duty cycle programmable pulse
      PROG_PULSE)
     with Size => 3;
   for MR_OUT0Select use
     (NO_WAVE => 0,
      FREQ1HZ => 1,
      FREQ32HZ => 2,
      FREQ64HZ => 3,
      FREQ512HZ => 4,
      ALARM_TOGGLE => 5,
      ALARM_FLAG => 6,
      PROG_PULSE => 7);

   --  RTCOUT1 Output Source Selection
   type MR_OUT1Select is
     (--  No waveform, stuck at '0'
      NO_WAVE,
      --  1 Hz square wave
      FREQ1HZ,
      --  32 Hz square wave
      FREQ32HZ,
      --  64 Hz square wave
      FREQ64HZ,
      --  512 Hz square wave
      FREQ512HZ,
      --  Output toggles when alarm flag rises
      ALARM_TOGGLE,
      --  Output is a copy of the alarm flag
      ALARM_FLAG,
      --  Duty cycle programmable pulse
      PROG_PULSE)
     with Size => 3;
   for MR_OUT1Select use
     (NO_WAVE => 0,
      FREQ1HZ => 1,
      FREQ32HZ => 2,
      FREQ64HZ => 3,
      FREQ512HZ => 4,
      ALARM_TOGGLE => 5,
      ALARM_FLAG => 6,
      PROG_PULSE => 7);

   --  High Duration of the Output Pulse
   type MR_THIGHSelect is
     (--  31.2 ms
      H_31MS,
      --  15.6 ms
      H_16MS,
      --  3.91 ms
      H_4MS,
      --  976 us
      H_976US,
      --  488 us
      H_488US,
      --  122 us
      H_122US,
      --  30.5 us
      H_30US,
      --  15.2 us
      H_15US)
     with Size => 3;
   for MR_THIGHSelect use
     (H_31MS => 0,
      H_16MS => 1,
      H_4MS => 2,
      H_976US => 3,
      H_488US => 4,
      H_122US => 5,
      H_30US => 6,
      H_15US => 7);

   --  Period of the Output Pulse
   type MR_TPERIODSelect is
     (--  1 second
      P_1S,
      --  500 ms
      P_500MS,
      --  250 ms
      P_250MS,
      --  125 ms
      P_125MS)
     with Size => 2;
   for MR_TPERIODSelect use
     (P_1S => 0,
      P_500MS => 1,
      P_250MS => 2,
      P_125MS => 3);

   --  Mode Register
   type RTC_MR_Register is record
      --  12-/24-hour Mode
      HRMOD          : Boolean := False;
      --  PERSIAN Calendar
      PERSIAN        : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  NEGative PPM Correction
      NEGPPM         : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Slow Clock Correction
      CORRECTION     : RTC_MR_CORRECTION_Field := 16#0#;
      --  HIGH PPM Correction
      HIGHPPM        : Boolean := False;
      --  RTCOUT0 OutputSource Selection
      OUT0           : MR_OUT0Select := SAM_SVD.RTC.NO_WAVE;
      --  PIO Line Enable
      EN0            : Boolean := False;
      --  RTCOUT1 Output Source Selection
      OUT1           : MR_OUT1Select := SAM_SVD.RTC.NO_WAVE;
      --  PIO Line Enable
      EN1            : Boolean := False;
      --  High Duration of the Output Pulse
      THIGH          : MR_THIGHSelect := SAM_SVD.RTC.H_31MS;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Period of the Output Pulse
      TPERIOD        : MR_TPERIODSelect := SAM_SVD.RTC.P_1S;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_MR_Register use record
      HRMOD          at 0 range 0 .. 0;
      PERSIAN        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      NEGPPM         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CORRECTION     at 0 range 8 .. 14;
      HIGHPPM        at 0 range 15 .. 15;
      OUT0           at 0 range 16 .. 18;
      EN0            at 0 range 19 .. 19;
      OUT1           at 0 range 20 .. 22;
      EN1            at 0 range 23 .. 23;
      THIGH          at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      TPERIOD        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RTC_TIMR_SEC_Field is HAL.UInt7;
   subtype RTC_TIMR_MIN_Field is HAL.UInt7;
   subtype RTC_TIMR_HOUR_Field is HAL.UInt6;

   --  Time Register
   type RTC_TIMR_Register is record
      --  Current Second
      SEC            : RTC_TIMR_SEC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Current Minute
      MIN            : RTC_TIMR_MIN_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Current Hour
      HOUR           : RTC_TIMR_HOUR_Field := 16#0#;
      --  Ante Meridiem Post Meridiem Indicator
      AMPM           : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TIMR_Register use record
      SEC            at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MIN            at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HOUR           at 0 range 16 .. 21;
      AMPM           at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype RTC_CALR_CENT_Field is HAL.UInt7;
   subtype RTC_CALR_YEAR_Field is HAL.UInt8;
   subtype RTC_CALR_MONTH_Field is HAL.UInt5;
   subtype RTC_CALR_DAY_Field is HAL.UInt3;
   subtype RTC_CALR_DATE_Field is HAL.UInt6;

   --  Calendar Register
   type RTC_CALR_Register is record
      --  Current Century
      CENT           : RTC_CALR_CENT_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Current Year
      YEAR           : RTC_CALR_YEAR_Field := 16#0#;
      --  Current Month
      MONTH          : RTC_CALR_MONTH_Field := 16#0#;
      --  Current Day in Current Week
      DAY            : RTC_CALR_DAY_Field := 16#0#;
      --  Current Day in Current Month
      DATE           : RTC_CALR_DATE_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CALR_Register use record
      CENT           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      YEAR           at 0 range 8 .. 15;
      MONTH          at 0 range 16 .. 20;
      DAY            at 0 range 21 .. 23;
      DATE           at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RTC_TIMALR_SEC_Field is HAL.UInt7;
   subtype RTC_TIMALR_MIN_Field is HAL.UInt7;
   subtype RTC_TIMALR_HOUR_Field is HAL.UInt6;

   --  Time Alarm Register
   type RTC_TIMALR_Register is record
      --  Second Alarm
      SEC            : RTC_TIMALR_SEC_Field := 16#0#;
      --  Second Alarm Enable
      SECEN          : Boolean := False;
      --  Minute Alarm
      MIN            : RTC_TIMALR_MIN_Field := 16#0#;
      --  Minute Alarm Enable
      MINEN          : Boolean := False;
      --  Hour Alarm
      HOUR           : RTC_TIMALR_HOUR_Field := 16#0#;
      --  AM/PM Indicator
      AMPM           : Boolean := False;
      --  Hour Alarm Enable
      HOUREN         : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TIMALR_Register use record
      SEC            at 0 range 0 .. 6;
      SECEN          at 0 range 7 .. 7;
      MIN            at 0 range 8 .. 14;
      MINEN          at 0 range 15 .. 15;
      HOUR           at 0 range 16 .. 21;
      AMPM           at 0 range 22 .. 22;
      HOUREN         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RTC_CALALR_MONTH_Field is HAL.UInt5;
   subtype RTC_CALALR_DATE_Field is HAL.UInt6;

   --  Calendar Alarm Register
   type RTC_CALALR_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Month Alarm
      MONTH          : RTC_CALALR_MONTH_Field := 16#0#;
      --  unspecified
      Reserved_21_22 : HAL.UInt2 := 16#0#;
      --  Month Alarm Enable
      MTHEN          : Boolean := False;
      --  Date Alarm
      DATE           : RTC_CALALR_DATE_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Date Alarm Enable
      DATEEN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CALALR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      MONTH          at 0 range 16 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      MTHEN          at 0 range 23 .. 23;
      DATE           at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      DATEEN         at 0 range 31 .. 31;
   end record;

   --  Acknowledge for Update
   type SR_ACKUPDSelect is
     (--  Time and calendar registers cannot be updated.
      FREERUN,
      --  Time and calendar registers can be updated.
      UPDATE)
     with Size => 1;
   for SR_ACKUPDSelect use
     (FREERUN => 0,
      UPDATE => 1);

   --  Alarm Flag
   type SR_ALARMSelect is
     (--  No alarm matching condition occurred.
      NO_ALARMEVENT,
      --  An alarm matching condition has occurred.
      ALARMEVENT)
     with Size => 1;
   for SR_ALARMSelect use
     (NO_ALARMEVENT => 0,
      ALARMEVENT => 1);

   --  Second Event
   type SR_SECSelect is
     (--  No second event has occurred since the last clear.
      NO_SECEVENT,
      --  At least one second event has occurred since the last clear.
      SECEVENT)
     with Size => 1;
   for SR_SECSelect use
     (NO_SECEVENT => 0,
      SECEVENT => 1);

   --  Time Event
   type SR_TIMEVSelect is
     (--  No time event has occurred since the last clear.
      NO_TIMEVENT,
      --  At least one time event has occurred since the last clear.
      TIMEVENT)
     with Size => 1;
   for SR_TIMEVSelect use
     (NO_TIMEVENT => 0,
      TIMEVENT => 1);

   --  Calendar Event
   type SR_CALEVSelect is
     (--  No calendar event has occurred since the last clear.
      NO_CALEVENT,
      --  At least one calendar event has occurred since the last clear.
      CALEVENT)
     with Size => 1;
   for SR_CALEVSelect use
     (NO_CALEVENT => 0,
      CALEVENT => 1);

   --  Time and/or Date Free Running Error
   type SR_TDERRSelect is
     (--  The internal free running counters are carrying valid values since the last
--  read of the Status Register (RTC_SR).
      CORRECT,
      --  The internal free running counters have been corrupted (invalid date or
--  time, non-BCD values) since the last read and/or they are still invalid.
      ERR_TIMEDATE)
     with Size => 1;
   for SR_TDERRSelect use
     (CORRECT => 0,
      ERR_TIMEDATE => 1);

   --  Status Register
   type RTC_SR_Register is record
      --  Read-only. Acknowledge for Update
      ACKUPD        : SR_ACKUPDSelect;
      --  Read-only. Alarm Flag
      ALARM         : SR_ALARMSelect;
      --  Read-only. Second Event
      SEC           : SR_SECSelect;
      --  Read-only. Time Event
      TIMEV         : SR_TIMEVSelect;
      --  Read-only. Calendar Event
      CALEV         : SR_CALEVSelect;
      --  Read-only. Time and/or Date Free Running Error
      TDERR         : SR_TDERRSelect;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SR_Register use record
      ACKUPD        at 0 range 0 .. 0;
      ALARM         at 0 range 1 .. 1;
      SEC           at 0 range 2 .. 2;
      TIMEV         at 0 range 3 .. 3;
      CALEV         at 0 range 4 .. 4;
      TDERR         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Status Clear Command Register
   type RTC_SCCR_Register is record
      --  Write-only. Acknowledge Clear
      ACKCLR        : Boolean := False;
      --  Write-only. Alarm Clear
      ALRCLR        : Boolean := False;
      --  Write-only. Second Clear
      SECCLR        : Boolean := False;
      --  Write-only. Time Clear
      TIMCLR        : Boolean := False;
      --  Write-only. Calendar Clear
      CALCLR        : Boolean := False;
      --  Write-only. Time and/or Date Free Running Error Clear
      TDERRCLR      : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SCCR_Register use record
      ACKCLR        at 0 range 0 .. 0;
      ALRCLR        at 0 range 1 .. 1;
      SECCLR        at 0 range 2 .. 2;
      TIMCLR        at 0 range 3 .. 3;
      CALCLR        at 0 range 4 .. 4;
      TDERRCLR      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt Enable Register
   type RTC_IER_Register is record
      --  Write-only. Acknowledge Update Interrupt Enable
      ACKEN         : Boolean := False;
      --  Write-only. Alarm Interrupt Enable
      ALREN         : Boolean := False;
      --  Write-only. Second Event Interrupt Enable
      SECEN         : Boolean := False;
      --  Write-only. Time Event Interrupt Enable
      TIMEN         : Boolean := False;
      --  Write-only. Calendar Event Interrupt Enable
      CALEN         : Boolean := False;
      --  Write-only. Time and/or Date Error Interrupt Enable
      TDERREN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_IER_Register use record
      ACKEN         at 0 range 0 .. 0;
      ALREN         at 0 range 1 .. 1;
      SECEN         at 0 range 2 .. 2;
      TIMEN         at 0 range 3 .. 3;
      CALEN         at 0 range 4 .. 4;
      TDERREN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt Disable Register
   type RTC_IDR_Register is record
      --  Write-only. Acknowledge Update Interrupt Disable
      ACKDIS        : Boolean := False;
      --  Write-only. Alarm Interrupt Disable
      ALRDIS        : Boolean := False;
      --  Write-only. Second Event Interrupt Disable
      SECDIS        : Boolean := False;
      --  Write-only. Time Event Interrupt Disable
      TIMDIS        : Boolean := False;
      --  Write-only. Calendar Event Interrupt Disable
      CALDIS        : Boolean := False;
      --  Write-only. Time and/or Date Error Interrupt Disable
      TDERRDIS      : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_IDR_Register use record
      ACKDIS        at 0 range 0 .. 0;
      ALRDIS        at 0 range 1 .. 1;
      SECDIS        at 0 range 2 .. 2;
      TIMDIS        at 0 range 3 .. 3;
      CALDIS        at 0 range 4 .. 4;
      TDERRDIS      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt Mask Register
   type RTC_IMR_Register is record
      --  Read-only. Acknowledge Update Interrupt Mask
      ACK           : Boolean;
      --  Read-only. Alarm Interrupt Mask
      ALR           : Boolean;
      --  Read-only. Second Event Interrupt Mask
      SEC           : Boolean;
      --  Read-only. Time Event Interrupt Mask
      TIM           : Boolean;
      --  Read-only. Calendar Event Interrupt Mask
      CAL           : Boolean;
      --  Read-only. Time and/or Date Error Mask
      TDERR         : Boolean;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_IMR_Register use record
      ACK           at 0 range 0 .. 0;
      ALR           at 0 range 1 .. 1;
      SEC           at 0 range 2 .. 2;
      TIM           at 0 range 3 .. 3;
      CAL           at 0 range 4 .. 4;
      TDERR         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Valid Entry Register
   type RTC_VER_Register is record
      --  Read-only. Non-valid Time
      NVTIM         : Boolean;
      --  Read-only. Non-valid Calendar
      NVCAL         : Boolean;
      --  Read-only. Non-valid Time Alarm
      NVTIMALR      : Boolean;
      --  Read-only. Non-valid Calendar Alarm
      NVCALALR      : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_VER_Register use record
      NVTIM         at 0 range 0 .. 0;
      NVCAL         at 0 range 1 .. 1;
      NVTIMALR      at 0 range 2 .. 2;
      NVCALALR      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype RTC_MSR_MS_Field is HAL.UInt10;

   --  Milliseconds Register
   type RTC_MSR_Register is record
      --  Read-only. Number of 1/1024 seconds elapsed within 1 second
      MS             : RTC_MSR_MS_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_MSR_Register use record
      MS             at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Real-time Clock
   type RTC_Peripheral is record
      --  Control Register
      CR     : aliased RTC_CR_Register;
      --  Mode Register
      MR     : aliased RTC_MR_Register;
      --  Time Register
      TIMR   : aliased RTC_TIMR_Register;
      --  Calendar Register
      CALR   : aliased RTC_CALR_Register;
      --  Time Alarm Register
      TIMALR : aliased RTC_TIMALR_Register;
      --  Calendar Alarm Register
      CALALR : aliased RTC_CALALR_Register;
      --  Status Register
      SR     : aliased RTC_SR_Register;
      --  Status Clear Command Register
      SCCR   : aliased RTC_SCCR_Register;
      --  Interrupt Enable Register
      IER    : aliased RTC_IER_Register;
      --  Interrupt Disable Register
      IDR    : aliased RTC_IDR_Register;
      --  Interrupt Mask Register
      IMR    : aliased RTC_IMR_Register;
      --  Valid Entry Register
      VER    : aliased RTC_VER_Register;
      --  Milliseconds Register
      MSR    : aliased RTC_MSR_Register;
   end record
     with Volatile;

   for RTC_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      MR     at 16#4# range 0 .. 31;
      TIMR   at 16#8# range 0 .. 31;
      CALR   at 16#C# range 0 .. 31;
      TIMALR at 16#10# range 0 .. 31;
      CALALR at 16#14# range 0 .. 31;
      SR     at 16#18# range 0 .. 31;
      SCCR   at 16#1C# range 0 .. 31;
      IER    at 16#20# range 0 .. 31;
      IDR    at 16#24# range 0 .. 31;
      IMR    at 16#28# range 0 .. 31;
      VER    at 16#2C# range 0 .. 31;
      MSR    at 16#D0# range 0 .. 31;
   end record;

   --  Real-time Clock
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_Base;

end SAM_SVD.RTC;
