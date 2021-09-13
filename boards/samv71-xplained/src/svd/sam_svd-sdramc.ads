pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.SDRAMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SDRAMC Command Mode
   type SDRAMC_MR_MODESelect is
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
      --  The SDRAMC issues an 'Auto-Refresh' Command when the SDRAM device is
--  accessed regardless of the cycle. Previously, an 'All Banks Precharge'
--  command must be issued. To activate this mode, the command must be followed
--  by a write to the SDRAM.
      AUTO_REFRESH,
      --  The SDRAMC issues an 'Extended Load Mode Register' command when the SDRAM
--  device is accessed regardless of the cycle. To activate this mode, the
--  'Extended Load Mode Register' command must be followed by a write to the
--  SDRAM. The write in the SDRAM must be done in the appropriate bank; most
--  low-power SDRAM devices use the bank 1.
      EXT_LOAD_MODEREG,
      --  Deep Power-down mode. Enters Deep Power-down mode.
      DEEP_POWERDOWN)
     with Size => 3;
   for SDRAMC_MR_MODESelect use
     (NORMAL => 0,
      NOP => 1,
      ALLBANKS_PRECHARGE => 2,
      LOAD_MODEREG => 3,
      AUTO_REFRESH => 4,
      EXT_LOAD_MODEREG => 5,
      DEEP_POWERDOWN => 6);

   --  SDRAMC Mode Register
   type SDRAMC_SDRAMC_MR_Register is record
      --  SDRAMC Command Mode
      MODE          : SDRAMC_MR_MODESelect := SAM_SVD.SDRAMC.NORMAL;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_SDRAMC_MR_Register use record
      MODE          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SDRAMC_SDRAMC_TR_COUNT_Field is HAL.UInt12;

   --  SDRAMC Refresh Timer Register
   type SDRAMC_SDRAMC_TR_Register is record
      --  SDRAMC Refresh Timer Count
      COUNT          : SDRAMC_SDRAMC_TR_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_SDRAMC_TR_Register use record
      COUNT          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Number of Column Bits
   type SDRAMC_CR_NCSelect is
     (--  8 column bits
      COL8,
      --  9 column bits
      COL9,
      --  10 column bits
      COL10,
      --  11 column bits
      COL11)
     with Size => 2;
   for SDRAMC_CR_NCSelect use
     (COL8 => 0,
      COL9 => 1,
      COL10 => 2,
      COL11 => 3);

   --  Number of Row Bits
   type SDRAMC_CR_NRSelect is
     (--  11 row bits
      ROW11,
      --  12 row bits
      ROW12,
      --  13 row bits
      ROW13)
     with Size => 2;
   for SDRAMC_CR_NRSelect use
     (ROW11 => 0,
      ROW12 => 1,
      ROW13 => 2);

   --  Number of Banks
   type SDRAMC_CR_NBSelect is
     (--  2 banks
      BANK2,
      --  4 banks
      BANK4)
     with Size => 1;
   for SDRAMC_CR_NBSelect use
     (BANK2 => 0,
      BANK4 => 1);

   --  CAS Latency
   type SDRAMC_CR_CASSelect is
     (--  Reset value for the field
      SDRAMC_CR_CASSelect_Reset,
      --  1 cycle latency
      LATENCY1,
      --  2 cycle latency
      LATENCY2,
      --  3 cycle latency
      LATENCY3)
     with Size => 2;
   for SDRAMC_CR_CASSelect use
     (SDRAMC_CR_CASSelect_Reset => 0,
      LATENCY1 => 1,
      LATENCY2 => 2,
      LATENCY3 => 3);

   subtype SDRAMC_SDRAMC_CR_TWR_Field is HAL.UInt4;
   subtype SDRAMC_SDRAMC_CR_TRC_TRFC_Field is HAL.UInt4;
   subtype SDRAMC_SDRAMC_CR_TRP_Field is HAL.UInt4;
   subtype SDRAMC_SDRAMC_CR_TRCD_Field is HAL.UInt4;
   subtype SDRAMC_SDRAMC_CR_TRAS_Field is HAL.UInt4;
   subtype SDRAMC_SDRAMC_CR_TXSR_Field is HAL.UInt4;

   --  SDRAMC Configuration Register
   type SDRAMC_SDRAMC_CR_Register is record
      --  Number of Column Bits
      NC       : SDRAMC_CR_NCSelect := SAM_SVD.SDRAMC.COL8;
      --  Number of Row Bits
      NR       : SDRAMC_CR_NRSelect := SAM_SVD.SDRAMC.ROW11;
      --  Number of Banks
      NB       : SDRAMC_CR_NBSelect := SAM_SVD.SDRAMC.BANK2;
      --  CAS Latency
      CAS      : SDRAMC_CR_CASSelect := SDRAMC_CR_CASSelect_Reset;
      --  Data Bus Width
      DBW      : Boolean := False;
      --  Write Recovery Delay
      TWR      : SDRAMC_SDRAMC_CR_TWR_Field := 16#0#;
      --  Row Cycle Delay and Row Refresh Cycle
      TRC_TRFC : SDRAMC_SDRAMC_CR_TRC_TRFC_Field := 16#0#;
      --  Row Precharge Delay
      TRP      : SDRAMC_SDRAMC_CR_TRP_Field := 16#0#;
      --  Row to Column Delay
      TRCD     : SDRAMC_SDRAMC_CR_TRCD_Field := 16#0#;
      --  Active to Precharge Delay
      TRAS     : SDRAMC_SDRAMC_CR_TRAS_Field := 16#0#;
      --  Exit Self-Refresh to Active Delay
      TXSR     : SDRAMC_SDRAMC_CR_TXSR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_SDRAMC_CR_Register use record
      NC       at 0 range 0 .. 1;
      NR       at 0 range 2 .. 3;
      NB       at 0 range 4 .. 4;
      CAS      at 0 range 5 .. 6;
      DBW      at 0 range 7 .. 7;
      TWR      at 0 range 8 .. 11;
      TRC_TRFC at 0 range 12 .. 15;
      TRP      at 0 range 16 .. 19;
      TRCD     at 0 range 20 .. 23;
      TRAS     at 0 range 24 .. 27;
      TXSR     at 0 range 28 .. 31;
   end record;

   --  Low-power Configuration Bits
   type SDRAMC_LPR_LPCBSelect is
     (--  The low-power feature is inhibited: no Power-down, Self-refresh or Deep
--  Power-down command is issued to the SDRAM device.
      DISABLED,
      --  The SDRAMC issues a Self-refresh command to the SDRAM device, the SDCK
--  clock is deactivated and the SDCKE signal is set low. The SDRAM device
--  leaves the Self-refresh mode when accessed and enters it after the access.
      SELF_REFRESH,
      --  The SDRAMC issues a Power-down Command to the SDRAM device after each
--  access, the SDCKE signal is set to low. The SDRAM device leaves the
--  Power-down mode when accessed and enters it after the access.
      POWER_DOWN,
      --  The SDRAMC issues a Deep Power-down command to the SDRAM device. This mode
--  is unique to low-power SDRAM.
      DEEP_POWER_DOWN)
     with Size => 2;
   for SDRAMC_LPR_LPCBSelect use
     (DISABLED => 0,
      SELF_REFRESH => 1,
      POWER_DOWN => 2,
      DEEP_POWER_DOWN => 3);

   subtype SDRAMC_SDRAMC_LPR_PASR_Field is HAL.UInt3;
   subtype SDRAMC_SDRAMC_LPR_TCSR_Field is HAL.UInt2;
   subtype SDRAMC_SDRAMC_LPR_DS_Field is HAL.UInt2;

   --  Time to Define When Low-power Mode Is Enabled
   type SDRAMC_LPR_TIMEOUTSelect is
     (--  The SDRAMC activates the SDRAM Low-power mode immediately after the end of
--  the last transfer.
      LP_LAST_XFER,
      --  The SDRAMC activates the SDRAM Low-power mode 64 clock cycles after the end
--  of the last transfer.
      LP_LAST_XFER_64,
      --  The SDRAMC activates the SDRAM Low-power mode 128 clock cycles after the
--  end of the last transfer.
      LP_LAST_XFER_128)
     with Size => 2;
   for SDRAMC_LPR_TIMEOUTSelect use
     (LP_LAST_XFER => 0,
      LP_LAST_XFER_64 => 1,
      LP_LAST_XFER_128 => 2);

   --  SDRAMC Low Power Register
   type SDRAMC_SDRAMC_LPR_Register is record
      --  Low-power Configuration Bits
      LPCB           : SDRAMC_LPR_LPCBSelect := SAM_SVD.SDRAMC.DISABLED;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Partial Array Self-refresh (only for low-power SDRAM)
      PASR           : SDRAMC_SDRAMC_LPR_PASR_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Temperature Compensated Self-Refresh (only for low-power SDRAM)
      TCSR           : SDRAMC_SDRAMC_LPR_TCSR_Field := 16#0#;
      --  Drive Strength (only for low-power SDRAM)
      DS             : SDRAMC_SDRAMC_LPR_DS_Field := 16#0#;
      --  Time to Define When Low-power Mode Is Enabled
      TIMEOUT        : SDRAMC_LPR_TIMEOUTSelect :=
                        SAM_SVD.SDRAMC.LP_LAST_XFER;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_SDRAMC_LPR_Register use record
      LPCB           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PASR           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TCSR           at 0 range 8 .. 9;
      DS             at 0 range 10 .. 11;
      TIMEOUT        at 0 range 12 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  SDRAMC Interrupt Enable Register
   type SDRAMC_SDRAMC_IER_Register is record
      --  Write-only. Refresh Error Interrupt Enable
      RES           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_SDRAMC_IER_Register use record
      RES           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SDRAMC Interrupt Disable Register
   type SDRAMC_SDRAMC_IDR_Register is record
      --  Write-only. Refresh Error Interrupt Disable
      RES           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_SDRAMC_IDR_Register use record
      RES           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SDRAMC Interrupt Mask Register
   type SDRAMC_SDRAMC_IMR_Register is record
      --  Read-only. Refresh Error Interrupt Mask
      RES           : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_SDRAMC_IMR_Register use record
      RES           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SDRAMC Interrupt Status Register
   type SDRAMC_SDRAMC_ISR_Register is record
      --  Read-only. Refresh Error Status (cleared on read)
      RES           : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_SDRAMC_ISR_Register use record
      RES           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Memory Device Type
   type SDRAMC_MDR_MDSelect is
     (--  SDRAM
      SDRAM,
      --  Low-power SDRAM
      LPSDRAM)
     with Size => 2;
   for SDRAMC_MDR_MDSelect use
     (SDRAM => 0,
      LPSDRAM => 1);

   --  SDRAMC Memory Device Register
   type SDRAMC_SDRAMC_MDR_Register is record
      --  Memory Device Type
      MD            : SDRAMC_MDR_MDSelect := SAM_SVD.SDRAMC.SDRAM;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_SDRAMC_MDR_Register use record
      MD            at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SDRAMC_SDRAMC_CFR1_TMRD_Field is HAL.UInt4;

   --  Support Unaligned Access
   type SDRAMC_CFR1_UNALSelect is
     (--  Unaligned access is not supported.
      UNSUPPORTED,
      --  Unaligned access is supported.
      SUPPORTED)
     with Size => 1;
   for SDRAMC_CFR1_UNALSelect use
     (UNSUPPORTED => 0,
      SUPPORTED => 1);

   --  SDRAMC Configuration Register 1
   type SDRAMC_SDRAMC_CFR1_Register is record
      --  Load Mode Register Command to Active or Refresh Command
      TMRD          : SDRAMC_SDRAMC_CFR1_TMRD_Field := 16#0#;
      --  unspecified
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  Support Unaligned Access
      UNAL          : SDRAMC_CFR1_UNALSelect := SAM_SVD.SDRAMC.UNSUPPORTED;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_SDRAMC_CFR1_Register use record
      TMRD          at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      UNAL          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  SDRAMC OCMS Register
   type SDRAMC_SDRAMC_OCMS_Register is record
      --  SDRAM Memory Controller Scrambling Enable
      SDR_SE        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_SDRAMC_OCMS_Register use record
      SDR_SE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SDRAMC_SDRAMC_VERSION_VERSION_Field is HAL.UInt12;
   subtype SDRAMC_SDRAMC_VERSION_MFN_Field is HAL.UInt3;

   --  SDRAMC Version Register
   type SDRAMC_SDRAMC_VERSION_Register is record
      --  Read-only. Version of the Hardware Module
      VERSION        : SDRAMC_SDRAMC_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Metal Fix Number
      MFN            : SDRAMC_SDRAMC_VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDRAMC_SDRAMC_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SDRAM Controller
   type SDRAMC_Peripheral is record
      --  SDRAMC Mode Register
      SDRAMC_MR        : aliased SDRAMC_SDRAMC_MR_Register;
      --  SDRAMC Refresh Timer Register
      SDRAMC_TR        : aliased SDRAMC_SDRAMC_TR_Register;
      --  SDRAMC Configuration Register
      SDRAMC_CR        : aliased SDRAMC_SDRAMC_CR_Register;
      --  SDRAMC Low Power Register
      SDRAMC_LPR       : aliased SDRAMC_SDRAMC_LPR_Register;
      --  SDRAMC Interrupt Enable Register
      SDRAMC_IER       : aliased SDRAMC_SDRAMC_IER_Register;
      --  SDRAMC Interrupt Disable Register
      SDRAMC_IDR       : aliased SDRAMC_SDRAMC_IDR_Register;
      --  SDRAMC Interrupt Mask Register
      SDRAMC_IMR       : aliased SDRAMC_SDRAMC_IMR_Register;
      --  SDRAMC Interrupt Status Register
      SDRAMC_ISR       : aliased SDRAMC_SDRAMC_ISR_Register;
      --  SDRAMC Memory Device Register
      SDRAMC_MDR       : aliased SDRAMC_SDRAMC_MDR_Register;
      --  SDRAMC Configuration Register 1
      SDRAMC_CFR1      : aliased SDRAMC_SDRAMC_CFR1_Register;
      --  SDRAMC OCMS Register
      SDRAMC_OCMS      : aliased SDRAMC_SDRAMC_OCMS_Register;
      --  SDRAMC OCMS KEY1 Register
      SDRAMC_OCMS_KEY1 : aliased HAL.UInt32;
      --  SDRAMC OCMS KEY2 Register
      SDRAMC_OCMS_KEY2 : aliased HAL.UInt32;
      --  SDRAMC Version Register
      SDRAMC_VERSION   : aliased SDRAMC_SDRAMC_VERSION_Register;
   end record
     with Volatile;

   for SDRAMC_Peripheral use record
      SDRAMC_MR        at 16#0# range 0 .. 31;
      SDRAMC_TR        at 16#4# range 0 .. 31;
      SDRAMC_CR        at 16#8# range 0 .. 31;
      SDRAMC_LPR       at 16#10# range 0 .. 31;
      SDRAMC_IER       at 16#14# range 0 .. 31;
      SDRAMC_IDR       at 16#18# range 0 .. 31;
      SDRAMC_IMR       at 16#1C# range 0 .. 31;
      SDRAMC_ISR       at 16#20# range 0 .. 31;
      SDRAMC_MDR       at 16#24# range 0 .. 31;
      SDRAMC_CFR1      at 16#28# range 0 .. 31;
      SDRAMC_OCMS      at 16#2C# range 0 .. 31;
      SDRAMC_OCMS_KEY1 at 16#30# range 0 .. 31;
      SDRAMC_OCMS_KEY2 at 16#34# range 0 .. 31;
      SDRAMC_VERSION   at 16#FC# range 0 .. 31;
   end record;

   --  SDRAM Controller
   SDRAMC_Periph : aliased SDRAMC_Peripheral
     with Import, Address => SDRAMC_Base;

end SAM_SVD.SDRAMC;
