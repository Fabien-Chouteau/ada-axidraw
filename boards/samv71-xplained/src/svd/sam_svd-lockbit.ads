pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.LOCKBIT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Lock Bits
   type LOCKBIT_LOCKBIT_Register is record
      --  Lock Region 0
      LOCK_REGION_0  : Boolean := False;
      --  Lock Region 1
      LOCK_REGION_1  : Boolean := False;
      --  Lock Region 2
      LOCK_REGION_2  : Boolean := False;
      --  Lock Region 3
      LOCK_REGION_3  : Boolean := False;
      --  Lock Region 4
      LOCK_REGION_4  : Boolean := False;
      --  Lock Region 5
      LOCK_REGION_5  : Boolean := False;
      --  Lock Region 6
      LOCK_REGION_6  : Boolean := False;
      --  Lock Region 7
      LOCK_REGION_7  : Boolean := False;
      --  Lock Region 8
      LOCK_REGION_8  : Boolean := False;
      --  Lock Region 9
      LOCK_REGION_9  : Boolean := False;
      --  Lock Region 10
      LOCK_REGION_10 : Boolean := False;
      --  Lock Region 11
      LOCK_REGION_11 : Boolean := False;
      --  Lock Region 12
      LOCK_REGION_12 : Boolean := False;
      --  Lock Region 13
      LOCK_REGION_13 : Boolean := False;
      --  Lock Region 14
      LOCK_REGION_14 : Boolean := False;
      --  Lock Region 15
      LOCK_REGION_15 : Boolean := False;
      --  Lock Region 16
      LOCK_REGION_16 : Boolean := False;
      --  Lock Region 17
      LOCK_REGION_17 : Boolean := False;
      --  Lock Region 18
      LOCK_REGION_18 : Boolean := False;
      --  Lock Region 19
      LOCK_REGION_19 : Boolean := False;
      --  Lock Region 20
      LOCK_REGION_20 : Boolean := False;
      --  Lock Region 21
      LOCK_REGION_21 : Boolean := False;
      --  Lock Region 22
      LOCK_REGION_22 : Boolean := False;
      --  Lock Region 23
      LOCK_REGION_23 : Boolean := False;
      --  Lock Region 24
      LOCK_REGION_24 : Boolean := False;
      --  Lock Region 25
      LOCK_REGION_25 : Boolean := False;
      --  Lock Region 26
      LOCK_REGION_26 : Boolean := False;
      --  Lock Region 27
      LOCK_REGION_27 : Boolean := False;
      --  Lock Region 28
      LOCK_REGION_28 : Boolean := False;
      --  Lock Region 29
      LOCK_REGION_29 : Boolean := False;
      --  Lock Region 30
      LOCK_REGION_30 : Boolean := False;
      --  Lock Region 31
      LOCK_REGION_31 : Boolean := False;
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

end SAM_SVD.LOCKBIT;
