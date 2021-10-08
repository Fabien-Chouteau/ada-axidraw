pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.RSTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RSTC_CR_PERIID_Field is HAL.UInt8;

   --  System Reset Key
   type CR_KEYSelect is
     (--  Reset value for the field
      CR_KEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.
      PASSWD)
     with Size => 8;
   for CR_KEYSelect use
     (CR_KEYSelect_Reset => 0,
      PASSWD => 165);

   --  Control Register
   type RSTC_CR_Register is record
      --  Write-only. Processor Reset
      PROCRST        : Boolean := False;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Write-only. External Reset
      EXTRST         : Boolean := False;
      --  Write-only. External Reset
      PERIIDON       : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Write-only. Peripheral Identifier
      PERIID         : RSTC_CR_PERIID_Field := 16#0#;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Write-only. System Reset Key
      KEY            : CR_KEYSelect := CR_KEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_CR_Register use record
      PROCRST        at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      EXTRST         at 0 range 3 .. 3;
      PERIIDON       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PERIID         at 0 range 8 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   --  Reset Type
   type SR_RSTTYPSelect is
     (--  First powerup reset
      GENERAL_RST,
      --  Watchdog fault occurred
      WDT_RST,
      --  Processor reset required by the software
      SOFT_RST,
      --  CPU clock failure detection occurred
      CPU_FAIL_RST,
      --  32.768 kHz crystal failure detection fault occurred
      SLCK_XTAL_RST)
     with Size => 3;
   for SR_RSTTYPSelect use
     (GENERAL_RST => 0,
      WDT_RST => 2,
      SOFT_RST => 3,
      CPU_FAIL_RST => 6,
      SLCK_XTAL_RST => 7);

   --  Status Register
   type RSTC_SR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. Reset Type
      RSTTYP         : SR_RSTTYPSelect;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. NRST Pin Level
      NRSTL          : Boolean;
      --  Read-only. Software Reset Command in Progress
      SRCMP          : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_SR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      RSTTYP         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      NRSTL          at 0 range 16 .. 16;
      SRCMP          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Write Access Password
   type MR_KEYSelect is
     (--  Reset value for the field
      MR_KEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation. Always
--  reads as 0.
      PASSWD)
     with Size => 8;
   for MR_KEYSelect use
     (MR_KEYSelect_Reset => 0,
      PASSWD => 165);

   --  Mode Register
   type RSTC_MR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Slow Clock Switching
      SCKSW         : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  CPU Fail Enable
      CPUFEN        : Boolean := False;
      --  unspecified
      Reserved_4_23 : HAL.UInt20 := 16#0#;
      --  Write Access Password
      KEY           : MR_KEYSelect := MR_KEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_MR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SCKSW         at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CPUFEN        at 0 range 3 .. 3;
      Reserved_4_23 at 0 range 4 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset Controller
   type RSTC_Peripheral is record
      --  Control Register
      CR : aliased RSTC_CR_Register;
      --  Status Register
      SR : aliased RSTC_SR_Register;
      --  Mode Register
      MR : aliased RSTC_MR_Register;
   end record
     with Volatile;

   for RSTC_Peripheral use record
      CR at 16#0# range 0 .. 31;
      SR at 16#4# range 0 .. 31;
      MR at 16#8# range 0 .. 31;
   end record;

   --  Reset Controller
   RSTC_Periph : aliased RSTC_Peripheral
     with Import, Address => RSTC_Base;

end SAM_SVD.RSTC;
