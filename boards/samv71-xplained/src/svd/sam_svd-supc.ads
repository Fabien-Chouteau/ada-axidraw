pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.SUPC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Voltage Regulator Off
   type SUPC_CR_VROFFSelect is
     (--  No effect.
      NO_EFFECT,
      --  If KEY is correct, VROFF asserts the vddcore_nreset and stops the voltage
--  regulator.
      STOP_VREG)
     with Size => 1;
   for SUPC_CR_VROFFSelect use
     (NO_EFFECT => 0,
      STOP_VREG => 1);

   --  Crystal Oscillator Select
   type SUPC_CR_XTALSELSelect is
     (--  No effect.
      NO_EFFECT,
      --  If KEY is correct, XTALSEL switches the slow clock on the crystal
--  oscillator output.
      CRYSTAL_SEL)
     with Size => 1;
   for SUPC_CR_XTALSELSelect use
     (NO_EFFECT => 0,
      CRYSTAL_SEL => 1);

   --  Password
   type SUPC_CR_KEYSelect is
     (--  Reset value for the field
      SUPC_CR_KEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.
      PASSWD)
     with Size => 8;
   for SUPC_CR_KEYSelect use
     (SUPC_CR_KEYSelect_Reset => 0,
      PASSWD => 165);

   --  Supply Controller Control Register
   type SUPC_SUPC_CR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Voltage Regulator Off
      VROFF         : SUPC_CR_VROFFSelect := SAM_SVD.SUPC.NO_EFFECT;
      --  Write-only. Crystal Oscillator Select
      XTALSEL       : SUPC_CR_XTALSELSelect := SAM_SVD.SUPC.NO_EFFECT;
      --  unspecified
      Reserved_4_23 : HAL.UInt20 := 16#0#;
      --  Write-only. Password
      KEY           : SUPC_CR_KEYSelect := SUPC_CR_KEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SUPC_CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      VROFF         at 0 range 2 .. 2;
      XTALSEL       at 0 range 3 .. 3;
      Reserved_4_23 at 0 range 4 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   subtype SUPC_SUPC_SMMR_SMTH_Field is HAL.UInt4;

   --  Supply Monitor Sampling Period
   type SUPC_SMMR_SMSMPLSelect is
     (--  Supply Monitor disabled
      SMD,
      --  Continuous Supply Monitor
      CSM,
      --  Supply Monitor enabled one SLCK period every 32 SLCK periods
      Val_32SLCK,
      --  Supply Monitor enabled one SLCK period every 256 SLCK periods
      Val_256SLCK,
      --  Supply Monitor enabled one SLCK period every 2,048 SLCK periods
      Val_2048SLCK)
     with Size => 3;
   for SUPC_SMMR_SMSMPLSelect use
     (SMD => 0,
      CSM => 1,
      Val_32SLCK => 2,
      Val_256SLCK => 3,
      Val_2048SLCK => 4);

   --  Supply Monitor Reset Enable
   type SUPC_SMMR_SMRSTENSelect is
     (--  The core reset signal vddcore_nreset is not affected when a supply monitor
--  detection occurs.
      NOT_ENABLE,
      --  The core reset signal, vddcore_nreset is asserted when a supply monitor
--  detection occurs.
      ENABLE)
     with Size => 1;
   for SUPC_SMMR_SMRSTENSelect use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  Supply Monitor Interrupt Enable
   type SUPC_SMMR_SMIENSelect is
     (--  The SUPC interrupt signal is not affected when a supply monitor detection
--  occurs.
      NOT_ENABLE,
      --  The SUPC interrupt signal is asserted when a supply monitor detection
--  occurs.
      ENABLE)
     with Size => 1;
   for SUPC_SMMR_SMIENSelect use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  Supply Controller Supply Monitor Mode Register
   type SUPC_SUPC_SMMR_Register is record
      --  Supply Monitor Threshold
      SMTH           : SUPC_SUPC_SMMR_SMTH_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Supply Monitor Sampling Period
      SMSMPL         : SUPC_SMMR_SMSMPLSelect := SAM_SVD.SUPC.SMD;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Supply Monitor Reset Enable
      SMRSTEN        : SUPC_SMMR_SMRSTENSelect := SAM_SVD.SUPC.NOT_ENABLE;
      --  Supply Monitor Interrupt Enable
      SMIEN          : SUPC_SMMR_SMIENSelect := SAM_SVD.SUPC.NOT_ENABLE;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SUPC_SMMR_Register use record
      SMTH           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      SMSMPL         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SMRSTEN        at 0 range 12 .. 12;
      SMIEN          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Brownout Detector Reset Enable
   type SUPC_MR_BODRSTENSelect is
     (--  The core reset signal vddcore_nreset is not affected when a brownout
--  detection occurs.
      NOT_ENABLE,
      --  The core reset signal, vddcore_nreset is asserted when a brownout detection
--  occurs.
      ENABLE)
     with Size => 1;
   for SUPC_MR_BODRSTENSelect use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  Brownout Detector Disable
   type SUPC_MR_BODDISSelect is
     (--  The core brownout detector is enabled.
      ENABLE,
      --  The core brownout detector is disabled.
      DISABLE)
     with Size => 1;
   for SUPC_MR_BODDISSelect use
     (ENABLE => 0,
      DISABLE => 1);

   --  Voltage Regulator Enable
   type SUPC_MR_ONREGSelect is
     (--  Internal voltage regulator is not used (external power supply is used).
      ONREG_UNUSED,
      --  Internal voltage regulator is used.
      ONREG_USED)
     with Size => 1;
   for SUPC_MR_ONREGSelect use
     (ONREG_UNUSED => 0,
      ONREG_USED => 1);

   --  Oscillator Bypass
   type SUPC_MR_OSCBYPASSSelect is
     (--  No effect. Clock selection depends on the value of XTALSEL (SUPC_CR).
      NO_EFFECT,
      --  The 32 kHz crystal oscillator is bypassed if XTALSEL (SUPC_CR) is set.
--  OSCBYPASS must be set prior to setting XTALSEL.
      BYPASS)
     with Size => 1;
   for SUPC_MR_OSCBYPASSSelect use
     (NO_EFFECT => 0,
      BYPASS => 1);

   --  Password Key
   type SUPC_MR_KEYSelect is
     (--  Reset value for the field
      SUPC_MR_KEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.
      PASSWD)
     with Size => 8;
   for SUPC_MR_KEYSelect use
     (SUPC_MR_KEYSelect_Reset => 0,
      PASSWD => 165);

   --  Supply Controller Mode Register
   type SUPC_SUPC_MR_Register is record
      --  unspecified
      Reserved_0_11  : HAL.UInt12 := 16#0#;
      --  Brownout Detector Reset Enable
      BODRSTEN       : SUPC_MR_BODRSTENSelect := SAM_SVD.SUPC.NOT_ENABLE;
      --  Brownout Detector Disable
      BODDIS         : SUPC_MR_BODDISSelect := SAM_SVD.SUPC.ENABLE;
      --  Voltage Regulator Enable
      ONREG          : SUPC_MR_ONREGSelect := SAM_SVD.SUPC.ONREG_UNUSED;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  SRAM On In Backup Mode
      BKUPRETON      : Boolean := False;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Oscillator Bypass
      OSCBYPASS      : SUPC_MR_OSCBYPASSSelect := SAM_SVD.SUPC.NO_EFFECT;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Password Key
      KEY            : SUPC_MR_KEYSelect := SUPC_MR_KEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SUPC_MR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      BODRSTEN       at 0 range 12 .. 12;
      BODDIS         at 0 range 13 .. 13;
      ONREG          at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      BKUPRETON      at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      OSCBYPASS      at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   --  Supply Monitor Wakeup Enable
   type SUPC_WUMR_SMENSelect is
     (--  The supply monitor detection has no wakeup effect.
      NOT_ENABLE,
      --  The supply monitor detection forces the wakeup of the core power supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUMR_SMENSelect use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  Real-time Timer Wakeup Enable
   type SUPC_WUMR_RTTENSelect is
     (--  The RTT alarm signal has no wakeup effect.
      NOT_ENABLE,
      --  The RTT alarm signal forces the wakeup of the core power supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUMR_RTTENSelect use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  Real-time Clock Wakeup Enable
   type SUPC_WUMR_RTCENSelect is
     (--  The RTC alarm signal has no wakeup effect.
      NOT_ENABLE,
      --  The RTC alarm signal forces the wakeup of the core power supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUMR_RTCENSelect use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  Low-power Debouncer Enable WKUP0
   type SUPC_WUMR_LPDBCEN0Select is
     (--  The WKUP0 input pin is not connected to the low-power debouncer.
      NOT_ENABLE,
      --  The WKUP0 input pin is connected to the low-power debouncer and forces a
--  system wakeup.
      ENABLE)
     with Size => 1;
   for SUPC_WUMR_LPDBCEN0Select use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  Low-power Debouncer Enable WKUP1
   type SUPC_WUMR_LPDBCEN1Select is
     (--  The WKUP1 input pin is not connected to the low-power debouncer.
      NOT_ENABLE,
      --  The WKUP1 input pin is connected to the low-power debouncer and forces a
--  system wakeup.
      ENABLE)
     with Size => 1;
   for SUPC_WUMR_LPDBCEN1Select use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  Low-power Debouncer Clear
   type SUPC_WUMR_LPDBCCLRSelect is
     (--  A low-power debounce event does not create an immediate clear on the first
--  half of GPBR registers.
      NOT_ENABLE,
      --  A low-power debounce event on WKUP0 or WKUP1 generates an immediate clear
--  on the first half of GPBR registers.
      ENABLE)
     with Size => 1;
   for SUPC_WUMR_LPDBCCLRSelect use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  Wakeup Inputs Debouncer Period
   type SUPC_WUMR_WKUPDBCSelect is
     (--  Immediate, no debouncing, detected active at least on one Slow Clock edge.
      IMMEDIATE,
      --  WKUPx shall be in its active state for at least 3 SLCK periods
      Val_3_SLCK,
      --  WKUPx shall be in its active state for at least 32 SLCK periods
      Val_32_SLCK,
      --  WKUPx shall be in its active state for at least 512 SLCK periods
      Val_512_SLCK,
      --  WKUPx shall be in its active state for at least 4,096 SLCK periods
      Val_4096_SLCK,
      --  WKUPx shall be in its active state for at least 32,768 SLCK periods
      Val_32768_SLCK)
     with Size => 3;
   for SUPC_WUMR_WKUPDBCSelect use
     (IMMEDIATE => 0,
      Val_3_SLCK => 1,
      Val_32_SLCK => 2,
      Val_512_SLCK => 3,
      Val_4096_SLCK => 4,
      Val_32768_SLCK => 5);

   --  Low-power Debouncer Period
   type SUPC_WUMR_LPDBCSelect is
     (--  Disables the low-power debouncers.
      DISABLE,
      --  WKUP0/1 in active state for at least 2 RTCOUTx clock periods
      Val_2_RTCOUT,
      --  WKUP0/1 in active state for at least 3 RTCOUTx clock periods
      Val_3_RTCOUT,
      --  WKUP0/1 in active state for at least 4 RTCOUTx clock periods
      Val_4_RTCOUT,
      --  WKUP0/1 in active state for at least 5 RTCOUTx clock periods
      Val_5_RTCOUT,
      --  WKUP0/1 in active state for at least 6 RTCOUTx clock periods
      Val_6_RTCOUT,
      --  WKUP0/1 in active state for at least 7 RTCOUTx clock periods
      Val_7_RTCOUT,
      --  WKUP0/1 in active state for at least 8 RTCOUTx clock periods
      Val_8_RTCOUT)
     with Size => 3;
   for SUPC_WUMR_LPDBCSelect use
     (DISABLE => 0,
      Val_2_RTCOUT => 1,
      Val_3_RTCOUT => 2,
      Val_4_RTCOUT => 3,
      Val_5_RTCOUT => 4,
      Val_6_RTCOUT => 5,
      Val_7_RTCOUT => 6,
      Val_8_RTCOUT => 7);

   --  Supply Controller Wakeup Mode Register
   type SUPC_SUPC_WUMR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Supply Monitor Wakeup Enable
      SMEN           : SUPC_WUMR_SMENSelect := SAM_SVD.SUPC.NOT_ENABLE;
      --  Real-time Timer Wakeup Enable
      RTTEN          : SUPC_WUMR_RTTENSelect := SAM_SVD.SUPC.NOT_ENABLE;
      --  Real-time Clock Wakeup Enable
      RTCEN          : SUPC_WUMR_RTCENSelect := SAM_SVD.SUPC.NOT_ENABLE;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Low-power Debouncer Enable WKUP0
      LPDBCEN0       : SUPC_WUMR_LPDBCEN0Select := SAM_SVD.SUPC.NOT_ENABLE;
      --  Low-power Debouncer Enable WKUP1
      LPDBCEN1       : SUPC_WUMR_LPDBCEN1Select := SAM_SVD.SUPC.NOT_ENABLE;
      --  Low-power Debouncer Clear
      LPDBCCLR       : SUPC_WUMR_LPDBCCLRSelect := SAM_SVD.SUPC.NOT_ENABLE;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Wakeup Inputs Debouncer Period
      WKUPDBC        : SUPC_WUMR_WKUPDBCSelect := SAM_SVD.SUPC.IMMEDIATE;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Low-power Debouncer Period
      LPDBC          : SUPC_WUMR_LPDBCSelect := SAM_SVD.SUPC.DISABLE;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SUPC_WUMR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SMEN           at 0 range 1 .. 1;
      RTTEN          at 0 range 2 .. 2;
      RTCEN          at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      LPDBCEN0       at 0 range 5 .. 5;
      LPDBCEN1       at 0 range 6 .. 6;
      LPDBCCLR       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      WKUPDBC        at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LPDBC          at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Wakeup Input Enable 0 to 0
   type SUPC_WUIR_WKUPEN0Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN0Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 1
   type SUPC_WUIR_WKUPEN1Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN1Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 2
   type SUPC_WUIR_WKUPEN2Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN2Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 3
   type SUPC_WUIR_WKUPEN3Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN3Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 4
   type SUPC_WUIR_WKUPEN4Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN4Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 5
   type SUPC_WUIR_WKUPEN5Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN5Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 6
   type SUPC_WUIR_WKUPEN6Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN6Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 7
   type SUPC_WUIR_WKUPEN7Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN7Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 8
   type SUPC_WUIR_WKUPEN8Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN8Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 9
   type SUPC_WUIR_WKUPEN9Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN9Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 10
   type SUPC_WUIR_WKUPEN10Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN10Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 11
   type SUPC_WUIR_WKUPEN11Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN11Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 12
   type SUPC_WUIR_WKUPEN12Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN12Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Enable 0 to 13
   type SUPC_WUIR_WKUPEN13Select is
     (--  The corresponding wakeup input has no wakeup effect.
      DISABLE,
      --  The corresponding wakeup input is enabled for a wakeup of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for SUPC_WUIR_WKUPEN13Select use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Input Type 0 to 0
   type SUPC_WUIR_WKUPT0Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT0Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 1
   type SUPC_WUIR_WKUPT1Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT1Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 2
   type SUPC_WUIR_WKUPT2Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT2Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 3
   type SUPC_WUIR_WKUPT3Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT3Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 4
   type SUPC_WUIR_WKUPT4Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT4Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 5
   type SUPC_WUIR_WKUPT5Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT5Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 6
   type SUPC_WUIR_WKUPT6Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT6Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 7
   type SUPC_WUIR_WKUPT7Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT7Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 8
   type SUPC_WUIR_WKUPT8Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT8Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 9
   type SUPC_WUIR_WKUPT9Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT9Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 10
   type SUPC_WUIR_WKUPT10Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT10Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 11
   type SUPC_WUIR_WKUPT11Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT11Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 12
   type SUPC_WUIR_WKUPT12Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT12Select use
     (LOW => 0,
      HIGH => 1);

   --  Wakeup Input Type 0 to 13
   type SUPC_WUIR_WKUPT13Select is
     (--  A falling edge followed by a low level for a period defined by WKUPDBC on
--  the corre-sponding wakeup input forces the wakeup of the core power supply.
      LOW,
      --  A rising edge followed by a high level for a period defined by WKUPDBC on
--  the cor-responding wakeup input forces the wakeup of the core power supply.
      HIGH)
     with Size => 1;
   for SUPC_WUIR_WKUPT13Select use
     (LOW => 0,
      HIGH => 1);

   --  Supply Controller Wakeup Inputs Register
   type SUPC_SUPC_WUIR_Register is record
      --  Wakeup Input Enable 0 to 0
      WKUPEN0        : SUPC_WUIR_WKUPEN0Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 1
      WKUPEN1        : SUPC_WUIR_WKUPEN1Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 2
      WKUPEN2        : SUPC_WUIR_WKUPEN2Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 3
      WKUPEN3        : SUPC_WUIR_WKUPEN3Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 4
      WKUPEN4        : SUPC_WUIR_WKUPEN4Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 5
      WKUPEN5        : SUPC_WUIR_WKUPEN5Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 6
      WKUPEN6        : SUPC_WUIR_WKUPEN6Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 7
      WKUPEN7        : SUPC_WUIR_WKUPEN7Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 8
      WKUPEN8        : SUPC_WUIR_WKUPEN8Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 9
      WKUPEN9        : SUPC_WUIR_WKUPEN9Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 10
      WKUPEN10       : SUPC_WUIR_WKUPEN10Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 11
      WKUPEN11       : SUPC_WUIR_WKUPEN11Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 12
      WKUPEN12       : SUPC_WUIR_WKUPEN12Select := SAM_SVD.SUPC.DISABLE;
      --  Wakeup Input Enable 0 to 13
      WKUPEN13       : SUPC_WUIR_WKUPEN13Select := SAM_SVD.SUPC.DISABLE;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Wakeup Input Type 0 to 0
      WKUPT0         : SUPC_WUIR_WKUPT0Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 1
      WKUPT1         : SUPC_WUIR_WKUPT1Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 2
      WKUPT2         : SUPC_WUIR_WKUPT2Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 3
      WKUPT3         : SUPC_WUIR_WKUPT3Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 4
      WKUPT4         : SUPC_WUIR_WKUPT4Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 5
      WKUPT5         : SUPC_WUIR_WKUPT5Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 6
      WKUPT6         : SUPC_WUIR_WKUPT6Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 7
      WKUPT7         : SUPC_WUIR_WKUPT7Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 8
      WKUPT8         : SUPC_WUIR_WKUPT8Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 9
      WKUPT9         : SUPC_WUIR_WKUPT9Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 10
      WKUPT10        : SUPC_WUIR_WKUPT10Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 11
      WKUPT11        : SUPC_WUIR_WKUPT11Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 12
      WKUPT12        : SUPC_WUIR_WKUPT12Select := SAM_SVD.SUPC.LOW;
      --  Wakeup Input Type 0 to 13
      WKUPT13        : SUPC_WUIR_WKUPT13Select := SAM_SVD.SUPC.LOW;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SUPC_WUIR_Register use record
      WKUPEN0        at 0 range 0 .. 0;
      WKUPEN1        at 0 range 1 .. 1;
      WKUPEN2        at 0 range 2 .. 2;
      WKUPEN3        at 0 range 3 .. 3;
      WKUPEN4        at 0 range 4 .. 4;
      WKUPEN5        at 0 range 5 .. 5;
      WKUPEN6        at 0 range 6 .. 6;
      WKUPEN7        at 0 range 7 .. 7;
      WKUPEN8        at 0 range 8 .. 8;
      WKUPEN9        at 0 range 9 .. 9;
      WKUPEN10       at 0 range 10 .. 10;
      WKUPEN11       at 0 range 11 .. 11;
      WKUPEN12       at 0 range 12 .. 12;
      WKUPEN13       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      WKUPT0         at 0 range 16 .. 16;
      WKUPT1         at 0 range 17 .. 17;
      WKUPT2         at 0 range 18 .. 18;
      WKUPT3         at 0 range 19 .. 19;
      WKUPT4         at 0 range 20 .. 20;
      WKUPT5         at 0 range 21 .. 21;
      WKUPT6         at 0 range 22 .. 22;
      WKUPT7         at 0 range 23 .. 23;
      WKUPT8         at 0 range 24 .. 24;
      WKUPT9         at 0 range 25 .. 25;
      WKUPT10        at 0 range 26 .. 26;
      WKUPT11        at 0 range 27 .. 27;
      WKUPT12        at 0 range 28 .. 28;
      WKUPT13        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  WKUP Wakeup Status (cleared on read)
   type SUPC_SR_WKUPSSelect is
     (--  No wakeup due to the assertion of the WKUP pins has occurred since the last
--  read of SUPC_SR.
      NO,
      --  At least one wakeup due to the assertion of the WKUP pins has occurred
--  since the last read of SUPC_SR.
      PRESENT)
     with Size => 1;
   for SUPC_SR_WKUPSSelect use
     (NO => 0,
      PRESENT => 1);

   --  Supply Monitor Detection Wakeup Status (cleared on read)
   type SUPC_SR_SMWSSelect is
     (--  No wakeup due to a supply monitor detection has occurred since the last
--  read of SUPC_SR.
      NO,
      --  At least one wakeup due to a supply monitor detection has occurred since
--  the last read of SUPC_SR.
      PRESENT)
     with Size => 1;
   for SUPC_SR_SMWSSelect use
     (NO => 0,
      PRESENT => 1);

   --  Brownout Detector Reset Status (cleared on read)
   type SUPC_SR_BODRSTSSelect is
     (--  No core brownout rising edge event has been detected since the last read of
--  the SUPC_SR.
      NO,
      --  At least one brownout output rising edge event has been detected since the
--  last read of the SUPC_SR.
      PRESENT)
     with Size => 1;
   for SUPC_SR_BODRSTSSelect use
     (NO => 0,
      PRESENT => 1);

   --  Supply Monitor Reset Status (cleared on read)
   type SUPC_SR_SMRSTSSelect is
     (--  No supply monitor detection has generated a core reset since the last read
--  of the SUPC_SR.
      NO,
      --  At least one supply monitor detection has generated a core reset since the
--  last read of the SUPC_SR.
      PRESENT)
     with Size => 1;
   for SUPC_SR_SMRSTSSelect use
     (NO => 0,
      PRESENT => 1);

   --  Supply Monitor Status (cleared on read)
   type SUPC_SR_SMSSelect is
     (--  No supply monitor detection since the last read of SUPC_SR.
      NO,
      --  At least one supply monitor detection since the last read of SUPC_SR.
      PRESENT)
     with Size => 1;
   for SUPC_SR_SMSSelect use
     (NO => 0,
      PRESENT => 1);

   --  Supply Monitor Output Status
   type SUPC_SR_SMOSSelect is
     (--  The supply monitor detected VDDIO higher than its threshold at its last
--  measurement.
      HIGH,
      --  The supply monitor detected VDDIO lower than its threshold at its last
--  measurement.
      LOW)
     with Size => 1;
   for SUPC_SR_SMOSSelect use
     (HIGH => 0,
      LOW => 1);

   --  32-kHz Oscillator Selection Status
   type SUPC_SR_OSCSELSelect is
     (--  The slow clock, SLCK, is generated by the embedded 32 kHz RC oscillator.
      RC,
      --  The slow clock, SLCK, is generated by the 32 kHz crystal oscillator.
      CRYST)
     with Size => 1;
   for SUPC_SR_OSCSELSelect use
     (RC => 0,
      CRYST => 1);

   --  Low-power Debouncer Wakeup Status on WKUP0 (cleared on read)
   type SUPC_SR_LPDBCS0Select is
     (--  No wakeup due to the assertion of the WKUP0 pin has occurred since the last
--  read of SUPC_SR.
      NO,
      --  At least one wakeup due to the assertion of the WKUP0 pin has occurred
--  since the last read of SUPC_SR.
      PRESENT)
     with Size => 1;
   for SUPC_SR_LPDBCS0Select use
     (NO => 0,
      PRESENT => 1);

   --  Low-power Debouncer Wakeup Status on WKUP1 (cleared on read)
   type SUPC_SR_LPDBCS1Select is
     (--  No wakeup due to the assertion of the WKUP1 pin has occurred since the last
--  read of SUPC_SR.
      NO,
      --  At least one wakeup due to the assertion of the WKUP1 pin has occurred
--  since the last read of SUPC_SR.
      PRESENT)
     with Size => 1;
   for SUPC_SR_LPDBCS1Select use
     (NO => 0,
      PRESENT => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS0Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS0Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS1Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS1Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS2Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS2Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS3Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS3Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS4Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS4Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS5Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS5Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS6Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS6Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS7Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS7Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS8Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS8Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS9Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS9Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS10Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS10Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS11Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS11Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS12Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS12Select use
     (DIS => 0,
      EN => 1);

   --  WKUPx Input Status (cleared on read)
   type SUPC_SR_WKUPIS13Select is
     (--  The corresponding wakeup input is disabled, or was inactive at the time the
--  debouncer triggered a wakeup event.
      DIS,
      --  The corresponding wakeup input was active at the time the debouncer
--  triggered a wakeup event since the last read of SUPC_SR.
      EN)
     with Size => 1;
   for SUPC_SR_WKUPIS13Select use
     (DIS => 0,
      EN => 1);

   --  Supply Controller Status Register
   type SUPC_SUPC_SR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. WKUP Wakeup Status (cleared on read)
      WKUPS          : SUPC_SR_WKUPSSelect;
      --  Read-only. Supply Monitor Detection Wakeup Status (cleared on read)
      SMWS           : SUPC_SR_SMWSSelect;
      --  Read-only. Brownout Detector Reset Status (cleared on read)
      BODRSTS        : SUPC_SR_BODRSTSSelect;
      --  Read-only. Supply Monitor Reset Status (cleared on read)
      SMRSTS         : SUPC_SR_SMRSTSSelect;
      --  Read-only. Supply Monitor Status (cleared on read)
      SMS            : SUPC_SR_SMSSelect;
      --  Read-only. Supply Monitor Output Status
      SMOS           : SUPC_SR_SMOSSelect;
      --  Read-only. 32-kHz Oscillator Selection Status
      OSCSEL         : SUPC_SR_OSCSELSelect;
      --  unspecified
      Reserved_8_12  : HAL.UInt5;
      --  Read-only. Low-power Debouncer Wakeup Status on WKUP0 (cleared on
      --  read)
      LPDBCS0        : SUPC_SR_LPDBCS0Select;
      --  Read-only. Low-power Debouncer Wakeup Status on WKUP1 (cleared on
      --  read)
      LPDBCS1        : SUPC_SR_LPDBCS1Select;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS0        : SUPC_SR_WKUPIS0Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS1        : SUPC_SR_WKUPIS1Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS2        : SUPC_SR_WKUPIS2Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS3        : SUPC_SR_WKUPIS3Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS4        : SUPC_SR_WKUPIS4Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS5        : SUPC_SR_WKUPIS5Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS6        : SUPC_SR_WKUPIS6Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS7        : SUPC_SR_WKUPIS7Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS8        : SUPC_SR_WKUPIS8Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS9        : SUPC_SR_WKUPIS9Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS10       : SUPC_SR_WKUPIS10Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS11       : SUPC_SR_WKUPIS11Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS12       : SUPC_SR_WKUPIS12Select;
      --  Read-only. WKUPx Input Status (cleared on read)
      WKUPIS13       : SUPC_SR_WKUPIS13Select;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SUPC_SR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      WKUPS          at 0 range 1 .. 1;
      SMWS           at 0 range 2 .. 2;
      BODRSTS        at 0 range 3 .. 3;
      SMRSTS         at 0 range 4 .. 4;
      SMS            at 0 range 5 .. 5;
      SMOS           at 0 range 6 .. 6;
      OSCSEL         at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      LPDBCS0        at 0 range 13 .. 13;
      LPDBCS1        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      WKUPIS0        at 0 range 16 .. 16;
      WKUPIS1        at 0 range 17 .. 17;
      WKUPIS2        at 0 range 18 .. 18;
      WKUPIS3        at 0 range 19 .. 19;
      WKUPIS4        at 0 range 20 .. 20;
      WKUPIS5        at 0 range 21 .. 21;
      WKUPIS6        at 0 range 22 .. 22;
      WKUPIS7        at 0 range 23 .. 23;
      WKUPIS8        at 0 range 24 .. 24;
      WKUPIS9        at 0 range 25 .. 25;
      WKUPIS10       at 0 range 26 .. 26;
      WKUPIS11       at 0 range 27 .. 27;
      WKUPIS12       at 0 range 28 .. 28;
      WKUPIS13       at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype SUPC_SYSC_VERSION_VERSION_Field is HAL.UInt12;
   subtype SUPC_SYSC_VERSION_MFN_Field is HAL.UInt3;

   --  Version Register
   type SUPC_SYSC_VERSION_Register is record
      --  Read-only. Version of the Hardware Module
      VERSION        : SUPC_SYSC_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Metal Fix Number
      MFN            : SUPC_SYSC_VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SYSC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Supply Controller
   type SUPC_Peripheral is record
      --  Supply Controller Control Register
      SUPC_CR      : aliased SUPC_SUPC_CR_Register;
      --  Supply Controller Supply Monitor Mode Register
      SUPC_SMMR    : aliased SUPC_SUPC_SMMR_Register;
      --  Supply Controller Mode Register
      SUPC_MR      : aliased SUPC_SUPC_MR_Register;
      --  Supply Controller Wakeup Mode Register
      SUPC_WUMR    : aliased SUPC_SUPC_WUMR_Register;
      --  Supply Controller Wakeup Inputs Register
      SUPC_WUIR    : aliased SUPC_SUPC_WUIR_Register;
      --  Supply Controller Status Register
      SUPC_SR      : aliased SUPC_SUPC_SR_Register;
      --  Version Register
      SYSC_VERSION : aliased SUPC_SYSC_VERSION_Register;
   end record
     with Volatile;

   for SUPC_Peripheral use record
      SUPC_CR      at 16#0# range 0 .. 31;
      SUPC_SMMR    at 16#4# range 0 .. 31;
      SUPC_MR      at 16#8# range 0 .. 31;
      SUPC_WUMR    at 16#C# range 0 .. 31;
      SUPC_WUIR    at 16#10# range 0 .. 31;
      SUPC_SR      at 16#14# range 0 .. 31;
      SYSC_VERSION at 16#FC# range 0 .. 31;
   end record;

   --  Supply Controller
   SUPC_Periph : aliased SUPC_Peripheral
     with Import, Address => SUPC_Base;

end SAM_SVD.SUPC;
