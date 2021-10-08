--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.SCnSCB is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype SCnSCB_ICTR_INTLINESNUM_Field is Interfaces.SAM.UInt4;

   --  Interrupt Controller Type Register
   type SCnSCB_ICTR_Register is record
      --  Read-only. Total number of interrupt lines supported by an
      --  implementation, defined in groups of 32
      INTLINESNUM   : SCnSCB_ICTR_INTLINESNUM_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCnSCB_ICTR_Register use record
      INTLINESNUM   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SCnSCB_ACTLR_DISFOLD_Field is Interfaces.SAM.Bit;
   subtype SCnSCB_ACTLR_FPEXCODIS_Field is Interfaces.SAM.Bit;
   subtype SCnSCB_ACTLR_DISRAMODE_Field is Interfaces.SAM.Bit;
   subtype SCnSCB_ACTLR_DISITMATBFLUSH_Field is Interfaces.SAM.Bit;
   subtype SCnSCB_ACTLR_DISBTACREAD_Field is Interfaces.SAM.Bit;
   subtype SCnSCB_ACTLR_DISBTACALLOC_Field is Interfaces.SAM.Bit;
   subtype SCnSCB_ACTLR_DISCRITAXIRUR_Field is Interfaces.SAM.Bit;
   subtype SCnSCB_ACTLR_DISDI_Field is Interfaces.SAM.UInt5;
   subtype SCnSCB_ACTLR_DISISSCH1_Field is Interfaces.SAM.UInt5;
   subtype SCnSCB_ACTLR_DISDYNADD_Field is Interfaces.SAM.Bit;
   subtype SCnSCB_ACTLR_DISCRITAXIRUW_Field is Interfaces.SAM.Bit;
   subtype SCnSCB_ACTLR_DISFPUISSOPT_Field is Interfaces.SAM.Bit;

   --  Auxiliary Control Register
   type SCnSCB_ACTLR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Disables folding of IT instructions
      DISFOLD        : SCnSCB_ACTLR_DISFOLD_Field := 16#0#;
      --  unspecified
      Reserved_3_9   : Interfaces.SAM.UInt7 := 16#0#;
      --  Disables FPU exception outputs
      FPEXCODIS      : SCnSCB_ACTLR_FPEXCODIS_Field := 16#0#;
      --  Disables dynamic read allocate mode for Write-Back Write-Allocate
      --  memory regions
      DISRAMODE      : SCnSCB_ACTLR_DISRAMODE_Field := 16#0#;
      --  Disables ITM and DWT ATB flush
      DISITMATBFLUSH : SCnSCB_ACTLR_DISITMATBFLUSH_Field := 16#0#;
      DISBTACREAD    : SCnSCB_ACTLR_DISBTACREAD_Field := 16#0#;
      DISBTACALLOC   : SCnSCB_ACTLR_DISBTACALLOC_Field := 16#0#;
      DISCRITAXIRUR  : SCnSCB_ACTLR_DISCRITAXIRUR_Field := 16#0#;
      DISDI          : SCnSCB_ACTLR_DISDI_Field := 16#0#;
      DISISSCH1      : SCnSCB_ACTLR_DISISSCH1_Field := 16#0#;
      --  Disables dynamic allocation of ADD and SUB instructions
      DISDYNADD      : SCnSCB_ACTLR_DISDYNADD_Field := 16#0#;
      --  Disable critical AXI read-under-write
      DISCRITAXIRUW  : SCnSCB_ACTLR_DISCRITAXIRUW_Field := 16#0#;
      --  Disables dynamic allocation of ADD and SUB instructions
      DISFPUISSOPT   : SCnSCB_ACTLR_DISFPUISSOPT_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
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

end Interfaces.SAM.SCnSCB;
