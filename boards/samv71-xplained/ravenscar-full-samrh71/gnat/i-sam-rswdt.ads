--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.RSWDT is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype RSWDT_CR_WDRSTT_Field is Interfaces.SAM.Bit;

   --  Password
   type CR_KEYSelect is
     (--  Reset value for the field
      CR_KEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.
      PASSWD)
     with Size => 8;
   for CR_KEYSelect use
     (CR_KEYSelect_Reset => 0,
      PASSWD => 196);

   --  Control Register
   type RSWDT_CR_Register is record
      --  Write-only. Watchdog Restart
      WDRSTT        : RSWDT_CR_WDRSTT_Field := 16#0#;
      --  unspecified
      Reserved_1_23 : Interfaces.SAM.UInt23 := 16#0#;
      --  Write-only. Password
      KEY           : CR_KEYSelect := CR_KEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSWDT_CR_Register use record
      WDRSTT        at 0 range 0 .. 0;
      Reserved_1_23 at 0 range 1 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   subtype RSWDT_MR_WDV_Field is Interfaces.SAM.UInt12;
   subtype RSWDT_MR_WDFIEN_Field is Interfaces.SAM.Bit;
   subtype RSWDT_MR_WDRSTEN_Field is Interfaces.SAM.Bit;
   subtype RSWDT_MR_WDDIS_Field is Interfaces.SAM.Bit;
   subtype RSWDT_MR_ALLONES_Field is Interfaces.SAM.UInt12;
   subtype RSWDT_MR_WDDBGHLT_Field is Interfaces.SAM.Bit;
   subtype RSWDT_MR_WDIDLEHLT_Field is Interfaces.SAM.Bit;

   --  Mode Register
   type RSWDT_MR_Register is record
      --  Watchdog Counter Value
      WDV            : RSWDT_MR_WDV_Field := 16#0#;
      --  Watchdog Fault Interrupt Enable
      WDFIEN         : RSWDT_MR_WDFIEN_Field := 16#0#;
      --  Watchdog Reset Enable
      WDRSTEN        : RSWDT_MR_WDRSTEN_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.SAM.Bit := 16#0#;
      --  Watchdog Disable
      WDDIS          : RSWDT_MR_WDDIS_Field := 16#0#;
      --  Must Always Be Written with 0xFFF
      ALLONES        : RSWDT_MR_ALLONES_Field := 16#0#;
      --  Watchdog Debug Halt
      WDDBGHLT       : RSWDT_MR_WDDBGHLT_Field := 16#0#;
      --  Watchdog Idle Halt
      WDIDLEHLT      : RSWDT_MR_WDIDLEHLT_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSWDT_MR_Register use record
      WDV            at 0 range 0 .. 11;
      WDFIEN         at 0 range 12 .. 12;
      WDRSTEN        at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      WDDIS          at 0 range 15 .. 15;
      ALLONES        at 0 range 16 .. 27;
      WDDBGHLT       at 0 range 28 .. 28;
      WDIDLEHLT      at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RSWDT_SR_WDUNF_Field is Interfaces.SAM.Bit;

   --  Status Register
   type RSWDT_SR_Register is record
      --  Read-only. Watchdog Underflow
      WDUNF         : RSWDT_SR_WDUNF_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSWDT_SR_Register use record
      WDUNF         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reinforced Safety Watchdog Timer
   type RSWDT_Peripheral is record
      --  Control Register
      CR : aliased RSWDT_CR_Register;
      --  Mode Register
      MR : aliased RSWDT_MR_Register;
      --  Status Register
      SR : aliased RSWDT_SR_Register;
   end record
     with Volatile;

   for RSWDT_Peripheral use record
      CR at 16#0# range 0 .. 31;
      MR at 16#4# range 0 .. 31;
      SR at 16#8# range 0 .. 31;
   end record;

   --  Reinforced Safety Watchdog Timer
   RSWDT_Periph : aliased RSWDT_Peripheral
     with Import, Address => RSWDT_Base;

end Interfaces.SAM.RSWDT;
