--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.SFR is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CAN_EXT_MEM_ADDR_Field is Interfaces.SAM.UInt16;

   --  CAN0 MSB Base Address
   type CAN_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.SAM.UInt16 := 16#0#;
      --  MSB Base Address
      EXT_MEM_ADDR  : CAN_EXT_MEM_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      EXT_MEM_ADDR  at 0 range 16 .. 31;
   end record;

   subtype SFR_WPMR_WPEN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type WPMR_WPKEYSelect is
     (--  Reset value for the field
      WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.Always
--  reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEYSelect use
     (WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5457490);

   --  Write Protection Mode Register
   type SFR_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : SFR_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFR_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Special Function Registers
   type SFR_Peripheral is record
      --  CAN0 MSB Base Address
      CAN0 : aliased CAN_Register;
      --  CAN1 MSB Base Address
      CAN1 : aliased CAN_Register;
      --  Write Protection Mode Register
      WPMR : aliased SFR_WPMR_Register;
   end record
     with Volatile;

   for SFR_Peripheral use record
      CAN0 at 16#A0# range 0 .. 31;
      CAN1 at 16#A4# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
   end record;

   --  Special Function Registers
   SFR_Periph : aliased SFR_Peripheral
     with Import, Address => SFR_Base;

end Interfaces.SAM.SFR;
