--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.WDT is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype WDT_CR_WDRSTT_Field is Interfaces.SAM.Bit;
   subtype WDT_CR_LOCKMR_Field is Interfaces.SAM.Bit;

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

   --  Control Register
   type WDT_CR_Register is record
      --  Write-only. Watchdog Restart
      WDRSTT        : WDT_CR_WDRSTT_Field := 16#0#;
      --  unspecified
      Reserved_1_3  : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Lock Mode Register Write Access
      LOCKMR        : WDT_CR_LOCKMR_Field := 16#0#;
      --  unspecified
      Reserved_5_23 : Interfaces.SAM.UInt19 := 16#0#;
      --  Write-only. Password
      KEY           : CR_KEYSelect := CR_KEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_CR_Register use record
      WDRSTT        at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      LOCKMR        at 0 range 4 .. 4;
      Reserved_5_23 at 0 range 5 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   subtype WDT_MR_WDV_Field is Interfaces.SAM.UInt12;
   subtype WDT_MR_WDFIEN_Field is Interfaces.SAM.Bit;
   subtype WDT_MR_WDRSTEN_Field is Interfaces.SAM.Bit;
   subtype WDT_MR_WDRPROC_Field is Interfaces.SAM.Bit;
   subtype WDT_MR_WDDIS_Field is Interfaces.SAM.Bit;
   subtype WDT_MR_WDD_Field is Interfaces.SAM.UInt12;
   subtype WDT_MR_WDDBGHLT_Field is Interfaces.SAM.Bit;
   subtype WDT_MR_WDIDLEHLT_Field is Interfaces.SAM.Bit;

   --  Mode Register
   type WDT_MR_Register is record
      --  Watchdog Counter Value
      WDV            : WDT_MR_WDV_Field := 16#0#;
      --  Watchdog Fault Interrupt Enable
      WDFIEN         : WDT_MR_WDFIEN_Field := 16#0#;
      --  Watchdog Reset Enable
      WDRSTEN        : WDT_MR_WDRSTEN_Field := 16#0#;
      --  Watchdog Reset Processor
      WDRPROC        : WDT_MR_WDRPROC_Field := 16#0#;
      --  Watchdog Disable
      WDDIS          : WDT_MR_WDDIS_Field := 16#0#;
      --  Watchdog Delta Value
      WDD            : WDT_MR_WDD_Field := 16#0#;
      --  Watchdog Debug Halt
      WDDBGHLT       : WDT_MR_WDDBGHLT_Field := 16#0#;
      --  Watchdog Idle Halt
      WDIDLEHLT      : WDT_MR_WDIDLEHLT_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_MR_Register use record
      WDV            at 0 range 0 .. 11;
      WDFIEN         at 0 range 12 .. 12;
      WDRSTEN        at 0 range 13 .. 13;
      WDRPROC        at 0 range 14 .. 14;
      WDDIS          at 0 range 15 .. 15;
      WDD            at 0 range 16 .. 27;
      WDDBGHLT       at 0 range 28 .. 28;
      WDIDLEHLT      at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype WDT_SR_WDUNF_Field is Interfaces.SAM.Bit;
   subtype WDT_SR_WDERR_Field is Interfaces.SAM.Bit;

   --  Status Register
   type WDT_SR_Register is record
      --  Read-only. Watchdog Underflow (cleared on read)
      WDUNF         : WDT_SR_WDUNF_Field;
      --  Read-only. Watchdog Error (cleared on read)
      WDERR         : WDT_SR_WDERR_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_SR_Register use record
      WDUNF         at 0 range 0 .. 0;
      WDERR         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Watchdog Timer
   type WDT_Peripheral is record
      --  Control Register
      CR : aliased WDT_CR_Register;
      --  Mode Register
      MR : aliased WDT_MR_Register;
      --  Status Register
      SR : aliased WDT_SR_Register;
   end record
     with Volatile;

   for WDT_Peripheral use record
      CR at 16#0# range 0 .. 31;
      MR at 16#4# range 0 .. 31;
      SR at 16#8# range 0 .. 31;
   end record;

   --  Watchdog Timer
   WDT_Periph : aliased WDT_Peripheral
     with Import, Address => WDT_Base;

end Interfaces.SAM.WDT;
