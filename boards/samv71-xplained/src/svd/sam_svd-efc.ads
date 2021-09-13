pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.EFC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype EFC_EEFC_FMR_FWS_Field is HAL.UInt4;

   --  EEFC Flash Mode Register
   type EFC_EEFC_FMR_Register is record
      --  Flash Ready Interrupt Enable
      FRDY           : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Flash Wait State
      FWS            : EFC_EEFC_FMR_FWS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Sequential Code Optimization Disable
      SCOD           : Boolean := False;
      --  unspecified
      Reserved_17_25 : HAL.UInt9 := 16#0#;
      --  Code Loop Optimization Enable
      CLOE           : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_EEFC_FMR_Register use record
      FRDY           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      FWS            at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SCOD           at 0 range 16 .. 16;
      Reserved_17_25 at 0 range 17 .. 25;
      CLOE           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Flash Command
   type EEFC_FCR_FCMDSelect is
     (--  Get Flash descriptor
      GETD,
      --  Write page
      WP,
      --  Write page and lock
      WPL,
      --  Erase page and write page
      EWP,
      --  Erase page and write page then lock
      EWPL,
      --  Erase all
      EA,
      --  Erase pages
      EPA,
      --  Set lock bit
      SLB,
      --  Clear lock bit
      CLB,
      --  Get lock bit
      GLB,
      --  Set GPNVM bit
      SGPB,
      --  Clear GPNVM bit
      CGPB,
      --  Get GPNVM bit
      GGPB,
      --  Start read unique identifier
      STUI,
      --  Stop read unique identifier
      SPUI,
      --  Get CALIB bit
      GCALB,
      --  Erase sector
      ES,
      --  Write user signature
      WUS,
      --  Erase user signature
      EUS,
      --  Start read user signature
      STUS,
      --  Stop read user signature
      SPUS)
     with Size => 8;
   for EEFC_FCR_FCMDSelect use
     (GETD => 0,
      WP => 1,
      WPL => 2,
      EWP => 3,
      EWPL => 4,
      EA => 5,
      EPA => 7,
      SLB => 8,
      CLB => 9,
      GLB => 10,
      SGPB => 11,
      CGPB => 12,
      GGPB => 13,
      STUI => 14,
      SPUI => 15,
      GCALB => 16,
      ES => 17,
      WUS => 18,
      EUS => 19,
      STUS => 20,
      SPUS => 21);

   subtype EFC_EEFC_FCR_FARG_Field is HAL.UInt16;

   --  Flash Writing Protection Key
   type EEFC_FCR_FKEYSelect is
     (--  Reset value for the field
      EEFC_FCR_FKEYSelect_Reset,
      --  The 0x5A value enables the command defined by the bits of the register. If
--  the field is written with a different value, the write is not performed and
--  no action is started.
      PASSWD)
     with Size => 8;
   for EEFC_FCR_FKEYSelect use
     (EEFC_FCR_FKEYSelect_Reset => 0,
      PASSWD => 90);

   --  EEFC Flash Command Register
   type EFC_EEFC_FCR_Register is record
      --  Write-only. Flash Command
      FCMD : EEFC_FCR_FCMDSelect := SAM_SVD.EFC.GETD;
      --  Write-only. Flash Command Argument
      FARG : EFC_EEFC_FCR_FARG_Field := 16#0#;
      --  Write-only. Flash Writing Protection Key
      FKEY : EEFC_FCR_FKEYSelect := EEFC_FCR_FKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_EEFC_FCR_Register use record
      FCMD at 0 range 0 .. 7;
      FARG at 0 range 8 .. 23;
      FKEY at 0 range 24 .. 31;
   end record;

   --  EEFC Flash Status Register
   type EFC_EEFC_FSR_Register is record
      --  Read-only. Flash Ready Status (cleared when Flash is busy)
      FRDY           : Boolean;
      --  Read-only. Flash Command Error Status (cleared on read or by writing
      --  EEFC_FCR)
      FCMDE          : Boolean;
      --  Read-only. Flash Lock Error Status (cleared on read)
      FLOCKE         : Boolean;
      --  Read-only. Flash Error Status (cleared when a programming operation
      --  starts)
      FLERR          : Boolean;
      --  unspecified
      Reserved_4_15  : HAL.UInt12;
      --  Read-only. Unique ECC Error on LSB Part of the Memory Flash Data Bus
      --  (cleared on read)
      UECCELSB       : Boolean;
      --  Read-only. Multiple ECC Error on LSB Part of the Memory Flash Data
      --  Bus (cleared on read)
      MECCELSB       : Boolean;
      --  Read-only. Unique ECC Error on MSB Part of the Memory Flash Data Bus
      --  (cleared on read)
      UECCEMSB       : Boolean;
      --  Read-only. Multiple ECC Error on MSB Part of the Memory Flash Data
      --  Bus (cleared on read)
      MECCEMSB       : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_EEFC_FSR_Register use record
      FRDY           at 0 range 0 .. 0;
      FCMDE          at 0 range 1 .. 1;
      FLOCKE         at 0 range 2 .. 2;
      FLERR          at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      UECCELSB       at 0 range 16 .. 16;
      MECCELSB       at 0 range 17 .. 17;
      UECCEMSB       at 0 range 18 .. 18;
      MECCEMSB       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype EFC_EEFC_VERSION_VERSION_Field is HAL.UInt12;
   subtype EFC_EEFC_VERSION_MFN_Field is HAL.UInt3;

   --  EEFC Version Register
   type EFC_EEFC_VERSION_Register is record
      --  Read-only. Version of the Hardware Module
      VERSION        : EFC_EEFC_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Metal Fix Number
      MFN            : EFC_EEFC_VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_EEFC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Write Protection Key
   type EEFC_WPMR_WPKEYSelect is
     (--  Reset value for the field
      EEFC_WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.Always
--  reads as 0.
      PASSWD)
     with Size => 24;
   for EEFC_WPMR_WPKEYSelect use
     (EEFC_WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 4539971);

   --  Write Protection Mode Register
   type EFC_EEFC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : EEFC_WPMR_WPKEYSelect := EEFC_WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_EEFC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Embedded Flash Controller
   type EFC_Peripheral is record
      --  EEFC Flash Mode Register
      EEFC_FMR     : aliased EFC_EEFC_FMR_Register;
      --  EEFC Flash Command Register
      EEFC_FCR     : aliased EFC_EEFC_FCR_Register;
      --  EEFC Flash Status Register
      EEFC_FSR     : aliased EFC_EEFC_FSR_Register;
      --  EEFC Flash Result Register
      EEFC_FRR     : aliased HAL.UInt32;
      --  EEFC Version Register
      EEFC_VERSION : aliased EFC_EEFC_VERSION_Register;
      --  Write Protection Mode Register
      EEFC_WPMR    : aliased EFC_EEFC_WPMR_Register;
   end record
     with Volatile;

   for EFC_Peripheral use record
      EEFC_FMR     at 16#0# range 0 .. 31;
      EEFC_FCR     at 16#4# range 0 .. 31;
      EEFC_FSR     at 16#8# range 0 .. 31;
      EEFC_FRR     at 16#C# range 0 .. 31;
      EEFC_VERSION at 16#14# range 0 .. 31;
      EEFC_WPMR    at 16#E4# range 0 .. 31;
   end record;

   --  Embedded Flash Controller
   EFC_Periph : aliased EFC_Peripheral
     with Import, Address => EFC_Base;

end SAM_SVD.EFC;
