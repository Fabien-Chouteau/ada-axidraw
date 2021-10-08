pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.SCnSCB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SCnSCB_ICTR_INTLINESNUM_Field is HAL.UInt4;

   --  Interrupt Controller Type Register
   type SCnSCB_ICTR_Register is record
      --  Read-only. Total number of interrupt lines supported by an
      --  implementation, defined in groups of 32
      INTLINESNUM   : SCnSCB_ICTR_INTLINESNUM_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCnSCB_ICTR_Register use record
      INTLINESNUM   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SCnSCB_ACTLR_DISDI_Field is HAL.UInt5;
   subtype SCnSCB_ACTLR_DISISSCH1_Field is HAL.UInt5;

   --  Auxiliary Control Register
   type SCnSCB_ACTLR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Disables folding of IT instructions
      DISFOLD        : Boolean := False;
      --  unspecified
      Reserved_3_9   : HAL.UInt7 := 16#0#;
      --  Disables FPU exception outputs
      FPEXCODIS      : Boolean := False;
      --  Disables dynamic read allocate mode for Write-Back Write-Allocate
      --  memory regions
      DISRAMODE      : Boolean := False;
      --  Disables ITM and DWT ATB flush
      DISITMATBFLUSH : Boolean := False;
      DISBTACREAD    : Boolean := False;
      DISBTACALLOC   : Boolean := False;
      DISCRITAXIRUR  : Boolean := False;
      DISDI          : SCnSCB_ACTLR_DISDI_Field := 16#0#;
      DISISSCH1      : SCnSCB_ACTLR_DISISSCH1_Field := 16#0#;
      --  Disables dynamic allocation of ADD and SUB instructions
      DISDYNADD      : Boolean := False;
      --  Disable critical AXI read-under-write
      DISCRITAXIRUW  : Boolean := False;
      --  Disables dynamic allocation of ADD and SUB instructions
      DISFPUISSOPT   : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCnSCB_ACTLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      DISFOLD        at 0 range 2 .. 2;
      Reserved_3_9   at 0 range 3 .. 9;
      FPEXCODIS      at 0 range 10 .. 10;
      DISRAMODE      at 0 range 11 .. 11;
      DISITMATBFLUSH at 0 range 12 .. 12;
      DISBTACREAD    at 0 range 13 .. 13;
      DISBTACALLOC   at 0 range 14 .. 14;
      DISCRITAXIRUR  at 0 range 15 .. 15;
      DISDI          at 0 range 16 .. 20;
      DISISSCH1      at 0 range 21 .. 25;
      DISDYNADD      at 0 range 26 .. 26;
      DISCRITAXIRUW  at 0 range 27 .. 27;
      DISFPUISSOPT   at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System control not in SCB
   type SCnSCB_Peripheral is record
      --  Interrupt Controller Type Register
      ICTR  : aliased SCnSCB_ICTR_Register;
      --  Auxiliary Control Register
      ACTLR : aliased SCnSCB_ACTLR_Register;
   end record
     with Volatile;

   for SCnSCB_Peripheral use record
      ICTR  at 16#4# range 0 .. 31;
      ACTLR at 16#8# range 0 .. 31;
   end record;

   --  System control not in SCB
   SCnSCB_Periph : aliased SCnSCB_Peripheral
     with Import, Address => SCnSCB_Base;

end SAM_SVD.SCnSCB;
