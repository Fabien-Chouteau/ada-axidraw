pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.QSPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type QSPI_QSPI_CR_Register is record
      --  Write-only. QSPI Enable
      QSPIEN         : Boolean := False;
      --  Write-only. QSPI Disable
      QSPIDIS        : Boolean := False;
      --  unspecified
      Reserved_2_6   : HAL.UInt5 := 16#0#;
      --  Write-only. QSPI Software Reset
      SWRST          : Boolean := False;
      --  unspecified
      Reserved_8_23  : HAL.UInt16 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_CR_Register use record
      QSPIEN         at 0 range 0 .. 0;
      QSPIDIS        at 0 range 1 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      SWRST          at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Serial Memory Mode
   type QSPI_MR_SMMSelect is
     (--  The QSPI is in SPI mode.
      SPI,
      --  The QSPI is in Serial Memory mode.
      MEMORY)
     with Size => 1;
   for QSPI_MR_SMMSelect use
     (SPI => 0,
      MEMORY => 1);

   --  Local Loopback Enable
   type QSPI_MR_LLBSelect is
     (--  Local loopback path disabled.
      DISABLED,
      --  Local loopback path enabled.
      ENABLED)
     with Size => 1;
   for QSPI_MR_LLBSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Wait Data Read Before Transfer
   type QSPI_MR_WDRBTSelect is
     (--  No effect. In SPI mode, a transfer can be initiated whatever the state of
--  the QSPI_RDR is.
      DISABLED,
      --  In SPI mode, a transfer can start only if the QSPI_RDR is empty, i.e., does
--  not contain any unread data. This mode prevents overrun error in reception.
      ENABLED)
     with Size => 1;
   for QSPI_MR_WDRBTSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Chip Select Mode
   type QSPI_MR_CSMODESelect is
     (--  The chip select is deasserted if QSPI_TDR.TD has not been reloaded before
--  the end of the current transfer.
      NOT_RELOADED,
      --  The chip select is deasserted when the bit LASTXFER is written at 1 and the
--  character written in QSPI_TDR.TD has been transferred.
      LASTXFER,
      --  The chip select is deasserted systematically after each transfer.
      SYSTEMATICALLY)
     with Size => 2;
   for QSPI_MR_CSMODESelect use
     (NOT_RELOADED => 0,
      LASTXFER => 1,
      SYSTEMATICALLY => 2);

   --  Number Of Bits Per Transfer
   type QSPI_MR_NBBITSSelect is
     (--  8 bits for transfer
      Val_8_BIT,
      --  16 bits for transfer
      Val_16_BIT)
     with Size => 4;
   for QSPI_MR_NBBITSSelect use
     (Val_8_BIT => 0,
      Val_16_BIT => 8);

   subtype QSPI_QSPI_MR_DLYBCT_Field is HAL.UInt8;
   subtype QSPI_QSPI_MR_DLYCS_Field is HAL.UInt8;

   --  Mode Register
   type QSPI_QSPI_MR_Register is record
      --  Serial Memory Mode
      SMM            : QSPI_MR_SMMSelect := SAM_SVD.QSPI.SPI;
      --  Local Loopback Enable
      LLB            : QSPI_MR_LLBSelect := SAM_SVD.QSPI.DISABLED;
      --  Wait Data Read Before Transfer
      WDRBT          : QSPI_MR_WDRBTSelect := SAM_SVD.QSPI.DISABLED;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Chip Select Mode
      CSMODE         : QSPI_MR_CSMODESelect := SAM_SVD.QSPI.NOT_RELOADED;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Number Of Bits Per Transfer
      NBBITS         : QSPI_MR_NBBITSSelect := SAM_SVD.QSPI.Val_8_BIT;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Delay Between Consecutive Transfers
      DLYBCT         : QSPI_QSPI_MR_DLYBCT_Field := 16#0#;
      --  Minimum Inactive QCS Delay
      DLYCS          : QSPI_QSPI_MR_DLYCS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_MR_Register use record
      SMM            at 0 range 0 .. 0;
      LLB            at 0 range 1 .. 1;
      WDRBT          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CSMODE         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NBBITS         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DLYBCT         at 0 range 16 .. 23;
      DLYCS          at 0 range 24 .. 31;
   end record;

   subtype QSPI_QSPI_RDR_RD_Field is HAL.UInt16;

   --  Receive Data Register
   type QSPI_QSPI_RDR_Register is record
      --  Read-only. Receive Data
      RD             : QSPI_QSPI_RDR_RD_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_RDR_Register use record
      RD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype QSPI_QSPI_TDR_TD_Field is HAL.UInt16;

   --  Transmit Data Register
   type QSPI_QSPI_TDR_Register is record
      --  Write-only. Transmit Data
      TD             : QSPI_QSPI_TDR_TD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_TDR_Register use record
      TD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Status Register
   type QSPI_QSPI_SR_Register is record
      --  Read-only. Receive Data Register Full (cleared by reading SPI_RDR)
      RDRF           : Boolean;
      --  Read-only. Transmit Data Register Empty (cleared by writing SPI_TDR)
      TDRE           : Boolean;
      --  Read-only. Transmission Registers Empty (cleared by writing SPI_TDR)
      TXEMPTY        : Boolean;
      --  Read-only. Overrun Error Status (cleared on read)
      OVRES          : Boolean;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Chip Select Rise (cleared on read)
      CSR            : Boolean;
      --  Read-only. Chip Select Status
      CSS            : Boolean;
      --  Read-only. Instruction End Status (cleared on read)
      INSTRE         : Boolean;
      --  unspecified
      Reserved_11_23 : HAL.UInt13;
      --  Read-only. QSPI Enable Status
      QSPIENS        : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_SR_Register use record
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

   --  Interrupt Enable Register
   type QSPI_QSPI_IER_Register is record
      --  Write-only. Receive Data Register Full Interrupt Enable
      RDRF           : Boolean := False;
      --  Write-only. Transmit Data Register Empty Interrupt Enable
      TDRE           : Boolean := False;
      --  Write-only. Transmission Registers Empty Enable
      TXEMPTY        : Boolean := False;
      --  Write-only. Overrun Error Interrupt Enable
      OVRES          : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. Chip Select Rise Interrupt Enable
      CSR            : Boolean := False;
      --  Write-only. Chip Select Status Interrupt Enable
      CSS            : Boolean := False;
      --  Write-only. Instruction End Interrupt Enable
      INSTRE         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_IER_Register use record
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

   --  Interrupt Disable Register
   type QSPI_QSPI_IDR_Register is record
      --  Write-only. Receive Data Register Full Interrupt Disable
      RDRF           : Boolean := False;
      --  Write-only. Transmit Data Register Empty Interrupt Disable
      TDRE           : Boolean := False;
      --  Write-only. Transmission Registers Empty Disable
      TXEMPTY        : Boolean := False;
      --  Write-only. Overrun Error Interrupt Disable
      OVRES          : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. Chip Select Rise Interrupt Disable
      CSR            : Boolean := False;
      --  Write-only. Chip Select Status Interrupt Disable
      CSS            : Boolean := False;
      --  Write-only. Instruction End Interrupt Disable
      INSTRE         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_IDR_Register use record
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

   --  Interrupt Mask Register
   type QSPI_QSPI_IMR_Register is record
      --  Read-only. Receive Data Register Full Interrupt Mask
      RDRF           : Boolean;
      --  Read-only. Transmit Data Register Empty Interrupt Mask
      TDRE           : Boolean;
      --  Read-only. Transmission Registers Empty Mask
      TXEMPTY        : Boolean;
      --  Read-only. Overrun Error Interrupt Mask
      OVRES          : Boolean;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Chip Select Rise Interrupt Mask
      CSR            : Boolean;
      --  Read-only. Chip Select Status Interrupt Mask
      CSS            : Boolean;
      --  Read-only. Instruction End Interrupt Mask
      INSTRE         : Boolean;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_IMR_Register use record
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

   subtype QSPI_QSPI_SCR_SCBR_Field is HAL.UInt8;
   subtype QSPI_QSPI_SCR_DLYBS_Field is HAL.UInt8;

   --  Serial Clock Register
   type QSPI_QSPI_SCR_Register is record
      --  Clock Polarity
      CPOL           : Boolean := False;
      --  Clock Phase
      CPHA           : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Serial Clock Baud Rate
      SCBR           : QSPI_QSPI_SCR_SCBR_Field := 16#0#;
      --  Delay Before QSCK
      DLYBS          : QSPI_QSPI_SCR_DLYBS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_SCR_Register use record
      CPOL           at 0 range 0 .. 0;
      CPHA           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      SCBR           at 0 range 8 .. 15;
      DLYBS          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype QSPI_QSPI_ICR_INST_Field is HAL.UInt8;
   subtype QSPI_QSPI_ICR_OPT_Field is HAL.UInt8;

   --  Instruction Code Register
   type QSPI_QSPI_ICR_Register is record
      --  Instruction Code
      INST           : QSPI_QSPI_ICR_INST_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Option Code
      OPT            : QSPI_QSPI_ICR_OPT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_ICR_Register use record
      INST           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      OPT            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Width of Instruction Code, Address, Option Code and Data
   type QSPI_IFR_WIDTHSelect is
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
   for QSPI_IFR_WIDTHSelect use
     (SINGLE_BIT_SPI => 0,
      DUAL_OUTPUT => 1,
      QUAD_OUTPUT => 2,
      DUAL_IO => 3,
      QUAD_IO => 4,
      DUAL_CMD => 5,
      QUAD_CMD => 6);

   --  Option Code Length
   type QSPI_IFR_OPTLSelect is
     (--  The option code is 1 bit long.
      OPTION_1BIT,
      --  The option code is 2 bits long.
      OPTION_2BIT,
      --  The option code is 4 bits long.
      OPTION_4BIT,
      --  The option code is 8 bits long.
      OPTION_8BIT)
     with Size => 2;
   for QSPI_IFR_OPTLSelect use
     (OPTION_1BIT => 0,
      OPTION_2BIT => 1,
      OPTION_4BIT => 2,
      OPTION_8BIT => 3);

   --  Address Length
   type QSPI_IFR_ADDRLSelect is
     (--  The address is 24 bits long.
      Val_24_BIT,
      --  The address is 32 bits long.
      Val_32_BIT)
     with Size => 1;
   for QSPI_IFR_ADDRLSelect use
     (Val_24_BIT => 0,
      Val_32_BIT => 1);

   --  Data Transfer Type
   type QSPI_IFR_TFRTYPSelect is
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
   for QSPI_IFR_TFRTYPSelect use
     (TRSFR_READ => 0,
      TRSFR_READ_MEMORY => 1,
      TRSFR_WRITE => 2,
      TRSFR_WRITE_MEMORY => 3);

   --  Continuous Read Mode
   type QSPI_IFR_CRMSelect is
     (--  The Continuous Read mode is disabled.
      DISABLED,
      --  The Continuous Read mode is enabled.
      ENABLED)
     with Size => 1;
   for QSPI_IFR_CRMSelect use
     (DISABLED => 0,
      ENABLED => 1);

   subtype QSPI_QSPI_IFR_NBDUM_Field is HAL.UInt5;

   --  Instruction Frame Register
   type QSPI_QSPI_IFR_Register is record
      --  Width of Instruction Code, Address, Option Code and Data
      WIDTH          : QSPI_IFR_WIDTHSelect := SAM_SVD.QSPI.SINGLE_BIT_SPI;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Instruction Enable
      INSTEN         : Boolean := False;
      --  Address Enable
      ADDREN         : Boolean := False;
      --  Option Enable
      OPTEN          : Boolean := False;
      --  Data Enable
      DATAEN         : Boolean := False;
      --  Option Code Length
      OPTL           : QSPI_IFR_OPTLSelect := SAM_SVD.QSPI.OPTION_1BIT;
      --  Address Length
      ADDRL          : QSPI_IFR_ADDRLSelect := SAM_SVD.QSPI.Val_24_BIT;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Data Transfer Type
      TFRTYP         : QSPI_IFR_TFRTYPSelect := SAM_SVD.QSPI.TRSFR_READ;
      --  Continuous Read Mode
      CRM            : QSPI_IFR_CRMSelect := SAM_SVD.QSPI.DISABLED;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Number Of Dummy Cycles
      NBDUM          : QSPI_QSPI_IFR_NBDUM_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_IFR_Register use record
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
   type QSPI_SMR_SCRENSelect is
     (--  The scrambling/unscrambling is disabled.
      DISABLED,
      --  The scrambling/unscrambling is enabled.
      ENABLED)
     with Size => 1;
   for QSPI_SMR_SCRENSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Scrambling Mode Register
   type QSPI_QSPI_SMR_Register is record
      --  Scrambling/Unscrambling Enable
      SCREN         : QSPI_SMR_SCRENSelect := SAM_SVD.QSPI.DISABLED;
      --  Scrambling/Unscrambling Random Value Disable
      RVDIS         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_SMR_Register use record
      SCREN         at 0 range 0 .. 0;
      RVDIS         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Write Protection Key
   type QSPI_WPMR_WPKEYSelect is
     (--  Reset value for the field
      QSPI_WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit. Always reads as 0.
      PASSWD)
     with Size => 24;
   for QSPI_WPMR_WPKEYSelect use
     (QSPI_WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5329744);

   --  Write Protection Mode Register
   type QSPI_QSPI_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : QSPI_WPMR_WPKEYSelect := QSPI_WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype QSPI_QSPI_WPSR_WPVSRC_Field is HAL.UInt8;

   --  Write Protection Status Register
   type QSPI_QSPI_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : QSPI_QSPI_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype QSPI_QSPI_VERSION_VERSION_Field is HAL.UInt12;
   subtype QSPI_QSPI_VERSION_MFN_Field is HAL.UInt3;

   --  Version Register
   type QSPI_QSPI_VERSION_Register is record
      --  Read-only. Hardware Module Version
      VERSION        : QSPI_QSPI_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Metal Fix Number
      MFN            : QSPI_QSPI_VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPI_QSPI_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Quad Serial Peripheral Interface
   type QSPI_Peripheral is record
      --  Control Register
      QSPI_CR      : aliased QSPI_QSPI_CR_Register;
      --  Mode Register
      QSPI_MR      : aliased QSPI_QSPI_MR_Register;
      --  Receive Data Register
      QSPI_RDR     : aliased QSPI_QSPI_RDR_Register;
      --  Transmit Data Register
      QSPI_TDR     : aliased QSPI_QSPI_TDR_Register;
      --  Status Register
      QSPI_SR      : aliased QSPI_QSPI_SR_Register;
      --  Interrupt Enable Register
      QSPI_IER     : aliased QSPI_QSPI_IER_Register;
      --  Interrupt Disable Register
      QSPI_IDR     : aliased QSPI_QSPI_IDR_Register;
      --  Interrupt Mask Register
      QSPI_IMR     : aliased QSPI_QSPI_IMR_Register;
      --  Serial Clock Register
      QSPI_SCR     : aliased QSPI_QSPI_SCR_Register;
      --  Instruction Address Register
      QSPI_IAR     : aliased HAL.UInt32;
      --  Instruction Code Register
      QSPI_ICR     : aliased QSPI_QSPI_ICR_Register;
      --  Instruction Frame Register
      QSPI_IFR     : aliased QSPI_QSPI_IFR_Register;
      --  Scrambling Mode Register
      QSPI_SMR     : aliased QSPI_QSPI_SMR_Register;
      --  Scrambling Key Register
      QSPI_SKR     : aliased HAL.UInt32;
      --  Write Protection Mode Register
      QSPI_WPMR    : aliased QSPI_QSPI_WPMR_Register;
      --  Write Protection Status Register
      QSPI_WPSR    : aliased QSPI_QSPI_WPSR_Register;
      --  Version Register
      QSPI_VERSION : aliased QSPI_QSPI_VERSION_Register;
   end record
     with Volatile;

   for QSPI_Peripheral use record
      QSPI_CR      at 16#0# range 0 .. 31;
      QSPI_MR      at 16#4# range 0 .. 31;
      QSPI_RDR     at 16#8# range 0 .. 31;
      QSPI_TDR     at 16#C# range 0 .. 31;
      QSPI_SR      at 16#10# range 0 .. 31;
      QSPI_IER     at 16#14# range 0 .. 31;
      QSPI_IDR     at 16#18# range 0 .. 31;
      QSPI_IMR     at 16#1C# range 0 .. 31;
      QSPI_SCR     at 16#20# range 0 .. 31;
      QSPI_IAR     at 16#30# range 0 .. 31;
      QSPI_ICR     at 16#34# range 0 .. 31;
      QSPI_IFR     at 16#38# range 0 .. 31;
      QSPI_SMR     at 16#40# range 0 .. 31;
      QSPI_SKR     at 16#44# range 0 .. 31;
      QSPI_WPMR    at 16#E4# range 0 .. 31;
      QSPI_WPSR    at 16#E8# range 0 .. 31;
      QSPI_VERSION at 16#FC# range 0 .. 31;
   end record;

   --  Quad Serial Peripheral Interface
   QSPI_Periph : aliased QSPI_Peripheral
     with Import, Address => QSPI_Base;

end SAM_SVD.QSPI;
