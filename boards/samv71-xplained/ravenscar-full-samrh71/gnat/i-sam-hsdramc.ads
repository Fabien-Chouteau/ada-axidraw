--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.HSDRAMC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  SDRAMC Command Mode
   type MR_MODESelect is
     (--  Normal mode. Any access to the SDRAM is decoded normally. To activate this
--  mode, the command must be followed by a write to the SDRAM.
      NORMAL,
      --  The SDRAMC issues a NOP command when the SDRAM device is accessed
--  regardless of the cycle. To activate this mode, the command must be
--  followed by a write to the SDRAM.
      NOP,
      --  The SDRAMC issues an 'All Banks Precharge' command when the SDRAM device is
--  accessed regardless of the cycle. To activate this mode, the command must
--  be followed by a write to the SDRAM.
      ALLBANKS_PRECHARGE,
      --  The SDRAMC issues a 'Load Mode Register' command when the SDRAM device is
--  accessed regardless of the cycle. To activate this mode, the command must
--  be followed by a write to the SDRAM.
      LOAD_MODEREG,
      --  The SDRAMC issues an 'Autorefresh' Command when the SDRAM device is
--  accessed regardless of the cycle. Previously, an 'All Banks Precharge'
--  command must be issued. To activate this mode, the command must be followed
--  by a write to the SDRAM.
      AUTO_REFRESH,
      --  The SDRAMC issues an 'Extended Load Mode Register' command when the SDRAM
--  device is accessed regardless of the cycle. To activate this mode, the
--  'Extended Load Mode Register' command must be followed by a write to the
--  SDRAM. The write in the SDRAM must be done in the appropriate bank; most
--  low-power SDRAM devices use the bank 1.
      EXT_LOAD_MODEREG)
     with Size => 3;
   for MR_MODESelect use
     (NORMAL => 0,
      NOP => 1,
      ALLBANKS_PRECHARGE => 2,
      LOAD_MODEREG => 3,
      AUTO_REFRESH => 4,
      EXT_LOAD_MODEREG => 5);

   --  Mode Register
   type HSDRAMC_MR_Register is record
      --  SDRAMC Command Mode
      MODE          : MR_MODESelect := Interfaces.SAM.HSDRAMC.NORMAL;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSDRAMC_MR_Register use record
      MODE          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype HSDRAMC_TR_COUNT_Field is Interfaces.SAM.UInt12;

   --  Refresh Timer Register
   type HSDRAMC_TR_Register is record
      --  SDRAMC Refresh Timer Count
      COUNT          : HSDRAMC_TR_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.SAM.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSDRAMC_TR_Register use record
      COUNT          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Number of Column Bits
   type CR_NCSelect is
     (--  8 bits to define the column number, up to 256 columns
      COL8,
      --  9 bits to define the column number, up to 512 columns
      COL9,
      --  10 bits to define the column number, up to 1024 columns
      COL10,
      --  11 bits to define the column number, up to 2048 columns
      COL11,
      --  12 bits to define the column number, up to 4096 columns
      COL12)
     with Size => 3;
   for CR_NCSelect use
     (COL8 => 0,
      COL9 => 1,
      COL10 => 2,
      COL11 => 3,
      COL12 => 4);

   --  Number of Row Bits
   type CR_NRSelect is
     (--  11 bits to define the row number, up to 2048 rows
      ROW11,
      --  12 bits to define the row number, up to 4096 rows
      ROW12,
      --  13 bits to define the row number, up to 8192 rows
      ROW13)
     with Size => 2;
   for CR_NRSelect use
     (ROW11 => 0,
      ROW12 => 1,
      ROW13 => 2);

   --  Number of Banks
   type CR_NBSelect is
     (--  2 banks
      BANK2,
      --  4 banks
      BANK4)
     with Size => 1;
   for CR_NBSelect use
     (BANK2 => 0,
      BANK4 => 1);

   --  CAS Latency
   type CR_CASSelect is
     (--  Reset value for the field
      CR_CASSelect_Reset,
      --  1 cycle latency
      LATENCY1,
      --  2 cycle latency
      LATENCY2,
      --  3 cycle latency
      LATENCY3)
     with Size => 2;
   for CR_CASSelect use
     (CR_CASSelect_Reset => 0,
      LATENCY1 => 1,
      LATENCY2 => 2,
      LATENCY3 => 3);

   subtype HSDRAMC_CR_DBW_Field is Interfaces.SAM.Bit;
   subtype HSDRAMC_CR_RMW_Field is Interfaces.SAM.Bit;

   --  Configuration Register
   type HSDRAMC_CR_Register is record
      --  Number of Column Bits
      NC             : CR_NCSelect := Interfaces.SAM.HSDRAMC.COL8;
      --  Number of Row Bits
      NR             : CR_NRSelect := Interfaces.SAM.HSDRAMC.ROW11;
      --  Number of Banks
      NB             : CR_NBSelect := Interfaces.SAM.HSDRAMC.BANK2;
      --  CAS Latency
      CAS            : CR_CASSelect := CR_CASSelect_Reset;
      --  Data Bus Width
      DBW            : HSDRAMC_CR_DBW_Field := 16#0#;
      --  Read Modify Write
      RMW            : HSDRAMC_CR_RMW_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSDRAMC_CR_Register use record
      NC             at 0 range 0 .. 2;
      NR             at 0 range 3 .. 4;
      NB             at 0 range 5 .. 5;
      CAS            at 0 range 6 .. 7;
      DBW            at 0 range 8 .. 8;
      RMW            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype HSDRAMC_SDR_TWR_Field is Interfaces.SAM.UInt4;
   subtype HSDRAMC_SDR_TRC_TRFC_Field is Interfaces.SAM.UInt4;
   subtype HSDRAMC_SDR_TRP_Field is Interfaces.SAM.UInt4;
   subtype HSDRAMC_SDR_TRCD_Field is Interfaces.SAM.UInt4;
   subtype HSDRAMC_SDR_TRAS_Field is Interfaces.SAM.UInt4;
   subtype HSDRAMC_SDR_TXSR_Field is Interfaces.SAM.UInt4;

   --  Setup Delay Register
   type HSDRAMC_SDR_Register is record
      --  Write Recovery Delay
      TWR            : HSDRAMC_SDR_TWR_Field := 16#0#;
      --  Row Cycle Delay and Row Refresh Cycle
      TRC_TRFC       : HSDRAMC_SDR_TRC_TRFC_Field := 16#0#;
      --  Row Precharge Delay
      TRP            : HSDRAMC_SDR_TRP_Field := 16#0#;
      --  Row to Column Delay
      TRCD           : HSDRAMC_SDR_TRCD_Field := 16#0#;
      --  Active to Precharge Delay
      TRAS           : HSDRAMC_SDR_TRAS_Field := 16#0#;
      --  Exit Self-Refresh to Active Delay
      TXSR           : HSDRAMC_SDR_TXSR_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSDRAMC_SDR_Register use record
      TWR            at 0 range 0 .. 3;
      TRC_TRFC       at 0 range 4 .. 7;
      TRP            at 0 range 8 .. 11;
      TRCD           at 0 range 12 .. 15;
      TRAS           at 0 range 16 .. 19;
      TXSR           at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype HSDRAMC_IER_RES_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type HSDRAMC_IER_Register is record
      --  Write-only. Refresh Error Interrupt Enable
      RES           : HSDRAMC_IER_RES_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSDRAMC_IER_Register use record
      RES           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype HSDRAMC_IDR_RES_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type HSDRAMC_IDR_Register is record
      --  Write-only. Refresh Error Interrupt Disable
      RES           : HSDRAMC_IDR_RES_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSDRAMC_IDR_Register use record
      RES           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype HSDRAMC_IMR_RES_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type HSDRAMC_IMR_Register is record
      --  Read-only. Refresh Error Interrupt Mask
      RES           : HSDRAMC_IMR_RES_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSDRAMC_IMR_Register use record
      RES           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype HSDRAMC_ISR_RES_Field is Interfaces.SAM.Bit;

   --  Interrupt Status Register
   type HSDRAMC_ISR_Register is record
      --  Read-only. Refresh Error Status (cleared on read)
      RES           : HSDRAMC_ISR_RES_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSDRAMC_ISR_Register use record
      RES           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype HSDRAMC_CFR1_TMRD_Field is Interfaces.SAM.UInt4;

   --  Support Unaligned Access
   type CFR1_UNALSelect is
     (--  Unaligned access is not supported.
      UNSUPPORTED,
      --  Unaligned access is supported.
      SUPPORTED)
     with Size => 1;
   for CFR1_UNALSelect use
     (UNSUPPORTED => 0,
      SUPPORTED => 1);

   --  Configuration Register 1
   type HSDRAMC_CFR1_Register is record
      --  Load Mode Register Command to Active or Refresh Command
      TMRD          : HSDRAMC_CFR1_TMRD_Field := 16#0#;
      --  unspecified
      Reserved_4_7  : Interfaces.SAM.UInt4 := 16#0#;
      --  Support Unaligned Access
      UNAL          : CFR1_UNALSelect := Interfaces.SAM.HSDRAMC.UNSUPPORTED;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSDRAMC_CFR1_Register use record
      TMRD          at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      UNAL          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype HSDRAMC_WPMR_WPEN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type WPMR_WPKEYSelect is
     (--  Reset value for the field
      WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit.Always reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEYSelect use
     (WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5456978);

   --  Write Protection Mode Register
   type HSDRAMC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : HSDRAMC_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSDRAMC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype HSDRAMC_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype HSDRAMC_WPSR_WPVSRC_Field is Interfaces.SAM.Byte;

   --  Write Protection Status Register
   type HSDRAMC_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : HSDRAMC_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : HSDRAMC_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSDRAMC_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Hardened SDRAM Controller
   type HSDRAMC_Peripheral is record
      --  Mode Register
      MR   : aliased HSDRAMC_MR_Register;
      --  Refresh Timer Register
      TR   : aliased HSDRAMC_TR_Register;
      --  Configuration Register
      CR   : aliased HSDRAMC_CR_Register;
      --  Setup Delay Register
      SDR  : aliased HSDRAMC_SDR_Register;
      --  Interrupt Enable Register
      IER  : aliased HSDRAMC_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased HSDRAMC_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased HSDRAMC_IMR_Register;
      --  Interrupt Status Register
      ISR  : aliased HSDRAMC_ISR_Register;
      --  Configuration Register 1
      CFR1 : aliased HSDRAMC_CFR1_Register;
      --  Write Protection Mode Register
      WPMR : aliased HSDRAMC_WPMR_Register;
      --  Write Protection Status Register
      WPSR : aliased HSDRAMC_WPSR_Register;
   end record
     with Volatile;

   for HSDRAMC_Peripheral use record
      MR   at 16#0# range 0 .. 31;
      TR   at 16#4# range 0 .. 31;
      CR   at 16#8# range 0 .. 31;
      SDR  at 16#C# range 0 .. 31;
      IER  at 16#14# range 0 .. 31;
      IDR  at 16#18# range 0 .. 31;
      IMR  at 16#1C# range 0 .. 31;
      ISR  at 16#20# range 0 .. 31;
      CFR1 at 16#24# range 0 .. 31;
      WPMR at 16#28# range 0 .. 31;
      WPSR at 16#2C# range 0 .. 31;
   end record;

   --  Hardened SDRAM Controller
   HSDRAMC_Periph : aliased HSDRAMC_Peripheral
     with Import, Address => HSDRAMC_Base;

end Interfaces.SAM.HSDRAMC;
