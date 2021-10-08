pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.FLEXCOM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  FLEXCOM Operating Mode
   type FLEX_MR_OPMODESelect is
     (--  No communication
      NO_COM,
      --  All UART related protocols are selected (RS232, RS485, IrDA, ISO7816, LIN,
--  LON)SPI/TWI related registers are not accessible and have no impact on IOs.
      USART,
      --  SPI operating mode is selected.USART/TWI related registers are not
--  accessible and have no impact on IOs.
      SPI,
      --  All TWI related protocols are selected (TWI, SMBus).USART/SPI related
--  registers are not accessible and have no impact on IOs.
      TWI)
     with Size => 2;
   for FLEX_MR_OPMODESelect use
     (NO_COM => 0,
      USART => 1,
      SPI => 2,
      TWI => 3);

   --  FLEXCOM Mode Register
   type FLEXCOM_FLEX_MR_Register is record
      --  FLEXCOM Operating Mode
      OPMODE        : FLEX_MR_OPMODESelect := SAM_SVD.FLEXCOM.NO_COM;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_MR_Register use record
      OPMODE        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FLEXCOM_FLEX_RHR_RXDATA_Field is HAL.UInt16;

   --  FLEXCOM Receive Holding Register
   type FLEXCOM_FLEX_RHR_Register is record
      --  Read-only. Receive Data
      RXDATA         : FLEXCOM_FLEX_RHR_RXDATA_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_RHR_Register use record
      RXDATA         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FLEXCOM_FLEX_THR_TXDATA_Field is HAL.UInt16;

   --  FLEXCOM Transmit Holding Register
   type FLEXCOM_FLEX_THR_Register is record
      --  Transmit Data
      TXDATA         : FLEXCOM_FLEX_THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_THR_Register use record
      TXDATA         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  USART Control Register
   type FLEXCOM_FLEX_US_CR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : Boolean := False;
      --  Write-only. Reset Transmitter
      RSTTX          : Boolean := False;
      --  Write-only. Receiver Enable
      RXEN           : Boolean := False;
      --  Write-only. Receiver Disable
      RXDIS          : Boolean := False;
      --  Write-only. Transmitter Enable
      TXEN           : Boolean := False;
      --  Write-only. Transmitter Disable
      TXDIS          : Boolean := False;
      --  Write-only. Reset Status Bits
      RSTSTA         : Boolean := False;
      --  Write-only. Start Break
      STTBRK         : Boolean := False;
      --  Write-only. Stop Break
      STPBRK         : Boolean := False;
      --  Write-only. Clear TIMEOUT Flag and Start Timeout After Next Character
      --  Received
      STTTO          : Boolean := False;
      --  Write-only. Send Address
      SENDA          : Boolean := False;
      --  Write-only. Reset Iterations
      RSTIT          : Boolean := False;
      --  Write-only. Reset Non Acknowledge
      RSTNACK        : Boolean := False;
      --  Write-only. Start Timeout Immediately
      RETTO          : Boolean := False;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Write-only. Request to Send Enable
      RTSEN          : Boolean := False;
      --  Write-only. Request to Send Disable
      RTSDIS         : Boolean := False;
      --  Write-only. Abort LIN Transmission
      LINABT         : Boolean := False;
      --  Write-only. Send LIN Wakeup Signal
      LINWKUP        : Boolean := False;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Write-only. Transmit FIFO Clear
      TXFCLR         : Boolean := False;
      --  Write-only. Receive FIFO Clear
      RXFCLR         : Boolean := False;
      --  Write-only. Transmit FIFO Lock CLEAR
      TXFLCLR        : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Write-only. Request to Clear the Comparison Trigger
      REQCLR         : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Write-only. FIFO Enable
      FIFOEN         : Boolean := False;
      --  Write-only. FIFO Disable
      FIFODIS        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      STTBRK         at 0 range 9 .. 9;
      STPBRK         at 0 range 10 .. 10;
      STTTO          at 0 range 11 .. 11;
      SENDA          at 0 range 12 .. 12;
      RSTIT          at 0 range 13 .. 13;
      RSTNACK        at 0 range 14 .. 14;
      RETTO          at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      RTSEN          at 0 range 18 .. 18;
      RTSDIS         at 0 range 19 .. 19;
      LINABT         at 0 range 20 .. 20;
      LINWKUP        at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TXFCLR         at 0 range 24 .. 24;
      RXFCLR         at 0 range 25 .. 25;
      TXFLCLR        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      REQCLR         at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      FIFOEN         at 0 range 30 .. 30;
      FIFODIS        at 0 range 31 .. 31;
   end record;

   --  USART Mode of Operation
   type FLEX_US_MR_USART_MODESelect is
     (--  Normal mode
      NORMAL,
      --  RS485
      RS485,
      --  Hardware handshaking
      HW_HANDSHAKING,
      --  IS07816 Protocol: T = 0
      IS07816_T_0,
      --  IS07816 Protocol: T = 1
      IS07816_T_1,
      --  IrDA
      IRDA,
      --  LON
      LON,
      --  LIN Master mode
      LIN_MASTER,
      --  LIN Slave mode
      LIN_SLAVE)
     with Size => 4;
   for FLEX_US_MR_USART_MODESelect use
     (NORMAL => 0,
      RS485 => 1,
      HW_HANDSHAKING => 2,
      IS07816_T_0 => 4,
      IS07816_T_1 => 6,
      IRDA => 8,
      LON => 9,
      LIN_MASTER => 10,
      LIN_SLAVE => 11);

   --  Clock Selection
   type FLEX_US_MR_USCLKSSelect is
     (--  Peripheral clock is selected
      MCK,
      --  Peripheral clock divided (DIV = 8) is selected
      DIV,
      --  PMC generic clock is selected. If the SCK pin is driven (CLKO = 1), the CD
--  field must be greater than 1.
      GCLK,
      --  External pin SCK is selected
      SCK)
     with Size => 2;
   for FLEX_US_MR_USCLKSSelect use
     (MCK => 0,
      DIV => 1,
      GCLK => 2,
      SCK => 3);

   --  Character Length
   type FLEX_US_MR_CHRLSelect is
     (--  Character length is 5 bits
      Val_5_BIT,
      --  Character length is 6 bits
      Val_6_BIT,
      --  Character length is 7 bits
      Val_7_BIT,
      --  Character length is 8 bits
      Val_8_BIT)
     with Size => 2;
   for FLEX_US_MR_CHRLSelect use
     (Val_5_BIT => 0,
      Val_6_BIT => 1,
      Val_7_BIT => 2,
      Val_8_BIT => 3);

   --  Parity Type
   type FLEX_US_MR_PARSelect is
     (--  Even parity
      EVEN,
      --  Odd parity
      ODD,
      --  Parity forced to 0 (Space)
      SPACE,
      --  Parity forced to 1 (Mark)
      MARK,
      --  No parity
      NO,
      --  Multidrop mode
      MULTIDROP)
     with Size => 3;
   for FLEX_US_MR_PARSelect use
     (EVEN => 0,
      ODD => 1,
      SPACE => 2,
      MARK => 3,
      NO => 4,
      MULTIDROP => 6);

   --  Number of Stop Bits
   type FLEX_US_MR_NBSTOPSelect is
     (--  1 stop bit
      Val_1_BIT,
      --  1.5 stop bit (SYNC = 0) or reserved (SYNC = 1)
      Val_1_5_BIT,
      --  2 stop bits
      Val_2_BIT)
     with Size => 2;
   for FLEX_US_MR_NBSTOPSelect use
     (Val_1_BIT => 0,
      Val_1_5_BIT => 1,
      Val_2_BIT => 2);

   --  Channel Mode
   type FLEX_US_MR_CHMODESelect is
     (--  Normal mode
      NORMAL,
      --  Automatic Echo. Receiver input is connected to the TXD pin.
      AUTOMATIC,
      --  Local Loopback. Transmitter output is connected to the Receiver Input.
      LOCAL_LOOPBACK,
      --  Remote Loopback. RXD pin is internally connected to the TXD pin.
      REMOTE_LOOPBACK)
     with Size => 2;
   for FLEX_US_MR_CHMODESelect use
     (NORMAL => 0,
      AUTOMATIC => 1,
      LOCAL_LOOPBACK => 2,
      REMOTE_LOOPBACK => 3);

   subtype FLEXCOM_FLEX_US_MR_MAX_ITERATION_Field is HAL.UInt3;

   --  USART Mode Register
   type FLEXCOM_FLEX_US_MR_Register is record
      --  USART Mode of Operation
      USART_MODE     : FLEX_US_MR_USART_MODESelect := SAM_SVD.FLEXCOM.NORMAL;
      --  Clock Selection
      USCLKS         : FLEX_US_MR_USCLKSSelect := SAM_SVD.FLEXCOM.MCK;
      --  Character Length
      CHRL           : FLEX_US_MR_CHRLSelect := SAM_SVD.FLEXCOM.Val_5_BIT;
      --  Synchronous Mode Select
      SYNC           : Boolean := False;
      --  Parity Type
      PAR            : FLEX_US_MR_PARSelect := SAM_SVD.FLEXCOM.EVEN;
      --  Number of Stop Bits
      NBSTOP         : FLEX_US_MR_NBSTOPSelect := SAM_SVD.FLEXCOM.Val_1_BIT;
      --  Channel Mode
      CHMODE         : FLEX_US_MR_CHMODESelect := SAM_SVD.FLEXCOM.NORMAL;
      --  Bit Order
      MSBF           : Boolean := False;
      --  9-bit Character Length
      MODE9          : Boolean := False;
      --  Clock Output Select
      CLKO           : Boolean := False;
      --  Oversampling Mode
      OVER           : Boolean := False;
      --  Inhibit Non Acknowledge
      INACK          : Boolean := False;
      --  Disable Successive NACK
      DSNACK         : Boolean := False;
      --  Variable Synchronization of Command/Data Sync Start Frame Delimiter
      VAR_SYNC       : Boolean := False;
      --  Inverted Data
      INVDATA        : Boolean := False;
      --  Maximum Number of Automatic Iteration
      MAX_ITERATION  : FLEXCOM_FLEX_US_MR_MAX_ITERATION_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Receive Line Filter
      FILTER         : Boolean := False;
      --  Manchester Encoder/Decoder Enable
      MAN            : Boolean := False;
      --  Manchester Synchronization Mode
      MODSYNC        : Boolean := False;
      --  Start Frame Delimiter Selector
      ONEBIT         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_MR_Register use record
      USART_MODE     at 0 range 0 .. 3;
      USCLKS         at 0 range 4 .. 5;
      CHRL           at 0 range 6 .. 7;
      SYNC           at 0 range 8 .. 8;
      PAR            at 0 range 9 .. 11;
      NBSTOP         at 0 range 12 .. 13;
      CHMODE         at 0 range 14 .. 15;
      MSBF           at 0 range 16 .. 16;
      MODE9          at 0 range 17 .. 17;
      CLKO           at 0 range 18 .. 18;
      OVER           at 0 range 19 .. 19;
      INACK          at 0 range 20 .. 20;
      DSNACK         at 0 range 21 .. 21;
      VAR_SYNC       at 0 range 22 .. 22;
      INVDATA        at 0 range 23 .. 23;
      MAX_ITERATION  at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FILTER         at 0 range 28 .. 28;
      MAN            at 0 range 29 .. 29;
      MODSYNC        at 0 range 30 .. 30;
      ONEBIT         at 0 range 31 .. 31;
   end record;

   --  USART Interrupt Enable Register
   type FLEXCOM_FLEX_US_IER_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : Boolean := False;
      --  Write-only. Receiver Break Interrupt Enable
      RXBRK          : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : Boolean := False;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : Boolean := False;
      --  Write-only. Timeout Interrupt Enable
      TIMEOUT        : Boolean := False;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  Write-only. Max number of Repetitions Reached Interrupt Enable
      ITER           : Boolean := False;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Write-only. Non Acknowledge Interrupt Enable
      NACK           : Boolean := False;
      --  unspecified
      Reserved_14_18 : HAL.UInt5 := 16#0#;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Write-only. Comparison Interrupt Enable
      CMP            : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Write-only. Manchester Error Interrupt Enable
      MANE           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      MANE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  USART Interrupt Enable Register
   type FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : Boolean := False;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : Boolean := False;
      --  Write-only. Timeout Interrupt Enable
      TIMEOUT        : Boolean := False;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_10_12 : HAL.UInt3 := 16#0#;
      --  Write-only. LIN Break Sent or LIN Break Received Interrupt Enable
      LINBK          : Boolean := False;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Enable
      LINID          : Boolean := False;
      --  Write-only. LIN Transfer Completed Interrupt Enable
      LINTC          : Boolean := False;
      --  unspecified
      Reserved_16_24 : HAL.UInt9 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Enable
      LINBE          : Boolean := False;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Enable
      LINISFE        : Boolean := False;
      --  Write-only. LIN Identifier Parity Interrupt Enable
      LINIPE         : Boolean := False;
      --  Write-only. LIN Checksum Error Interrupt Enable
      LINCE          : Boolean := False;
      --  Write-only. LIN Slave Not Responding Error Interrupt Enable
      LINSNRE        : Boolean := False;
      --  Write-only. LIN Synch Tolerance Error Interrupt Enable
      LINSTE         : Boolean := False;
      --  Write-only. LIN Header Timeout Error Interrupt Enable
      LINHTE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   --  USART Interrupt Disable Register
   type FLEXCOM_FLEX_US_IDR_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : Boolean := False;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : Boolean := False;
      --  Write-only. Timeout Interrupt Disable
      TIMEOUT        : Boolean := False;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : Boolean := False;
      --  Write-only. Max Number of Repetitions Reached Interrupt Disable
      ITER           : Boolean := False;
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Write-only. Non Acknowledge Interrupt Disable
      NACK           : Boolean := False;
      --  unspecified
      Reserved_14_18 : HAL.UInt5 := 16#0#;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Write-only. Comparison Interrupt Disable
      CMP            : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Write-only. Manchester Error Interrupt Disable
      MANE           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      MANE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  USART Interrupt Disable Register
   type FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : Boolean := False;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : Boolean := False;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : Boolean := False;
      --  Write-only. Timeout Interrupt Disable
      TIMEOUT        : Boolean := False;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_10_12 : HAL.UInt3 := 16#0#;
      --  Write-only. LIN Break Sent or LIN Break Received Interrupt Disable
      LINBK          : Boolean := False;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Disable
      LINID          : Boolean := False;
      --  Write-only. LIN Transfer Completed Interrupt Disable
      LINTC          : Boolean := False;
      --  unspecified
      Reserved_16_24 : HAL.UInt9 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Disable
      LINBE          : Boolean := False;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Disable
      LINISFE        : Boolean := False;
      --  Write-only. LIN Identifier Parity Interrupt Disable
      LINIPE         : Boolean := False;
      --  Write-only. LIN Checksum Error Interrupt Disable
      LINCE          : Boolean := False;
      --  Write-only. LIN Slave Not Responding Error Interrupt Disable
      LINSNRE        : Boolean := False;
      --  Write-only. LIN Synch Tolerance Error Interrupt Disable
      LINSTE         : Boolean := False;
      --  Write-only. LIN Header Timeout Error Interrupt Disable
      LINHTE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   --  USART Interrupt Mask Register
   type FLEXCOM_FLEX_US_IMR_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : Boolean;
      --  Read-only. Receiver Break Interrupt Mask
      RXBRK          : Boolean;
      --  unspecified
      Reserved_3_4   : HAL.UInt2;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : Boolean;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : Boolean;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : Boolean;
      --  Read-only. Timeout Interrupt Mask
      TIMEOUT        : Boolean;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : Boolean;
      --  Read-only. Max Number of Repetitions Reached Interrupt Mask
      ITER           : Boolean;
      --  unspecified
      Reserved_11_12 : HAL.UInt2;
      --  Read-only. Non Acknowledge Interrupt Mask
      NACK           : Boolean;
      --  unspecified
      Reserved_14_18 : HAL.UInt5;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : Boolean;
      --  unspecified
      Reserved_20_21 : HAL.UInt2;
      --  Read-only. Comparison Interrupt Mask
      CMP            : Boolean;
      --  unspecified
      Reserved_23_23 : HAL.Bit;
      --  Read-only. Manchester Error Interrupt Mask
      MANE           : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      MANE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  USART Interrupt Mask Register
   type FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : Boolean;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : Boolean;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : Boolean;
      --  Read-only. Timeout Interrupt Mask
      TIMEOUT        : Boolean;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_12 : HAL.UInt3;
      --  Read-only. LIN Break Sent or LIN Break Received Interrupt Mask
      LINBK          : Boolean;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Mask
      LINID          : Boolean;
      --  Read-only. LIN Transfer Completed Interrupt Mask
      LINTC          : Boolean;
      --  unspecified
      Reserved_16_24 : HAL.UInt9;
      --  Read-only. LIN Bus Error Interrupt Mask
      LINBE          : Boolean;
      --  Read-only. LIN Inconsistent Synch Field Error Interrupt Mask
      LINISFE        : Boolean;
      --  Read-only. LIN Identifier Parity Interrupt Mask
      LINIPE         : Boolean;
      --  Read-only. LIN Checksum Error Interrupt Mask
      LINCE          : Boolean;
      --  Read-only. LIN Slave Not Responding Error Interrupt Mask
      LINSNRE        : Boolean;
      --  Read-only. LIN Synch Tolerance Error Interrupt Mask
      LINSTE         : Boolean;
      --  Read-only. LIN Header Timeout Error Interrupt Mask
      LINHTE         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   --  USART Channel Status Register
   type FLEXCOM_FLEX_US_CSR_Register is record
      --  Read-only. Receiver Ready (cleared by reading FLEX_US_RHR)
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready (cleared by writing FLEX_US_THR)
      TXRDY          : Boolean;
      --  Read-only. Break Received/End of Break
      RXBRK          : Boolean;
      --  unspecified
      Reserved_3_4   : HAL.UInt2;
      --  Read-only. Overrun Error
      OVRE           : Boolean;
      --  Read-only. Framing Error
      FRAME          : Boolean;
      --  Read-only. Parity Error
      PARE           : Boolean;
      --  Read-only. Receiver Timeout
      TIMEOUT        : Boolean;
      --  Read-only. Transmitter Empty (cleared by writing FLEX_US_THR)
      TXEMPTY        : Boolean;
      --  Read-only. Max Number of Repetitions Reached
      ITER           : Boolean;
      --  unspecified
      Reserved_11_12 : HAL.UInt2;
      --  Read-only. Non Acknowledge Interrupt
      NACK           : Boolean;
      --  unspecified
      Reserved_14_18 : HAL.UInt5;
      --  Read-only. Clear to Send Input Change Flag
      CTSIC          : Boolean;
      --  unspecified
      Reserved_20_21 : HAL.UInt2;
      --  Read-only. Comparison Status
      CMP            : Boolean;
      --  Read-only. Image of CTS Input
      CTS            : Boolean;
      --  Read-only. Manchester Error
      MANE           : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_CSR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CMP            at 0 range 22 .. 22;
      CTS            at 0 range 23 .. 23;
      MANE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  USART Channel Status Register
   type FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_Register is record
      --  Read-only. Receiver Ready (cleared by reading FLEX_US_RHR)
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready (cleared by writing FLEX_US_THR)
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
      --  Read-only. Overrun Error
      OVRE           : Boolean;
      --  Read-only. Framing Error
      FRAME          : Boolean;
      --  Read-only. Parity Error
      PARE           : Boolean;
      --  Read-only. Receiver Timeout
      TIMEOUT        : Boolean;
      --  Read-only. Transmitter Empty (cleared by writing FLEX_US_THR)
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_12 : HAL.UInt3;
      --  Read-only. LIN Break Sent or LIN Break Received
      LINBK          : Boolean;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received
      LINID          : Boolean;
      --  Read-only. LIN Transfer Completed
      LINTC          : Boolean;
      --  unspecified
      Reserved_16_22 : HAL.UInt7;
      --  Read-only. LIN Bus Line Status
      LINBLS         : Boolean;
      --  unspecified
      Reserved_24_24 : HAL.Bit;
      --  Read-only. LIN Bit Error
      LINBE          : Boolean;
      --  Read-only. LIN Inconsistent Synch Field Error
      LINISFE        : Boolean;
      --  Read-only. LIN Identifier Parity Error
      LINIPE         : Boolean;
      --  Read-only. LIN Checksum Error
      LINCE          : Boolean;
      --  Read-only. LIN Slave Not Responding Error
      LINSNRE        : Boolean;
      --  Read-only. LIN Synch Tolerance Error
      LINSTE         : Boolean;
      --  Read-only. LIN Header Timeout Error
      LINHTE         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_22 at 0 range 16 .. 22;
      LINBLS         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_RHR_RXCHR_Field is HAL.UInt9;

   --  USART Receive Holding Register
   type FLEXCOM_FLEX_US_RHR_Register is record
      --  Read-only. Received Character
      RXCHR          : FLEXCOM_FLEX_US_RHR_RXCHR_Field;
      --  unspecified
      Reserved_9_14  : HAL.UInt6;
      --  Read-only. Received Sync
      RXSYNH         : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_RHR_Register use record
      RXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      RXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  FLEXCOM_FLEX_US_RHR_FIFO_MULTI_DATA_MODE_RXCHR array element
   subtype FLEXCOM_FLEX_US_RHR_FIFO_MULTI_DATA_MODE_RXCHR_Element is HAL.UInt8;

   --  FLEXCOM_FLEX_US_RHR_FIFO_MULTI_DATA_MODE_RXCHR array
   type FLEXCOM_FLEX_US_RHR_FIFO_MULTI_DATA_MODE_RXCHR_Field_Array is array (0 .. 3)
     of FLEXCOM_FLEX_US_RHR_FIFO_MULTI_DATA_MODE_RXCHR_Element
     with Component_Size => 8, Size => 32;

   --  USART Receive Holding Register
   type FLEXCOM_FLEX_US_RHR_FIFO_MULTI_DATA_MODE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RXCHR as a value
            Val : HAL.UInt32;
         when True =>
            --  RXCHR as an array
            Arr : FLEXCOM_FLEX_US_RHR_FIFO_MULTI_DATA_MODE_RXCHR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_RHR_FIFO_MULTI_DATA_MODE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_THR_TXCHR_Field is HAL.UInt9;

   --  USART Transmit Holding Register
   type FLEXCOM_FLEX_US_THR_Register is record
      --  Write-only. Character to be Transmitted
      TXCHR          : FLEXCOM_FLEX_US_THR_TXCHR_Field := 16#0#;
      --  unspecified
      Reserved_9_14  : HAL.UInt6 := 16#0#;
      --  Write-only. Sync Field to be Transmitted
      TXSYNH         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_THR_Register use record
      TXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      TXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  FLEXCOM_FLEX_US_THR_FIFO_MULTI_DATA_MODE_TXCHR array element
   subtype FLEXCOM_FLEX_US_THR_FIFO_MULTI_DATA_MODE_TXCHR_Element is HAL.UInt8;

   --  FLEXCOM_FLEX_US_THR_FIFO_MULTI_DATA_MODE_TXCHR array
   type FLEXCOM_FLEX_US_THR_FIFO_MULTI_DATA_MODE_TXCHR_Field_Array is array (0 .. 3)
     of FLEXCOM_FLEX_US_THR_FIFO_MULTI_DATA_MODE_TXCHR_Element
     with Component_Size => 8, Size => 32;

   --  USART Transmit Holding Register
   type FLEXCOM_FLEX_US_THR_FIFO_MULTI_DATA_MODE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXCHR as a value
            Val : HAL.UInt32;
         when True =>
            --  TXCHR as an array
            Arr : FLEXCOM_FLEX_US_THR_FIFO_MULTI_DATA_MODE_TXCHR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_THR_FIFO_MULTI_DATA_MODE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_BRGR_CD_Field is HAL.UInt16;
   subtype FLEXCOM_FLEX_US_BRGR_FP_Field is HAL.UInt3;

   --  USART Baud Rate Generator Register
   type FLEXCOM_FLEX_US_BRGR_Register is record
      --  Clock Divider
      CD             : FLEXCOM_FLEX_US_BRGR_CD_Field := 16#0#;
      --  Fractional Part
      FP             : FLEXCOM_FLEX_US_BRGR_FP_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_BRGR_Register use record
      CD             at 0 range 0 .. 15;
      FP             at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_RTOR_TO_Field is HAL.UInt17;

   --  USART Receiver Timeout Register
   type FLEXCOM_FLEX_US_RTOR_Register is record
      --  Timeout Value
      TO             : FLEXCOM_FLEX_US_RTOR_TO_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_RTOR_Register use record
      TO             at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_TTGR_TG_Field is HAL.UInt8;

   --  USART Transmitter Timeguard Register
   type FLEXCOM_FLEX_US_TTGR_Register is record
      --  Timeguard Value
      TG            : FLEXCOM_FLEX_US_TTGR_TG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_TTGR_Register use record
      TG            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_FIDI_FI_DI_RATIO_Field is HAL.UInt16;

   --  USART FI DI Ratio Register
   type FLEXCOM_FLEX_US_FIDI_Register is record
      --  FI Over DI Ratio Value
      FI_DI_RATIO    : FLEXCOM_FLEX_US_FIDI_FI_DI_RATIO_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_FIDI_Register use record
      FI_DI_RATIO    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_NER_NB_ERRORS_Field is HAL.UInt8;

   --  USART Number of Errors Register
   type FLEXCOM_FLEX_US_NER_Register is record
      --  Read-only. Number of Errors
      NB_ERRORS     : FLEXCOM_FLEX_US_NER_NB_ERRORS_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_NER_Register use record
      NB_ERRORS     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_IF_IRDA_FILTER_Field is HAL.UInt8;

   --  USART IrDA Filter Register
   type FLEXCOM_FLEX_US_IF_Register is record
      --  IrDA Filter
      IRDA_FILTER   : FLEXCOM_FLEX_US_IF_IRDA_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_IF_Register use record
      IRDA_FILTER   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_MAN_TX_PL_Field is HAL.UInt4;

   --  Transmitter Preamble Pattern
   type FLEX_US_MAN_TX_PPSelect is
     (--  The preamble is composed of '1's
      ALL_ONE,
      --  The preamble is composed of '0's
      ALL_ZERO,
      --  The preamble is composed of '01's
      ZERO_ONE,
      --  The preamble is composed of '10's
      ONE_ZERO)
     with Size => 2;
   for FLEX_US_MAN_TX_PPSelect use
     (ALL_ONE => 0,
      ALL_ZERO => 1,
      ZERO_ONE => 2,
      ONE_ZERO => 3);

   subtype FLEXCOM_FLEX_US_MAN_RX_PL_Field is HAL.UInt4;

   --  Receiver Preamble Pattern detected
   type FLEX_US_MAN_RX_PPSelect is
     (--  The preamble is composed of '1's
      ALL_ONE,
      --  The preamble is composed of '0's
      ALL_ZERO,
      --  The preamble is composed of '01's
      ZERO_ONE,
      --  The preamble is composed of '10's
      ONE_ZERO)
     with Size => 2;
   for FLEX_US_MAN_RX_PPSelect use
     (ALL_ONE => 0,
      ALL_ZERO => 1,
      ZERO_ONE => 2,
      ONE_ZERO => 3);

   --  USART Manchester Configuration Register
   type FLEXCOM_FLEX_US_MAN_Register is record
      --  Transmitter Preamble Length
      TX_PL          : FLEXCOM_FLEX_US_MAN_TX_PL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Transmitter Preamble Pattern
      TX_PP          : FLEX_US_MAN_TX_PPSelect := SAM_SVD.FLEXCOM.ALL_ONE;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Transmitter Manchester Polarity
      TX_MPOL        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Receiver Preamble Length
      RX_PL          : FLEXCOM_FLEX_US_MAN_RX_PL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Receiver Preamble Pattern detected
      RX_PP          : FLEX_US_MAN_RX_PPSelect := SAM_SVD.FLEXCOM.ALL_ONE;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Receiver Manchester Polarity
      RX_MPOL        : Boolean := False;
      --  Must Be Set to 1
      ONE            : Boolean := False;
      --  Drift Compensation
      DRIFT          : Boolean := False;
      --  Receiver Idle Value
      RXIDLEV        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_MAN_Register use record
      TX_PL          at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TX_PP          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TX_MPOL        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      RX_PL          at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      RX_PP          at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      RX_MPOL        at 0 range 28 .. 28;
      ONE            at 0 range 29 .. 29;
      DRIFT          at 0 range 30 .. 30;
      RXIDLEV        at 0 range 31 .. 31;
   end record;

   --  LIN Node Action
   type FLEX_US_LINMR_NACTSelect is
     (--  The USART transmits the response.
      PUBLISH,
      --  The USART receives the response.
      SUBSCRIBE,
      --  The USART does not transmit and does not receive the response.
      IGNORE)
     with Size => 2;
   for FLEX_US_LINMR_NACTSelect use
     (PUBLISH => 0,
      SUBSCRIBE => 1,
      IGNORE => 2);

   subtype FLEXCOM_FLEX_US_LINMR_DLC_Field is HAL.UInt8;

   --  USART LIN Mode Register
   type FLEXCOM_FLEX_US_LINMR_Register is record
      --  LIN Node Action
      NACT           : FLEX_US_LINMR_NACTSelect := SAM_SVD.FLEXCOM.PUBLISH;
      --  Parity Disable
      PARDIS         : Boolean := False;
      --  Checksum Disable
      CHKDIS         : Boolean := False;
      --  Checksum Type
      CHKTYP         : Boolean := False;
      --  Data Length Mode
      DLM            : Boolean := False;
      --  Frame Slot Mode Disable
      FSDIS          : Boolean := False;
      --  Wakeup Signal Type
      WKUPTYP        : Boolean := False;
      --  Data Length Control
      DLC            : FLEXCOM_FLEX_US_LINMR_DLC_Field := 16#0#;
      --  DMAC Mode
      PDCM           : Boolean := False;
      --  Synchronization Disable
      SYNCDIS        : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LINMR_Register use record
      NACT           at 0 range 0 .. 1;
      PARDIS         at 0 range 2 .. 2;
      CHKDIS         at 0 range 3 .. 3;
      CHKTYP         at 0 range 4 .. 4;
      DLM            at 0 range 5 .. 5;
      FSDIS          at 0 range 6 .. 6;
      WKUPTYP        at 0 range 7 .. 7;
      DLC            at 0 range 8 .. 15;
      PDCM           at 0 range 16 .. 16;
      SYNCDIS        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LINIR_IDCHR_Field is HAL.UInt8;

   --  USART LIN Identifier Register
   type FLEXCOM_FLEX_US_LINIR_Register is record
      --  Identifier Character
      IDCHR         : FLEXCOM_FLEX_US_LINIR_IDCHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LINIR_Register use record
      IDCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LINBRR_LINCD_Field is HAL.UInt16;
   subtype FLEXCOM_FLEX_US_LINBRR_LINFP_Field is HAL.UInt3;

   --  USART LIN Baud Rate Register
   type FLEXCOM_FLEX_US_LINBRR_Register is record
      --  Read-only. Clock Divider after Synchronization
      LINCD          : FLEXCOM_FLEX_US_LINBRR_LINCD_Field;
      --  Read-only. Fractional Part after Synchronization
      LINFP          : FLEXCOM_FLEX_US_LINBRR_LINFP_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LINBRR_Register use record
      LINCD          at 0 range 0 .. 15;
      LINFP          at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONMR_EOFS_Field is HAL.UInt8;

   --  USART LON Mode Register
   type FLEXCOM_FLEX_US_LONMR_Register is record
      --  LON comm_type Parameter Value
      COMMT          : Boolean := False;
      --  LON Collision Detection Feature
      COLDET         : Boolean := False;
      --  Terminate Frame upon Collision Notification
      TCOL           : Boolean := False;
      --  LON Collision Detection on Frame Tail
      CDTAIL         : Boolean := False;
      --  LON DMA Mode
      DMAM           : Boolean := False;
      --  LON Collision Detection Source
      LCDS           : Boolean := False;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  End of Frame Condition Size
      EOFS           : FLEXCOM_FLEX_US_LONMR_EOFS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONMR_Register use record
      COMMT          at 0 range 0 .. 0;
      COLDET         at 0 range 1 .. 1;
      TCOL           at 0 range 2 .. 2;
      CDTAIL         at 0 range 3 .. 3;
      DMAM           at 0 range 4 .. 4;
      LCDS           at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      EOFS           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONPR_LONPL_Field is HAL.UInt14;

   --  USART LON Preamble Register
   type FLEXCOM_FLEX_US_LONPR_Register is record
      --  LON Preamble Length
      LONPL          : FLEXCOM_FLEX_US_LONPR_LONPL_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONPR_Register use record
      LONPL          at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONDL_LONDL_Field is HAL.UInt8;

   --  USART LON Data Length Register
   type FLEXCOM_FLEX_US_LONDL_Register is record
      --  LON Data Length
      LONDL         : FLEXCOM_FLEX_US_LONDL_LONDL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONDL_Register use record
      LONDL         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONL2HDR_BLI_Field is HAL.UInt6;

   --  USART LON L2HDR Register
   type FLEXCOM_FLEX_US_LONL2HDR_Register is record
      --  LON Backlog Increment
      BLI           : FLEXCOM_FLEX_US_LONL2HDR_BLI_Field := 16#0#;
      --  LON Alternate Path Bit
      ALTP          : Boolean := False;
      --  LON Priority Bit
      PB            : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONL2HDR_Register use record
      BLI           at 0 range 0 .. 5;
      ALTP          at 0 range 6 .. 6;
      PB            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONBL_LONBL_Field is HAL.UInt6;

   --  USART LON Backlog Register
   type FLEXCOM_FLEX_US_LONBL_Register is record
      --  Read-only. LON Node Backlog Value
      LONBL         : FLEXCOM_FLEX_US_LONBL_LONBL_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONBL_Register use record
      LONBL         at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONB1TX_BETA1TX_Field is HAL.UInt24;

   --  USART LON Beta1 Tx Register
   type FLEXCOM_FLEX_US_LONB1TX_Register is record
      --  LON Beta1 Length after Transmission
      BETA1TX        : FLEXCOM_FLEX_US_LONB1TX_BETA1TX_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONB1TX_Register use record
      BETA1TX        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONB1RX_BETA1RX_Field is HAL.UInt24;

   --  USART LON Beta1 Rx Register
   type FLEXCOM_FLEX_US_LONB1RX_Register is record
      --  LON Beta1 Length after Reception
      BETA1RX        : FLEXCOM_FLEX_US_LONB1RX_BETA1RX_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONB1RX_Register use record
      BETA1RX        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONPRIO_PSNB_Field is HAL.UInt7;
   subtype FLEXCOM_FLEX_US_LONPRIO_NPS_Field is HAL.UInt7;

   --  USART LON Priority Register
   type FLEXCOM_FLEX_US_LONPRIO_Register is record
      --  LON Priority Slot Number
      PSNB           : FLEXCOM_FLEX_US_LONPRIO_PSNB_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  LON Node Priority Slot
      NPS            : FLEXCOM_FLEX_US_LONPRIO_NPS_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONPRIO_Register use record
      PSNB           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NPS            at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_IDTTX_IDTTX_Field is HAL.UInt24;

   --  USART LON IDT Tx Register
   type FLEXCOM_FLEX_US_IDTTX_Register is record
      --  LON Indeterminate Time after Transmission (comm_type = 1 mode only)
      IDTTX          : FLEXCOM_FLEX_US_IDTTX_IDTTX_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_IDTTX_Register use record
      IDTTX          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_IDTRX_IDTRX_Field is HAL.UInt24;

   --  USART LON IDT Rx Register
   type FLEXCOM_FLEX_US_IDTRX_Register is record
      --  LON Indeterminate Time after Reception (comm_type = 1 mode only)
      IDTRX          : FLEXCOM_FLEX_US_IDTRX_IDTRX_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_IDTRX_Register use record
      IDTRX          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_ICDIFF_ICDIFF_Field is HAL.UInt4;

   --  USART IC DIFF Register
   type FLEXCOM_FLEX_US_ICDIFF_Register is record
      --  IC Differentiator Number
      ICDIFF        : FLEXCOM_FLEX_US_ICDIFF_ICDIFF_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_ICDIFF_Register use record
      ICDIFF        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_CMPR_VAL1_Field is HAL.UInt9;

   --  Comparison Mode
   type FLEX_US_CMPR_CMPMODESelect is
     (--  Any character is received and comparison function drives CMP flag.
      FLAG_ONLY,
      --  Comparison condition must be met to start reception.
      START_CONDITION)
     with Size => 1;
   for FLEX_US_CMPR_CMPMODESelect use
     (FLAG_ONLY => 0,
      START_CONDITION => 1);

   subtype FLEXCOM_FLEX_US_CMPR_VAL2_Field is HAL.UInt9;

   --  USART Comparison Register
   type FLEXCOM_FLEX_US_CMPR_Register is record
      --  First Comparison Value for Received Character
      VAL1           : FLEXCOM_FLEX_US_CMPR_VAL1_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Comparison Mode
      CMPMODE        : FLEX_US_CMPR_CMPMODESelect :=
                        SAM_SVD.FLEXCOM.FLAG_ONLY;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Compare Parity
      CMPPAR         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Second Comparison Value for Received Character
      VAL2           : FLEXCOM_FLEX_US_CMPR_VAL2_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_CMPR_Register use record
      VAL1           at 0 range 0 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CMPMODE        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CMPPAR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      VAL2           at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Transmitter Ready Mode
   type FLEX_US_FMR_TXRDYMSelect is
     (--  TXRDY will be at level '1' when at least one data can be written in the
--  Transmit FIFO
      ONE_DATA,
      --  TXRDY will be at level '1' when at least two data can be written in the
--  Transmit FIFO
      TWO_DATA,
      --  TXRDY will be at level '1' when at least four data can be written in the
--  Transmit FIFO
      FOUR_DATA)
     with Size => 2;
   for FLEX_US_FMR_TXRDYMSelect use
     (ONE_DATA => 0,
      TWO_DATA => 1,
      FOUR_DATA => 2);

   --  Receiver Ready Mode
   type FLEX_US_FMR_RXRDYMSelect is
     (--  RXRDY will be at level '1' when at least one unread data is in the Receive
--  FIFO
      ONE_DATA,
      --  RXRDY will be at level '1' when at least two unread data are in the Receive
--  FIFO
      TWO_DATA,
      --  RXRDY will be at level '1' when at least four unread data are in the
--  Receive FIFO
      FOUR_DATA)
     with Size => 2;
   for FLEX_US_FMR_RXRDYMSelect use
     (ONE_DATA => 0,
      TWO_DATA => 1,
      FOUR_DATA => 2);

   subtype FLEXCOM_FLEX_US_FMR_TXFTHRES_Field is HAL.UInt6;
   subtype FLEXCOM_FLEX_US_FMR_RXFTHRES_Field is HAL.UInt6;
   subtype FLEXCOM_FLEX_US_FMR_RXFTHRES2_Field is HAL.UInt6;

   --  USART FIFO Mode Register
   type FLEXCOM_FLEX_US_FMR_Register is record
      --  Transmitter Ready Mode
      TXRDYM         : FLEX_US_FMR_TXRDYMSelect := SAM_SVD.FLEXCOM.ONE_DATA;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Receiver Ready Mode
      RXRDYM         : FLEX_US_FMR_RXRDYMSelect := SAM_SVD.FLEXCOM.ONE_DATA;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  FIFO RTS Pin Control enable (Hardware Handshaking mode only)
      FRTSC          : Boolean := False;
      --  Transmit FIFO Threshold
      TXFTHRES       : FLEXCOM_FLEX_US_FMR_TXFTHRES_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Receive FIFO Threshold
      RXFTHRES       : FLEXCOM_FLEX_US_FMR_RXFTHRES_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Receive FIFO Threshold 2
      RXFTHRES2      : FLEXCOM_FLEX_US_FMR_RXFTHRES2_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_FMR_Register use record
      TXRDYM         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXRDYM         at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      FRTSC          at 0 range 7 .. 7;
      TXFTHRES       at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RXFTHRES       at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      RXFTHRES2      at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_FLR_TXFL_Field is HAL.UInt6;
   subtype FLEXCOM_FLEX_US_FLR_RXFL_Field is HAL.UInt6;

   --  USART FIFO Level Register
   type FLEXCOM_FLEX_US_FLR_Register is record
      --  Read-only. Transmit FIFO Level
      TXFL           : FLEXCOM_FLEX_US_FLR_TXFL_Field;
      --  unspecified
      Reserved_6_15  : HAL.UInt10;
      --  Read-only. Receive FIFO Level
      RXFL           : FLEXCOM_FLEX_US_FLR_RXFL_Field;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_FLR_Register use record
      TXFL           at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      RXFL           at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  USART FIFO Interrupt Enable Register
   type FLEXCOM_FLEX_US_FIER_Register is record
      --  Write-only. TXFEF Interrupt Enable
      TXFEF          : Boolean := False;
      --  Write-only. TXFFF Interrupt Enable
      TXFFF          : Boolean := False;
      --  Write-only. TXFTHF Interrupt Enable
      TXFTHF         : Boolean := False;
      --  Write-only. RXFEF Interrupt Enable
      RXFEF          : Boolean := False;
      --  Write-only. RXFFF Interrupt Enable
      RXFFF          : Boolean := False;
      --  Write-only. RXFTHF Interrupt Enable
      RXFTHF         : Boolean := False;
      --  Write-only. TXFPTEF Interrupt Enable
      TXFPTEF        : Boolean := False;
      --  Write-only. RXFPTEF Interrupt Enable
      RXFPTEF        : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Write-only. RXFTHF2 Interrupt Enable
      RXFTHF2        : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_FIER_Register use record
      TXFEF          at 0 range 0 .. 0;
      TXFFF          at 0 range 1 .. 1;
      TXFTHF         at 0 range 2 .. 2;
      RXFEF          at 0 range 3 .. 3;
      RXFFF          at 0 range 4 .. 4;
      RXFTHF         at 0 range 5 .. 5;
      TXFPTEF        at 0 range 6 .. 6;
      RXFPTEF        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      RXFTHF2        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  USART FIFO Interrupt Disable Register
   type FLEXCOM_FLEX_US_FIDR_Register is record
      --  Write-only. TXFEF Interrupt Disable
      TXFEF          : Boolean := False;
      --  Write-only. TXFFF Interrupt Disable
      TXFFF          : Boolean := False;
      --  Write-only. TXFTHF Interrupt Disable
      TXFTHF         : Boolean := False;
      --  Write-only. RXFEF Interrupt Disable
      RXFEF          : Boolean := False;
      --  Write-only. RXFFF Interrupt Disable
      RXFFF          : Boolean := False;
      --  Write-only. RXFTHF Interrupt Disable
      RXFTHF         : Boolean := False;
      --  Write-only. TXFPTEF Interrupt Disable
      TXFPTEF        : Boolean := False;
      --  Write-only. RXFPTEF Interrupt Disable
      RXFPTEF        : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Write-only. RXFTHF2 Interrupt Disable
      RXFTHF2        : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_FIDR_Register use record
      TXFEF          at 0 range 0 .. 0;
      TXFFF          at 0 range 1 .. 1;
      TXFTHF         at 0 range 2 .. 2;
      RXFEF          at 0 range 3 .. 3;
      RXFFF          at 0 range 4 .. 4;
      RXFTHF         at 0 range 5 .. 5;
      TXFPTEF        at 0 range 6 .. 6;
      RXFPTEF        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      RXFTHF2        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  USART FIFO Interrupt Mask Register
   type FLEXCOM_FLEX_US_FIMR_Register is record
      --  Read-only. TXFEF Interrupt Mask
      TXFEF          : Boolean;
      --  Read-only. TXFFF Interrupt Mask
      TXFFF          : Boolean;
      --  Read-only. TXFTHF Interrupt Mask
      TXFTHF         : Boolean;
      --  Read-only. RXFEF Interrupt Mask
      RXFEF          : Boolean;
      --  Read-only. RXFFF Interrupt Mask
      RXFFF          : Boolean;
      --  Read-only. RXFTHF Interrupt Mask
      RXFTHF         : Boolean;
      --  Read-only. TXFPTEF Interrupt Mask
      TXFPTEF        : Boolean;
      --  Read-only. RXFPTEF Interrupt Mask
      RXFPTEF        : Boolean;
      --  unspecified
      Reserved_8_8   : HAL.Bit;
      --  Read-only. RXFTHF2 Interrupt Mask
      RXFTHF2        : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_FIMR_Register use record
      TXFEF          at 0 range 0 .. 0;
      TXFFF          at 0 range 1 .. 1;
      TXFTHF         at 0 range 2 .. 2;
      RXFEF          at 0 range 3 .. 3;
      RXFFF          at 0 range 4 .. 4;
      RXFTHF         at 0 range 5 .. 5;
      TXFPTEF        at 0 range 6 .. 6;
      RXFPTEF        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      RXFTHF2        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  USART FIFO Event Status Register
   type FLEXCOM_FLEX_US_FESR_Register is record
      --  Read-only. Transmit FIFO Empty Flag (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      TXFEF          : Boolean;
      --  Read-only. Transmit FIFO Full Flag (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      TXFFF          : Boolean;
      --  Read-only. Transmit FIFO Threshold Flag (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      TXFTHF         : Boolean;
      --  Read-only. Receive FIFO Empty Flag (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      RXFEF          : Boolean;
      --  Read-only. Receive FIFO Full Flag (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      RXFFF          : Boolean;
      --  Read-only. Receive FIFO Threshold Flag (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      RXFTHF         : Boolean;
      --  Read-only. Transmit FIFO Pointer Error Flag
      TXFPTEF        : Boolean;
      --  Read-only. Receive FIFO Pointer Error Flag
      RXFPTEF        : Boolean;
      --  Read-only. Transmit FIFO Lock
      TXFLOCK        : Boolean;
      --  Read-only. Receive FIFO Threshold Flag 2 (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      RXFTHF2        : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_FESR_Register use record
      TXFEF          at 0 range 0 .. 0;
      TXFFF          at 0 range 1 .. 1;
      TXFTHF         at 0 range 2 .. 2;
      RXFEF          at 0 range 3 .. 3;
      RXFFF          at 0 range 4 .. 4;
      RXFTHF         at 0 range 5 .. 5;
      TXFPTEF        at 0 range 6 .. 6;
      RXFPTEF        at 0 range 7 .. 7;
      TXFLOCK        at 0 range 8 .. 8;
      RXFTHF2        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Write Protection Key
   type FLEX_US_WPMR_WPKEYSelect is
     (--  Reset value for the field
      FLEX_US_WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of bit
--  WPEN. Always reads as 0.
      PASSWD)
     with Size => 24;
   for FLEX_US_WPMR_WPKEYSelect use
     (FLEX_US_WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5591873);

   --  USART Write Protection Mode Register
   type FLEXCOM_FLEX_US_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : FLEX_US_WPMR_WPKEYSelect :=
                      FLEX_US_WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_WPSR_WPVSRC_Field is HAL.UInt16;

   --  USART Write Protection Status Register
   type FLEXCOM_FLEX_US_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : FLEXCOM_FLEX_US_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  SPI Control Register
   type FLEXCOM_FLEX_SPI_CR_Register is record
      --  Write-only. SPI Enable
      SPIEN          : Boolean := False;
      --  Write-only. SPI Disable
      SPIDIS         : Boolean := False;
      --  unspecified
      Reserved_2_6   : HAL.UInt5 := 16#0#;
      --  Write-only. SPI Software Reset
      SWRST          : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Request to Clear the Comparison Trigger
      REQCLR         : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Write-only. Transmit FIFO Clear
      TXFCLR         : Boolean := False;
      --  Write-only. Receive FIFO Clear
      RXFCLR         : Boolean := False;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : Boolean := False;
      --  unspecified
      Reserved_25_29 : HAL.UInt5 := 16#0#;
      --  Write-only. FIFO Enable
      FIFOEN         : Boolean := False;
      --  Write-only. FIFO Disable
      FIFODIS        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_CR_Register use record
      SPIEN          at 0 range 0 .. 0;
      SPIDIS         at 0 range 1 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      SWRST          at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      REQCLR         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TXFCLR         at 0 range 16 .. 16;
      RXFCLR         at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      FIFOEN         at 0 range 30 .. 30;
      FIFODIS        at 0 range 31 .. 31;
   end record;

   --  Bit Rate Source Clock
   type FLEX_SPI_MR_BRSRCCLKSelect is
     (--  The peripheral clock is the source clock for the bit rate generation.
      PERIPH_CLK,
      --  GCLK is the source clock for the bit rate generation, thus the bit rate can
--  be independent of the core/peripheral clock.
      GCLK)
     with Size => 1;
   for FLEX_SPI_MR_BRSRCCLKSelect use
     (PERIPH_CLK => 0,
      GCLK => 1);

   --  Comparison Mode
   type FLEX_SPI_MR_CMPMODESelect is
     (--  Any character is received and comparison function drives CMP flag.
      FLAG_ONLY,
      --  Comparison condition must be met to start reception of all incoming
--  characters until REQCLR is set.
      START_CONDITION)
     with Size => 1;
   for FLEX_SPI_MR_CMPMODESelect use
     (FLAG_ONLY => 0,
      START_CONDITION => 1);

   subtype FLEXCOM_FLEX_SPI_MR_PCS_Field is HAL.UInt4;
   subtype FLEXCOM_FLEX_SPI_MR_DLYBCS_Field is HAL.UInt8;

   --  SPI Mode Register
   type FLEXCOM_FLEX_SPI_MR_Register is record
      --  Master/Slave Mode
      MSTR           : Boolean := False;
      --  Peripheral Select
      PS             : Boolean := False;
      --  Chip Select Decode
      PCSDEC         : Boolean := False;
      --  Bit Rate Source Clock
      BRSRCCLK       : FLEX_SPI_MR_BRSRCCLKSelect :=
                        SAM_SVD.FLEXCOM.PERIPH_CLK;
      --  Mode Fault Detection
      MODFDIS        : Boolean := False;
      --  Wait Data Read Before Transfer
      WDRBT          : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Local Loopback Enable
      LLB            : Boolean := False;
      --  Last Bit Half Period Compatibility
      LBHPC          : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Comparison Mode
      CMPMODE        : FLEX_SPI_MR_CMPMODESelect := SAM_SVD.FLEXCOM.FLAG_ONLY;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Peripheral Chip Select
      PCS            : FLEXCOM_FLEX_SPI_MR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Delay Between Chip Selects
      DLYBCS         : FLEXCOM_FLEX_SPI_MR_DLYBCS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_MR_Register use record
      MSTR           at 0 range 0 .. 0;
      PS             at 0 range 1 .. 1;
      PCSDEC         at 0 range 2 .. 2;
      BRSRCCLK       at 0 range 3 .. 3;
      MODFDIS        at 0 range 4 .. 4;
      WDRBT          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      LLB            at 0 range 7 .. 7;
      LBHPC          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CMPMODE        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      DLYBCS         at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_SPI_RDR_RD_Field is HAL.UInt16;
   subtype FLEXCOM_FLEX_SPI_RDR_PCS_Field is HAL.UInt4;

   --  SPI Receive Data Register
   type FLEXCOM_FLEX_SPI_RDR_Register is record
      --  Read-only. Receive Data
      RD             : FLEXCOM_FLEX_SPI_RDR_RD_Field;
      --  Read-only. Peripheral Chip Select
      PCS            : FLEXCOM_FLEX_SPI_RDR_PCS_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_RDR_Register use record
      RD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_RD8_0_Field is
     HAL.UInt8;
   subtype FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_RD8_1_Field is
     HAL.UInt8;
   subtype FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_RD8_2_Field is
     HAL.UInt8;
   subtype FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_RD8_3_Field is
     HAL.UInt8;

   --  SPI Receive Data Register
   type FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_Register is record
      --  Read-only. Receive Data
      RD8_0 : FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_RD8_0_Field;
      --  Read-only. Receive Data
      RD8_1 : FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_RD8_1_Field;
      --  Read-only. Receive Data
      RD8_2 : FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_RD8_2_Field;
      --  Read-only. Receive Data
      RD8_3 : FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_RD8_3_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_Register use record
      RD8_0 at 0 range 0 .. 7;
      RD8_1 at 0 range 8 .. 15;
      RD8_2 at 0 range 16 .. 23;
      RD8_3 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_16_MODE_RD16_0_Field is
     HAL.UInt16;
   subtype FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_16_MODE_RD16_1_Field is
     HAL.UInt16;

   --  SPI Receive Data Register
   type FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_16_MODE_Register is record
      --  Read-only. Receive Data
      RD16_0 : FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_16_MODE_RD16_0_Field;
      --  Read-only. Receive Data
      RD16_1 : FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_16_MODE_RD16_1_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_16_MODE_Register use record
      RD16_0 at 0 range 0 .. 15;
      RD16_1 at 0 range 16 .. 31;
   end record;

   subtype FLEXCOM_FLEX_SPI_TDR_TD_Field is HAL.UInt16;
   subtype FLEXCOM_FLEX_SPI_TDR_PCS_Field is HAL.UInt4;

   --  SPI Transmit Data Register
   type FLEXCOM_FLEX_SPI_TDR_Register is record
      --  Write-only. Transmit Data
      TD             : FLEXCOM_FLEX_SPI_TDR_TD_Field := 16#0#;
      --  Write-only. Peripheral Chip Select
      PCS            : FLEXCOM_FLEX_SPI_TDR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_TDR_Register use record
      TD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  FLEXCOM_FLEX_SPI_TDR_FIFO_MULTI_DATA_MODE_TD array element
   subtype FLEXCOM_FLEX_SPI_TDR_FIFO_MULTI_DATA_MODE_TD_Element is HAL.UInt16;

   --  FLEXCOM_FLEX_SPI_TDR_FIFO_MULTI_DATA_MODE_TD array
   type FLEXCOM_FLEX_SPI_TDR_FIFO_MULTI_DATA_MODE_TD_Field_Array is array (0 .. 1)
     of FLEXCOM_FLEX_SPI_TDR_FIFO_MULTI_DATA_MODE_TD_Element
     with Component_Size => 16, Size => 32;

   --  SPI Transmit Data Register
   type FLEXCOM_FLEX_SPI_TDR_FIFO_MULTI_DATA_MODE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TD as a value
            Val : HAL.UInt32;
         when True =>
            --  TD as an array
            Arr : FLEXCOM_FLEX_SPI_TDR_FIFO_MULTI_DATA_MODE_TD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_TDR_FIFO_MULTI_DATA_MODE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPI Status Register
   type FLEXCOM_FLEX_SPI_SR_Register is record
      --  Read-only. Receive Data Register Full (cleared by reading
      --  FLEX_SPI_RDR)
      RDRF           : Boolean;
      --  Read-only. Transmit Data Register Empty (cleared by writing
      --  FLEX_SPI_TDR)
      TDRE           : Boolean;
      --  Read-only. Mode Fault Error (cleared on read)
      MODF           : Boolean;
      --  Read-only. Overrun Error Status (cleared on read)
      OVRES          : Boolean;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. NSS Rising (cleared on read)
      NSSR           : Boolean;
      --  Read-only. Transmission Registers Empty (cleared by writing
      --  FLEX_SPI_TDR)
      TXEMPTY        : Boolean;
      --  Read-only. Underrun Error Status (Slave mode only) (cleared on read)
      UNDES          : Boolean;
      --  Read-only. Comparison Status (cleared on read)
      CMP            : Boolean;
      --  Read-only. Slave Frame Error (cleared on read)
      SFERR          : Boolean;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. SPI Enable Status
      SPIENS         : Boolean;
      --  unspecified
      Reserved_17_23 : HAL.UInt7;
      --  Read-only. Transmit FIFO Empty Flag (cleared on read)
      TXFEF          : Boolean;
      --  Read-only. Transmit FIFO Full Flag (cleared on read)
      TXFFF          : Boolean;
      --  Read-only. Transmit FIFO Threshold Flag (cleared on read)
      TXFTHF         : Boolean;
      --  Read-only. Receive FIFO Empty Flag
      RXFEF          : Boolean;
      --  Read-only. Receive FIFO Full Flag
      RXFFF          : Boolean;
      --  Read-only. Receive FIFO Threshold Flag
      RXFTHF         : Boolean;
      --  Read-only. Transmit FIFO Pointer Error Flag
      TXFPTEF        : Boolean;
      --  Read-only. Receive FIFO Pointer Error Flag
      RXFPTEF        : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_SR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      CMP            at 0 range 11 .. 11;
      SFERR          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      SPIENS         at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      TXFEF          at 0 range 24 .. 24;
      TXFFF          at 0 range 25 .. 25;
      TXFTHF         at 0 range 26 .. 26;
      RXFEF          at 0 range 27 .. 27;
      RXFFF          at 0 range 28 .. 28;
      RXFTHF         at 0 range 29 .. 29;
      TXFPTEF        at 0 range 30 .. 30;
      RXFPTEF        at 0 range 31 .. 31;
   end record;

   --  SPI Interrupt Enable Register
   type FLEXCOM_FLEX_SPI_IER_Register is record
      --  Write-only. Receive Data Register Full Interrupt Enable
      RDRF           : Boolean := False;
      --  Write-only. SPI Transmit Data Register Empty Interrupt Enable
      TDRE           : Boolean := False;
      --  Write-only. Mode Fault Error Interrupt Enable
      MODF           : Boolean := False;
      --  Write-only. Overrun Error Interrupt Enable
      OVRES          : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. NSS Rising Interrupt Enable
      NSSR           : Boolean := False;
      --  Write-only. Transmission Registers Empty Enable
      TXEMPTY        : Boolean := False;
      --  Write-only. Underrun Error Interrupt Enable
      UNDES          : Boolean := False;
      --  Write-only. Comparison Interrupt Enable
      CMP            : Boolean := False;
      --  unspecified
      Reserved_12_23 : HAL.UInt12 := 16#0#;
      --  Write-only. TXFEF Interrupt Enable
      TXFEF          : Boolean := False;
      --  Write-only. TXFFF Interrupt Enable
      TXFFF          : Boolean := False;
      --  Write-only. TXFTHF Interrupt Enable
      TXFTHF         : Boolean := False;
      --  Write-only. RXFEF Interrupt Enable
      RXFEF          : Boolean := False;
      --  Write-only. RXFFF Interrupt Enable
      RXFFF          : Boolean := False;
      --  Write-only. RXFTHF Interrupt Enable
      RXFTHF         : Boolean := False;
      --  Write-only. TXFPTEF Interrupt Enable
      TXFPTEF        : Boolean := False;
      --  Write-only. RXFPTEF Interrupt Enable
      RXFPTEF        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_IER_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      CMP            at 0 range 11 .. 11;
      Reserved_12_23 at 0 range 12 .. 23;
      TXFEF          at 0 range 24 .. 24;
      TXFFF          at 0 range 25 .. 25;
      TXFTHF         at 0 range 26 .. 26;
      RXFEF          at 0 range 27 .. 27;
      RXFFF          at 0 range 28 .. 28;
      RXFTHF         at 0 range 29 .. 29;
      TXFPTEF        at 0 range 30 .. 30;
      RXFPTEF        at 0 range 31 .. 31;
   end record;

   --  SPI Interrupt Disable Register
   type FLEXCOM_FLEX_SPI_IDR_Register is record
      --  Write-only. Receive Data Register Full Interrupt Disable
      RDRF           : Boolean := False;
      --  Write-only. SPI Transmit Data Register Empty Interrupt Disable
      TDRE           : Boolean := False;
      --  Write-only. Mode Fault Error Interrupt Disable
      MODF           : Boolean := False;
      --  Write-only. Overrun Error Interrupt Disable
      OVRES          : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Write-only. NSS Rising Interrupt Disable
      NSSR           : Boolean := False;
      --  Write-only. Transmission Registers Empty Disable
      TXEMPTY        : Boolean := False;
      --  Write-only. Underrun Error Interrupt Disable
      UNDES          : Boolean := False;
      --  Write-only. Comparison Interrupt Disable
      CMP            : Boolean := False;
      --  unspecified
      Reserved_12_23 : HAL.UInt12 := 16#0#;
      --  Write-only. TXFEF Interrupt Disable
      TXFEF          : Boolean := False;
      --  Write-only. TXFFF Interrupt Disable
      TXFFF          : Boolean := False;
      --  Write-only. TXFTHF Interrupt Disable
      TXFTHF         : Boolean := False;
      --  Write-only. RXFEF Interrupt Disable
      RXFEF          : Boolean := False;
      --  Write-only. RXFFF Interrupt Disable
      RXFFF          : Boolean := False;
      --  Write-only. RXFTHF Interrupt Disable
      RXFTHF         : Boolean := False;
      --  Write-only. TXFPTEF Interrupt Disable
      TXFPTEF        : Boolean := False;
      --  Write-only. RXFPTEF Interrupt Disable
      RXFPTEF        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_IDR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      CMP            at 0 range 11 .. 11;
      Reserved_12_23 at 0 range 12 .. 23;
      TXFEF          at 0 range 24 .. 24;
      TXFFF          at 0 range 25 .. 25;
      TXFTHF         at 0 range 26 .. 26;
      RXFEF          at 0 range 27 .. 27;
      RXFFF          at 0 range 28 .. 28;
      RXFTHF         at 0 range 29 .. 29;
      TXFPTEF        at 0 range 30 .. 30;
      RXFPTEF        at 0 range 31 .. 31;
   end record;

   --  SPI Interrupt Mask Register
   type FLEXCOM_FLEX_SPI_IMR_Register is record
      --  Read-only. Receive Data Register Full Interrupt Mask
      RDRF           : Boolean;
      --  Read-only. SPI Transmit Data Register Empty Interrupt Mask
      TDRE           : Boolean;
      --  Read-only. Mode Fault Error Interrupt Mask
      MODF           : Boolean;
      --  Read-only. Overrun Error Interrupt Mask
      OVRES          : Boolean;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. NSS Rising Interrupt Mask
      NSSR           : Boolean;
      --  Read-only. Transmission Registers Empty Mask
      TXEMPTY        : Boolean;
      --  Read-only. Underrun Error Interrupt Mask
      UNDES          : Boolean;
      --  Read-only. Comparison Interrupt Mask
      CMP            : Boolean;
      --  unspecified
      Reserved_12_23 : HAL.UInt12;
      --  Read-only. TXFEF Interrupt Mask
      TXFEF          : Boolean;
      --  Read-only. TXFFF Interrupt Mask
      TXFFF          : Boolean;
      --  Read-only. TXFTHF Interrupt Mask
      TXFTHF         : Boolean;
      --  Read-only. RXFEF Interrupt Mask
      RXFEF          : Boolean;
      --  Read-only. RXFFF Interrupt Mask
      RXFFF          : Boolean;
      --  Read-only. RXFTHF Interrupt Mask
      RXFTHF         : Boolean;
      --  Read-only. TXFPTEF Interrupt Mask
      TXFPTEF        : Boolean;
      --  Read-only. RXFPTEF Interrupt Mask
      RXFPTEF        : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_IMR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      CMP            at 0 range 11 .. 11;
      Reserved_12_23 at 0 range 12 .. 23;
      TXFEF          at 0 range 24 .. 24;
      TXFFF          at 0 range 25 .. 25;
      TXFTHF         at 0 range 26 .. 26;
      RXFEF          at 0 range 27 .. 27;
      RXFFF          at 0 range 28 .. 28;
      RXFTHF         at 0 range 29 .. 29;
      TXFPTEF        at 0 range 30 .. 30;
      RXFPTEF        at 0 range 31 .. 31;
   end record;

   --  Bits Per Transfer
   type FLEX_SPI_CSR_BITSSelect is
     (--  8 bits for transfer
      Val_8_BIT,
      --  9 bits for transfer
      Val_9_BIT,
      --  10 bits for transfer
      Val_10_BIT,
      --  11 bits for transfer
      Val_11_BIT,
      --  12 bits for transfer
      Val_12_BIT,
      --  13 bits for transfer
      Val_13_BIT,
      --  14 bits for transfer
      Val_14_BIT,
      --  15 bits for transfer
      Val_15_BIT,
      --  16 bits for transfer
      Val_16_BIT)
     with Size => 4;
   for FLEX_SPI_CSR_BITSSelect use
     (Val_8_BIT => 0,
      Val_9_BIT => 1,
      Val_10_BIT => 2,
      Val_11_BIT => 3,
      Val_12_BIT => 4,
      Val_13_BIT => 5,
      Val_14_BIT => 6,
      Val_15_BIT => 7,
      Val_16_BIT => 8);

   subtype FLEXCOM_FLEX_SPI_CSR_SCBR_Field is HAL.UInt8;
   subtype FLEXCOM_FLEX_SPI_CSR_DLYBS_Field is HAL.UInt8;
   subtype FLEXCOM_FLEX_SPI_CSR_DLYBCT_Field is HAL.UInt8;

   --  SPI Chip Select Register
   type FLEXCOM_FLEX_SPI_CSR_Register is record
      --  Clock Polarity
      CPOL   : Boolean := False;
      --  Clock Phase
      NCPHA  : Boolean := False;
      --  Chip Select Not Active After Transfer (Ignored if CSAAT = 1)
      CSNAAT : Boolean := False;
      --  Chip Select Active After Transfer
      CSAAT  : Boolean := False;
      --  Bits Per Transfer
      BITS   : FLEX_SPI_CSR_BITSSelect := SAM_SVD.FLEXCOM.Val_8_BIT;
      --  Serial Clock Bit Rate
      SCBR   : FLEXCOM_FLEX_SPI_CSR_SCBR_Field := 16#0#;
      --  Delay Before SPCK
      DLYBS  : FLEXCOM_FLEX_SPI_CSR_DLYBS_Field := 16#0#;
      --  Delay Between Consecutive Transfers
      DLYBCT : FLEXCOM_FLEX_SPI_CSR_DLYBCT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_CSR_Register use record
      CPOL   at 0 range 0 .. 0;
      NCPHA  at 0 range 1 .. 1;
      CSNAAT at 0 range 2 .. 2;
      CSAAT  at 0 range 3 .. 3;
      BITS   at 0 range 4 .. 7;
      SCBR   at 0 range 8 .. 15;
      DLYBS  at 0 range 16 .. 23;
      DLYBCT at 0 range 24 .. 31;
   end record;

   --  SPI Chip Select Register
   type FLEXCOM_FLEX_SPI_CSR_Registers is array (0 .. 3)
     of FLEXCOM_FLEX_SPI_CSR_Register;

   --  Transmit Data Register Empty Mode
   type FLEX_SPI_FMR_TXRDYMSelect is
     (--  TDRE will be at level '1' when at least one data can be written in the
--  Transmit FIFO.
      ONE_DATA,
      --  TDRE will be at level '1' when at least two data can be written in the
--  Transmit FIFO. Cannot be used if FLEX_SPI_MR.PS =1.
      TWO_DATA)
     with Size => 2;
   for FLEX_SPI_FMR_TXRDYMSelect use
     (ONE_DATA => 0,
      TWO_DATA => 1);

   --  Receive Data Register Full Mode
   type FLEX_SPI_FMR_RXRDYMSelect is
     (--  RDRF will be at level '1' when at least one unread data is in the Receive
--  FIFO.
      ONE_DATA,
      --  RDRF will be at level '1' when at least two unread data are in the Receive
--  FIFO. Cannot be used when FLEX_SPI_MR.MSTR =1, or if FLEX_SPI_MR.PS =1.
      TWO_DATA,
      --  RDRF will be at level '1' when at least four unread data are in the Receive
--  FIFO. Cannot be used when FLEX_SPI_CSRx.BITS is greater than 0, or if
--  FLEX_SPI_MR.MSTR =1, or if FLEX_SPI_MR.PS =1.
      FOUR_DATA)
     with Size => 2;
   for FLEX_SPI_FMR_RXRDYMSelect use
     (ONE_DATA => 0,
      TWO_DATA => 1,
      FOUR_DATA => 2);

   subtype FLEXCOM_FLEX_SPI_FMR_TXFTHRES_Field is HAL.UInt6;
   subtype FLEXCOM_FLEX_SPI_FMR_RXFTHRES_Field is HAL.UInt6;

   --  SPI FIFO Mode Register
   type FLEXCOM_FLEX_SPI_FMR_Register is record
      --  Transmit Data Register Empty Mode
      TXRDYM         : FLEX_SPI_FMR_TXRDYMSelect := SAM_SVD.FLEXCOM.ONE_DATA;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Receive Data Register Full Mode
      RXRDYM         : FLEX_SPI_FMR_RXRDYMSelect := SAM_SVD.FLEXCOM.ONE_DATA;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Transmit FIFO Threshold
      TXFTHRES       : FLEXCOM_FLEX_SPI_FMR_TXFTHRES_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Receive FIFO Threshold
      RXFTHRES       : FLEXCOM_FLEX_SPI_FMR_RXFTHRES_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_FMR_Register use record
      TXRDYM         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXRDYM         at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      TXFTHRES       at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      RXFTHRES       at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype FLEXCOM_FLEX_SPI_FLR_TXFL_Field is HAL.UInt6;
   subtype FLEXCOM_FLEX_SPI_FLR_RXFL_Field is HAL.UInt6;

   --  SPI FIFO Level Register
   type FLEXCOM_FLEX_SPI_FLR_Register is record
      --  Read-only. Transmit FIFO Level
      TXFL           : FLEXCOM_FLEX_SPI_FLR_TXFL_Field;
      --  unspecified
      Reserved_6_15  : HAL.UInt10;
      --  Read-only. Receive FIFO Level
      RXFL           : FLEXCOM_FLEX_SPI_FLR_RXFL_Field;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_FLR_Register use record
      TXFL           at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      RXFL           at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  FLEXCOM_FLEX_SPI_CMPR_VAL array element
   subtype FLEXCOM_FLEX_SPI_CMPR_VAL_Element is HAL.UInt16;

   --  FLEXCOM_FLEX_SPI_CMPR_VAL array
   type FLEXCOM_FLEX_SPI_CMPR_VAL_Field_Array is array (1 .. 2)
     of FLEXCOM_FLEX_SPI_CMPR_VAL_Element
     with Component_Size => 16, Size => 32;

   --  SPI Comparison Register
   type FLEXCOM_FLEX_SPI_CMPR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VAL as a value
            Val : HAL.UInt32;
         when True =>
            --  VAL as an array
            Arr : FLEXCOM_FLEX_SPI_CMPR_VAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_CMPR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Write Protection Key
   type FLEX_SPI_WPMR_WPKEYSelect is
     (--  Reset value for the field
      FLEX_SPI_WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of bits
--  WPEN, WPITEN and WPCREN. Always reads as 0
      PASSWD)
     with Size => 24;
   for FLEX_SPI_WPMR_WPKEYSelect use
     (FLEX_SPI_WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5460041);

   --  SPI Write Protection Mode Register
   type FLEXCOM_FLEX_SPI_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  Write Protection Interrupt Enable
      WPITEN       : Boolean := False;
      --  Write Protection Control Enable
      WPCREN       : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
      --  Write Protection Key
      WPKEY        : FLEX_SPI_WPMR_WPKEYSelect :=
                      FLEX_SPI_WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      WPITEN       at 0 range 1 .. 1;
      WPCREN       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_SPI_WPSR_WPVSRC_Field is HAL.UInt8;

   --  SPI Write Protection Status Register
   type FLEXCOM_FLEX_SPI_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : FLEXCOM_FLEX_SPI_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  TWI Control Register
   type FLEXCOM_FLEX_TWI_CR_Register is record
      --  Write-only. Send a START Condition
      START          : Boolean := False;
      --  Write-only. Send a STOP Condition
      STOP           : Boolean := False;
      --  Write-only. TWI Master Mode Enabled
      MSEN           : Boolean := False;
      --  Write-only. TWI Master Mode Disabled
      MSDIS          : Boolean := False;
      --  Write-only. TWI Slave Mode Enabled
      SVEN           : Boolean := False;
      --  Write-only. TWI Slave Mode Disabled
      SVDIS          : Boolean := False;
      --  Write-only. SMBus Quick Command
      QUICK          : Boolean := False;
      --  Write-only. Software Reset
      SWRST          : Boolean := False;
      --  Write-only. TWI High-Speed Mode Enabled
      HSEN           : Boolean := False;
      --  Write-only. TWI High-Speed Mode Disabled
      HSDIS          : Boolean := False;
      --  Write-only. SMBus Mode Enabled
      SMBEN          : Boolean := False;
      --  Write-only. SMBus Mode Disabled
      SMBDIS         : Boolean := False;
      --  Write-only. Packet Error Checking Enable
      PECEN          : Boolean := False;
      --  Write-only. Packet Error Checking Disable
      PECDIS         : Boolean := False;
      --  Write-only. PEC Request
      PECRQ          : Boolean := False;
      --  Write-only. Bus CLEAR Command
      CLEAR          : Boolean := False;
      --  Write-only. Alternative Command Mode Enable
      ACMEN          : Boolean := False;
      --  Write-only. Alternative Command Mode Disable
      ACMDIS         : Boolean := False;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Write-only. Transmit Holding Register Clear
      THRCLR         : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Write-only. Lock Clear
      LOCKCLR        : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Write-only. FIFO Enable
      FIFOEN         : Boolean := False;
      --  Write-only. FIFO Disable
      FIFODIS        : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_CR_Register use record
      START          at 0 range 0 .. 0;
      STOP           at 0 range 1 .. 1;
      MSEN           at 0 range 2 .. 2;
      MSDIS          at 0 range 3 .. 3;
      SVEN           at 0 range 4 .. 4;
      SVDIS          at 0 range 5 .. 5;
      QUICK          at 0 range 6 .. 6;
      SWRST          at 0 range 7 .. 7;
      HSEN           at 0 range 8 .. 8;
      HSDIS          at 0 range 9 .. 9;
      SMBEN          at 0 range 10 .. 10;
      SMBDIS         at 0 range 11 .. 11;
      PECEN          at 0 range 12 .. 12;
      PECDIS         at 0 range 13 .. 13;
      PECRQ          at 0 range 14 .. 14;
      CLEAR          at 0 range 15 .. 15;
      ACMEN          at 0 range 16 .. 16;
      ACMDIS         at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      THRCLR         at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      LOCKCLR        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FIFOEN         at 0 range 28 .. 28;
      FIFODIS        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  TWI Control Register
   type FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_Register is record
      --  Write-only. Send a START Condition
      START          : Boolean := False;
      --  Write-only. Send a STOP Condition
      STOP           : Boolean := False;
      --  Write-only. TWI Master Mode Enabled
      MSEN           : Boolean := False;
      --  Write-only. TWI Master Mode Disabled
      MSDIS          : Boolean := False;
      --  Write-only. TWI Slave Mode Enabled
      SVEN           : Boolean := False;
      --  Write-only. TWI Slave Mode Disabled
      SVDIS          : Boolean := False;
      --  Write-only. SMBus Quick Command
      QUICK          : Boolean := False;
      --  Write-only. Software Reset
      SWRST          : Boolean := False;
      --  Write-only. TWI High-Speed Mode Enabled
      HSEN           : Boolean := False;
      --  Write-only. TWI High-Speed Mode Disabled
      HSDIS          : Boolean := False;
      --  Write-only. SMBus Mode Enabled
      SMBEN          : Boolean := False;
      --  Write-only. SMBus Mode Disabled
      SMBDIS         : Boolean := False;
      --  Write-only. Packet Error Checking Enable
      PECEN          : Boolean := False;
      --  Write-only. Packet Error Checking Disable
      PECDIS         : Boolean := False;
      --  Write-only. PEC Request
      PECRQ          : Boolean := False;
      --  Write-only. Bus CLEAR Command
      CLEAR          : Boolean := False;
      --  Write-only. Alternative Command Mode Enable
      ACMEN          : Boolean := False;
      --  Write-only. Alternative Command Mode Disable
      ACMDIS         : Boolean := False;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Write-only. Transmit FIFO Clear
      TXFCLR         : Boolean := False;
      --  Write-only. Receive FIFO Clear
      RXFCLR         : Boolean := False;
      --  Write-only. Transmit FIFO Lock CLEAR
      TXFLCLR        : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Write-only. FIFO Enable
      FIFOEN         : Boolean := False;
      --  Write-only. FIFO Disable
      FIFODIS        : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_Register use record
      START          at 0 range 0 .. 0;
      STOP           at 0 range 1 .. 1;
      MSEN           at 0 range 2 .. 2;
      MSDIS          at 0 range 3 .. 3;
      SVEN           at 0 range 4 .. 4;
      SVDIS          at 0 range 5 .. 5;
      QUICK          at 0 range 6 .. 6;
      SWRST          at 0 range 7 .. 7;
      HSEN           at 0 range 8 .. 8;
      HSDIS          at 0 range 9 .. 9;
      SMBEN          at 0 range 10 .. 10;
      SMBDIS         at 0 range 11 .. 11;
      PECEN          at 0 range 12 .. 12;
      PECDIS         at 0 range 13 .. 13;
      PECRQ          at 0 range 14 .. 14;
      CLEAR          at 0 range 15 .. 15;
      ACMEN          at 0 range 16 .. 16;
      ACMDIS         at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      TXFCLR         at 0 range 24 .. 24;
      RXFCLR         at 0 range 25 .. 25;
      TXFLCLR        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FIFOEN         at 0 range 28 .. 28;
      FIFODIS        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Internal Device Address Size
   type FLEX_TWI_MMR_IADRSZSelect is
     (--  No internal device address
      NONE,
      --  One-byte internal device address
      Val_1_BYTE,
      --  Two-byte internal device address
      Val_2_BYTE,
      --  Three-byte internal device address
      Val_3_BYTE)
     with Size => 2;
   for FLEX_TWI_MMR_IADRSZSelect use
     (NONE => 0,
      Val_1_BYTE => 1,
      Val_2_BYTE => 2,
      Val_3_BYTE => 3);

   subtype FLEXCOM_FLEX_TWI_MMR_DADR_Field is HAL.UInt7;

   --  TWI Master Mode Register
   type FLEXCOM_FLEX_TWI_MMR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Internal Device Address Size
      IADRSZ         : FLEX_TWI_MMR_IADRSZSelect := SAM_SVD.FLEXCOM.NONE;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Master Read Direction
      MREAD          : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Device Address
      DADR           : FLEXCOM_FLEX_TWI_MMR_DADR_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  No Auto-Stop On NACK Error
      NOAP           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_MMR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      IADRSZ         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      MREAD          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DADR           at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      NOAP           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_SMR_MASK_Field is HAL.UInt7;
   subtype FLEXCOM_FLEX_TWI_SMR_SADR_Field is HAL.UInt7;

   --  TWI Slave Mode Register
   type FLEXCOM_FLEX_TWI_SMR_Register is record
      --  Slave Receiver Data Phase NACK Enable
      NACKEN         : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  SMBus Default Address
      SMDA           : Boolean := False;
      --  SMBus Host Header
      SMHH           : Boolean := False;
      --  Slave Address Treated as Data
      SADAT          : Boolean := False;
      --  TWI Bus Selection
      BSEL           : Boolean := False;
      --  Clock Wait State Disable
      SCLWSDIS       : Boolean := False;
      --  Slave Sniffer Mode
      SNIFF          : Boolean := False;
      --  Slave Address Mask
      MASK           : FLEXCOM_FLEX_TWI_SMR_MASK_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Slave Address
      SADR           : FLEXCOM_FLEX_TWI_SMR_SADR_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_SMR_Register use record
      NACKEN         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      SMDA           at 0 range 2 .. 2;
      SMHH           at 0 range 3 .. 3;
      SADAT          at 0 range 4 .. 4;
      BSEL           at 0 range 5 .. 5;
      SCLWSDIS       at 0 range 6 .. 6;
      SNIFF          at 0 range 7 .. 7;
      MASK           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SADR           at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_IADR_IADR_Field is HAL.UInt24;

   --  TWI Internal Address Register
   type FLEXCOM_FLEX_TWI_IADR_Register is record
      --  Internal Address
      IADR           : FLEXCOM_FLEX_TWI_IADR_IADR_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_IADR_Register use record
      IADR           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_CWGR_CLDIV_Field is HAL.UInt8;
   subtype FLEXCOM_FLEX_TWI_CWGR_CHDIV_Field is HAL.UInt8;
   subtype FLEXCOM_FLEX_TWI_CWGR_CKDIV_Field is HAL.UInt3;

   --  Bit Rate Source Clock
   type FLEX_TWI_CWGR_BRSRCCLKSelect is
     (--  The peripheral clock is the source clock for the bit rate generation.
      PERIPH_CLK,
      --  GCLK is the source clock for the bit rate generation, thus the bit rate can
--  be independent of the core/peripheral clock.
      GCLK)
     with Size => 1;
   for FLEX_TWI_CWGR_BRSRCCLKSelect use
     (PERIPH_CLK => 0,
      GCLK => 1);

   subtype FLEXCOM_FLEX_TWI_CWGR_HOLD_Field is HAL.UInt6;

   --  TWI Clock Waveform Generator Register
   type FLEXCOM_FLEX_TWI_CWGR_Register is record
      --  Clock Low Divider
      CLDIV          : FLEXCOM_FLEX_TWI_CWGR_CLDIV_Field := 16#0#;
      --  Clock High Divider
      CHDIV          : FLEXCOM_FLEX_TWI_CWGR_CHDIV_Field := 16#0#;
      --  Clock Divider
      CKDIV          : FLEXCOM_FLEX_TWI_CWGR_CKDIV_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Bit Rate Source Clock
      BRSRCCLK       : FLEX_TWI_CWGR_BRSRCCLKSelect :=
                        SAM_SVD.FLEXCOM.PERIPH_CLK;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  TWD Hold Time Versus TWCK Falling
      HOLD           : FLEXCOM_FLEX_TWI_CWGR_HOLD_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_CWGR_Register use record
      CLDIV          at 0 range 0 .. 7;
      CHDIV          at 0 range 8 .. 15;
      CKDIV          at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      BRSRCCLK       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      HOLD           at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  TWI Status Register
   type FLEXCOM_FLEX_TWI_SR_Register is record
      --  Read-only. Transmission Completed (cleared by writing FLEX_TWI_THR)
      TXCOMP         : Boolean;
      --  Read-only. Receive Holding Register Ready (cleared when reading
      --  FLEX_TWI_RHR)
      RXRDY          : Boolean;
      --  Read-only. Transmit Holding Register Ready (cleared by writing
      --  FLEX_TWI_THR)
      TXRDY          : Boolean;
      --  Read-only. Slave Read
      SVREAD         : Boolean;
      --  Read-only. Slave Access
      SVACC          : Boolean;
      --  Read-only. General Call Access (cleared on read)
      GACC           : Boolean;
      --  Read-only. Overrun Error (cleared on read)
      OVRE           : Boolean;
      --  Read-only. Underrun Error (cleared on read)
      UNRE           : Boolean;
      --  Read-only. Not Acknowledged (cleared on read)
      NACK           : Boolean;
      --  Read-only. Arbitration Lost (cleared on read)
      ARBLST         : Boolean;
      --  Read-only. Clock Wait State
      SCLWS          : Boolean;
      --  Read-only. End Of Slave Access (cleared on read)
      EOSACC         : Boolean;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Master Code Acknowledge (cleared on read)
      MCACK          : Boolean;
      --  Read-only. SMBus Alert Flag (cleared on read)
      SMBAF          : Boolean;
      --  Read-only. Timeout Error (cleared on read)
      TOUT           : Boolean;
      --  Read-only. PEC Error (cleared on read)
      PECERR         : Boolean;
      --  Read-only. SMBus Default Address Match (cleared on read)
      SMBDAM         : Boolean;
      --  Read-only. SMBus Host Header Address Match (cleared on read)
      SMBHHM         : Boolean;
      --  unspecified
      Reserved_22_22 : HAL.Bit;
      --  Read-only. TWI Lock Due to Frame Errors
      LOCK           : Boolean;
      --  Read-only. SCL Line Value
      SCL            : Boolean;
      --  Read-only. SDA Line Value
      SDA            : Boolean;
      --  Read-only. Start Repeated
      SR             : Boolean;
      --  unspecified
      Reserved_27_31 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_SR_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      SVREAD         at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCLWS          at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MCACK          at 0 range 16 .. 16;
      SMBAF          at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      LOCK           at 0 range 23 .. 23;
      SCL            at 0 range 24 .. 24;
      SDA            at 0 range 25 .. 25;
      SR             at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  TWI Status Register
   type FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_Register is record
      --  Read-only. Transmission Completed (cleared by writing FLEX_TWI_THR)
      TXCOMP         : Boolean;
      --  Read-only. Receive Holding Register Ready (cleared when reading
      --  FLEX_TWI_RHR)
      RXRDY          : Boolean;
      --  Read-only. Transmit Holding Register Ready (cleared by writing
      --  FLEX_TWI_THR)
      TXRDY          : Boolean;
      --  Read-only. Slave Read
      SVREAD         : Boolean;
      --  Read-only. Slave Access
      SVACC          : Boolean;
      --  Read-only. General Call Access (cleared on read)
      GACC           : Boolean;
      --  Read-only. Overrun Error (cleared on read)
      OVRE           : Boolean;
      --  Read-only. Underrun Error (cleared on read)
      UNRE           : Boolean;
      --  Read-only. Not Acknowledged (cleared on read)
      NACK           : Boolean;
      --  Read-only. Arbitration Lost (cleared on read)
      ARBLST         : Boolean;
      --  Read-only. Clock Wait State
      SCLWS          : Boolean;
      --  Read-only. End Of Slave Access (cleared on read)
      EOSACC         : Boolean;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Master Code Acknowledge (cleared on read)
      MCACK          : Boolean;
      --  Read-only. SMBus Alert Flag (cleared on read)
      SMBAF          : Boolean;
      --  Read-only. Timeout Error (cleared on read)
      TOUT           : Boolean;
      --  Read-only. PEC Error (cleared on read)
      PECERR         : Boolean;
      --  Read-only. SMBus Default Address Match (cleared on read)
      SMBDAM         : Boolean;
      --  Read-only. SMBus Host Header Address Match (cleared on read)
      SMBHHM         : Boolean;
      --  unspecified
      Reserved_22_22 : HAL.Bit;
      --  Read-only. Transmit FIFO Lock
      TXFLOCK        : Boolean;
      --  Read-only. SCL Line Value
      SCL            : Boolean;
      --  Read-only. SDA Line Value
      SDA            : Boolean;
      --  Read-only. Start Repeated
      SR             : Boolean;
      --  unspecified
      Reserved_27_31 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      SVREAD         at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCLWS          at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MCACK          at 0 range 16 .. 16;
      SMBAF          at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      TXFLOCK        at 0 range 23 .. 23;
      SCL            at 0 range 24 .. 24;
      SDA            at 0 range 25 .. 25;
      SR             at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  TWI Interrupt Enable Register
   type FLEXCOM_FLEX_TWI_IER_Register is record
      --  Write-only. Transmission Completed Interrupt Enable
      TXCOMP         : Boolean := False;
      --  Write-only. Receive Holding Register Ready Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. Transmit Holding Register Ready Interrupt Enable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write-only. Slave Access Interrupt Enable
      SVACC          : Boolean := False;
      --  Write-only. General Call Access Interrupt Enable
      GACC           : Boolean := False;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  Write-only. Underrun Error Interrupt Enable
      UNRE           : Boolean := False;
      --  Write-only. Not Acknowledge Interrupt Enable
      NACK           : Boolean := False;
      --  Write-only. Arbitration Lost Interrupt Enable
      ARBLST         : Boolean := False;
      --  Write-only. Clock Wait State Interrupt Enable
      SCL_WS         : Boolean := False;
      --  Write-only. End Of Slave Access Interrupt Enable
      EOSACC         : Boolean := False;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : Boolean := False;
      --  Write-only. End of Transmit Buffer Interrupt Enable
      ENDTX          : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : Boolean := False;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE         : Boolean := False;
      --  Write-only. Master Code Acknowledge Interrupt Enable
      MCACK          : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Write-only. Timeout Error Interrupt Enable
      TOUT           : Boolean := False;
      --  Write-only. PEC Error Interrupt Enable
      PECERR         : Boolean := False;
      --  Write-only. SMBus Default Address Match Interrupt Enable
      SMBDAM         : Boolean := False;
      --  Write-only. SMBus Host Header Address Match Interrupt Enable
      SMBHHM         : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_IER_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCL_WS         at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      ENDRX          at 0 range 12 .. 12;
      ENDTX          at 0 range 13 .. 13;
      RXBUFF         at 0 range 14 .. 14;
      TXBUFE         at 0 range 15 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  TWI Interrupt Disable Register
   type FLEXCOM_FLEX_TWI_IDR_Register is record
      --  Write-only. Transmission Completed Interrupt Disable
      TXCOMP         : Boolean := False;
      --  Write-only. Receive Holding Register Ready Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. Transmit Holding Register Ready Interrupt Disable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write-only. Slave Access Interrupt Disable
      SVACC          : Boolean := False;
      --  Write-only. General Call Access Interrupt Disable
      GACC           : Boolean := False;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : Boolean := False;
      --  Write-only. Underrun Error Interrupt Disable
      UNRE           : Boolean := False;
      --  Write-only. Not Acknowledge Interrupt Disable
      NACK           : Boolean := False;
      --  Write-only. Arbitration Lost Interrupt Disable
      ARBLST         : Boolean := False;
      --  Write-only. Clock Wait State Interrupt Disable
      SCL_WS         : Boolean := False;
      --  Write-only. End Of Slave Access Interrupt Disable
      EOSACC         : Boolean := False;
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : Boolean := False;
      --  Write-only. End of Transmit Buffer Interrupt Disable
      ENDTX          : Boolean := False;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : Boolean := False;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXBUFE         : Boolean := False;
      --  Write-only. Master Code Acknowledge Interrupt Disable
      MCACK          : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Write-only. Timeout Error Interrupt Disable
      TOUT           : Boolean := False;
      --  Write-only. PEC Error Interrupt Disable
      PECERR         : Boolean := False;
      --  Write-only. SMBus Default Address Match Interrupt Disable
      SMBDAM         : Boolean := False;
      --  Write-only. SMBus Host Header Address Match Interrupt Disable
      SMBHHM         : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_IDR_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCL_WS         at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      ENDRX          at 0 range 12 .. 12;
      ENDTX          at 0 range 13 .. 13;
      RXBUFF         at 0 range 14 .. 14;
      TXBUFE         at 0 range 15 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  TWI Interrupt Mask Register
   type FLEXCOM_FLEX_TWI_IMR_Register is record
      --  Read-only. Transmission Completed Interrupt Mask
      TXCOMP         : Boolean;
      --  Read-only. Receive Holding Register Ready Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. Transmit Holding Register Ready Interrupt Mask
      TXRDY          : Boolean;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Slave Access Interrupt Mask
      SVACC          : Boolean;
      --  Read-only. General Call Access Interrupt Mask
      GACC           : Boolean;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : Boolean;
      --  Read-only. Underrun Error Interrupt Mask
      UNRE           : Boolean;
      --  Read-only. Not Acknowledge Interrupt Mask
      NACK           : Boolean;
      --  Read-only. Arbitration Lost Interrupt Mask
      ARBLST         : Boolean;
      --  Read-only. Clock Wait State Interrupt Mask
      SCL_WS         : Boolean;
      --  Read-only. End Of Slave Access Interrupt Mask
      EOSACC         : Boolean;
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : Boolean;
      --  Read-only. End of Transmit Buffer Interrupt Mask
      ENDTX          : Boolean;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : Boolean;
      --  Read-only. Transmit Buffer Empty Interrupt Mask
      TXBUFE         : Boolean;
      --  Read-only. Master Code Acknowledge Interrupt Mask
      MCACK          : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Timeout Error Interrupt Mask
      TOUT           : Boolean;
      --  Read-only. PEC Error Interrupt Mask
      PECERR         : Boolean;
      --  Read-only. SMBus Default Address Match Interrupt Mask
      SMBDAM         : Boolean;
      --  Read-only. SMBus Host Header Address Match Interrupt Mask
      SMBHHM         : Boolean;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_IMR_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCL_WS         at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      ENDRX          at 0 range 12 .. 12;
      ENDTX          at 0 range 13 .. 13;
      RXBUFF         at 0 range 14 .. 14;
      TXBUFE         at 0 range 15 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_RHR_RXDATA_Field is HAL.UInt8;

   --  Start State (Slave Sniffer Mode only)
   type FLEX_TWI_RHR_SSTATESelect is
     (--  No START detected with the logged data
      NOSTART,
      --  START (S) detected with the logged data
      START,
      --  Repeated START (Sr) detected with the logged data
      RSTART,
      --  Not defined
      UNDEF)
     with Size => 2;
   for FLEX_TWI_RHR_SSTATESelect use
     (NOSTART => 0,
      START => 1,
      RSTART => 2,
      UNDEF => 3);

   --  Acknowledge State (Slave Sniffer Mode only)
   type FLEX_TWI_RHR_ASTATESelect is
     (--  No Acknowledge or Nacknowledge detected after previously logged data
      NONE,
      --  Acknowledge (A) detected after previously logged data
      ACK,
      --  Nacknowledge (NA) detected after previously logged data
      NACK,
      --  Not defined
      UNDEF)
     with Size => 2;
   for FLEX_TWI_RHR_ASTATESelect use
     (NONE => 0,
      ACK => 1,
      NACK => 2,
      UNDEF => 3);

   --  TWI Receive Holding Register
   type FLEXCOM_FLEX_TWI_RHR_Register is record
      --  Read-only. Master or Slave Receive Holding Data
      RXDATA         : FLEXCOM_FLEX_TWI_RHR_RXDATA_Field;
      --  Read-only. Start State (Slave Sniffer Mode only)
      SSTATE         : FLEX_TWI_RHR_SSTATESelect;
      --  Read-only. Stop State (Slave Sniffer Mode only)
      PSTATE         : Boolean;
      --  Read-only. Acknowledge State (Slave Sniffer Mode only)
      ASTATE         : FLEX_TWI_RHR_ASTATESelect;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_RHR_Register use record
      RXDATA         at 0 range 0 .. 7;
      SSTATE         at 0 range 8 .. 9;
      PSTATE         at 0 range 10 .. 10;
      ASTATE         at 0 range 11 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  FLEXCOM_FLEX_TWI_RHR_FIFO_ENABLED_MODE_RXDATA array element
   subtype FLEXCOM_FLEX_TWI_RHR_FIFO_ENABLED_MODE_RXDATA_Element is HAL.UInt8;

   --  FLEXCOM_FLEX_TWI_RHR_FIFO_ENABLED_MODE_RXDATA array
   type FLEXCOM_FLEX_TWI_RHR_FIFO_ENABLED_MODE_RXDATA_Field_Array is array (0 .. 3)
     of FLEXCOM_FLEX_TWI_RHR_FIFO_ENABLED_MODE_RXDATA_Element
     with Component_Size => 8, Size => 32;

   --  TWI Receive Holding Register
   type FLEXCOM_FLEX_TWI_RHR_FIFO_ENABLED_MODE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RXDATA as a value
            Val : HAL.UInt32;
         when True =>
            --  RXDATA as an array
            Arr : FLEXCOM_FLEX_TWI_RHR_FIFO_ENABLED_MODE_RXDATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_RHR_FIFO_ENABLED_MODE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_THR_TXDATA_Field is HAL.UInt8;

   --  TWI Transmit Holding Register
   type FLEXCOM_FLEX_TWI_THR_Register is record
      --  Write-only. Master or Slave Transmit Holding Data
      TXDATA        : FLEXCOM_FLEX_TWI_THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_THR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  FLEXCOM_FLEX_TWI_THR_FIFO_ENABLED_MODE_TXDATA array element
   subtype FLEXCOM_FLEX_TWI_THR_FIFO_ENABLED_MODE_TXDATA_Element is HAL.UInt8;

   --  FLEXCOM_FLEX_TWI_THR_FIFO_ENABLED_MODE_TXDATA array
   type FLEXCOM_FLEX_TWI_THR_FIFO_ENABLED_MODE_TXDATA_Field_Array is array (0 .. 3)
     of FLEXCOM_FLEX_TWI_THR_FIFO_ENABLED_MODE_TXDATA_Element
     with Component_Size => 8, Size => 32;

   --  TWI Transmit Holding Register
   type FLEXCOM_FLEX_TWI_THR_FIFO_ENABLED_MODE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXDATA as a value
            Val : HAL.UInt32;
         when True =>
            --  TXDATA as an array
            Arr : FLEXCOM_FLEX_TWI_THR_FIFO_ENABLED_MODE_TXDATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_THR_FIFO_ENABLED_MODE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_SMBTR_PRESC_Field is HAL.UInt4;
   subtype FLEXCOM_FLEX_TWI_SMBTR_TLOWS_Field is HAL.UInt8;
   subtype FLEXCOM_FLEX_TWI_SMBTR_TLOWM_Field is HAL.UInt8;
   subtype FLEXCOM_FLEX_TWI_SMBTR_THMAX_Field is HAL.UInt8;

   --  TWI SMBus Timing Register
   type FLEXCOM_FLEX_TWI_SMBTR_Register is record
      --  SMBus Clock Prescaler
      PRESC        : FLEXCOM_FLEX_TWI_SMBTR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
      --  Slave Clock Stretch Maximum Cycles
      TLOWS        : FLEXCOM_FLEX_TWI_SMBTR_TLOWS_Field := 16#0#;
      --  Master Clock Stretch Maximum Cycles
      TLOWM        : FLEXCOM_FLEX_TWI_SMBTR_TLOWM_Field := 16#0#;
      --  Clock High Maximum Cycles
      THMAX        : FLEXCOM_FLEX_TWI_SMBTR_THMAX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_SMBTR_Register use record
      PRESC        at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      TLOWS        at 0 range 8 .. 15;
      TLOWM        at 0 range 16 .. 23;
      THMAX        at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_ACR_DATAL_Field is HAL.UInt8;
   subtype FLEXCOM_FLEX_TWI_ACR_NDATAL_Field is HAL.UInt8;

   --  TWI Alternative Command Register
   type FLEXCOM_FLEX_TWI_ACR_Register is record
      --  Data Length
      DATAL          : FLEXCOM_FLEX_TWI_ACR_DATAL_Field := 16#0#;
      --  Transfer Direction
      DIR            : Boolean := False;
      --  PEC Request (SMBus Mode only)
      PEC            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Next Data Length
      NDATAL         : FLEXCOM_FLEX_TWI_ACR_NDATAL_Field := 16#0#;
      --  Next Transfer Direction
      NDIR           : Boolean := False;
      --  Next PEC Request (SMBus Mode only)
      NPEC           : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_ACR_Register use record
      DATAL          at 0 range 0 .. 7;
      DIR            at 0 range 8 .. 8;
      PEC            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      NDATAL         at 0 range 16 .. 23;
      NDIR           at 0 range 24 .. 24;
      NPEC           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_FILTR_THRES_Field is HAL.UInt3;

   --  TWI Filter Register
   type FLEXCOM_FLEX_TWI_FILTR_Register is record
      --  RX Digital Filter
      FILT           : Boolean := False;
      --  PAD Filter Enable
      PADFEN         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Digital Filter Threshold
      THRES          : FLEXCOM_FLEX_TWI_FILTR_THRES_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_FILTR_Register use record
      FILT           at 0 range 0 .. 0;
      PADFEN         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      THRES          at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Transmitter Ready Mode
   type FLEX_TWI_FMR_TXRDYMSelect is
     (--  TXRDY will be at level '1' when at least one data can be written in the
--  Transmit FIFO
      ONE_DATA,
      --  TXRDY will be at level '1' when at least two data can be written in the
--  Transmit FIFO
      TWO_DATA,
      --  TXRDY will be at level '1' when at least four data can be written in the
--  Transmit FIFO
      FOUR_DATA)
     with Size => 2;
   for FLEX_TWI_FMR_TXRDYMSelect use
     (ONE_DATA => 0,
      TWO_DATA => 1,
      FOUR_DATA => 2);

   --  Receiver Ready Mode
   type FLEX_TWI_FMR_RXRDYMSelect is
     (--  RXRDY will be at level '1' when at least one unread data is in the Receive
--  FIFO
      ONE_DATA,
      --  RXRDY will be at level '1' when at least two unread data are in the Receive
--  FIFO
      TWO_DATA,
      --  RXRDY will be at level '1' when at least four unread data are in the
--  Receive FIFO
      FOUR_DATA)
     with Size => 2;
   for FLEX_TWI_FMR_RXRDYMSelect use
     (ONE_DATA => 0,
      TWO_DATA => 1,
      FOUR_DATA => 2);

   subtype FLEXCOM_FLEX_TWI_FMR_TXFTHRES_Field is HAL.UInt6;
   subtype FLEXCOM_FLEX_TWI_FMR_RXFTHRES_Field is HAL.UInt6;

   --  TWI FIFO Mode Register
   type FLEXCOM_FLEX_TWI_FMR_Register is record
      --  Transmitter Ready Mode
      TXRDYM         : FLEX_TWI_FMR_TXRDYMSelect := SAM_SVD.FLEXCOM.ONE_DATA;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Receiver Ready Mode
      RXRDYM         : FLEX_TWI_FMR_RXRDYMSelect := SAM_SVD.FLEXCOM.ONE_DATA;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Transmit FIFO Threshold
      TXFTHRES       : FLEXCOM_FLEX_TWI_FMR_TXFTHRES_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Receive FIFO Threshold
      RXFTHRES       : FLEXCOM_FLEX_TWI_FMR_RXFTHRES_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_FMR_Register use record
      TXRDYM         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXRDYM         at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      TXFTHRES       at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      RXFTHRES       at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_FLR_TXFL_Field is HAL.UInt6;
   subtype FLEXCOM_FLEX_TWI_FLR_RXFL_Field is HAL.UInt6;

   --  TWI FIFO Level Register
   type FLEXCOM_FLEX_TWI_FLR_Register is record
      --  Read-only. Transmit FIFO Level
      TXFL           : FLEXCOM_FLEX_TWI_FLR_TXFL_Field;
      --  unspecified
      Reserved_6_15  : HAL.UInt10;
      --  Read-only. Receive FIFO Level
      RXFL           : FLEXCOM_FLEX_TWI_FLR_RXFL_Field;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_FLR_Register use record
      TXFL           at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      RXFL           at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  TWI FIFO Status Register
   type FLEXCOM_FLEX_TWI_FSR_Register is record
      --  Read-only. Transmit FIFO Empty Flag (cleared on read)
      TXFEF         : Boolean;
      --  Read-only. Transmit FIFO Full Flag (cleared on read)
      TXFFF         : Boolean;
      --  Read-only. Transmit FIFO Threshold Flag (cleared on read)
      TXFTHF        : Boolean;
      --  Read-only. Receive FIFO Empty Flag
      RXFEF         : Boolean;
      --  Read-only. Receive FIFO Full Flag
      RXFFF         : Boolean;
      --  Read-only. Receive FIFO Threshold Flag
      RXFTHF        : Boolean;
      --  Read-only. Transmit FIFO Pointer Error Flag
      TXFPTEF       : Boolean;
      --  Read-only. Receive FIFO Pointer Error Flag
      RXFPTEF       : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_FSR_Register use record
      TXFEF         at 0 range 0 .. 0;
      TXFFF         at 0 range 1 .. 1;
      TXFTHF        at 0 range 2 .. 2;
      RXFEF         at 0 range 3 .. 3;
      RXFFF         at 0 range 4 .. 4;
      RXFTHF        at 0 range 5 .. 5;
      TXFPTEF       at 0 range 6 .. 6;
      RXFPTEF       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  TWI FIFO Interrupt Enable Register
   type FLEXCOM_FLEX_TWI_FIER_Register is record
      --  Write-only. TXFEF Interrupt Enable
      TXFEF         : Boolean := False;
      --  Write-only. TXFFF Interrupt Enable
      TXFFF         : Boolean := False;
      --  Write-only. TXFTHF Interrupt Enable
      TXFTHF        : Boolean := False;
      --  Write-only. RXFEF Interrupt Enable
      RXFEF         : Boolean := False;
      --  Write-only. RXFFF Interrupt Enable
      RXFFF         : Boolean := False;
      --  Write-only. RXFTHF Interrupt Enable
      RXFTHF        : Boolean := False;
      --  Write-only. TXFPTEF Interrupt Enable
      TXFPTEF       : Boolean := False;
      --  Write-only. RXFPTEF Interrupt Enable
      RXFPTEF       : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_FIER_Register use record
      TXFEF         at 0 range 0 .. 0;
      TXFFF         at 0 range 1 .. 1;
      TXFTHF        at 0 range 2 .. 2;
      RXFEF         at 0 range 3 .. 3;
      RXFFF         at 0 range 4 .. 4;
      RXFTHF        at 0 range 5 .. 5;
      TXFPTEF       at 0 range 6 .. 6;
      RXFPTEF       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  TWI FIFO Interrupt Disable Register
   type FLEXCOM_FLEX_TWI_FIDR_Register is record
      --  Write-only. TXFEF Interrupt Disable
      TXFEF         : Boolean := False;
      --  Write-only. TXFFF Interrupt Disable
      TXFFF         : Boolean := False;
      --  Write-only. TXFTHF Interrupt Disable
      TXFTHF        : Boolean := False;
      --  Write-only. RXFEF Interrupt Disable
      RXFEF         : Boolean := False;
      --  Write-only. RXFFF Interrupt Disable
      RXFFF         : Boolean := False;
      --  Write-only. RXFTHF Interrupt Disable
      RXFTHF        : Boolean := False;
      --  Write-only. TXFPTEF Interrupt Disable
      TXFPTEF       : Boolean := False;
      --  Write-only. RXFPTEF Interrupt Disable
      RXFPTEF       : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_FIDR_Register use record
      TXFEF         at 0 range 0 .. 0;
      TXFFF         at 0 range 1 .. 1;
      TXFTHF        at 0 range 2 .. 2;
      RXFEF         at 0 range 3 .. 3;
      RXFFF         at 0 range 4 .. 4;
      RXFTHF        at 0 range 5 .. 5;
      TXFPTEF       at 0 range 6 .. 6;
      RXFPTEF       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  TWI FIFO Interrupt Mask Register
   type FLEXCOM_FLEX_TWI_FIMR_Register is record
      --  Read-only. TXFEF Interrupt Mask
      TXFEF         : Boolean;
      --  Read-only. TXFFF Interrupt Mask
      TXFFF         : Boolean;
      --  Read-only. TXFTHF Interrupt Mask
      TXFTHF        : Boolean;
      --  Read-only. RXFEF Interrupt Mask
      RXFEF         : Boolean;
      --  Read-only. RXFFF Interrupt Mask
      RXFFF         : Boolean;
      --  Read-only. RXFTHF Interrupt Mask
      RXFTHF        : Boolean;
      --  Read-only. TXFPTEF Interrupt Mask
      TXFPTEF       : Boolean;
      --  Read-only. RXFPTEF Interrupt Mask
      RXFPTEF       : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_FIMR_Register use record
      TXFEF         at 0 range 0 .. 0;
      TXFFF         at 0 range 1 .. 1;
      TXFTHF        at 0 range 2 .. 2;
      RXFEF         at 0 range 3 .. 3;
      RXFFF         at 0 range 4 .. 4;
      RXFTHF        at 0 range 5 .. 5;
      TXFPTEF       at 0 range 6 .. 6;
      RXFPTEF       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  TWI Debug Register
   type FLEXCOM_FLEX_TWI_DR_Register is record
      --  Read-only. SleepWalking Enable
      SWEN          : Boolean;
      --  Read-only. Clock Request
      CLKRQ         : Boolean;
      --  Read-only. SleepWalking Match
      SWMATCH       : Boolean;
      --  Read-only. Transfer Pending
      TRP           : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_DR_Register use record
      SWEN          at 0 range 0 .. 0;
      CLKRQ         at 0 range 1 .. 1;
      SWMATCH       at 0 range 2 .. 2;
      TRP           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Write Protection Key
   type FLEX_TWI_WPMR_WPKEYSelect is
     (--  Reset value for the field
      FLEX_TWI_WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of bits
--  WPEN, WPITEN and WPCREN. Always reads as 0
      PASSWD)
     with Size => 24;
   for FLEX_TWI_WPMR_WPKEYSelect use
     (FLEX_TWI_WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5527369);

   --  TWI Write Protection Mode Register
   type FLEXCOM_FLEX_TWI_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  Write Protection Interrupt Enable
      WPITEN       : Boolean := False;
      --  Write Protection Control Enable
      WPCREN       : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
      --  Write Protection Key
      WPKEY        : FLEX_TWI_WPMR_WPKEYSelect :=
                      FLEX_TWI_WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      WPITEN       at 0 range 1 .. 1;
      WPCREN       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_WPSR_WPVSRC_Field is HAL.UInt24;

   --  TWI Write Protection Status Register
   type FLEXCOM_FLEX_TWI_WPSR_Register is record
      --  Read-only. Write Protect Violation Status
      WPVS         : Boolean;
      --  unspecified
      Reserved_1_7 : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC       : FLEXCOM_FLEX_TWI_WPSR_WPVSRC_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_WPSR_Register use record
      WPVS         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPVSRC       at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type FLEXCOM0_Disc is
     (Default,
      LIN_MODE_MODE,
      FIFO_MULTI_DATA_MODE,
      FIFO_MULTI_DATA_8_MODE,
      FIFO_MULTI_DATA_16_MODE,
      FIFO_ENABLED_MODE);

   --  Flexible Serial Communication
   type FLEXCOM_Peripheral
     (Discriminent : FLEXCOM0_Disc := Default)
   is record
      --  FLEXCOM Mode Register
      FLEX_MR                              : aliased FLEXCOM_FLEX_MR_Register;
      --  FLEXCOM Receive Holding Register
      FLEX_RHR                             : aliased FLEXCOM_FLEX_RHR_Register;
      --  FLEXCOM Transmit Holding Register
      FLEX_THR                             : aliased FLEXCOM_FLEX_THR_Register;
      --  USART Control Register
      FLEX_US_CR                           : aliased FLEXCOM_FLEX_US_CR_Register;
      --  USART Mode Register
      FLEX_US_MR                           : aliased FLEXCOM_FLEX_US_MR_Register;
      --  USART Baud Rate Generator Register
      FLEX_US_BRGR                         : aliased FLEXCOM_FLEX_US_BRGR_Register;
      --  USART Receiver Timeout Register
      FLEX_US_RTOR                         : aliased FLEXCOM_FLEX_US_RTOR_Register;
      --  USART Transmitter Timeguard Register
      FLEX_US_TTGR                         : aliased FLEXCOM_FLEX_US_TTGR_Register;
      --  USART FI DI Ratio Register
      FLEX_US_FIDI                         : aliased FLEXCOM_FLEX_US_FIDI_Register;
      --  USART Number of Errors Register
      FLEX_US_NER                          : aliased FLEXCOM_FLEX_US_NER_Register;
      --  USART IrDA Filter Register
      FLEX_US_IF                           : aliased FLEXCOM_FLEX_US_IF_Register;
      --  USART Manchester Configuration Register
      FLEX_US_MAN                          : aliased FLEXCOM_FLEX_US_MAN_Register;
      --  USART LIN Mode Register
      FLEX_US_LINMR                        : aliased FLEXCOM_FLEX_US_LINMR_Register;
      --  USART LIN Identifier Register
      FLEX_US_LINIR                        : aliased FLEXCOM_FLEX_US_LINIR_Register;
      --  USART LIN Baud Rate Register
      FLEX_US_LINBRR                       : aliased FLEXCOM_FLEX_US_LINBRR_Register;
      --  USART LON Mode Register
      FLEX_US_LONMR                        : aliased FLEXCOM_FLEX_US_LONMR_Register;
      --  USART LON Preamble Register
      FLEX_US_LONPR                        : aliased FLEXCOM_FLEX_US_LONPR_Register;
      --  USART LON Data Length Register
      FLEX_US_LONDL                        : aliased FLEXCOM_FLEX_US_LONDL_Register;
      --  USART LON L2HDR Register
      FLEX_US_LONL2HDR                     : aliased FLEXCOM_FLEX_US_LONL2HDR_Register;
      --  USART LON Backlog Register
      FLEX_US_LONBL                        : aliased FLEXCOM_FLEX_US_LONBL_Register;
      --  USART LON Beta1 Tx Register
      FLEX_US_LONB1TX                      : aliased FLEXCOM_FLEX_US_LONB1TX_Register;
      --  USART LON Beta1 Rx Register
      FLEX_US_LONB1RX                      : aliased FLEXCOM_FLEX_US_LONB1RX_Register;
      --  USART LON Priority Register
      FLEX_US_LONPRIO                      : aliased FLEXCOM_FLEX_US_LONPRIO_Register;
      --  USART LON IDT Tx Register
      FLEX_US_IDTTX                        : aliased FLEXCOM_FLEX_US_IDTTX_Register;
      --  USART LON IDT Rx Register
      FLEX_US_IDTRX                        : aliased FLEXCOM_FLEX_US_IDTRX_Register;
      --  USART IC DIFF Register
      FLEX_US_ICDIFF                       : aliased FLEXCOM_FLEX_US_ICDIFF_Register;
      --  USART Comparison Register
      FLEX_US_CMPR                         : aliased FLEXCOM_FLEX_US_CMPR_Register;
      --  USART FIFO Mode Register
      FLEX_US_FMR                          : aliased FLEXCOM_FLEX_US_FMR_Register;
      --  USART FIFO Level Register
      FLEX_US_FLR                          : aliased FLEXCOM_FLEX_US_FLR_Register;
      --  USART FIFO Interrupt Enable Register
      FLEX_US_FIER                         : aliased FLEXCOM_FLEX_US_FIER_Register;
      --  USART FIFO Interrupt Disable Register
      FLEX_US_FIDR                         : aliased FLEXCOM_FLEX_US_FIDR_Register;
      --  USART FIFO Interrupt Mask Register
      FLEX_US_FIMR                         : aliased FLEXCOM_FLEX_US_FIMR_Register;
      --  USART FIFO Event Status Register
      FLEX_US_FESR                         : aliased FLEXCOM_FLEX_US_FESR_Register;
      --  USART Write Protection Mode Register
      FLEX_US_WPMR                         : aliased FLEXCOM_FLEX_US_WPMR_Register;
      --  USART Write Protection Status Register
      FLEX_US_WPSR                         : aliased FLEXCOM_FLEX_US_WPSR_Register;
      --  SPI Control Register
      FLEX_SPI_CR                          : aliased FLEXCOM_FLEX_SPI_CR_Register;
      --  SPI Mode Register
      FLEX_SPI_MR                          : aliased FLEXCOM_FLEX_SPI_MR_Register;
      --  SPI Status Register
      FLEX_SPI_SR                          : aliased FLEXCOM_FLEX_SPI_SR_Register;
      --  SPI Interrupt Enable Register
      FLEX_SPI_IER                         : aliased FLEXCOM_FLEX_SPI_IER_Register;
      --  SPI Interrupt Disable Register
      FLEX_SPI_IDR                         : aliased FLEXCOM_FLEX_SPI_IDR_Register;
      --  SPI Interrupt Mask Register
      FLEX_SPI_IMR                         : aliased FLEXCOM_FLEX_SPI_IMR_Register;
      --  SPI Chip Select Register
      FLEX_SPI_CSR                         : aliased FLEXCOM_FLEX_SPI_CSR_Registers;
      --  SPI FIFO Mode Register
      FLEX_SPI_FMR                         : aliased FLEXCOM_FLEX_SPI_FMR_Register;
      --  SPI FIFO Level Register
      FLEX_SPI_FLR                         : aliased FLEXCOM_FLEX_SPI_FLR_Register;
      --  SPI Comparison Register
      FLEX_SPI_CMPR                        : aliased FLEXCOM_FLEX_SPI_CMPR_Register;
      --  SPI Write Protection Mode Register
      FLEX_SPI_WPMR                        : aliased FLEXCOM_FLEX_SPI_WPMR_Register;
      --  SPI Write Protection Status Register
      FLEX_SPI_WPSR                        : aliased FLEXCOM_FLEX_SPI_WPSR_Register;
      --  TWI Master Mode Register
      FLEX_TWI_MMR                         : aliased FLEXCOM_FLEX_TWI_MMR_Register;
      --  TWI Slave Mode Register
      FLEX_TWI_SMR                         : aliased FLEXCOM_FLEX_TWI_SMR_Register;
      --  TWI Internal Address Register
      FLEX_TWI_IADR                        : aliased FLEXCOM_FLEX_TWI_IADR_Register;
      --  TWI Clock Waveform Generator Register
      FLEX_TWI_CWGR                        : aliased FLEXCOM_FLEX_TWI_CWGR_Register;
      --  TWI Interrupt Enable Register
      FLEX_TWI_IER                         : aliased FLEXCOM_FLEX_TWI_IER_Register;
      --  TWI Interrupt Disable Register
      FLEX_TWI_IDR                         : aliased FLEXCOM_FLEX_TWI_IDR_Register;
      --  TWI Interrupt Mask Register
      FLEX_TWI_IMR                         : aliased FLEXCOM_FLEX_TWI_IMR_Register;
      --  TWI SMBus Timing Register
      FLEX_TWI_SMBTR                       : aliased FLEXCOM_FLEX_TWI_SMBTR_Register;
      --  TWI Alternative Command Register
      FLEX_TWI_ACR                         : aliased FLEXCOM_FLEX_TWI_ACR_Register;
      --  TWI Filter Register
      FLEX_TWI_FILTR                       : aliased FLEXCOM_FLEX_TWI_FILTR_Register;
      --  TWI FIFO Mode Register
      FLEX_TWI_FMR                         : aliased FLEXCOM_FLEX_TWI_FMR_Register;
      --  TWI FIFO Level Register
      FLEX_TWI_FLR                         : aliased FLEXCOM_FLEX_TWI_FLR_Register;
      --  TWI FIFO Status Register
      FLEX_TWI_FSR                         : aliased FLEXCOM_FLEX_TWI_FSR_Register;
      --  TWI FIFO Interrupt Enable Register
      FLEX_TWI_FIER                        : aliased FLEXCOM_FLEX_TWI_FIER_Register;
      --  TWI FIFO Interrupt Disable Register
      FLEX_TWI_FIDR                        : aliased FLEXCOM_FLEX_TWI_FIDR_Register;
      --  TWI FIFO Interrupt Mask Register
      FLEX_TWI_FIMR                        : aliased FLEXCOM_FLEX_TWI_FIMR_Register;
      --  TWI Debug Register
      FLEX_TWI_DR                          : aliased FLEXCOM_FLEX_TWI_DR_Register;
      --  TWI Write Protection Mode Register
      FLEX_TWI_WPMR                        : aliased FLEXCOM_FLEX_TWI_WPMR_Register;
      --  TWI Write Protection Status Register
      FLEX_TWI_WPSR                        : aliased FLEXCOM_FLEX_TWI_WPSR_Register;
      case Discriminent is
         when Default =>
            --  USART Interrupt Enable Register
            FLEX_US_IER : aliased FLEXCOM_FLEX_US_IER_Register;
            --  USART Interrupt Disable Register
            FLEX_US_IDR : aliased FLEXCOM_FLEX_US_IDR_Register;
            --  USART Interrupt Mask Register
            FLEX_US_IMR : aliased FLEXCOM_FLEX_US_IMR_Register;
            --  USART Channel Status Register
            FLEX_US_CSR : aliased FLEXCOM_FLEX_US_CSR_Register;
            --  USART Receive Holding Register
            FLEX_US_RHR : aliased FLEXCOM_FLEX_US_RHR_Register;
            --  USART Transmit Holding Register
            FLEX_US_THR : aliased FLEXCOM_FLEX_US_THR_Register;
            --  SPI Receive Data Register
            FLEX_SPI_RDR : aliased FLEXCOM_FLEX_SPI_RDR_Register;
            --  SPI Transmit Data Register
            FLEX_SPI_TDR : aliased FLEXCOM_FLEX_SPI_TDR_Register;
            --  TWI Control Register
            FLEX_TWI_CR : aliased FLEXCOM_FLEX_TWI_CR_Register;
            --  TWI Status Register
            FLEX_TWI_SR : aliased FLEXCOM_FLEX_TWI_SR_Register;
            --  TWI Receive Holding Register
            FLEX_TWI_RHR : aliased FLEXCOM_FLEX_TWI_RHR_Register;
            --  TWI Transmit Holding Register
            FLEX_TWI_THR : aliased FLEXCOM_FLEX_TWI_THR_Register;
         when LIN_MODE_MODE =>
            --  USART Interrupt Enable Register
            FLEX_US_IER_LIN_MODE_MODE : aliased FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_Register;
            --  USART Interrupt Disable Register
            FLEX_US_IDR_LIN_MODE_MODE : aliased FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_Register;
            --  USART Interrupt Mask Register
            FLEX_US_IMR_LIN_MODE_MODE : aliased FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_Register;
            --  USART Channel Status Register
            FLEX_US_CSR_LIN_MODE_MODE : aliased FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_Register;
         when FIFO_MULTI_DATA_MODE =>
            --  USART Receive Holding Register
            FLEX_US_RHR_FIFO_MULTI_DATA_MODE : aliased FLEXCOM_FLEX_US_RHR_FIFO_MULTI_DATA_MODE_Register;
            --  USART Transmit Holding Register
            FLEX_US_THR_FIFO_MULTI_DATA_MODE : aliased FLEXCOM_FLEX_US_THR_FIFO_MULTI_DATA_MODE_Register;
            --  SPI Transmit Data Register
            FLEX_SPI_TDR_FIFO_MULTI_DATA_MODE : aliased FLEXCOM_FLEX_SPI_TDR_FIFO_MULTI_DATA_MODE_Register;
         when FIFO_MULTI_DATA_8_MODE =>
            --  SPI Receive Data Register
            FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE : aliased FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_Register;
         when FIFO_MULTI_DATA_16_MODE =>
            --  SPI Receive Data Register
            FLEX_SPI_RDR_FIFO_MULTI_DATA_16_MODE : aliased FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_16_MODE_Register;
         when FIFO_ENABLED_MODE =>
            --  TWI Control Register
            FLEX_TWI_CR_FIFO_ENABLED_MODE : aliased FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_Register;
            --  TWI Status Register
            FLEX_TWI_SR_FIFO_ENABLED_MODE : aliased FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_Register;
            --  TWI Receive Holding Register
            FLEX_TWI_RHR_FIFO_ENABLED_MODE : aliased FLEXCOM_FLEX_TWI_RHR_FIFO_ENABLED_MODE_Register;
            --  TWI Transmit Holding Register
            FLEX_TWI_THR_FIFO_ENABLED_MODE : aliased FLEXCOM_FLEX_TWI_THR_FIFO_ENABLED_MODE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for FLEXCOM_Peripheral use record
      FLEX_MR                              at 16#0# range 0 .. 31;
      FLEX_RHR                             at 16#10# range 0 .. 31;
      FLEX_THR                             at 16#20# range 0 .. 31;
      FLEX_US_CR                           at 16#200# range 0 .. 31;
      FLEX_US_MR                           at 16#204# range 0 .. 31;
      FLEX_US_BRGR                         at 16#220# range 0 .. 31;
      FLEX_US_RTOR                         at 16#224# range 0 .. 31;
      FLEX_US_TTGR                         at 16#228# range 0 .. 31;
      FLEX_US_FIDI                         at 16#240# range 0 .. 31;
      FLEX_US_NER                          at 16#244# range 0 .. 31;
      FLEX_US_IF                           at 16#24C# range 0 .. 31;
      FLEX_US_MAN                          at 16#250# range 0 .. 31;
      FLEX_US_LINMR                        at 16#254# range 0 .. 31;
      FLEX_US_LINIR                        at 16#258# range 0 .. 31;
      FLEX_US_LINBRR                       at 16#25C# range 0 .. 31;
      FLEX_US_LONMR                        at 16#260# range 0 .. 31;
      FLEX_US_LONPR                        at 16#264# range 0 .. 31;
      FLEX_US_LONDL                        at 16#268# range 0 .. 31;
      FLEX_US_LONL2HDR                     at 16#26C# range 0 .. 31;
      FLEX_US_LONBL                        at 16#270# range 0 .. 31;
      FLEX_US_LONB1TX                      at 16#274# range 0 .. 31;
      FLEX_US_LONB1RX                      at 16#278# range 0 .. 31;
      FLEX_US_LONPRIO                      at 16#27C# range 0 .. 31;
      FLEX_US_IDTTX                        at 16#280# range 0 .. 31;
      FLEX_US_IDTRX                        at 16#284# range 0 .. 31;
      FLEX_US_ICDIFF                       at 16#288# range 0 .. 31;
      FLEX_US_CMPR                         at 16#290# range 0 .. 31;
      FLEX_US_FMR                          at 16#2A0# range 0 .. 31;
      FLEX_US_FLR                          at 16#2A4# range 0 .. 31;
      FLEX_US_FIER                         at 16#2A8# range 0 .. 31;
      FLEX_US_FIDR                         at 16#2AC# range 0 .. 31;
      FLEX_US_FIMR                         at 16#2B0# range 0 .. 31;
      FLEX_US_FESR                         at 16#2B4# range 0 .. 31;
      FLEX_US_WPMR                         at 16#2E4# range 0 .. 31;
      FLEX_US_WPSR                         at 16#2E8# range 0 .. 31;
      FLEX_SPI_CR                          at 16#400# range 0 .. 31;
      FLEX_SPI_MR                          at 16#404# range 0 .. 31;
      FLEX_SPI_SR                          at 16#410# range 0 .. 31;
      FLEX_SPI_IER                         at 16#414# range 0 .. 31;
      FLEX_SPI_IDR                         at 16#418# range 0 .. 31;
      FLEX_SPI_IMR                         at 16#41C# range 0 .. 31;
      FLEX_SPI_CSR                         at 16#430# range 0 .. 127;
      FLEX_SPI_FMR                         at 16#440# range 0 .. 31;
      FLEX_SPI_FLR                         at 16#444# range 0 .. 31;
      FLEX_SPI_CMPR                        at 16#448# range 0 .. 31;
      FLEX_SPI_WPMR                        at 16#4E4# range 0 .. 31;
      FLEX_SPI_WPSR                        at 16#4E8# range 0 .. 31;
      FLEX_TWI_MMR                         at 16#604# range 0 .. 31;
      FLEX_TWI_SMR                         at 16#608# range 0 .. 31;
      FLEX_TWI_IADR                        at 16#60C# range 0 .. 31;
      FLEX_TWI_CWGR                        at 16#610# range 0 .. 31;
      FLEX_TWI_IER                         at 16#624# range 0 .. 31;
      FLEX_TWI_IDR                         at 16#628# range 0 .. 31;
      FLEX_TWI_IMR                         at 16#62C# range 0 .. 31;
      FLEX_TWI_SMBTR                       at 16#638# range 0 .. 31;
      FLEX_TWI_ACR                         at 16#640# range 0 .. 31;
      FLEX_TWI_FILTR                       at 16#644# range 0 .. 31;
      FLEX_TWI_FMR                         at 16#650# range 0 .. 31;
      FLEX_TWI_FLR                         at 16#654# range 0 .. 31;
      FLEX_TWI_FSR                         at 16#660# range 0 .. 31;
      FLEX_TWI_FIER                        at 16#664# range 0 .. 31;
      FLEX_TWI_FIDR                        at 16#668# range 0 .. 31;
      FLEX_TWI_FIMR                        at 16#66C# range 0 .. 31;
      FLEX_TWI_DR                          at 16#6D0# range 0 .. 31;
      FLEX_TWI_WPMR                        at 16#6E4# range 0 .. 31;
      FLEX_TWI_WPSR                        at 16#6E8# range 0 .. 31;
      FLEX_US_IER                          at 16#208# range 0 .. 31;
      FLEX_US_IDR                          at 16#20C# range 0 .. 31;
      FLEX_US_IMR                          at 16#210# range 0 .. 31;
      FLEX_US_CSR                          at 16#214# range 0 .. 31;
      FLEX_US_RHR                          at 16#218# range 0 .. 31;
      FLEX_US_THR                          at 16#21C# range 0 .. 31;
      FLEX_SPI_RDR                         at 16#408# range 0 .. 31;
      FLEX_SPI_TDR                         at 16#40C# range 0 .. 31;
      FLEX_TWI_CR                          at 16#600# range 0 .. 31;
      FLEX_TWI_SR                          at 16#620# range 0 .. 31;
      FLEX_TWI_RHR                         at 16#630# range 0 .. 31;
      FLEX_TWI_THR                         at 16#634# range 0 .. 31;
      FLEX_US_IER_LIN_MODE_MODE            at 16#208# range 0 .. 31;
      FLEX_US_IDR_LIN_MODE_MODE            at 16#20C# range 0 .. 31;
      FLEX_US_IMR_LIN_MODE_MODE            at 16#210# range 0 .. 31;
      FLEX_US_CSR_LIN_MODE_MODE            at 16#214# range 0 .. 31;
      FLEX_US_RHR_FIFO_MULTI_DATA_MODE     at 16#218# range 0 .. 31;
      FLEX_US_THR_FIFO_MULTI_DATA_MODE     at 16#21C# range 0 .. 31;
      FLEX_SPI_TDR_FIFO_MULTI_DATA_MODE    at 16#40C# range 0 .. 31;
      FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE  at 16#408# range 0 .. 31;
      FLEX_SPI_RDR_FIFO_MULTI_DATA_16_MODE at 16#408# range 0 .. 31;
      FLEX_TWI_CR_FIFO_ENABLED_MODE        at 16#600# range 0 .. 31;
      FLEX_TWI_SR_FIFO_ENABLED_MODE        at 16#620# range 0 .. 31;
      FLEX_TWI_RHR_FIFO_ENABLED_MODE       at 16#630# range 0 .. 31;
      FLEX_TWI_THR_FIFO_ENABLED_MODE       at 16#634# range 0 .. 31;
   end record;

   --  Flexible Serial Communication
   FLEXCOM0_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM0_Base;

   --  Flexible Serial Communication
   FLEXCOM1_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM1_Base;

   --  Flexible Serial Communication
   FLEXCOM2_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM2_Base;

   --  Flexible Serial Communication
   FLEXCOM3_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM3_Base;

   --  Flexible Serial Communication
   FLEXCOM4_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM4_Base;

   --  Flexible Serial Communication
   FLEXCOM5_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM5_Base;

   --  Flexible Serial Communication
   FLEXCOM6_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM6_Base;

   --  Flexible Serial Communication
   FLEXCOM7_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM7_Base;

   --  Flexible Serial Communication
   FLEXCOM8_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM8_Base;

   --  Flexible Serial Communication
   FLEXCOM9_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM9_Base;

end SAM_SVD.FLEXCOM;
