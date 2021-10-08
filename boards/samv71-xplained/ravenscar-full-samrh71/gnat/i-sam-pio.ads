--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.PIO is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ---------------------------------------
   -- PIO_PIO_GROUP cluster's Registers --
   ---------------------------------------

   --  PIO Line 0 Mask
   type MSKR_MSK0Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK0Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 1 Mask
   type MSKR_MSK1Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK1Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 2 Mask
   type MSKR_MSK2Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK2Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 3 Mask
   type MSKR_MSK3Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK3Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 4 Mask
   type MSKR_MSK4Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK4Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 5 Mask
   type MSKR_MSK5Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK5Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 6 Mask
   type MSKR_MSK6Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK6Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 7 Mask
   type MSKR_MSK7Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK7Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 8 Mask
   type MSKR_MSK8Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK8Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 9 Mask
   type MSKR_MSK9Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK9Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 10 Mask
   type MSKR_MSK10Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK10Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 11 Mask
   type MSKR_MSK11Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK11Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 12 Mask
   type MSKR_MSK12Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK12Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 13 Mask
   type MSKR_MSK13Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK13Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 14 Mask
   type MSKR_MSK14Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK14Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 15 Mask
   type MSKR_MSK15Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK15Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 16 Mask
   type MSKR_MSK16Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK16Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 17 Mask
   type MSKR_MSK17Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK17Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 18 Mask
   type MSKR_MSK18Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK18Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 19 Mask
   type MSKR_MSK19Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK19Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 20 Mask
   type MSKR_MSK20Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK20Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 21 Mask
   type MSKR_MSK21Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK21Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 22 Mask
   type MSKR_MSK22Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK22Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 23 Mask
   type MSKR_MSK23Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK23Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 24 Mask
   type MSKR_MSK24Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK24Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 25 Mask
   type MSKR_MSK25Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK25Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 26 Mask
   type MSKR_MSK26Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK26Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 27 Mask
   type MSKR_MSK27Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK27Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 28 Mask
   type MSKR_MSK28Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK28Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 29 Mask
   type MSKR_MSK29Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK29Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 30 Mask
   type MSKR_MSK30Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK30Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Line 31 Mask
   type MSKR_MSK31Select is
     (--  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx does not affect the
--  corresponding I/O line configuration.
      DISABLED,
      --  Writing the PIO_CFGRx, PIO_ODSRx or PIO_IOFRx updates the corresponding I/O
--  line configuration.
      ENABLED)
     with Size => 1;
   for MSKR_MSK31Select use
     (DISABLED => 0,
      ENABLED => 1);

   --  PIO Mask Register
   type PIO_MSKR_PIO_PIO_GROUP_Register is record
      --  PIO Line 0 Mask
      MSK0  : MSKR_MSK0Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 1 Mask
      MSK1  : MSKR_MSK1Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 2 Mask
      MSK2  : MSKR_MSK2Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 3 Mask
      MSK3  : MSKR_MSK3Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 4 Mask
      MSK4  : MSKR_MSK4Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 5 Mask
      MSK5  : MSKR_MSK5Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 6 Mask
      MSK6  : MSKR_MSK6Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 7 Mask
      MSK7  : MSKR_MSK7Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 8 Mask
      MSK8  : MSKR_MSK8Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 9 Mask
      MSK9  : MSKR_MSK9Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 10 Mask
      MSK10 : MSKR_MSK10Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 11 Mask
      MSK11 : MSKR_MSK11Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 12 Mask
      MSK12 : MSKR_MSK12Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 13 Mask
      MSK13 : MSKR_MSK13Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 14 Mask
      MSK14 : MSKR_MSK14Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 15 Mask
      MSK15 : MSKR_MSK15Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 16 Mask
      MSK16 : MSKR_MSK16Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 17 Mask
      MSK17 : MSKR_MSK17Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 18 Mask
      MSK18 : MSKR_MSK18Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 19 Mask
      MSK19 : MSKR_MSK19Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 20 Mask
      MSK20 : MSKR_MSK20Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 21 Mask
      MSK21 : MSKR_MSK21Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 22 Mask
      MSK22 : MSKR_MSK22Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 23 Mask
      MSK23 : MSKR_MSK23Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 24 Mask
      MSK24 : MSKR_MSK24Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 25 Mask
      MSK25 : MSKR_MSK25Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 26 Mask
      MSK26 : MSKR_MSK26Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 27 Mask
      MSK27 : MSKR_MSK27Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 28 Mask
      MSK28 : MSKR_MSK28Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 29 Mask
      MSK29 : MSKR_MSK29Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 30 Mask
      MSK30 : MSKR_MSK30Select := Interfaces.SAM.PIO.DISABLED;
      --  PIO Line 31 Mask
      MSK31 : MSKR_MSK31Select := Interfaces.SAM.PIO.DISABLED;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_MSKR_PIO_PIO_GROUP_Register use record
      MSK0  at 0 range 0 .. 0;
      MSK1  at 0 range 1 .. 1;
      MSK2  at 0 range 2 .. 2;
      MSK3  at 0 range 3 .. 3;
      MSK4  at 0 range 4 .. 4;
      MSK5  at 0 range 5 .. 5;
      MSK6  at 0 range 6 .. 6;
      MSK7  at 0 range 7 .. 7;
      MSK8  at 0 range 8 .. 8;
      MSK9  at 0 range 9 .. 9;
      MSK10 at 0 range 10 .. 10;
      MSK11 at 0 range 11 .. 11;
      MSK12 at 0 range 12 .. 12;
      MSK13 at 0 range 13 .. 13;
      MSK14 at 0 range 14 .. 14;
      MSK15 at 0 range 15 .. 15;
      MSK16 at 0 range 16 .. 16;
      MSK17 at 0 range 17 .. 17;
      MSK18 at 0 range 18 .. 18;
      MSK19 at 0 range 19 .. 19;
      MSK20 at 0 range 20 .. 20;
      MSK21 at 0 range 21 .. 21;
      MSK22 at 0 range 22 .. 22;
      MSK23 at 0 range 23 .. 23;
      MSK24 at 0 range 24 .. 24;
      MSK25 at 0 range 25 .. 25;
      MSK26 at 0 range 26 .. 26;
      MSK27 at 0 range 27 .. 27;
      MSK28 at 0 range 28 .. 28;
      MSK29 at 0 range 29 .. 29;
      MSK30 at 0 range 30 .. 30;
      MSK31 at 0 range 31 .. 31;
   end record;

   --  I/O Line Function
   type CFGR_FUNCSelect is
     (--  Select the PIO mode for the selected I/O lines.
      GPIO,
      --  Select the peripheral A for the selected I/O lines.
      PERIPH_A,
      --  Select the peripheral B for the selected I/O lines.
      PERIPH_B,
      --  Select the peripheral C for the selected I/O lines.
      PERIPH_C,
      --  Select the peripheral D for the selected I/O lines.
      PERIPH_D,
      --  Select the peripheral E for the selected I/O lines.
      PERIPH_E,
      --  Select the peripheral F for the selected I/O lines.
      PERIPH_F,
      --  Select the peripheral G for the selected I/O lines.
      PERIPH_G)
     with Size => 3;
   for CFGR_FUNCSelect use
     (GPIO => 0,
      PERIPH_A => 1,
      PERIPH_B => 2,
      PERIPH_C => 3,
      PERIPH_D => 4,
      PERIPH_E => 5,
      PERIPH_F => 6,
      PERIPH_G => 7);

   --  Direction
   type CFGR_DIRSelect is
     (--  The selected I/O lines are pure inputs.
      INPUT,
      --  The selected I/O lines are enabled in output.
      OUTPUT)
     with Size => 1;
   for CFGR_DIRSelect use
     (INPUT => 0,
      OUTPUT => 1);

   --  Pull-Up Enable
   type CFGR_PUENSelect is
     (--  Pull-Up is disabled for the selected I/O lines.
      DISABLED,
      --  Pull-Up is enabled for the selected I/O lines.
      ENABLED)
     with Size => 1;
   for CFGR_PUENSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Pull-Down Enable
   type CFGR_PDENSelect is
     (--  Pull-Down is disabled for the selected I/O lines.
      DISABLED,
      --  Pull-Down is enabled for the selected I/O lines only if PUEN is 0.
      ENABLED)
     with Size => 1;
   for CFGR_PDENSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Open-Drain
   type CFGR_OPDSelect is
     (--  The open-drain is disabled for the selected I/O lines. I/O lines are driven
--  at high- and low-level.
      DISABLED,
      --  The open-drain is enabled for the selected I/O lines. I/O lines are driven
--  at low-level only.
      ENABLED)
     with Size => 1;
   for CFGR_OPDSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Schmitt Trigger
   type CFGR_SCHMITTSelect is
     (--  Schmitt trigger is enabled for the selected I/O lines.
      ENABLED,
      --  Schmitt trigger is disabled for the selected I/O lines.
      DISABLED)
     with Size => 1;
   for CFGR_SCHMITTSelect use
     (ENABLED => 0,
      DISABLED => 1);

   --  Drive Strength
   type CFGR_DRVSTRSelect is
     (--  Output drive is 2mA
      OUT_2m,
      --  Output drive is 4mA
      OUT_4m,
      --  Output drive is 8mA
      OUT_8m,
      --  Output drive is 16mA
      OUT_16m,
      --  Output drive is 24mA
      OUT_24m,
      --  Output drive is 32mA
      OUT_32m,
      --  Output drive is 40mA
      OUT_40m,
      --  Output drive is 48mA
      OUT_48m)
     with Size => 3;
   for CFGR_DRVSTRSelect use
     (OUT_2m => 0,
      OUT_4m => 1,
      OUT_8m => 2,
      OUT_16m => 3,
      OUT_24m => 4,
      OUT_32m => 5,
      OUT_40m => 6,
      OUT_48m => 7);

   --  Event Selection
   type CFGR_EVTSELSelect is
     (--  Event detection on input falling edge
      FALLING,
      --  Event detection on input rising edge
      RISING,
      --  Event detection on input both edge
      BOTH,
      --  Event detection on low level input
      LOW,
      --  Event detection on high level input
      HIGH)
     with Size => 3;
   for CFGR_EVTSELSelect use
     (FALLING => 0,
      RISING => 1,
      BOTH => 2,
      LOW => 3,
      HIGH => 4);

   --  Physical Configuration Freeze Status (read-only)
   type CFGR_PCFSSelect is
     (--  The fields are not frozen and can be written for this I/O line.
      NOT_FROZEN,
      --  The fields are frozen and cannot be written for this I/O line. Only a
--  hardware reset can release these fields.
      FROZEN)
     with Size => 1;
   for CFGR_PCFSSelect use
     (NOT_FROZEN => 0,
      FROZEN => 1);

   --  Interrupt Configuration Freeze Status (read-only)
   type CFGR_ICFSSelect is
     (--  The fields are not frozen and can be written for this I/O line.
      NOT_FROZEN,
      --  The fields are frozen and cannot be written for this I/O line. Only a
--  hardware reset can release these fields.
      FROZEN)
     with Size => 1;
   for CFGR_ICFSSelect use
     (NOT_FROZEN => 0,
      FROZEN => 1);

   --  PIO Configuration Register
   type PIO_CFGR_PIO_PIO_GROUP_Register is record
      --  I/O Line Function
      FUNC           : CFGR_FUNCSelect := Interfaces.SAM.PIO.GPIO;
      --  unspecified
      Reserved_3_7   : Interfaces.SAM.UInt5 := 16#0#;
      --  Direction
      DIR            : CFGR_DIRSelect := Interfaces.SAM.PIO.INPUT;
      --  Pull-Up Enable
      PUEN           : CFGR_PUENSelect := Interfaces.SAM.PIO.DISABLED;
      --  Pull-Down Enable
      PDEN           : CFGR_PDENSelect := Interfaces.SAM.PIO.DISABLED;
      --  unspecified
      Reserved_11_13 : Interfaces.SAM.UInt3 := 16#0#;
      --  Open-Drain
      OPD            : CFGR_OPDSelect := Interfaces.SAM.PIO.DISABLED;
      --  Schmitt Trigger
      SCHMITT        : CFGR_SCHMITTSelect := Interfaces.SAM.PIO.ENABLED;
      --  Drive Strength
      DRVSTR         : CFGR_DRVSTRSelect := Interfaces.SAM.PIO.OUT_2m;
      --  unspecified
      Reserved_19_23 : Interfaces.SAM.UInt5 := 16#0#;
      --  Event Selection
      EVTSEL         : CFGR_EVTSELSelect := Interfaces.SAM.PIO.FALLING;
      --  unspecified
      Reserved_27_28 : Interfaces.SAM.UInt2 := 16#0#;
      --  Physical Configuration Freeze Status (read-only)
      PCFS           : CFGR_PCFSSelect := Interfaces.SAM.PIO.NOT_FROZEN;
      --  Interrupt Configuration Freeze Status (read-only)
      ICFS           : CFGR_ICFSSelect := Interfaces.SAM.PIO.NOT_FROZEN;
      --  unspecified
      Reserved_31_31 : Interfaces.SAM.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_CFGR_PIO_PIO_GROUP_Register use record
      FUNC           at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DIR            at 0 range 8 .. 8;
      PUEN           at 0 range 9 .. 9;
      PDEN           at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      OPD            at 0 range 14 .. 14;
      SCHMITT        at 0 range 15 .. 15;
      DRVSTR         at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      EVTSEL         at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      PCFS           at 0 range 29 .. 29;
      ICFS           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  PIO_PDSR_PIO_PIO_GROUP_P array element
   subtype PIO_PDSR_PIO_PIO_GROUP_P_Element is Interfaces.SAM.Bit;

   --  PIO_PDSR_PIO_PIO_GROUP_P array
   type PIO_PDSR_PIO_PIO_GROUP_P_Field_Array is array (0 .. 31)
     of PIO_PDSR_PIO_PIO_GROUP_P_Element
     with Component_Size => 1, Size => 32;

   --  PIO Pin Data Status Register
   type PIO_PDSR_PIO_PIO_GROUP_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PDSR_PIO_PIO_GROUP_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PDSR_PIO_PIO_GROUP_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_LOCKSR_PIO_PIO_GROUP_P array element
   subtype PIO_LOCKSR_PIO_PIO_GROUP_P_Element is Interfaces.SAM.Bit;

   --  PIO_LOCKSR_PIO_PIO_GROUP_P array
   type PIO_LOCKSR_PIO_PIO_GROUP_P_Field_Array is array (0 .. 31)
     of PIO_LOCKSR_PIO_PIO_GROUP_P_Element
     with Component_Size => 1, Size => 32;

   --  PIO Lock Status Register
   type PIO_LOCKSR_PIO_PIO_GROUP_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_LOCKSR_PIO_PIO_GROUP_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_LOCKSR_PIO_PIO_GROUP_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_SODR_PIO_PIO_GROUP_P array element
   subtype PIO_SODR_PIO_PIO_GROUP_P_Element is Interfaces.SAM.Bit;

   --  PIO_SODR_PIO_PIO_GROUP_P array
   type PIO_SODR_PIO_PIO_GROUP_P_Field_Array is array (0 .. 31)
     of PIO_SODR_PIO_PIO_GROUP_P_Element
     with Component_Size => 1, Size => 32;

   --  PIO Set Output Data Register
   type PIO_SODR_PIO_PIO_GROUP_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_SODR_PIO_PIO_GROUP_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_SODR_PIO_PIO_GROUP_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_CODR_PIO_PIO_GROUP_P array element
   subtype PIO_CODR_PIO_PIO_GROUP_P_Element is Interfaces.SAM.Bit;

   --  PIO_CODR_PIO_PIO_GROUP_P array
   type PIO_CODR_PIO_PIO_GROUP_P_Field_Array is array (0 .. 31)
     of PIO_CODR_PIO_PIO_GROUP_P_Element
     with Component_Size => 1, Size => 32;

   --  PIO Clear Output Data Register
   type PIO_CODR_PIO_PIO_GROUP_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_CODR_PIO_PIO_GROUP_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_CODR_PIO_PIO_GROUP_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_ODSR_PIO_PIO_GROUP_P array element
   subtype PIO_ODSR_PIO_PIO_GROUP_P_Element is Interfaces.SAM.Bit;

   --  PIO_ODSR_PIO_PIO_GROUP_P array
   type PIO_ODSR_PIO_PIO_GROUP_P_Field_Array is array (0 .. 31)
     of PIO_ODSR_PIO_PIO_GROUP_P_Element
     with Component_Size => 1, Size => 32;

   --  PIO Output Data Status Register
   type PIO_ODSR_PIO_PIO_GROUP_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_ODSR_PIO_PIO_GROUP_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_ODSR_PIO_PIO_GROUP_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_IER_PIO_PIO_GROUP_P array element
   subtype PIO_IER_PIO_PIO_GROUP_P_Element is Interfaces.SAM.Bit;

   --  PIO_IER_PIO_PIO_GROUP_P array
   type PIO_IER_PIO_PIO_GROUP_P_Field_Array is array (0 .. 31)
     of PIO_IER_PIO_PIO_GROUP_P_Element
     with Component_Size => 1, Size => 32;

   --  PIO Interrupt Enable Register
   type PIO_IER_PIO_PIO_GROUP_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_IER_PIO_PIO_GROUP_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IER_PIO_PIO_GROUP_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_IDR_PIO_PIO_GROUP_P array element
   subtype PIO_IDR_PIO_PIO_GROUP_P_Element is Interfaces.SAM.Bit;

   --  PIO_IDR_PIO_PIO_GROUP_P array
   type PIO_IDR_PIO_PIO_GROUP_P_Field_Array is array (0 .. 31)
     of PIO_IDR_PIO_PIO_GROUP_P_Element
     with Component_Size => 1, Size => 32;

   --  PIO Interrupt Disable Register
   type PIO_IDR_PIO_PIO_GROUP_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_IDR_PIO_PIO_GROUP_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IDR_PIO_PIO_GROUP_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_IMR_PIO_PIO_GROUP_P array element
   subtype PIO_IMR_PIO_PIO_GROUP_P_Element is Interfaces.SAM.Bit;

   --  PIO_IMR_PIO_PIO_GROUP_P array
   type PIO_IMR_PIO_PIO_GROUP_P_Field_Array is array (0 .. 31)
     of PIO_IMR_PIO_PIO_GROUP_P_Element
     with Component_Size => 1, Size => 32;

   --  PIO Interrupt Mask Register
   type PIO_IMR_PIO_PIO_GROUP_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_IMR_PIO_PIO_GROUP_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IMR_PIO_PIO_GROUP_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_ISR_PIO_PIO_GROUP_P array element
   subtype PIO_ISR_PIO_PIO_GROUP_P_Element is Interfaces.SAM.Bit;

   --  PIO_ISR_PIO_PIO_GROUP_P array
   type PIO_ISR_PIO_PIO_GROUP_P_Field_Array is array (0 .. 31)
     of PIO_ISR_PIO_PIO_GROUP_P_Element
     with Component_Size => 1, Size => 32;

   --  PIO Interrupt Status Register
   type PIO_ISR_PIO_PIO_GROUP_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_ISR_PIO_PIO_GROUP_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_ISR_PIO_PIO_GROUP_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PIO_IOFR_PIO_PIO_GROUP_FPHY_Field is Interfaces.SAM.Bit;
   subtype PIO_IOFR_PIO_PIO_GROUP_FINT_Field is Interfaces.SAM.Bit;

   --  Freeze Key
   type IOFR_FRZKEYSelect is
     (--  Reset value for the field
      IOFR_FRZKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit.
      PASSWD)
     with Size => 24;
   for IOFR_FRZKEYSelect use
     (IOFR_FRZKEYSelect_Reset => 0,
      PASSWD => 4804422);

   --  PIO I/O Freeze Configuration Register
   type PIO_IOFR_PIO_PIO_GROUP_Register is record
      --  Write-only. Freeze Physical Configuration
      FPHY         : PIO_IOFR_PIO_PIO_GROUP_FPHY_Field := 16#0#;
      --  Write-only. Freeze Interrupt Configuration
      FINT         : PIO_IOFR_PIO_PIO_GROUP_FINT_Field := 16#0#;
      --  unspecified
      Reserved_2_7 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Freeze Key
      FRZKEY       : IOFR_FRZKEYSelect := IOFR_FRZKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IOFR_PIO_PIO_GROUP_Register use record
      FPHY         at 0 range 0 .. 0;
      FINT         at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
      FRZKEY       at 0 range 8 .. 31;
   end record;

   type PIO_PIO_GROUP_Cluster is record
      --  PIO Mask Register
      MSKR   : aliased PIO_MSKR_PIO_PIO_GROUP_Register;
      --  PIO Configuration Register
      CFGR   : aliased PIO_CFGR_PIO_PIO_GROUP_Register;
      --  PIO Pin Data Status Register
      PDSR   : aliased PIO_PDSR_PIO_PIO_GROUP_Register;
      --  PIO Lock Status Register
      LOCKSR : aliased PIO_LOCKSR_PIO_PIO_GROUP_Register;
      --  PIO Set Output Data Register
      SODR   : aliased PIO_SODR_PIO_PIO_GROUP_Register;
      --  PIO Clear Output Data Register
      CODR   : aliased PIO_CODR_PIO_PIO_GROUP_Register;
      --  PIO Output Data Status Register
      ODSR   : aliased PIO_ODSR_PIO_PIO_GROUP_Register;
      --  PIO Interrupt Enable Register
      IER    : aliased PIO_IER_PIO_PIO_GROUP_Register;
      --  PIO Interrupt Disable Register
      IDR    : aliased PIO_IDR_PIO_PIO_GROUP_Register;
      --  PIO Interrupt Mask Register
      IMR    : aliased PIO_IMR_PIO_PIO_GROUP_Register;
      --  PIO Interrupt Status Register
      ISR    : aliased PIO_ISR_PIO_PIO_GROUP_Register;
      --  PIO I/O Freeze Configuration Register
      IOFR   : aliased PIO_IOFR_PIO_PIO_GROUP_Register;
   end record
     with Size => 512;

   for PIO_PIO_GROUP_Cluster use record
      MSKR   at 16#0# range 0 .. 31;
      CFGR   at 16#4# range 0 .. 31;
      PDSR   at 16#8# range 0 .. 31;
      LOCKSR at 16#C# range 0 .. 31;
      SODR   at 16#10# range 0 .. 31;
      CODR   at 16#14# range 0 .. 31;
      ODSR   at 16#18# range 0 .. 31;
      IER    at 16#20# range 0 .. 31;
      IDR    at 16#24# range 0 .. 31;
      IMR    at 16#28# range 0 .. 31;
      ISR    at 16#2C# range 0 .. 31;
      IOFR   at 16#3C# range 0 .. 31;
   end record;

   type PIO_PIO_GROUP_Clusters is array (0 .. 6) of PIO_PIO_GROUP_Cluster;

   subtype PIO_SCDR_DIV_Field is Interfaces.SAM.UInt14;

   --  PIO Slow Clock Divider Debouncing Register
   type PIO_SCDR_Register is record
      --  Slow Clock Divider Selection for Debouncing
      DIV            : PIO_SCDR_DIV_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_SCDR_Register use record
      DIV            at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype PIO_WPMR_WPEN_Field is Interfaces.SAM.Bit;
   subtype PIO_WPMR_WPITEN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type WPMR_WPKEYSelect is
     (--  Reset value for the field
      WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit. Always reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEYSelect use
     (WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5261647);

   --  PIO Write Protection Mode Register
   type PIO_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : PIO_WPMR_WPEN_Field := 16#0#;
      --  Write Protection Interrupt Enable
      WPITEN       : PIO_WPMR_WPITEN_Field := 16#0#;
      --  unspecified
      Reserved_2_7 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      WPITEN       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype PIO_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype PIO_WPSR_WPVSRC_Field is Interfaces.SAM.UInt16;

   --  PIO Write Protection Status Register
   type PIO_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : PIO_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : PIO_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Parallel Input/Output Controller
   type PIO_Peripheral is record
      PIO_PIO_GROUP : aliased PIO_PIO_GROUP_Clusters;
      --  PIO Slow Clock Divider Debouncing Register
      SCDR          : aliased PIO_SCDR_Register;
      --  PIO Write Protection Mode Register
      WPMR          : aliased PIO_WPMR_Register;
      --  PIO Write Protection Status Register
      WPSR          : aliased PIO_WPSR_Register;
   end record
     with Volatile;

   for PIO_Peripheral use record
      PIO_PIO_GROUP at 16#0# range 0 .. 3583;
      SCDR          at 16#500# range 0 .. 31;
      WPMR          at 16#5E0# range 0 .. 31;
      WPSR          at 16#5E4# range 0 .. 31;
   end record;

   --  Parallel Input/Output Controller
   PIO_Periph : aliased PIO_Peripheral
     with Import, Address => PIO_Base;

end Interfaces.SAM.PIO;
