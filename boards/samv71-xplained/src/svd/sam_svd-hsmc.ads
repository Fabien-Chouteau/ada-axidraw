pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.HSMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --------------------------------------
   -- HSMC_HSMC_CS cluster's Registers --
   --------------------------------------

   subtype HSMC_SETUP_HSMC_HSMC_CS_NWE_SETUP_Field is HAL.UInt6;
   subtype HSMC_SETUP_HSMC_HSMC_CS_NCS_WR_SETUP_Field is HAL.UInt6;
   subtype HSMC_SETUP_HSMC_HSMC_CS_NRD_SETUP_Field is HAL.UInt6;
   subtype HSMC_SETUP_HSMC_HSMC_CS_NCS_RD_SETUP_Field is HAL.UInt6;

   --  HSMC Setup Register
   type HSMC_SETUP_HSMC_HSMC_CS_Register is record
      --  NWE Setup Length
      NWE_SETUP      : HSMC_SETUP_HSMC_HSMC_CS_NWE_SETUP_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  NCS Setup Length in WRITE Access
      NCS_WR_SETUP   : HSMC_SETUP_HSMC_HSMC_CS_NCS_WR_SETUP_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  NRD Setup Length
      NRD_SETUP      : HSMC_SETUP_HSMC_HSMC_CS_NRD_SETUP_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  NCS Setup Length in READ Access
      NCS_RD_SETUP   : HSMC_SETUP_HSMC_HSMC_CS_NCS_RD_SETUP_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMC_SETUP_HSMC_HSMC_CS_Register use record
      NWE_SETUP      at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NCS_WR_SETUP   at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      NRD_SETUP      at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      NCS_RD_SETUP   at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype HSMC_PULSE_HSMC_HSMC_CS_NWE_PULSE_Field is HAL.UInt7;
   subtype HSMC_PULSE_HSMC_HSMC_CS_NCS_WR_PULSE_Field is HAL.UInt7;
   subtype HSMC_PULSE_HSMC_HSMC_CS_NRD_PULSE_Field is HAL.UInt7;
   subtype HSMC_PULSE_HSMC_HSMC_CS_NCS_RD_PULSE_Field is HAL.UInt7;

   --  HSMC Pulse Register
   type HSMC_PULSE_HSMC_HSMC_CS_Register is record
      --  NWE Pulse Length
      NWE_PULSE      : HSMC_PULSE_HSMC_HSMC_CS_NWE_PULSE_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  NCS Pulse Length in WRITE Access
      NCS_WR_PULSE   : HSMC_PULSE_HSMC_HSMC_CS_NCS_WR_PULSE_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  NRD Pulse Length
      NRD_PULSE      : HSMC_PULSE_HSMC_HSMC_CS_NRD_PULSE_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  NCS Pulse Length in READ Access
      NCS_RD_PULSE   : HSMC_PULSE_HSMC_HSMC_CS_NCS_RD_PULSE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMC_PULSE_HSMC_HSMC_CS_Register use record
      NWE_PULSE      at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NCS_WR_PULSE   at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      NRD_PULSE      at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      NCS_RD_PULSE   at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HSMC_CYCLE_HSMC_HSMC_CS_NWE_CYCLE_Field is HAL.UInt9;
   subtype HSMC_CYCLE_HSMC_HSMC_CS_NRD_CYCLE_Field is HAL.UInt9;

   --  HSMC Cycle Register
   type HSMC_CYCLE_HSMC_HSMC_CS_Register is record
      --  Total Write Cycle Length
      NWE_CYCLE      : HSMC_CYCLE_HSMC_HSMC_CS_NWE_CYCLE_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Total Read Cycle Length
      NRD_CYCLE      : HSMC_CYCLE_HSMC_HSMC_CS_NRD_CYCLE_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMC_CYCLE_HSMC_HSMC_CS_Register use record
      NWE_CYCLE      at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      NRD_CYCLE      at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  NWAIT Mode
   type MODE_EXNW_MODESelect is
     (--  Disabled-The NWAIT input signal is ignored on the corresponding chip
--  select.
      DISABLED,
      --  Frozen Mode-If asserted, the NWAIT signal freezes the current read or write
--  cycle. After deassertion, the read/write cycle is resumed from the point
--  where it was stopped.
      FROZEN,
      --  Ready Mode-The NWAIT signal indicates the availability of the external
--  device at the end of the pulse of the controlling read or write signal, to
--  complete the access. If high, the access normally completes. If low, the
--  access is extended until NWAIT returns high.
      READY)
     with Size => 2;
   for MODE_EXNW_MODESelect use
     (DISABLED => 0,
      FROZEN => 2,
      READY => 3);

   --  Data Bus Width
   type MODE_DBWSelect is
     (--  8-bit Data Bus
      Val_8_BIT,
      --  16-bit Data Bus
      Val_16_BIT,
      --  32-bit Data Bus
      Val_32_BIT)
     with Size => 2;
   for MODE_DBWSelect use
     (Val_8_BIT => 0,
      Val_16_BIT => 1,
      Val_32_BIT => 2);

   --  HSMC Mode Register
   type HSMC_MODE_HSMC_HSMC_CS_Register is record
      --  Read Mode
      READ_MODE      : Boolean := False;
      --  Write Mode
      WRITE_MODE     : Boolean := False;
      --  Read-Modify Write enable
      RMW_ENABLE     : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  NWAIT Mode
      EXNW_MODE      : MODE_EXNW_MODESelect := SAM_SVD.HSMC.DISABLED;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Data Bus Width
      DBW            : MODE_DBWSelect := SAM_SVD.HSMC.Val_8_BIT;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMC_MODE_HSMC_HSMC_CS_Register use record
      READ_MODE      at 0 range 0 .. 0;
      WRITE_MODE     at 0 range 1 .. 1;
      RMW_ENABLE     at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EXNW_MODE      at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DBW            at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   type HSMC_HSMC_CS_Cluster is record
      --  HSMC Setup Register
      SETUP : aliased HSMC_SETUP_HSMC_HSMC_CS_Register;
      --  HSMC Pulse Register
      PULSE : aliased HSMC_PULSE_HSMC_HSMC_CS_Register;
      --  HSMC Cycle Register
      CYCLE : aliased HSMC_CYCLE_HSMC_HSMC_CS_Register;
      --  HSMC Mode Register
      MODE  : aliased HSMC_MODE_HSMC_HSMC_CS_Register;
   end record
     with Size => 128;

   for HSMC_HSMC_CS_Cluster use record
      SETUP at 16#0# range 0 .. 31;
      PULSE at 16#4# range 0 .. 31;
      CYCLE at 16#8# range 0 .. 31;
      MODE  at 16#C# range 0 .. 31;
   end record;

   type HSMC_HSMC_CS_Clusters is array (0 .. 5) of HSMC_HSMC_CS_Cluster;

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
      PASSWD => 5459267);

   --  HSMC Write Protection Mode Register
   type HSMC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype HSMC_WPSR_WPVSRC_Field is HAL.UInt16;

   --  HSMC Write Protection Status Register
   type HSMC_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : HSMC_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSMC_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Harden Static Memory Controller
   type HSMC_Peripheral is record
      HSMC_HSMC_CS : aliased HSMC_HSMC_CS_Clusters;
      --  HSMC Write Protection Mode Register
      WPMR         : aliased HSMC_WPMR_Register;
      --  HSMC Write Protection Status Register
      WPSR         : aliased HSMC_WPSR_Register;
   end record
     with Volatile;

   for HSMC_Peripheral use record
      HSMC_HSMC_CS at 16#0# range 0 .. 767;
      WPMR         at 16#70# range 0 .. 31;
      WPSR         at 16#74# range 0 .. 31;
   end record;

   --  Harden Static Memory Controller
   HSMC_Periph : aliased HSMC_Peripheral
     with Import, Address => HSMC_Base;

end SAM_SVD.HSMC;
