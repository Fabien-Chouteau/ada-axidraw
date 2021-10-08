--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.LOCKBIT is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype LOCKBIT_LOCKBIT_LOCK_REGION_0_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_1_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_2_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_3_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_4_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_5_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_6_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_7_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_8_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_9_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_10_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_11_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_12_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_13_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_14_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_15_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_16_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_17_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_18_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_19_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_20_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_21_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_22_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_23_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_24_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_25_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_26_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_27_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_28_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_29_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_30_Field is Interfaces.SAM.Bit;
   subtype LOCKBIT_LOCKBIT_LOCK_REGION_31_Field is Interfaces.SAM.Bit;

   --  Lock Bits
   type LOCKBIT_LOCKBIT_Register is record
      --  Lock Region 0
      LOCK_REGION_0  : LOCKBIT_LOCKBIT_LOCK_REGION_0_Field := 16#0#;
      --  Lock Region 1
      LOCK_REGION_1  : LOCKBIT_LOCKBIT_LOCK_REGION_1_Field := 16#0#;
      --  Lock Region 2
      LOCK_REGION_2  : LOCKBIT_LOCKBIT_LOCK_REGION_2_Field := 16#0#;
      --  Lock Region 3
      LOCK_REGION_3  : LOCKBIT_LOCKBIT_LOCK_REGION_3_Field := 16#0#;
      --  Lock Region 4
      LOCK_REGION_4  : LOCKBIT_LOCKBIT_LOCK_REGION_4_Field := 16#0#;
      --  Lock Region 5
      LOCK_REGION_5  : LOCKBIT_LOCKBIT_LOCK_REGION_5_Field := 16#0#;
      --  Lock Region 6
      LOCK_REGION_6  : LOCKBIT_LOCKBIT_LOCK_REGION_6_Field := 16#0#;
      --  Lock Region 7
      LOCK_REGION_7  : LOCKBIT_LOCKBIT_LOCK_REGION_7_Field := 16#0#;
      --  Lock Region 8
      LOCK_REGION_8  : LOCKBIT_LOCKBIT_LOCK_REGION_8_Field := 16#0#;
      --  Lock Region 9
      LOCK_REGION_9  : LOCKBIT_LOCKBIT_LOCK_REGION_9_Field := 16#0#;
      --  Lock Region 10
      LOCK_REGION_10 : LOCKBIT_LOCKBIT_LOCK_REGION_10_Field := 16#0#;
      --  Lock Region 11
      LOCK_REGION_11 : LOCKBIT_LOCKBIT_LOCK_REGION_11_Field := 16#0#;
      --  Lock Region 12
      LOCK_REGION_12 : LOCKBIT_LOCKBIT_LOCK_REGION_12_Field := 16#0#;
      --  Lock Region 13
      LOCK_REGION_13 : LOCKBIT_LOCKBIT_LOCK_REGION_13_Field := 16#0#;
      --  Lock Region 14
      LOCK_REGION_14 : LOCKBIT_LOCKBIT_LOCK_REGION_14_Field := 16#0#;
      --  Lock Region 15
      LOCK_REGION_15 : LOCKBIT_LOCKBIT_LOCK_REGION_15_Field := 16#0#;
      --  Lock Region 16
      LOCK_REGION_16 : LOCKBIT_LOCKBIT_LOCK_REGION_16_Field := 16#0#;
      --  Lock Region 17
      LOCK_REGION_17 : LOCKBIT_LOCKBIT_LOCK_REGION_17_Field := 16#0#;
      --  Lock Region 18
      LOCK_REGION_18 : LOCKBIT_LOCKBIT_LOCK_REGION_18_Field := 16#0#;
      --  Lock Region 19
      LOCK_REGION_19 : LOCKBIT_LOCKBIT_LOCK_REGION_19_Field := 16#0#;
      --  Lock Region 20
      LOCK_REGION_20 : LOCKBIT_LOCKBIT_LOCK_REGION_20_Field := 16#0#;
      --  Lock Region 21
      LOCK_REGION_21 : LOCKBIT_LOCKBIT_LOCK_REGION_21_Field := 16#0#;
      --  Lock Region 22
      LOCK_REGION_22 : LOCKBIT_LOCKBIT_LOCK_REGION_22_Field := 16#0#;
      --  Lock Region 23
      LOCK_REGION_23 : LOCKBIT_LOCKBIT_LOCK_REGION_23_Field := 16#0#;
      --  Lock Region 24
      LOCK_REGION_24 : LOCKBIT_LOCKBIT_LOCK_REGION_24_Field := 16#0#;
      --  Lock Region 25
      LOCK_REGION_25 : LOCKBIT_LOCKBIT_LOCK_REGION_25_Field := 16#0#;
      --  Lock Region 26
      LOCK_REGION_26 : LOCKBIT_LOCKBIT_LOCK_REGION_26_Field := 16#0#;
      --  Lock Region 27
      LOCK_REGION_27 : LOCKBIT_LOCKBIT_LOCK_REGION_27_Field := 16#0#;
      --  Lock Region 28
      LOCK_REGION_28 : LOCKBIT_LOCKBIT_LOCK_REGION_28_Field := 16#0#;
      --  Lock Region 29
      LOCK_REGION_29 : LOCKBIT_LOCKBIT_LOCK_REGION_29_Field := 16#0#;
      --  Lock Region 30
      LOCK_REGION_30 : LOCKBIT_LOCKBIT_LOCK_REGION_30_Field := 16#0#;
      --  Lock Region 31
      LOCK_REGION_31 : LOCKBIT_LOCKBIT_LOCK_REGION_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOCKBIT_LOCKBIT_Register use record
      LOCK_REGION_0  at 0 range 0 .. 0;
      LOCK_REGION_1  at 0 range 1 .. 1;
      LOCK_REGION_2  at 0 range 2 .. 2;
      LOCK_REGION_3  at 0 range 3 .. 3;
      LOCK_REGION_4  at 0 range 4 .. 4;
      LOCK_REGION_5  at 0 range 5 .. 5;
      LOCK_REGION_6  at 0 range 6 .. 6;
      LOCK_REGION_7  at 0 range 7 .. 7;
      LOCK_REGION_8  at 0 range 8 .. 8;
      LOCK_REGION_9  at 0 range 9 .. 9;
      LOCK_REGION_10 at 0 range 10 .. 10;
      LOCK_REGION_11 at 0 range 11 .. 11;
      LOCK_REGION_12 at 0 range 12 .. 12;
      LOCK_REGION_13 at 0 range 13 .. 13;
      LOCK_REGION_14 at 0 range 14 .. 14;
      LOCK_REGION_15 at 0 range 15 .. 15;
      LOCK_REGION_16 at 0 range 16 .. 16;
      LOCK_REGION_17 at 0 range 17 .. 17;
      LOCK_REGION_18 at 0 range 18 .. 18;
      LOCK_REGION_19 at 0 range 19 .. 19;
      LOCK_REGION_20 at 0 range 20 .. 20;
      LOCK_REGION_21 at 0 range 21 .. 21;
      LOCK_REGION_22 at 0 range 22 .. 22;
      LOCK_REGION_23 at 0 range 23 .. 23;
      LOCK_REGION_24 at 0 range 24 .. 24;
      LOCK_REGION_25 at 0 range 25 .. 25;
      LOCK_REGION_26 at 0 range 26 .. 26;
      LOCK_REGION_27 at 0 range 27 .. 27;
      LOCK_REGION_28 at 0 range 28 .. 28;
      LOCK_REGION_29 at 0 range 29 .. 29;
      LOCK_REGION_30 at 0 range 30 .. 30;
      LOCK_REGION_31 at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type LOCKBIT_Peripheral is record
      --  Lock Bits
      LOCKBIT : aliased LOCKBIT_LOCKBIT_Register;
   end record
     with Volatile;

   for LOCKBIT_Peripheral use record
      LOCKBIT at 0 range 0 .. 31;
   end record;

   LOCKBIT_Periph : aliased LOCKBIT_Peripheral
     with Import, Address => LOCKBIT_Base;

end Interfaces.SAM.LOCKBIT;
