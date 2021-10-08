pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.WDT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

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
      WDRSTT        : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Write-only. Lock Mode Register Write Access
      LOCKMR        : Boolean := False;
      --  unspecified
      Reserved_5_23 : HAL.UInt19 := 16#0#;
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

   subtype WDT_MR_WDV_Field is HAL.UInt12;
   subtype WDT_MR_WDD_Field is HAL.UInt12;

   --  Mode Register
   type WDT_MR_Register is record
      --  Watchdog Counter Value
      WDV            : WDT_MR_WDV_Field := 16#0#;
      --  Watchdog Fault Interrupt Enable
      WDFIEN         : Boolean := False;
      --  Watchdog Reset Enable
      WDRSTEN        : Boolean := False;
      --  Watchdog Reset Processor
      WDRPROC        : Boolean := False;
      --  Watchdog Disable
      WDDIS          : Boolean := False;
      --  Watchdog Delta Value
      WDD            : WDT_MR_WDD_Field := 16#0#;
      --  Watchdog Debug Halt
      WDDBGHLT       : Boolean := False;
      --  Watchdog Idle Halt
      WDIDLEHLT      : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
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

   --  Status Register
   type WDT_SR_Register is record
      --  Read-only. Watchdog Underflow (cleared on read)
      WDUNF         : Boolean;
      --  Read-only. Watchdog Error (cleared on read)
      WDERR         : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
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

end SAM_SVD.WDT;
