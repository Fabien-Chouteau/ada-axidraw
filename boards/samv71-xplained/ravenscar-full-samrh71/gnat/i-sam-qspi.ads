--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.QSPI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype QSPI_CR_QSPIEN_Field is Interfaces.SAM.Bit;
   subtype QSPI_CR_QSPIDIS_Field is Interfaces.SAM.Bit;
   subtype QSPI_CR_SWRST_Field is Interfaces.SAM.Bit;
   subtype QSPI_CR_LASTXFER_Field is Interfaces.SAM.Bit;

   --  Control Register
   type QSPI_CR_Register is record
      --  Write-only. QSPI Enable
      QSPIEN         : QSPI_CR_QSPIEN_Field := 16#0#;
      --  Write-only. QSPI Disable
      QSPIDIS        : QSPI_CR_QSPIDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_6   : Interfaces.SAM.UInt5 := 16#0#;
      --  Write-only. QSPI Software Reset
      SWRST          : QSPI_CR_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_8_23  : Interfaces.SAM.UInt16 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : QSPI_CR_LASTXFER_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_CR_Register use record
      QSPIEN         at 0 range 0 .. 0;
      QSPIDIS        at 0 range 1 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      SWRST          at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Serial Memory Mode
   type MR_SMMSelect is
     (--  The QSPI is in SPI mode.
      SPI,
      --  The QSPI is in Serial Memory mode.
      MEMORY)
     with Size => 1;
   for MR_SMMSelect use
     (SPI => 0,
      MEMORY => 1);

   --  Local Loopback Enable
   type MR_LLBSelect is
     (--  Local loopback path disabled.
      DISABLED,
      --  Local loopback path enabled.
      ENABLED)
     with Size => 1;
   for MR_LLBSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Wait Data Read Before Transfer
   type MR_WDRBTSelect is
     (--  No effect. In SPI mode, a transfer can be initiated whatever the state of
--  the QSPI_RDR is.
      DISABLED,
      --  In SPI mode, a transfer can start only if the QSPI_RDR is empty, i.e., does
--  not contain any unread data. This mode prevents overrun error in reception.
      ENABLED)
     with Size => 1;
   for MR_WDRBTSelect use
     (DISABLED => 0,
      ENABLED => 1);

   subtype QSPI_MR_SMRM_Field is Interfaces.SAM.Bit;

   --  Chip Select Mode
   type MR_CSMODESelect is
     (--  The chip select is deasserted if QSPI_TDR.TD has not been reloaded before
--  the end of the current transfer.
      NOT_RELOADED,
      --  The chip select is deasserted when the bit LASTXFER is written at 1 and the
--  character written in QSPI_TDR.TD has been transferred.
      LASTXFER,
      --  The chip select is deasserted systematically after each transfer.
      SYSTEMATICALLY)
     with Size => 2;
   for MR_CSMODESelect use
     (NOT_RELOADED => 0,
      LASTXFER => 1,
      SYSTEMATICALLY => 2);

   --  Number Of Bits Per Transfer
   type MR_NBBITSSelect is
     (--  8 bits for transfer
      Val_8_BIT,
      --  16 bits for transfer
      Val_16_BIT)
     with Size => 4;
   for MR_NBBITSSelect use
     (Val_8_BIT => 0,
      Val_16_BIT => 8);

   subtype QSPI_MR_DLYBCT_Field is Interfaces.SAM.Byte;
   subtype QSPI_MR_DLYCS_Field is Interfaces.SAM.Byte;

   --  Mode Register
   type QSPI_MR_Register is record
      --  Serial Memory Mode
      SMM            : MR_SMMSelect := Interfaces.SAM.QSPI.SPI;
      --  Local Loopback Enable
      LLB            : MR_LLBSelect := Interfaces.SAM.QSPI.DISABLED;
      --  Wait Data Read Before Transfer
      WDRBT          : MR_WDRBTSelect := Interfaces.SAM.QSPI.DISABLED;
      --  Serial Memory Register Mode
      SMRM           : QSPI_MR_SMRM_Field := 16#0#;
      --  Chip Select Mode
      CSMODE         : MR_CSMODESelect := Interfaces.SAM.QSPI.NOT_RELOADED;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2 := 16#0#;
      --  Number Of Bits Per Transfer
      NBBITS         : MR_NBBITSSelect := Interfaces.SAM.QSPI.Val_8_BIT;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4 := 16#0#;
      --  Delay Between Consecutive Transfers
      DLYBCT         : QSPI_MR_DLYBCT_Field := 16#0#;
      --  Minimum Inactive QCS Delay
      DLYCS          : QSPI_MR_DLYCS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_MR_Register use record
      SMM            at 0 range 0 .. 0;
      LLB            at 0 range 1 .. 1;
      WDRBT          at 0 range 2 .. 2;
      SMRM           at 0 range 3 .. 3;
      CSMODE         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NBBITS         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DLYBCT         at 0 range 16 .. 23;
      DLYCS          at 0 range 24 .. 31;
   end record;

   subtype QSPI_RDR_RD_Field is Interfaces.SAM.UInt16;

   --  Receive Data Register
   type QSPI_RDR_Register is record
      --  Read-only. Receive Data
      RD             : QSPI_RDR_RD_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_RDR_Register use record
      RD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype QSPI_TDR_TD_Field is Interfaces.SAM.UInt16;

   --  Transmit Data Register
   type QSPI_TDR_Register is record
      --  Write-only. Transmit Data
      TD             : QSPI_TDR_TD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_TDR_Register use record
      TD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype QSPI_SR_RDRF_Field is Interfaces.SAM.Bit;
   subtype QSPI_SR_TDRE_Field is Interfaces.SAM.Bit;
   subtype QSPI_SR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype QSPI_SR_OVRES_Field is Interfaces.SAM.Bit;
   subtype QSPI_SR_CSR_Field is Interfaces.SAM.Bit;
   subtype QSPI_SR_CSS_Field is Interfaces.SAM.Bit;
   subtype QSPI_SR_INSTRE_Field is Interfaces.SAM.Bit;
   subtype QSPI_SR_QSPIENS_Field is Interfaces.SAM.Bit;

   --  Status Register
   type QSPI_SR_Register is record
      --  Read-only. Receive Data Register Full (cleared by reading QSPI_RDR)
      RDRF           : QSPI_SR_RDRF_Field;
      --  Read-only. Transmit Data Register Empty (cleared by writing QSPI_TDR)
      TDRE           : QSPI_SR_TDRE_Field;
      --  Read-only. Transmission Registers Empty (cleared by writing QSPI_TDR)
      TXEMPTY        : QSPI_SR_TXEMPTY_Field;
      --  Read-only. Overrun Error Status (cleared on read)
      OVRES          : QSPI_SR_OVRES_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4;
      --  Read-only. Chip Select Rise (cleared on read)
      CSR            : QSPI_SR_CSR_Field;
      --  Read-only. Chip Select Status
      CSS            : QSPI_SR_CSS_Field;
      --  Read-only. Instruction End Status (cleared on read)
      INSTRE         : QSPI_SR_INSTRE_Field;
      --  unspecified
      Reserved_11_23 : Interfaces.SAM.UInt13;
      --  Read-only. QSPI Enable Status
      QSPIENS        : QSPI_SR_QSPIENS_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_SR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      TXEMPTY        at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CSR            at 0 range 8 .. 8;
      CSS            at 0 range 9 .. 9;
      INSTRE         at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      QSPIENS        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype QSPI_IER_RDRF_Field is Interfaces.SAM.Bit;
   subtype QSPI_IER_TDRE_Field is Interfaces.SAM.Bit;
   subtype QSPI_IER_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype QSPI_IER_OVRES_Field is Interfaces.SAM.Bit;
   subtype QSPI_IER_CSR_Field is Interfaces.SAM.Bit;
   subtype QSPI_IER_CSS_Field is Interfaces.SAM.Bit;
   subtype QSPI_IER_INSTRE_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type QSPI_IER_Register is record
      --  Write-only. Receive Data Register Full Interrupt Enable
      RDRF           : QSPI_IER_RDRF_Field := 16#0#;
      --  Write-only. Transmit Data Register Empty Interrupt Enable
      TDRE           : QSPI_IER_TDRE_Field := 16#0#;
      --  Write-only. Transmission Registers Empty Enable
      TXEMPTY        : QSPI_IER_TXEMPTY_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRES          : QSPI_IER_OVRES_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Chip Select Rise Interrupt Enable
      CSR            : QSPI_IER_CSR_Field := 16#0#;
      --  Write-only. Chip Select Status Interrupt Enable
      CSS            : QSPI_IER_CSS_Field := 16#0#;
      --  Write-only. Instruction End Interrupt Enable
      INSTRE         : QSPI_IER_INSTRE_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_IER_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      TXEMPTY        at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CSR            at 0 range 8 .. 8;
      CSS            at 0 range 9 .. 9;
      INSTRE         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype QSPI_IDR_RDRF_Field is Interfaces.SAM.Bit;
   subtype QSPI_IDR_TDRE_Field is Interfaces.SAM.Bit;
   subtype QSPI_IDR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype QSPI_IDR_OVRES_Field is Interfaces.SAM.Bit;
   subtype QSPI_IDR_CSR_Field is Interfaces.SAM.Bit;
   subtype QSPI_IDR_CSS_Field is Interfaces.SAM.Bit;
   subtype QSPI_IDR_INSTRE_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type QSPI_IDR_Register is record
      --  Write-only. Receive Data Register Full Interrupt Disable
      RDRF           : QSPI_IDR_RDRF_Field := 16#0#;
      --  Write-only. Transmit Data Register Empty Interrupt Disable
      TDRE           : QSPI_IDR_TDRE_Field := 16#0#;
      --  Write-only. Transmission Registers Empty Disable
      TXEMPTY        : QSPI_IDR_TXEMPTY_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRES          : QSPI_IDR_OVRES_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Chip Select Rise Interrupt Disable
      CSR            : QSPI_IDR_CSR_Field := 16#0#;
      --  Write-only. Chip Select Status Interrupt Disable
      CSS            : QSPI_IDR_CSS_Field := 16#0#;
      --  Write-only. Instruction End Interrupt Disable
      INSTRE         : QSPI_IDR_INSTRE_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_IDR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      TXEMPTY        at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CSR            at 0 range 8 .. 8;
      CSS            at 0 range 9 .. 9;
      INSTRE         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype QSPI_IMR_RDRF_Field is Interfaces.SAM.Bit;
   subtype QSPI_IMR_TDRE_Field is Interfaces.SAM.Bit;
   subtype QSPI_IMR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype QSPI_IMR_OVRES_Field is Interfaces.SAM.Bit;
   subtype QSPI_IMR_CSR_Field is Interfaces.SAM.Bit;
   subtype QSPI_IMR_CSS_Field is Interfaces.SAM.Bit;
   subtype QSPI_IMR_INSTRE_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type QSPI_IMR_Register is record
      --  Read-only. Receive Data Register Full Interrupt Mask
      RDRF           : QSPI_IMR_RDRF_Field;
      --  Read-only. Transmit Data Register Empty Interrupt Mask
      TDRE           : QSPI_IMR_TDRE_Field;
      --  Read-only. Transmission Registers Empty Mask
      TXEMPTY        : QSPI_IMR_TXEMPTY_Field;
      --  Read-only. Overrun Error Interrupt Mask
      OVRES          : QSPI_IMR_OVRES_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4;
      --  Read-only. Chip Select Rise Interrupt Mask
      CSR            : QSPI_IMR_CSR_Field;
      --  Read-only. Chip Select Status Interrupt Mask
      CSS            : QSPI_IMR_CSS_Field;
      --  Read-only. Instruction End Interrupt Mask
      INSTRE         : QSPI_IMR_INSTRE_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_IMR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      TXEMPTY        at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CSR            at 0 range 8 .. 8;
      CSS            at 0 range 9 .. 9;
      INSTRE         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype QSPI_SCR_CPOL_Field is Interfaces.SAM.Bit;
   subtype QSPI_SCR_CPHA_Field is Interfaces.SAM.Bit;
   subtype QSPI_SCR_SCBR_Field is Interfaces.SAM.Byte;
   subtype QSPI_SCR_DLYBS_Field is Interfaces.SAM.Byte;

   --  Serial Clock Register
   type QSPI_SCR_Register is record
      --  Clock Polarity
      CPOL           : QSPI_SCR_CPOL_Field := 16#0#;
      --  Clock Phase
      CPHA           : QSPI_SCR_CPHA_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Serial Clock Baud Rate
      SCBR           : QSPI_SCR_SCBR_Field := 16#0#;
      --  Delay Before QSCK
      DLYBS          : QSPI_SCR_DLYBS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_SCR_Register use record
      CPOL           at 0 range 0 .. 0;
      CPHA           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      SCBR           at 0 range 8 .. 15;
      DLYBS          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype QSPI_ICR_INST_Field is Interfaces.SAM.Byte;
   subtype QSPI_ICR_OPT_Field is Interfaces.SAM.Byte;

   --  Instruction Code Register
   type QSPI_ICR_Register is record
      --  Instruction Code
      INST           : QSPI_ICR_INST_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.SAM.Byte := 16#0#;
      --  Option Code
      OPT            : QSPI_ICR_OPT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_ICR_Register use record
      INST           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      OPT            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Width of Instruction Code, Address, Option Code and Data
   type IFR_WIDTHSelect is
     (--  Instruction: Single-bit SPI / Address-Option: Single-bit SPI / Data:
--  Single-bit SPI
      SINGLE_BIT_SPI,
      --  Instruction: Single-bit SPI / Address-Option: Single-bit SPI / Data: Dual
--  SPI
      DUAL_OUTPUT,
      --  Instruction: Single-bit SPI / Address-Option: Single-bit SPI / Data: Quad
--  SPI
      QUAD_OUTPUT,
      --  Instruction: Single-bit SPI / Address-Option: Dual SPI / Data: Dual SPI
      DUAL_IO,
      --  Instruction: Single-bit SPI / Address-Option: Quad SPI / Data: Quad SPI
      QUAD_IO,
      --  Instruction: Dual SPI / Address-Option: Dual SPI / Data: Dual SPI
      DUAL_CMD,
      --  Instruction: Quad SPI / Address-Option: Quad SPI / Data: Quad SPI
      QUAD_CMD)
     with Size => 3;
   for IFR_WIDTHSelect use
     (SINGLE_BIT_SPI => 0,
      DUAL_OUTPUT => 1,
      QUAD_OUTPUT => 2,
      DUAL_IO => 3,
      QUAD_IO => 4,
      DUAL_CMD => 5,
      QUAD_CMD => 6);

   subtype QSPI_IFR_INSTEN_Field is Interfaces.SAM.Bit;
   subtype QSPI_IFR_ADDREN_Field is Interfaces.SAM.Bit;
   subtype QSPI_IFR_OPTEN_Field is Interfaces.SAM.Bit;
   subtype QSPI_IFR_DATAEN_Field is Interfaces.SAM.Bit;

   --  Option Code Length
   type IFR_OPTLSelect is
     (--  The option code is 1 bit long.
      OPTION_1BIT,
      --  The option code is 2 bits long.
      OPTION_2BIT,
      --  The option code is 4 bits long.
      OPTION_4BIT,
      --  The option code is 8 bits long.
      OPTION_8BIT)
     with Size => 2;
   for IFR_OPTLSelect use
     (OPTION_1BIT => 0,
      OPTION_2BIT => 1,
      OPTION_4BIT => 2,
      OPTION_8BIT => 3);

   --  Address Length
   type IFR_ADDRLSelect is
     (--  The address is 24 bits long.
      Val_24_BIT,
      --  The address is 32 bits long.
      Val_32_BIT)
     with Size => 1;
   for IFR_ADDRLSelect use
     (Val_24_BIT => 0,
      Val_32_BIT => 1);

   --  Data Transfer Type
   type IFR_TFRTYPSelect is
     (--  Read transfer from the serial memory.Scrambling is not performed.Read at
--  random location (fetch) in the serial Flash memory is not possible.
      TRSFR_READ,
      --  Read data transfer from the serial memory.If enabled, scrambling is
--  performed.Read at random location (fetch) in the serial Flash memory is
--  possible.
      TRSFR_READ_MEMORY,
      --  Write transfer into the serial memory.Scrambling is not performed.
      TRSFR_WRITE,
      --  Write data transfer into the serial memory.If enabled, scrambling is
--  performed.
      TRSFR_WRITE_MEMORY)
     with Size => 2;
   for IFR_TFRTYPSelect use
     (TRSFR_READ => 0,
      TRSFR_READ_MEMORY => 1,
      TRSFR_WRITE => 2,
      TRSFR_WRITE_MEMORY => 3);

   --  Continuous Read Mode
   type IFR_CRMSelect is
     (--  Continuous Read mode is disabled.
      DISABLED,
      --  Continuous Read mode is enabled.
      ENABLED)
     with Size => 1;
   for IFR_CRMSelect use
     (DISABLED => 0,
      ENABLED => 1);

   subtype QSPI_IFR_NBDUM_Field is Interfaces.SAM.UInt5;

   --  Instruction Frame Register
   type QSPI_IFR_Register is record
      --  Width of Instruction Code, Address, Option Code and Data
      WIDTH          : IFR_WIDTHSelect := Interfaces.SAM.QSPI.SINGLE_BIT_SPI;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit := 16#0#;
      --  Instruction Enable
      INSTEN         : QSPI_IFR_INSTEN_Field := 16#0#;
      --  Address Enable
      ADDREN         : QSPI_IFR_ADDREN_Field := 16#0#;
      --  Option Enable
      OPTEN          : QSPI_IFR_OPTEN_Field := 16#0#;
      --  Data Enable
      DATAEN         : QSPI_IFR_DATAEN_Field := 16#0#;
      --  Option Code Length
      OPTL           : IFR_OPTLSelect := Interfaces.SAM.QSPI.OPTION_1BIT;
      --  Address Length
      ADDRL          : IFR_ADDRLSelect := Interfaces.SAM.QSPI.Val_24_BIT;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit := 16#0#;
      --  Data Transfer Type
      TFRTYP         : IFR_TFRTYPSelect := Interfaces.SAM.QSPI.TRSFR_READ;
      --  Continuous Read Mode
      CRM            : IFR_CRMSelect := Interfaces.SAM.QSPI.DISABLED;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit := 16#0#;
      --  Number Of Dummy Cycles
      NBDUM          : QSPI_IFR_NBDUM_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.SAM.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_IFR_Register use record
      WIDTH          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      INSTEN         at 0 range 4 .. 4;
      ADDREN         at 0 range 5 .. 5;
      OPTEN          at 0 range 6 .. 6;
      DATAEN         at 0 range 7 .. 7;
      OPTL           at 0 range 8 .. 9;
      ADDRL          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TFRTYP         at 0 range 12 .. 13;
      CRM            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      NBDUM          at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Scrambling/Unscrambling Enable
   type SMR_SCRENSelect is
     (--  The scrambling/unscrambling is disabled.
      DISABLED,
      --  The scrambling/unscrambling is enabled.
      ENABLED)
     with Size => 1;
   for SMR_SCRENSelect use
     (DISABLED => 0,
      ENABLED => 1);

   subtype QSPI_SMR_RVDIS_Field is Interfaces.SAM.Bit;

   --  Scrambling Mode Register
   type QSPI_SMR_Register is record
      --  Scrambling/Unscrambling Enable
      SCREN         : SMR_SCRENSelect := Interfaces.SAM.QSPI.DISABLED;
      --  Scrambling/Unscrambling Random Value Disable
      RVDIS         : QSPI_SMR_RVDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_SMR_Register use record
      SCREN         at 0 range 0 .. 0;
      RVDIS         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype QSPI_WPMR_WPEN_Field is Interfaces.SAM.Bit;
   subtype QSPI_WPMR_WPITEN_Field is Interfaces.SAM.Bit;
   subtype QSPI_WPMR_WPCREN_Field is Interfaces.SAM.Bit;

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
      PASSWD => 5329744);

   --  Write Protection Mode Register
   type QSPI_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : QSPI_WPMR_WPEN_Field := 16#0#;
      --  Write Protection Interrupt Enable
      WPITEN       : QSPI_WPMR_WPITEN_Field := 16#0#;
      --  Write Protection Control Register Enable
      WPCREN       : QSPI_WPMR_WPCREN_Field := 16#0#;
      --  unspecified
      Reserved_3_7 : Interfaces.SAM.UInt5 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      WPITEN       at 0 range 1 .. 1;
      WPCREN       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype QSPI_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype QSPI_WPSR_WPVSRC_Field is Interfaces.SAM.Byte;

   --  Write Protection Status Register
   type QSPI_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : QSPI_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : QSPI_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Quad Serial Peripheral Interface
   type QSPI_Peripheral is record
      --  Control Register
      CR   : aliased QSPI_CR_Register;
      --  Mode Register
      MR   : aliased QSPI_MR_Register;
      --  Receive Data Register
      RDR  : aliased QSPI_RDR_Register;
      --  Transmit Data Register
      TDR  : aliased QSPI_TDR_Register;
      --  Status Register
      SR   : aliased QSPI_SR_Register;
      --  Interrupt Enable Register
      IER  : aliased QSPI_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased QSPI_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased QSPI_IMR_Register;
      --  Serial Clock Register
      SCR  : aliased QSPI_SCR_Register;
      --  Instruction Address Register
      IAR  : aliased Interfaces.SAM.UInt32;
      --  Instruction Code Register
      ICR  : aliased QSPI_ICR_Register;
      --  Instruction Frame Register
      IFR  : aliased QSPI_IFR_Register;
      --  Scrambling Mode Register
      SMR  : aliased QSPI_SMR_Register;
      --  Scrambling Key Register
      SKR  : aliased Interfaces.SAM.UInt32;
      --  Write Protection Mode Register
      WPMR : aliased QSPI_WPMR_Register;
      --  Write Protection Status Register
      WPSR : aliased QSPI_WPSR_Register;
   end record
     with Volatile;

   for QSPI_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      RDR  at 16#8# range 0 .. 31;
      TDR  at 16#C# range 0 .. 31;
      SR   at 16#10# range 0 .. 31;
      IER  at 16#14# range 0 .. 31;
      IDR  at 16#18# range 0 .. 31;
      IMR  at 16#1C# range 0 .. 31;
      SCR  at 16#20# range 0 .. 31;
      IAR  at 16#30# range 0 .. 31;
      ICR  at 16#34# range 0 .. 31;
      IFR  at 16#38# range 0 .. 31;
      SMR  at 16#40# range 0 .. 31;
      SKR  at 16#44# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
      WPSR at 16#E8# range 0 .. 31;
   end record;

   --  Quad Serial Peripheral Interface
   QSPI_Periph : aliased QSPI_Peripheral
     with Import, Address => QSPI_Base;

end Interfaces.SAM.QSPI;
