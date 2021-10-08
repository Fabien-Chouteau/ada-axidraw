--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.FLEXCOM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

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
      OPMODE        : FLEX_MR_OPMODESelect := Interfaces.SAM.FLEXCOM.NO_COM;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_MR_Register use record
      OPMODE        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FLEXCOM_FLEX_RHR_RXDATA_Field is Interfaces.SAM.UInt16;

   --  FLEXCOM Receive Holding Register
   type FLEXCOM_FLEX_RHR_Register is record
      --  Read-only. Receive Data
      RXDATA         : FLEXCOM_FLEX_RHR_RXDATA_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_RHR_Register use record
      RXDATA         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FLEXCOM_FLEX_THR_TXDATA_Field is Interfaces.SAM.UInt16;

   --  FLEXCOM Transmit Holding Register
   type FLEXCOM_FLEX_THR_Register is record
      --  Transmit Data
      TXDATA         : FLEXCOM_FLEX_THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_THR_Register use record
      TXDATA         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_CR_RSTRX_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_RSTTX_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_RXEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_RXDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_TXEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_TXDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_RSTSTA_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_STTBRK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_STPBRK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_STTTO_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_SENDA_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_RSTIT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_RSTNACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_RETTO_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_RTSEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_RTSDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_LINABT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_LINWKUP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_TXFCLR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_RXFCLR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_TXFLCLR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_REQCLR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_FIFOEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CR_FIFODIS_Field is Interfaces.SAM.Bit;

   --  USART Control Register
   type FLEXCOM_FLEX_US_CR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : FLEXCOM_FLEX_US_CR_RSTRX_Field := 16#0#;
      --  Write-only. Reset Transmitter
      RSTTX          : FLEXCOM_FLEX_US_CR_RSTTX_Field := 16#0#;
      --  Write-only. Receiver Enable
      RXEN           : FLEXCOM_FLEX_US_CR_RXEN_Field := 16#0#;
      --  Write-only. Receiver Disable
      RXDIS          : FLEXCOM_FLEX_US_CR_RXDIS_Field := 16#0#;
      --  Write-only. Transmitter Enable
      TXEN           : FLEXCOM_FLEX_US_CR_TXEN_Field := 16#0#;
      --  Write-only. Transmitter Disable
      TXDIS          : FLEXCOM_FLEX_US_CR_TXDIS_Field := 16#0#;
      --  Write-only. Reset Status Bits
      RSTSTA         : FLEXCOM_FLEX_US_CR_RSTSTA_Field := 16#0#;
      --  Write-only. Start Break
      STTBRK         : FLEXCOM_FLEX_US_CR_STTBRK_Field := 16#0#;
      --  Write-only. Stop Break
      STPBRK         : FLEXCOM_FLEX_US_CR_STPBRK_Field := 16#0#;
      --  Write-only. Clear TIMEOUT Flag and Start Timeout After Next Character
      --  Received
      STTTO          : FLEXCOM_FLEX_US_CR_STTTO_Field := 16#0#;
      --  Write-only. Send Address
      SENDA          : FLEXCOM_FLEX_US_CR_SENDA_Field := 16#0#;
      --  Write-only. Reset Iterations
      RSTIT          : FLEXCOM_FLEX_US_CR_RSTIT_Field := 16#0#;
      --  Write-only. Reset Non Acknowledge
      RSTNACK        : FLEXCOM_FLEX_US_CR_RSTNACK_Field := 16#0#;
      --  Write-only. Start Timeout Immediately
      RETTO          : FLEXCOM_FLEX_US_CR_RETTO_Field := 16#0#;
      --  unspecified
      Reserved_16_17 : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Request to Send Enable
      RTSEN          : FLEXCOM_FLEX_US_CR_RTSEN_Field := 16#0#;
      --  Write-only. Request to Send Disable
      RTSDIS         : FLEXCOM_FLEX_US_CR_RTSDIS_Field := 16#0#;
      --  Write-only. Abort LIN Transmission
      LINABT         : FLEXCOM_FLEX_US_CR_LINABT_Field := 16#0#;
      --  Write-only. Send LIN Wakeup Signal
      LINWKUP        : FLEXCOM_FLEX_US_CR_LINWKUP_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Transmit FIFO Clear
      TXFCLR         : FLEXCOM_FLEX_US_CR_TXFCLR_Field := 16#0#;
      --  Write-only. Receive FIFO Clear
      RXFCLR         : FLEXCOM_FLEX_US_CR_RXFCLR_Field := 16#0#;
      --  Write-only. Transmit FIFO Lock CLEAR
      TXFLCLR        : FLEXCOM_FLEX_US_CR_TXFLCLR_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Request to Clear the Comparison Trigger
      REQCLR         : FLEXCOM_FLEX_US_CR_REQCLR_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. FIFO Enable
      FIFOEN         : FLEXCOM_FLEX_US_CR_FIFOEN_Field := 16#0#;
      --  Write-only. FIFO Disable
      FIFODIS        : FLEXCOM_FLEX_US_CR_FIFODIS_Field := 16#0#;
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

   subtype FLEXCOM_FLEX_US_MR_SYNC_Field is Interfaces.SAM.Bit;

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

   subtype FLEXCOM_FLEX_US_MR_MSBF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MR_MODE9_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MR_CLKO_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MR_OVER_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MR_INACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MR_DSNACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MR_VAR_SYNC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MR_INVDATA_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MR_MAX_ITERATION_Field is Interfaces.SAM.UInt3;
   subtype FLEXCOM_FLEX_US_MR_FILTER_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MR_MAN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MR_MODSYNC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MR_ONEBIT_Field is Interfaces.SAM.Bit;

   --  USART Mode Register
   type FLEXCOM_FLEX_US_MR_Register is record
      --  USART Mode of Operation
      USART_MODE     : FLEX_US_MR_USART_MODESelect :=
                        Interfaces.SAM.FLEXCOM.NORMAL;
      --  Clock Selection
      USCLKS         : FLEX_US_MR_USCLKSSelect := Interfaces.SAM.FLEXCOM.MCK;
      --  Character Length
      CHRL           : FLEX_US_MR_CHRLSelect :=
                        Interfaces.SAM.FLEXCOM.Val_5_BIT;
      --  Synchronous Mode Select
      SYNC           : FLEXCOM_FLEX_US_MR_SYNC_Field := 16#0#;
      --  Parity Type
      PAR            : FLEX_US_MR_PARSelect := Interfaces.SAM.FLEXCOM.EVEN;
      --  Number of Stop Bits
      NBSTOP         : FLEX_US_MR_NBSTOPSelect :=
                        Interfaces.SAM.FLEXCOM.Val_1_BIT;
      --  Channel Mode
      CHMODE         : FLEX_US_MR_CHMODESelect :=
                        Interfaces.SAM.FLEXCOM.NORMAL;
      --  Bit Order
      MSBF           : FLEXCOM_FLEX_US_MR_MSBF_Field := 16#0#;
      --  9-bit Character Length
      MODE9          : FLEXCOM_FLEX_US_MR_MODE9_Field := 16#0#;
      --  Clock Output Select
      CLKO           : FLEXCOM_FLEX_US_MR_CLKO_Field := 16#0#;
      --  Oversampling Mode
      OVER           : FLEXCOM_FLEX_US_MR_OVER_Field := 16#0#;
      --  Inhibit Non Acknowledge
      INACK          : FLEXCOM_FLEX_US_MR_INACK_Field := 16#0#;
      --  Disable Successive NACK
      DSNACK         : FLEXCOM_FLEX_US_MR_DSNACK_Field := 16#0#;
      --  Variable Synchronization of Command/Data Sync Start Frame Delimiter
      VAR_SYNC       : FLEXCOM_FLEX_US_MR_VAR_SYNC_Field := 16#0#;
      --  Inverted Data
      INVDATA        : FLEXCOM_FLEX_US_MR_INVDATA_Field := 16#0#;
      --  Maximum Number of Automatic Iteration
      MAX_ITERATION  : FLEXCOM_FLEX_US_MR_MAX_ITERATION_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.SAM.Bit := 16#0#;
      --  Receive Line Filter
      FILTER         : FLEXCOM_FLEX_US_MR_FILTER_Field := 16#0#;
      --  Manchester Encoder/Decoder Enable
      MAN            : FLEXCOM_FLEX_US_MR_MAN_Field := 16#0#;
      --  Manchester Synchronization Mode
      MODSYNC        : FLEXCOM_FLEX_US_MR_MODSYNC_Field := 16#0#;
      --  Start Frame Delimiter Selector
      ONEBIT         : FLEXCOM_FLEX_US_MR_ONEBIT_Field := 16#0#;
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

   subtype FLEXCOM_FLEX_US_IER_RXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_TXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_RXBRK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_OVRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_FRAME_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_PARE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_TIMEOUT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_ITER_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_NACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_CTSIC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_CMP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_MANE_Field is Interfaces.SAM.Bit;

   --  USART Interrupt Enable Register
   type FLEXCOM_FLEX_US_IER_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : FLEXCOM_FLEX_US_IER_RXRDY_Field := 16#0#;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : FLEXCOM_FLEX_US_IER_TXRDY_Field := 16#0#;
      --  Write-only. Receiver Break Interrupt Enable
      RXBRK          : FLEXCOM_FLEX_US_IER_RXBRK_Field := 16#0#;
      --  unspecified
      Reserved_3_4   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : FLEXCOM_FLEX_US_IER_OVRE_Field := 16#0#;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : FLEXCOM_FLEX_US_IER_FRAME_Field := 16#0#;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : FLEXCOM_FLEX_US_IER_PARE_Field := 16#0#;
      --  Write-only. Timeout Interrupt Enable
      TIMEOUT        : FLEXCOM_FLEX_US_IER_TIMEOUT_Field := 16#0#;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : FLEXCOM_FLEX_US_IER_TXEMPTY_Field := 16#0#;
      --  Write-only. Max number of Repetitions Reached Interrupt Enable
      ITER           : FLEXCOM_FLEX_US_IER_ITER_Field := 16#0#;
      --  unspecified
      Reserved_11_12 : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Non Acknowledge Interrupt Enable
      NACK           : FLEXCOM_FLEX_US_IER_NACK_Field := 16#0#;
      --  unspecified
      Reserved_14_18 : Interfaces.SAM.UInt5 := 16#0#;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : FLEXCOM_FLEX_US_IER_CTSIC_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Comparison Interrupt Enable
      CMP            : FLEXCOM_FLEX_US_IER_CMP_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Manchester Error Interrupt Enable
      MANE           : FLEXCOM_FLEX_US_IER_MANE_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
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

   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_RXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_TXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_OVRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_FRAME_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_PARE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_TIMEOUT_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_TXEMPTY_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINBK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINID_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINTC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINBE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINISFE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINIPE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINCE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINSNRE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINSTE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINHTE_Field is
     Interfaces.SAM.Bit;

   --  USART Interrupt Enable Register
   type FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_RXRDY_Field := 16#0#;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_OVRE_Field := 16#0#;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_FRAME_Field := 16#0#;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_PARE_Field := 16#0#;
      --  Write-only. Timeout Interrupt Enable
      TIMEOUT        : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_TIMEOUT_Field :=
                        16#0#;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_TXEMPTY_Field :=
                        16#0#;
      --  unspecified
      Reserved_10_12 : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. LIN Break Sent or LIN Break Received Interrupt Enable
      LINBK          : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINBK_Field := 16#0#;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Enable
      LINID          : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINID_Field := 16#0#;
      --  Write-only. LIN Transfer Completed Interrupt Enable
      LINTC          : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINTC_Field := 16#0#;
      --  unspecified
      Reserved_16_24 : Interfaces.SAM.UInt9 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Enable
      LINBE          : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINBE_Field := 16#0#;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Enable
      LINISFE        : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINISFE_Field :=
                        16#0#;
      --  Write-only. LIN Identifier Parity Interrupt Enable
      LINIPE         : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINIPE_Field :=
                        16#0#;
      --  Write-only. LIN Checksum Error Interrupt Enable
      LINCE          : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINCE_Field := 16#0#;
      --  Write-only. LIN Slave Not Responding Error Interrupt Enable
      LINSNRE        : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINSNRE_Field :=
                        16#0#;
      --  Write-only. LIN Synch Tolerance Error Interrupt Enable
      LINSTE         : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINSTE_Field :=
                        16#0#;
      --  Write-only. LIN Header Timeout Error Interrupt Enable
      LINHTE         : FLEXCOM_FLEX_US_IER_LIN_MODE_MODE_LINHTE_Field :=
                        16#0#;
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

   subtype FLEXCOM_FLEX_US_IDR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_RXBRK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_OVRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_FRAME_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_PARE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_TIMEOUT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_ITER_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_NACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_CTSIC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_CMP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_MANE_Field is Interfaces.SAM.Bit;

   --  USART Interrupt Disable Register
   type FLEXCOM_FLEX_US_IDR_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : FLEXCOM_FLEX_US_IDR_RXRDY_Field := 16#0#;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : FLEXCOM_FLEX_US_IDR_TXRDY_Field := 16#0#;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : FLEXCOM_FLEX_US_IDR_RXBRK_Field := 16#0#;
      --  unspecified
      Reserved_3_4   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : FLEXCOM_FLEX_US_IDR_OVRE_Field := 16#0#;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : FLEXCOM_FLEX_US_IDR_FRAME_Field := 16#0#;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : FLEXCOM_FLEX_US_IDR_PARE_Field := 16#0#;
      --  Write-only. Timeout Interrupt Disable
      TIMEOUT        : FLEXCOM_FLEX_US_IDR_TIMEOUT_Field := 16#0#;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : FLEXCOM_FLEX_US_IDR_TXEMPTY_Field := 16#0#;
      --  Write-only. Max Number of Repetitions Reached Interrupt Disable
      ITER           : FLEXCOM_FLEX_US_IDR_ITER_Field := 16#0#;
      --  unspecified
      Reserved_11_12 : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Non Acknowledge Interrupt Disable
      NACK           : FLEXCOM_FLEX_US_IDR_NACK_Field := 16#0#;
      --  unspecified
      Reserved_14_18 : Interfaces.SAM.UInt5 := 16#0#;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : FLEXCOM_FLEX_US_IDR_CTSIC_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Comparison Interrupt Disable
      CMP            : FLEXCOM_FLEX_US_IDR_CMP_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Manchester Error Interrupt Disable
      MANE           : FLEXCOM_FLEX_US_IDR_MANE_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
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

   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_RXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_TXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_OVRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_FRAME_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_PARE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_TIMEOUT_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_TXEMPTY_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINBK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINID_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINTC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINBE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINISFE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINIPE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINCE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINSNRE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINSTE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINHTE_Field is
     Interfaces.SAM.Bit;

   --  USART Interrupt Disable Register
   type FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_RXRDY_Field := 16#0#;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_OVRE_Field := 16#0#;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_FRAME_Field := 16#0#;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_PARE_Field := 16#0#;
      --  Write-only. Timeout Interrupt Disable
      TIMEOUT        : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_TIMEOUT_Field :=
                        16#0#;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_TXEMPTY_Field :=
                        16#0#;
      --  unspecified
      Reserved_10_12 : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. LIN Break Sent or LIN Break Received Interrupt Disable
      LINBK          : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINBK_Field := 16#0#;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Disable
      LINID          : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINID_Field := 16#0#;
      --  Write-only. LIN Transfer Completed Interrupt Disable
      LINTC          : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINTC_Field := 16#0#;
      --  unspecified
      Reserved_16_24 : Interfaces.SAM.UInt9 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Disable
      LINBE          : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINBE_Field := 16#0#;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Disable
      LINISFE        : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINISFE_Field :=
                        16#0#;
      --  Write-only. LIN Identifier Parity Interrupt Disable
      LINIPE         : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINIPE_Field :=
                        16#0#;
      --  Write-only. LIN Checksum Error Interrupt Disable
      LINCE          : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINCE_Field := 16#0#;
      --  Write-only. LIN Slave Not Responding Error Interrupt Disable
      LINSNRE        : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINSNRE_Field :=
                        16#0#;
      --  Write-only. LIN Synch Tolerance Error Interrupt Disable
      LINSTE         : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINSTE_Field :=
                        16#0#;
      --  Write-only. LIN Header Timeout Error Interrupt Disable
      LINHTE         : FLEXCOM_FLEX_US_IDR_LIN_MODE_MODE_LINHTE_Field :=
                        16#0#;
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

   subtype FLEXCOM_FLEX_US_IMR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_RXBRK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_OVRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_FRAME_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_PARE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_TIMEOUT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_ITER_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_NACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_CTSIC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_CMP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_MANE_Field is Interfaces.SAM.Bit;

   --  USART Interrupt Mask Register
   type FLEXCOM_FLEX_US_IMR_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : FLEXCOM_FLEX_US_IMR_RXRDY_Field;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : FLEXCOM_FLEX_US_IMR_TXRDY_Field;
      --  Read-only. Receiver Break Interrupt Mask
      RXBRK          : FLEXCOM_FLEX_US_IMR_RXBRK_Field;
      --  unspecified
      Reserved_3_4   : Interfaces.SAM.UInt2;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : FLEXCOM_FLEX_US_IMR_OVRE_Field;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : FLEXCOM_FLEX_US_IMR_FRAME_Field;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : FLEXCOM_FLEX_US_IMR_PARE_Field;
      --  Read-only. Timeout Interrupt Mask
      TIMEOUT        : FLEXCOM_FLEX_US_IMR_TIMEOUT_Field;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : FLEXCOM_FLEX_US_IMR_TXEMPTY_Field;
      --  Read-only. Max Number of Repetitions Reached Interrupt Mask
      ITER           : FLEXCOM_FLEX_US_IMR_ITER_Field;
      --  unspecified
      Reserved_11_12 : Interfaces.SAM.UInt2;
      --  Read-only. Non Acknowledge Interrupt Mask
      NACK           : FLEXCOM_FLEX_US_IMR_NACK_Field;
      --  unspecified
      Reserved_14_18 : Interfaces.SAM.UInt5;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : FLEXCOM_FLEX_US_IMR_CTSIC_Field;
      --  unspecified
      Reserved_20_21 : Interfaces.SAM.UInt2;
      --  Read-only. Comparison Interrupt Mask
      CMP            : FLEXCOM_FLEX_US_IMR_CMP_Field;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit;
      --  Read-only. Manchester Error Interrupt Mask
      MANE           : FLEXCOM_FLEX_US_IMR_MANE_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
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

   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_RXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_TXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_OVRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_FRAME_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_PARE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_TIMEOUT_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_TXEMPTY_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINBK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINID_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINTC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINBE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINISFE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINIPE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINCE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINSNRE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINSTE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINHTE_Field is
     Interfaces.SAM.Bit;

   --  USART Interrupt Mask Register
   type FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_RXRDY_Field;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_TXRDY_Field;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_OVRE_Field;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_FRAME_Field;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_PARE_Field;
      --  Read-only. Timeout Interrupt Mask
      TIMEOUT        : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_TIMEOUT_Field;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_TXEMPTY_Field;
      --  unspecified
      Reserved_10_12 : Interfaces.SAM.UInt3;
      --  Read-only. LIN Break Sent or LIN Break Received Interrupt Mask
      LINBK          : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINBK_Field;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Mask
      LINID          : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINID_Field;
      --  Read-only. LIN Transfer Completed Interrupt Mask
      LINTC          : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINTC_Field;
      --  unspecified
      Reserved_16_24 : Interfaces.SAM.UInt9;
      --  Read-only. LIN Bus Error Interrupt Mask
      LINBE          : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINBE_Field;
      --  Read-only. LIN Inconsistent Synch Field Error Interrupt Mask
      LINISFE        : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINISFE_Field;
      --  Read-only. LIN Identifier Parity Interrupt Mask
      LINIPE         : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINIPE_Field;
      --  Read-only. LIN Checksum Error Interrupt Mask
      LINCE          : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINCE_Field;
      --  Read-only. LIN Slave Not Responding Error Interrupt Mask
      LINSNRE        : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINSNRE_Field;
      --  Read-only. LIN Synch Tolerance Error Interrupt Mask
      LINSTE         : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINSTE_Field;
      --  Read-only. LIN Header Timeout Error Interrupt Mask
      LINHTE         : FLEXCOM_FLEX_US_IMR_LIN_MODE_MODE_LINHTE_Field;
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

   subtype FLEXCOM_FLEX_US_CSR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_RXBRK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_OVRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_FRAME_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_PARE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_TIMEOUT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_ITER_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_NACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_CTSIC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_CMP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_CTS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_MANE_Field is Interfaces.SAM.Bit;

   --  USART Channel Status Register
   type FLEXCOM_FLEX_US_CSR_Register is record
      --  Read-only. Receiver Ready (cleared by reading FLEX_US_RHR)
      RXRDY          : FLEXCOM_FLEX_US_CSR_RXRDY_Field;
      --  Read-only. Transmitter Ready (cleared by writing FLEX_US_THR)
      TXRDY          : FLEXCOM_FLEX_US_CSR_TXRDY_Field;
      --  Read-only. Break Received/End of Break
      RXBRK          : FLEXCOM_FLEX_US_CSR_RXBRK_Field;
      --  unspecified
      Reserved_3_4   : Interfaces.SAM.UInt2;
      --  Read-only. Overrun Error
      OVRE           : FLEXCOM_FLEX_US_CSR_OVRE_Field;
      --  Read-only. Framing Error
      FRAME          : FLEXCOM_FLEX_US_CSR_FRAME_Field;
      --  Read-only. Parity Error
      PARE           : FLEXCOM_FLEX_US_CSR_PARE_Field;
      --  Read-only. Receiver Timeout
      TIMEOUT        : FLEXCOM_FLEX_US_CSR_TIMEOUT_Field;
      --  Read-only. Transmitter Empty (cleared by writing FLEX_US_THR)
      TXEMPTY        : FLEXCOM_FLEX_US_CSR_TXEMPTY_Field;
      --  Read-only. Max Number of Repetitions Reached
      ITER           : FLEXCOM_FLEX_US_CSR_ITER_Field;
      --  unspecified
      Reserved_11_12 : Interfaces.SAM.UInt2;
      --  Read-only. Non Acknowledge Interrupt
      NACK           : FLEXCOM_FLEX_US_CSR_NACK_Field;
      --  unspecified
      Reserved_14_18 : Interfaces.SAM.UInt5;
      --  Read-only. Clear to Send Input Change Flag
      CTSIC          : FLEXCOM_FLEX_US_CSR_CTSIC_Field;
      --  unspecified
      Reserved_20_21 : Interfaces.SAM.UInt2;
      --  Read-only. Comparison Status
      CMP            : FLEXCOM_FLEX_US_CSR_CMP_Field;
      --  Read-only. Image of CTS Input
      CTS            : FLEXCOM_FLEX_US_CSR_CTS_Field;
      --  Read-only. Manchester Error
      MANE           : FLEXCOM_FLEX_US_CSR_MANE_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
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

   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_RXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_TXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_OVRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_FRAME_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_PARE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_TIMEOUT_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_TXEMPTY_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINBK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINID_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINTC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINBLS_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINBE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINISFE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINIPE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINCE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINSNRE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINSTE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINHTE_Field is
     Interfaces.SAM.Bit;

   --  USART Channel Status Register
   type FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_Register is record
      --  Read-only. Receiver Ready (cleared by reading FLEX_US_RHR)
      RXRDY          : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_RXRDY_Field;
      --  Read-only. Transmitter Ready (cleared by writing FLEX_US_THR)
      TXRDY          : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_TXRDY_Field;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3;
      --  Read-only. Overrun Error
      OVRE           : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_OVRE_Field;
      --  Read-only. Framing Error
      FRAME          : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_FRAME_Field;
      --  Read-only. Parity Error
      PARE           : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_PARE_Field;
      --  Read-only. Receiver Timeout
      TIMEOUT        : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_TIMEOUT_Field;
      --  Read-only. Transmitter Empty (cleared by writing FLEX_US_THR)
      TXEMPTY        : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_TXEMPTY_Field;
      --  unspecified
      Reserved_10_12 : Interfaces.SAM.UInt3;
      --  Read-only. LIN Break Sent or LIN Break Received
      LINBK          : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINBK_Field;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received
      LINID          : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINID_Field;
      --  Read-only. LIN Transfer Completed
      LINTC          : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINTC_Field;
      --  unspecified
      Reserved_16_22 : Interfaces.SAM.UInt7;
      --  Read-only. LIN Bus Line Status
      LINBLS         : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINBLS_Field;
      --  unspecified
      Reserved_24_24 : Interfaces.SAM.Bit;
      --  Read-only. LIN Bit Error
      LINBE          : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINBE_Field;
      --  Read-only. LIN Inconsistent Synch Field Error
      LINISFE        : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINISFE_Field;
      --  Read-only. LIN Identifier Parity Error
      LINIPE         : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINIPE_Field;
      --  Read-only. LIN Checksum Error
      LINCE          : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINCE_Field;
      --  Read-only. LIN Slave Not Responding Error
      LINSNRE        : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINSNRE_Field;
      --  Read-only. LIN Synch Tolerance Error
      LINSTE         : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINSTE_Field;
      --  Read-only. LIN Header Timeout Error
      LINHTE         : FLEXCOM_FLEX_US_CSR_LIN_MODE_MODE_LINHTE_Field;
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

   subtype FLEXCOM_FLEX_US_RHR_RXCHR_Field is Interfaces.SAM.UInt9;
   subtype FLEXCOM_FLEX_US_RHR_RXSYNH_Field is Interfaces.SAM.Bit;

   --  USART Receive Holding Register
   type FLEXCOM_FLEX_US_RHR_Register is record
      --  Read-only. Received Character
      RXCHR          : FLEXCOM_FLEX_US_RHR_RXCHR_Field;
      --  unspecified
      Reserved_9_14  : Interfaces.SAM.UInt6;
      --  Read-only. Received Sync
      RXSYNH         : FLEXCOM_FLEX_US_RHR_RXSYNH_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
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
   subtype FLEXCOM_FLEX_US_RHR_FIFO_MULTI_DATA_MODE_RXCHR_Element is
     Interfaces.SAM.Byte;

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
            Val : Interfaces.SAM.UInt32;
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

   subtype FLEXCOM_FLEX_US_THR_TXCHR_Field is Interfaces.SAM.UInt9;
   subtype FLEXCOM_FLEX_US_THR_TXSYNH_Field is Interfaces.SAM.Bit;

   --  USART Transmit Holding Register
   type FLEXCOM_FLEX_US_THR_Register is record
      --  Write-only. Character to be Transmitted
      TXCHR          : FLEXCOM_FLEX_US_THR_TXCHR_Field := 16#0#;
      --  unspecified
      Reserved_9_14  : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Sync Field to be Transmitted
      TXSYNH         : FLEXCOM_FLEX_US_THR_TXSYNH_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
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
   subtype FLEXCOM_FLEX_US_THR_FIFO_MULTI_DATA_MODE_TXCHR_Element is
     Interfaces.SAM.Byte;

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
            Val : Interfaces.SAM.UInt32;
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

   subtype FLEXCOM_FLEX_US_BRGR_CD_Field is Interfaces.SAM.UInt16;
   subtype FLEXCOM_FLEX_US_BRGR_FP_Field is Interfaces.SAM.UInt3;

   --  USART Baud Rate Generator Register
   type FLEXCOM_FLEX_US_BRGR_Register is record
      --  Clock Divider
      CD             : FLEXCOM_FLEX_US_BRGR_CD_Field := 16#0#;
      --  Fractional Part
      FP             : FLEXCOM_FLEX_US_BRGR_FP_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_BRGR_Register use record
      CD             at 0 range 0 .. 15;
      FP             at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_RTOR_TO_Field is Interfaces.SAM.UInt17;

   --  USART Receiver Timeout Register
   type FLEXCOM_FLEX_US_RTOR_Register is record
      --  Timeout Value
      TO             : FLEXCOM_FLEX_US_RTOR_TO_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.SAM.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_RTOR_Register use record
      TO             at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_TTGR_TG_Field is Interfaces.SAM.Byte;

   --  USART Transmitter Timeguard Register
   type FLEXCOM_FLEX_US_TTGR_Register is record
      --  Timeguard Value
      TG            : FLEXCOM_FLEX_US_TTGR_TG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_TTGR_Register use record
      TG            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_FIDI_FI_DI_RATIO_Field is Interfaces.SAM.UInt16;

   --  USART FI DI Ratio Register
   type FLEXCOM_FLEX_US_FIDI_Register is record
      --  FI Over DI Ratio Value
      FI_DI_RATIO    : FLEXCOM_FLEX_US_FIDI_FI_DI_RATIO_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_FIDI_Register use record
      FI_DI_RATIO    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_NER_NB_ERRORS_Field is Interfaces.SAM.Byte;

   --  USART Number of Errors Register
   type FLEXCOM_FLEX_US_NER_Register is record
      --  Read-only. Number of Errors
      NB_ERRORS     : FLEXCOM_FLEX_US_NER_NB_ERRORS_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_NER_Register use record
      NB_ERRORS     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_IF_IRDA_FILTER_Field is Interfaces.SAM.Byte;

   --  USART IrDA Filter Register
   type FLEXCOM_FLEX_US_IF_Register is record
      --  IrDA Filter
      IRDA_FILTER   : FLEXCOM_FLEX_US_IF_IRDA_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_IF_Register use record
      IRDA_FILTER   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_MAN_TX_PL_Field is Interfaces.SAM.UInt4;

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

   subtype FLEXCOM_FLEX_US_MAN_TX_MPOL_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MAN_RX_PL_Field is Interfaces.SAM.UInt4;

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

   subtype FLEXCOM_FLEX_US_MAN_RX_MPOL_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MAN_ONE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MAN_DRIFT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_MAN_RXIDLEV_Field is Interfaces.SAM.Bit;

   --  USART Manchester Configuration Register
   type FLEXCOM_FLEX_US_MAN_Register is record
      --  Transmitter Preamble Length
      TX_PL          : FLEXCOM_FLEX_US_MAN_TX_PL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Transmitter Preamble Pattern
      TX_PP          : FLEX_US_MAN_TX_PPSelect :=
                        Interfaces.SAM.FLEXCOM.ALL_ONE;
      --  unspecified
      Reserved_10_11 : Interfaces.SAM.UInt2 := 16#0#;
      --  Transmitter Manchester Polarity
      TX_MPOL        : FLEXCOM_FLEX_US_MAN_TX_MPOL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  Receiver Preamble Length
      RX_PL          : FLEXCOM_FLEX_US_MAN_RX_PL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Receiver Preamble Pattern detected
      RX_PP          : FLEX_US_MAN_RX_PPSelect :=
                        Interfaces.SAM.FLEXCOM.ALL_ONE;
      --  unspecified
      Reserved_26_27 : Interfaces.SAM.UInt2 := 16#0#;
      --  Receiver Manchester Polarity
      RX_MPOL        : FLEXCOM_FLEX_US_MAN_RX_MPOL_Field := 16#0#;
      --  Must Be Set to 1
      ONE            : FLEXCOM_FLEX_US_MAN_ONE_Field := 16#0#;
      --  Drift Compensation
      DRIFT          : FLEXCOM_FLEX_US_MAN_DRIFT_Field := 16#0#;
      --  Receiver Idle Value
      RXIDLEV        : FLEXCOM_FLEX_US_MAN_RXIDLEV_Field := 16#0#;
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

   subtype FLEXCOM_FLEX_US_LINMR_PARDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LINMR_CHKDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LINMR_CHKTYP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LINMR_DLM_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LINMR_FSDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LINMR_WKUPTYP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LINMR_DLC_Field is Interfaces.SAM.Byte;
   subtype FLEXCOM_FLEX_US_LINMR_PDCM_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LINMR_SYNCDIS_Field is Interfaces.SAM.Bit;

   --  USART LIN Mode Register
   type FLEXCOM_FLEX_US_LINMR_Register is record
      --  LIN Node Action
      NACT           : FLEX_US_LINMR_NACTSelect :=
                        Interfaces.SAM.FLEXCOM.PUBLISH;
      --  Parity Disable
      PARDIS         : FLEXCOM_FLEX_US_LINMR_PARDIS_Field := 16#0#;
      --  Checksum Disable
      CHKDIS         : FLEXCOM_FLEX_US_LINMR_CHKDIS_Field := 16#0#;
      --  Checksum Type
      CHKTYP         : FLEXCOM_FLEX_US_LINMR_CHKTYP_Field := 16#0#;
      --  Data Length Mode
      DLM            : FLEXCOM_FLEX_US_LINMR_DLM_Field := 16#0#;
      --  Frame Slot Mode Disable
      FSDIS          : FLEXCOM_FLEX_US_LINMR_FSDIS_Field := 16#0#;
      --  Wakeup Signal Type
      WKUPTYP        : FLEXCOM_FLEX_US_LINMR_WKUPTYP_Field := 16#0#;
      --  Data Length Control
      DLC            : FLEXCOM_FLEX_US_LINMR_DLC_Field := 16#0#;
      --  DMAC Mode
      PDCM           : FLEXCOM_FLEX_US_LINMR_PDCM_Field := 16#0#;
      --  Synchronization Disable
      SYNCDIS        : FLEXCOM_FLEX_US_LINMR_SYNCDIS_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.SAM.UInt14 := 16#0#;
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

   subtype FLEXCOM_FLEX_US_LINIR_IDCHR_Field is Interfaces.SAM.Byte;

   --  USART LIN Identifier Register
   type FLEXCOM_FLEX_US_LINIR_Register is record
      --  Identifier Character
      IDCHR         : FLEXCOM_FLEX_US_LINIR_IDCHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LINIR_Register use record
      IDCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LINBRR_LINCD_Field is Interfaces.SAM.UInt16;
   subtype FLEXCOM_FLEX_US_LINBRR_LINFP_Field is Interfaces.SAM.UInt3;

   --  USART LIN Baud Rate Register
   type FLEXCOM_FLEX_US_LINBRR_Register is record
      --  Read-only. Clock Divider after Synchronization
      LINCD          : FLEXCOM_FLEX_US_LINBRR_LINCD_Field;
      --  Read-only. Fractional Part after Synchronization
      LINFP          : FLEXCOM_FLEX_US_LINBRR_LINFP_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LINBRR_Register use record
      LINCD          at 0 range 0 .. 15;
      LINFP          at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONMR_COMMT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LONMR_COLDET_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LONMR_TCOL_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LONMR_CDTAIL_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LONMR_DMAM_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LONMR_LCDS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LONMR_EOFS_Field is Interfaces.SAM.Byte;

   --  USART LON Mode Register
   type FLEXCOM_FLEX_US_LONMR_Register is record
      --  LON comm_type Parameter Value
      COMMT          : FLEXCOM_FLEX_US_LONMR_COMMT_Field := 16#0#;
      --  LON Collision Detection Feature
      COLDET         : FLEXCOM_FLEX_US_LONMR_COLDET_Field := 16#0#;
      --  Terminate Frame upon Collision Notification
      TCOL           : FLEXCOM_FLEX_US_LONMR_TCOL_Field := 16#0#;
      --  LON Collision Detection on Frame Tail
      CDTAIL         : FLEXCOM_FLEX_US_LONMR_CDTAIL_Field := 16#0#;
      --  LON DMA Mode
      DMAM           : FLEXCOM_FLEX_US_LONMR_DMAM_Field := 16#0#;
      --  LON Collision Detection Source
      LCDS           : FLEXCOM_FLEX_US_LONMR_LCDS_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.SAM.UInt10 := 16#0#;
      --  End of Frame Condition Size
      EOFS           : FLEXCOM_FLEX_US_LONMR_EOFS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
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

   subtype FLEXCOM_FLEX_US_LONPR_LONPL_Field is Interfaces.SAM.UInt14;

   --  USART LON Preamble Register
   type FLEXCOM_FLEX_US_LONPR_Register is record
      --  LON Preamble Length
      LONPL          : FLEXCOM_FLEX_US_LONPR_LONPL_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONPR_Register use record
      LONPL          at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONDL_LONDL_Field is Interfaces.SAM.Byte;

   --  USART LON Data Length Register
   type FLEXCOM_FLEX_US_LONDL_Register is record
      --  LON Data Length
      LONDL         : FLEXCOM_FLEX_US_LONDL_LONDL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONDL_Register use record
      LONDL         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONL2HDR_BLI_Field is Interfaces.SAM.UInt6;
   subtype FLEXCOM_FLEX_US_LONL2HDR_ALTP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_LONL2HDR_PB_Field is Interfaces.SAM.Bit;

   --  USART LON L2HDR Register
   type FLEXCOM_FLEX_US_LONL2HDR_Register is record
      --  LON Backlog Increment
      BLI           : FLEXCOM_FLEX_US_LONL2HDR_BLI_Field := 16#0#;
      --  LON Alternate Path Bit
      ALTP          : FLEXCOM_FLEX_US_LONL2HDR_ALTP_Field := 16#0#;
      --  LON Priority Bit
      PB            : FLEXCOM_FLEX_US_LONL2HDR_PB_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONL2HDR_Register use record
      BLI           at 0 range 0 .. 5;
      ALTP          at 0 range 6 .. 6;
      PB            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONBL_LONBL_Field is Interfaces.SAM.UInt6;

   --  USART LON Backlog Register
   type FLEXCOM_FLEX_US_LONBL_Register is record
      --  Read-only. LON Node Backlog Value
      LONBL         : FLEXCOM_FLEX_US_LONBL_LONBL_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONBL_Register use record
      LONBL         at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONB1TX_BETA1TX_Field is Interfaces.SAM.UInt24;

   --  USART LON Beta1 Tx Register
   type FLEXCOM_FLEX_US_LONB1TX_Register is record
      --  LON Beta1 Length after Transmission
      BETA1TX        : FLEXCOM_FLEX_US_LONB1TX_BETA1TX_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONB1TX_Register use record
      BETA1TX        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONB1RX_BETA1RX_Field is Interfaces.SAM.UInt24;

   --  USART LON Beta1 Rx Register
   type FLEXCOM_FLEX_US_LONB1RX_Register is record
      --  LON Beta1 Length after Reception
      BETA1RX        : FLEXCOM_FLEX_US_LONB1RX_BETA1RX_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONB1RX_Register use record
      BETA1RX        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_LONPRIO_PSNB_Field is Interfaces.SAM.UInt7;
   subtype FLEXCOM_FLEX_US_LONPRIO_NPS_Field is Interfaces.SAM.UInt7;

   --  USART LON Priority Register
   type FLEXCOM_FLEX_US_LONPRIO_Register is record
      --  LON Priority Slot Number
      PSNB           : FLEXCOM_FLEX_US_LONPRIO_PSNB_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  LON Node Priority Slot
      NPS            : FLEXCOM_FLEX_US_LONPRIO_NPS_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.SAM.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_LONPRIO_Register use record
      PSNB           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NPS            at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_IDTTX_IDTTX_Field is Interfaces.SAM.UInt24;

   --  USART LON IDT Tx Register
   type FLEXCOM_FLEX_US_IDTTX_Register is record
      --  LON Indeterminate Time after Transmission (comm_type = 1 mode only)
      IDTTX          : FLEXCOM_FLEX_US_IDTTX_IDTTX_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_IDTTX_Register use record
      IDTTX          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_IDTRX_IDTRX_Field is Interfaces.SAM.UInt24;

   --  USART LON IDT Rx Register
   type FLEXCOM_FLEX_US_IDTRX_Register is record
      --  LON Indeterminate Time after Reception (comm_type = 1 mode only)
      IDTRX          : FLEXCOM_FLEX_US_IDTRX_IDTRX_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_IDTRX_Register use record
      IDTRX          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_ICDIFF_ICDIFF_Field is Interfaces.SAM.UInt4;

   --  USART IC DIFF Register
   type FLEXCOM_FLEX_US_ICDIFF_Register is record
      --  IC Differentiator Number
      ICDIFF        : FLEXCOM_FLEX_US_ICDIFF_ICDIFF_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_ICDIFF_Register use record
      ICDIFF        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_CMPR_VAL1_Field is Interfaces.SAM.UInt9;

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

   subtype FLEXCOM_FLEX_US_CMPR_CMPPAR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_CMPR_VAL2_Field is Interfaces.SAM.UInt9;

   --  USART Comparison Register
   type FLEXCOM_FLEX_US_CMPR_Register is record
      --  First Comparison Value for Received Character
      VAL1           : FLEXCOM_FLEX_US_CMPR_VAL1_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.SAM.UInt3 := 16#0#;
      --  Comparison Mode
      CMPMODE        : FLEX_US_CMPR_CMPMODESelect :=
                        Interfaces.SAM.FLEXCOM.FLAG_ONLY;
      --  unspecified
      Reserved_13_13 : Interfaces.SAM.Bit := 16#0#;
      --  Compare Parity
      CMPPAR         : FLEXCOM_FLEX_US_CMPR_CMPPAR_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit := 16#0#;
      --  Second Comparison Value for Received Character
      VAL2           : FLEXCOM_FLEX_US_CMPR_VAL2_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
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

   subtype FLEXCOM_FLEX_US_FMR_FRTSC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FMR_TXFTHRES_Field is Interfaces.SAM.UInt6;
   subtype FLEXCOM_FLEX_US_FMR_RXFTHRES_Field is Interfaces.SAM.UInt6;
   subtype FLEXCOM_FLEX_US_FMR_RXFTHRES2_Field is Interfaces.SAM.UInt6;

   --  USART FIFO Mode Register
   type FLEXCOM_FLEX_US_FMR_Register is record
      --  Transmitter Ready Mode
      TXRDYM         : FLEX_US_FMR_TXRDYMSelect :=
                        Interfaces.SAM.FLEXCOM.ONE_DATA;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Receiver Ready Mode
      RXRDYM         : FLEX_US_FMR_RXRDYMSelect :=
                        Interfaces.SAM.FLEXCOM.ONE_DATA;
      --  unspecified
      Reserved_6_6   : Interfaces.SAM.Bit := 16#0#;
      --  FIFO RTS Pin Control enable (Hardware Handshaking mode only)
      FRTSC          : FLEXCOM_FLEX_US_FMR_FRTSC_Field := 16#0#;
      --  Transmit FIFO Threshold
      TXFTHRES       : FLEXCOM_FLEX_US_FMR_TXFTHRES_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2 := 16#0#;
      --  Receive FIFO Threshold
      RXFTHRES       : FLEXCOM_FLEX_US_FMR_RXFTHRES_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  Receive FIFO Threshold 2
      RXFTHRES2      : FLEXCOM_FLEX_US_FMR_RXFTHRES2_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
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

   subtype FLEXCOM_FLEX_US_FLR_TXFL_Field is Interfaces.SAM.UInt6;
   subtype FLEXCOM_FLEX_US_FLR_RXFL_Field is Interfaces.SAM.UInt6;

   --  USART FIFO Level Register
   type FLEXCOM_FLEX_US_FLR_Register is record
      --  Read-only. Transmit FIFO Level
      TXFL           : FLEXCOM_FLEX_US_FLR_TXFL_Field;
      --  unspecified
      Reserved_6_15  : Interfaces.SAM.UInt10;
      --  Read-only. Receive FIFO Level
      RXFL           : FLEXCOM_FLEX_US_FLR_RXFL_Field;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_FLR_Register use record
      TXFL           at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      RXFL           at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype FLEXCOM_FLEX_US_FIER_TXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIER_TXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIER_TXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIER_RXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIER_RXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIER_RXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIER_TXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIER_RXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIER_RXFTHF2_Field is Interfaces.SAM.Bit;

   --  USART FIFO Interrupt Enable Register
   type FLEXCOM_FLEX_US_FIER_Register is record
      --  Write-only. TXFEF Interrupt Enable
      TXFEF          : FLEXCOM_FLEX_US_FIER_TXFEF_Field := 16#0#;
      --  Write-only. TXFFF Interrupt Enable
      TXFFF          : FLEXCOM_FLEX_US_FIER_TXFFF_Field := 16#0#;
      --  Write-only. TXFTHF Interrupt Enable
      TXFTHF         : FLEXCOM_FLEX_US_FIER_TXFTHF_Field := 16#0#;
      --  Write-only. RXFEF Interrupt Enable
      RXFEF          : FLEXCOM_FLEX_US_FIER_RXFEF_Field := 16#0#;
      --  Write-only. RXFFF Interrupt Enable
      RXFFF          : FLEXCOM_FLEX_US_FIER_RXFFF_Field := 16#0#;
      --  Write-only. RXFTHF Interrupt Enable
      RXFTHF         : FLEXCOM_FLEX_US_FIER_RXFTHF_Field := 16#0#;
      --  Write-only. TXFPTEF Interrupt Enable
      TXFPTEF        : FLEXCOM_FLEX_US_FIER_TXFPTEF_Field := 16#0#;
      --  Write-only. RXFPTEF Interrupt Enable
      RXFPTEF        : FLEXCOM_FLEX_US_FIER_RXFPTEF_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. RXFTHF2 Interrupt Enable
      RXFTHF2        : FLEXCOM_FLEX_US_FIER_RXFTHF2_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22 := 16#0#;
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

   subtype FLEXCOM_FLEX_US_FIDR_TXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIDR_TXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIDR_TXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIDR_RXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIDR_RXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIDR_RXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIDR_TXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIDR_RXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIDR_RXFTHF2_Field is Interfaces.SAM.Bit;

   --  USART FIFO Interrupt Disable Register
   type FLEXCOM_FLEX_US_FIDR_Register is record
      --  Write-only. TXFEF Interrupt Disable
      TXFEF          : FLEXCOM_FLEX_US_FIDR_TXFEF_Field := 16#0#;
      --  Write-only. TXFFF Interrupt Disable
      TXFFF          : FLEXCOM_FLEX_US_FIDR_TXFFF_Field := 16#0#;
      --  Write-only. TXFTHF Interrupt Disable
      TXFTHF         : FLEXCOM_FLEX_US_FIDR_TXFTHF_Field := 16#0#;
      --  Write-only. RXFEF Interrupt Disable
      RXFEF          : FLEXCOM_FLEX_US_FIDR_RXFEF_Field := 16#0#;
      --  Write-only. RXFFF Interrupt Disable
      RXFFF          : FLEXCOM_FLEX_US_FIDR_RXFFF_Field := 16#0#;
      --  Write-only. RXFTHF Interrupt Disable
      RXFTHF         : FLEXCOM_FLEX_US_FIDR_RXFTHF_Field := 16#0#;
      --  Write-only. TXFPTEF Interrupt Disable
      TXFPTEF        : FLEXCOM_FLEX_US_FIDR_TXFPTEF_Field := 16#0#;
      --  Write-only. RXFPTEF Interrupt Disable
      RXFPTEF        : FLEXCOM_FLEX_US_FIDR_RXFPTEF_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. RXFTHF2 Interrupt Disable
      RXFTHF2        : FLEXCOM_FLEX_US_FIDR_RXFTHF2_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22 := 16#0#;
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

   subtype FLEXCOM_FLEX_US_FIMR_TXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIMR_TXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIMR_TXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIMR_RXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIMR_RXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIMR_RXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIMR_TXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIMR_RXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FIMR_RXFTHF2_Field is Interfaces.SAM.Bit;

   --  USART FIFO Interrupt Mask Register
   type FLEXCOM_FLEX_US_FIMR_Register is record
      --  Read-only. TXFEF Interrupt Mask
      TXFEF          : FLEXCOM_FLEX_US_FIMR_TXFEF_Field;
      --  Read-only. TXFFF Interrupt Mask
      TXFFF          : FLEXCOM_FLEX_US_FIMR_TXFFF_Field;
      --  Read-only. TXFTHF Interrupt Mask
      TXFTHF         : FLEXCOM_FLEX_US_FIMR_TXFTHF_Field;
      --  Read-only. RXFEF Interrupt Mask
      RXFEF          : FLEXCOM_FLEX_US_FIMR_RXFEF_Field;
      --  Read-only. RXFFF Interrupt Mask
      RXFFF          : FLEXCOM_FLEX_US_FIMR_RXFFF_Field;
      --  Read-only. RXFTHF Interrupt Mask
      RXFTHF         : FLEXCOM_FLEX_US_FIMR_RXFTHF_Field;
      --  Read-only. TXFPTEF Interrupt Mask
      TXFPTEF        : FLEXCOM_FLEX_US_FIMR_TXFPTEF_Field;
      --  Read-only. RXFPTEF Interrupt Mask
      RXFPTEF        : FLEXCOM_FLEX_US_FIMR_RXFPTEF_Field;
      --  unspecified
      Reserved_8_8   : Interfaces.SAM.Bit;
      --  Read-only. RXFTHF2 Interrupt Mask
      RXFTHF2        : FLEXCOM_FLEX_US_FIMR_RXFTHF2_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22;
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

   subtype FLEXCOM_FLEX_US_FESR_TXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FESR_TXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FESR_TXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FESR_RXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FESR_RXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FESR_RXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FESR_TXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FESR_RXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FESR_TXFLOCK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_FESR_RXFTHF2_Field is Interfaces.SAM.Bit;

   --  USART FIFO Event Status Register
   type FLEXCOM_FLEX_US_FESR_Register is record
      --  Read-only. Transmit FIFO Empty Flag (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      TXFEF          : FLEXCOM_FLEX_US_FESR_TXFEF_Field;
      --  Read-only. Transmit FIFO Full Flag (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      TXFFF          : FLEXCOM_FLEX_US_FESR_TXFFF_Field;
      --  Read-only. Transmit FIFO Threshold Flag (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      TXFTHF         : FLEXCOM_FLEX_US_FESR_TXFTHF_Field;
      --  Read-only. Receive FIFO Empty Flag (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      RXFEF          : FLEXCOM_FLEX_US_FESR_RXFEF_Field;
      --  Read-only. Receive FIFO Full Flag (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      RXFFF          : FLEXCOM_FLEX_US_FESR_RXFFF_Field;
      --  Read-only. Receive FIFO Threshold Flag (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      RXFTHF         : FLEXCOM_FLEX_US_FESR_RXFTHF_Field;
      --  Read-only. Transmit FIFO Pointer Error Flag
      TXFPTEF        : FLEXCOM_FLEX_US_FESR_TXFPTEF_Field;
      --  Read-only. Receive FIFO Pointer Error Flag
      RXFPTEF        : FLEXCOM_FLEX_US_FESR_RXFPTEF_Field;
      --  Read-only. Transmit FIFO Lock
      TXFLOCK        : FLEXCOM_FLEX_US_FESR_TXFLOCK_Field;
      --  Read-only. Receive FIFO Threshold Flag 2 (cleared by writing the
      --  FLEX_US_CR.RSTSTA bit)
      RXFTHF2        : FLEXCOM_FLEX_US_FESR_RXFTHF2_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22;
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

   subtype FLEXCOM_FLEX_US_WPMR_WPEN_Field is Interfaces.SAM.Bit;

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
      WPEN         : FLEXCOM_FLEX_US_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
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

   subtype FLEXCOM_FLEX_US_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_US_WPSR_WPVSRC_Field is Interfaces.SAM.UInt16;

   --  USART Write Protection Status Register
   type FLEXCOM_FLEX_US_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : FLEXCOM_FLEX_US_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : FLEXCOM_FLEX_US_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_US_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_SPI_CR_SPIEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_CR_SPIDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_CR_SWRST_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_CR_REQCLR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_CR_TXFCLR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_CR_RXFCLR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_CR_LASTXFER_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_CR_FIFOEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_CR_FIFODIS_Field is Interfaces.SAM.Bit;

   --  SPI Control Register
   type FLEXCOM_FLEX_SPI_CR_Register is record
      --  Write-only. SPI Enable
      SPIEN          : FLEXCOM_FLEX_SPI_CR_SPIEN_Field := 16#0#;
      --  Write-only. SPI Disable
      SPIDIS         : FLEXCOM_FLEX_SPI_CR_SPIDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_6   : Interfaces.SAM.UInt5 := 16#0#;
      --  Write-only. SPI Software Reset
      SWRST          : FLEXCOM_FLEX_SPI_CR_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Request to Clear the Comparison Trigger
      REQCLR         : FLEXCOM_FLEX_SPI_CR_REQCLR_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Transmit FIFO Clear
      TXFCLR         : FLEXCOM_FLEX_SPI_CR_TXFCLR_Field := 16#0#;
      --  Write-only. Receive FIFO Clear
      RXFCLR         : FLEXCOM_FLEX_SPI_CR_RXFCLR_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : FLEXCOM_FLEX_SPI_CR_LASTXFER_Field := 16#0#;
      --  unspecified
      Reserved_25_29 : Interfaces.SAM.UInt5 := 16#0#;
      --  Write-only. FIFO Enable
      FIFOEN         : FLEXCOM_FLEX_SPI_CR_FIFOEN_Field := 16#0#;
      --  Write-only. FIFO Disable
      FIFODIS        : FLEXCOM_FLEX_SPI_CR_FIFODIS_Field := 16#0#;
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

   subtype FLEXCOM_FLEX_SPI_MR_MSTR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_MR_PS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_MR_PCSDEC_Field is Interfaces.SAM.Bit;

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

   subtype FLEXCOM_FLEX_SPI_MR_MODFDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_MR_WDRBT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_MR_LLB_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_MR_LBHPC_Field is Interfaces.SAM.Bit;

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

   subtype FLEXCOM_FLEX_SPI_MR_PCS_Field is Interfaces.SAM.UInt4;
   subtype FLEXCOM_FLEX_SPI_MR_DLYBCS_Field is Interfaces.SAM.Byte;

   --  SPI Mode Register
   type FLEXCOM_FLEX_SPI_MR_Register is record
      --  Master/Slave Mode
      MSTR           : FLEXCOM_FLEX_SPI_MR_MSTR_Field := 16#0#;
      --  Peripheral Select
      PS             : FLEXCOM_FLEX_SPI_MR_PS_Field := 16#0#;
      --  Chip Select Decode
      PCSDEC         : FLEXCOM_FLEX_SPI_MR_PCSDEC_Field := 16#0#;
      --  Bit Rate Source Clock
      BRSRCCLK       : FLEX_SPI_MR_BRSRCCLKSelect :=
                        Interfaces.SAM.FLEXCOM.PERIPH_CLK;
      --  Mode Fault Detection
      MODFDIS        : FLEXCOM_FLEX_SPI_MR_MODFDIS_Field := 16#0#;
      --  Wait Data Read Before Transfer
      WDRBT          : FLEXCOM_FLEX_SPI_MR_WDRBT_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.SAM.Bit := 16#0#;
      --  Local Loopback Enable
      LLB            : FLEXCOM_FLEX_SPI_MR_LLB_Field := 16#0#;
      --  Last Bit Half Period Compatibility
      LBHPC          : FLEXCOM_FLEX_SPI_MR_LBHPC_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.SAM.UInt3 := 16#0#;
      --  Comparison Mode
      CMPMODE        : FLEX_SPI_MR_CMPMODESelect :=
                        Interfaces.SAM.FLEXCOM.FLAG_ONLY;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  Peripheral Chip Select
      PCS            : FLEXCOM_FLEX_SPI_MR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
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

   subtype FLEXCOM_FLEX_SPI_RDR_RD_Field is Interfaces.SAM.UInt16;
   subtype FLEXCOM_FLEX_SPI_RDR_PCS_Field is Interfaces.SAM.UInt4;

   --  SPI Receive Data Register
   type FLEXCOM_FLEX_SPI_RDR_Register is record
      --  Read-only. Receive Data
      RD             : FLEXCOM_FLEX_SPI_RDR_RD_Field;
      --  Read-only. Peripheral Chip Select
      PCS            : FLEXCOM_FLEX_SPI_RDR_PCS_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_RDR_Register use record
      RD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_RD8_0_Field is
     Interfaces.SAM.Byte;
   subtype FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_RD8_1_Field is
     Interfaces.SAM.Byte;
   subtype FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_RD8_2_Field is
     Interfaces.SAM.Byte;
   subtype FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_8_MODE_RD8_3_Field is
     Interfaces.SAM.Byte;

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
     Interfaces.SAM.UInt16;
   subtype FLEXCOM_FLEX_SPI_RDR_FIFO_MULTI_DATA_16_MODE_RD16_1_Field is
     Interfaces.SAM.UInt16;

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

   subtype FLEXCOM_FLEX_SPI_TDR_TD_Field is Interfaces.SAM.UInt16;
   subtype FLEXCOM_FLEX_SPI_TDR_PCS_Field is Interfaces.SAM.UInt4;
   subtype FLEXCOM_FLEX_SPI_TDR_LASTXFER_Field is Interfaces.SAM.Bit;

   --  SPI Transmit Data Register
   type FLEXCOM_FLEX_SPI_TDR_Register is record
      --  Write-only. Transmit Data
      TD             : FLEXCOM_FLEX_SPI_TDR_TD_Field := 16#0#;
      --  Write-only. Peripheral Chip Select
      PCS            : FLEXCOM_FLEX_SPI_TDR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : FLEXCOM_FLEX_SPI_TDR_LASTXFER_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
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
   subtype FLEXCOM_FLEX_SPI_TDR_FIFO_MULTI_DATA_MODE_TD_Element is
     Interfaces.SAM.UInt16;

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
            Val : Interfaces.SAM.UInt32;
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

   subtype FLEXCOM_FLEX_SPI_SR_RDRF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_TDRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_MODF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_OVRES_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_NSSR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_UNDES_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_CMP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_SFERR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_SPIENS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_TXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_TXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_TXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_RXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_RXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_RXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_TXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_SR_RXFPTEF_Field is Interfaces.SAM.Bit;

   --  SPI Status Register
   type FLEXCOM_FLEX_SPI_SR_Register is record
      --  Read-only. Receive Data Register Full (cleared by reading
      --  FLEX_SPI_RDR)
      RDRF           : FLEXCOM_FLEX_SPI_SR_RDRF_Field;
      --  Read-only. Transmit Data Register Empty (cleared by writing
      --  FLEX_SPI_TDR)
      TDRE           : FLEXCOM_FLEX_SPI_SR_TDRE_Field;
      --  Read-only. Mode Fault Error (cleared on read)
      MODF           : FLEXCOM_FLEX_SPI_SR_MODF_Field;
      --  Read-only. Overrun Error Status (cleared on read)
      OVRES          : FLEXCOM_FLEX_SPI_SR_OVRES_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4;
      --  Read-only. NSS Rising (cleared on read)
      NSSR           : FLEXCOM_FLEX_SPI_SR_NSSR_Field;
      --  Read-only. Transmission Registers Empty (cleared by writing
      --  FLEX_SPI_TDR)
      TXEMPTY        : FLEXCOM_FLEX_SPI_SR_TXEMPTY_Field;
      --  Read-only. Underrun Error Status (Slave mode only) (cleared on read)
      UNDES          : FLEXCOM_FLEX_SPI_SR_UNDES_Field;
      --  Read-only. Comparison Status (cleared on read)
      CMP            : FLEXCOM_FLEX_SPI_SR_CMP_Field;
      --  Read-only. Slave Frame Error (cleared on read)
      SFERR          : FLEXCOM_FLEX_SPI_SR_SFERR_Field;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3;
      --  Read-only. SPI Enable Status
      SPIENS         : FLEXCOM_FLEX_SPI_SR_SPIENS_Field;
      --  unspecified
      Reserved_17_23 : Interfaces.SAM.UInt7;
      --  Read-only. Transmit FIFO Empty Flag (cleared on read)
      TXFEF          : FLEXCOM_FLEX_SPI_SR_TXFEF_Field;
      --  Read-only. Transmit FIFO Full Flag (cleared on read)
      TXFFF          : FLEXCOM_FLEX_SPI_SR_TXFFF_Field;
      --  Read-only. Transmit FIFO Threshold Flag (cleared on read)
      TXFTHF         : FLEXCOM_FLEX_SPI_SR_TXFTHF_Field;
      --  Read-only. Receive FIFO Empty Flag
      RXFEF          : FLEXCOM_FLEX_SPI_SR_RXFEF_Field;
      --  Read-only. Receive FIFO Full Flag
      RXFFF          : FLEXCOM_FLEX_SPI_SR_RXFFF_Field;
      --  Read-only. Receive FIFO Threshold Flag
      RXFTHF         : FLEXCOM_FLEX_SPI_SR_RXFTHF_Field;
      --  Read-only. Transmit FIFO Pointer Error Flag
      TXFPTEF        : FLEXCOM_FLEX_SPI_SR_TXFPTEF_Field;
      --  Read-only. Receive FIFO Pointer Error Flag
      RXFPTEF        : FLEXCOM_FLEX_SPI_SR_RXFPTEF_Field;
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

   subtype FLEXCOM_FLEX_SPI_IER_RDRF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_TDRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_MODF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_OVRES_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_NSSR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_UNDES_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_CMP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_TXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_TXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_TXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_RXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_RXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_RXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_TXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IER_RXFPTEF_Field is Interfaces.SAM.Bit;

   --  SPI Interrupt Enable Register
   type FLEXCOM_FLEX_SPI_IER_Register is record
      --  Write-only. Receive Data Register Full Interrupt Enable
      RDRF           : FLEXCOM_FLEX_SPI_IER_RDRF_Field := 16#0#;
      --  Write-only. SPI Transmit Data Register Empty Interrupt Enable
      TDRE           : FLEXCOM_FLEX_SPI_IER_TDRE_Field := 16#0#;
      --  Write-only. Mode Fault Error Interrupt Enable
      MODF           : FLEXCOM_FLEX_SPI_IER_MODF_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRES          : FLEXCOM_FLEX_SPI_IER_OVRES_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. NSS Rising Interrupt Enable
      NSSR           : FLEXCOM_FLEX_SPI_IER_NSSR_Field := 16#0#;
      --  Write-only. Transmission Registers Empty Enable
      TXEMPTY        : FLEXCOM_FLEX_SPI_IER_TXEMPTY_Field := 16#0#;
      --  Write-only. Underrun Error Interrupt Enable
      UNDES          : FLEXCOM_FLEX_SPI_IER_UNDES_Field := 16#0#;
      --  Write-only. Comparison Interrupt Enable
      CMP            : FLEXCOM_FLEX_SPI_IER_CMP_Field := 16#0#;
      --  unspecified
      Reserved_12_23 : Interfaces.SAM.UInt12 := 16#0#;
      --  Write-only. TXFEF Interrupt Enable
      TXFEF          : FLEXCOM_FLEX_SPI_IER_TXFEF_Field := 16#0#;
      --  Write-only. TXFFF Interrupt Enable
      TXFFF          : FLEXCOM_FLEX_SPI_IER_TXFFF_Field := 16#0#;
      --  Write-only. TXFTHF Interrupt Enable
      TXFTHF         : FLEXCOM_FLEX_SPI_IER_TXFTHF_Field := 16#0#;
      --  Write-only. RXFEF Interrupt Enable
      RXFEF          : FLEXCOM_FLEX_SPI_IER_RXFEF_Field := 16#0#;
      --  Write-only. RXFFF Interrupt Enable
      RXFFF          : FLEXCOM_FLEX_SPI_IER_RXFFF_Field := 16#0#;
      --  Write-only. RXFTHF Interrupt Enable
      RXFTHF         : FLEXCOM_FLEX_SPI_IER_RXFTHF_Field := 16#0#;
      --  Write-only. TXFPTEF Interrupt Enable
      TXFPTEF        : FLEXCOM_FLEX_SPI_IER_TXFPTEF_Field := 16#0#;
      --  Write-only. RXFPTEF Interrupt Enable
      RXFPTEF        : FLEXCOM_FLEX_SPI_IER_RXFPTEF_Field := 16#0#;
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

   subtype FLEXCOM_FLEX_SPI_IDR_RDRF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_TDRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_MODF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_OVRES_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_NSSR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_UNDES_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_CMP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_TXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_TXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_TXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_RXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_RXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_RXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_TXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IDR_RXFPTEF_Field is Interfaces.SAM.Bit;

   --  SPI Interrupt Disable Register
   type FLEXCOM_FLEX_SPI_IDR_Register is record
      --  Write-only. Receive Data Register Full Interrupt Disable
      RDRF           : FLEXCOM_FLEX_SPI_IDR_RDRF_Field := 16#0#;
      --  Write-only. SPI Transmit Data Register Empty Interrupt Disable
      TDRE           : FLEXCOM_FLEX_SPI_IDR_TDRE_Field := 16#0#;
      --  Write-only. Mode Fault Error Interrupt Disable
      MODF           : FLEXCOM_FLEX_SPI_IDR_MODF_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRES          : FLEXCOM_FLEX_SPI_IDR_OVRES_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. NSS Rising Interrupt Disable
      NSSR           : FLEXCOM_FLEX_SPI_IDR_NSSR_Field := 16#0#;
      --  Write-only. Transmission Registers Empty Disable
      TXEMPTY        : FLEXCOM_FLEX_SPI_IDR_TXEMPTY_Field := 16#0#;
      --  Write-only. Underrun Error Interrupt Disable
      UNDES          : FLEXCOM_FLEX_SPI_IDR_UNDES_Field := 16#0#;
      --  Write-only. Comparison Interrupt Disable
      CMP            : FLEXCOM_FLEX_SPI_IDR_CMP_Field := 16#0#;
      --  unspecified
      Reserved_12_23 : Interfaces.SAM.UInt12 := 16#0#;
      --  Write-only. TXFEF Interrupt Disable
      TXFEF          : FLEXCOM_FLEX_SPI_IDR_TXFEF_Field := 16#0#;
      --  Write-only. TXFFF Interrupt Disable
      TXFFF          : FLEXCOM_FLEX_SPI_IDR_TXFFF_Field := 16#0#;
      --  Write-only. TXFTHF Interrupt Disable
      TXFTHF         : FLEXCOM_FLEX_SPI_IDR_TXFTHF_Field := 16#0#;
      --  Write-only. RXFEF Interrupt Disable
      RXFEF          : FLEXCOM_FLEX_SPI_IDR_RXFEF_Field := 16#0#;
      --  Write-only. RXFFF Interrupt Disable
      RXFFF          : FLEXCOM_FLEX_SPI_IDR_RXFFF_Field := 16#0#;
      --  Write-only. RXFTHF Interrupt Disable
      RXFTHF         : FLEXCOM_FLEX_SPI_IDR_RXFTHF_Field := 16#0#;
      --  Write-only. TXFPTEF Interrupt Disable
      TXFPTEF        : FLEXCOM_FLEX_SPI_IDR_TXFPTEF_Field := 16#0#;
      --  Write-only. RXFPTEF Interrupt Disable
      RXFPTEF        : FLEXCOM_FLEX_SPI_IDR_RXFPTEF_Field := 16#0#;
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

   subtype FLEXCOM_FLEX_SPI_IMR_RDRF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_TDRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_MODF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_OVRES_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_NSSR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_UNDES_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_CMP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_TXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_TXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_TXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_RXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_RXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_RXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_TXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_IMR_RXFPTEF_Field is Interfaces.SAM.Bit;

   --  SPI Interrupt Mask Register
   type FLEXCOM_FLEX_SPI_IMR_Register is record
      --  Read-only. Receive Data Register Full Interrupt Mask
      RDRF           : FLEXCOM_FLEX_SPI_IMR_RDRF_Field;
      --  Read-only. SPI Transmit Data Register Empty Interrupt Mask
      TDRE           : FLEXCOM_FLEX_SPI_IMR_TDRE_Field;
      --  Read-only. Mode Fault Error Interrupt Mask
      MODF           : FLEXCOM_FLEX_SPI_IMR_MODF_Field;
      --  Read-only. Overrun Error Interrupt Mask
      OVRES          : FLEXCOM_FLEX_SPI_IMR_OVRES_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4;
      --  Read-only. NSS Rising Interrupt Mask
      NSSR           : FLEXCOM_FLEX_SPI_IMR_NSSR_Field;
      --  Read-only. Transmission Registers Empty Mask
      TXEMPTY        : FLEXCOM_FLEX_SPI_IMR_TXEMPTY_Field;
      --  Read-only. Underrun Error Interrupt Mask
      UNDES          : FLEXCOM_FLEX_SPI_IMR_UNDES_Field;
      --  Read-only. Comparison Interrupt Mask
      CMP            : FLEXCOM_FLEX_SPI_IMR_CMP_Field;
      --  unspecified
      Reserved_12_23 : Interfaces.SAM.UInt12;
      --  Read-only. TXFEF Interrupt Mask
      TXFEF          : FLEXCOM_FLEX_SPI_IMR_TXFEF_Field;
      --  Read-only. TXFFF Interrupt Mask
      TXFFF          : FLEXCOM_FLEX_SPI_IMR_TXFFF_Field;
      --  Read-only. TXFTHF Interrupt Mask
      TXFTHF         : FLEXCOM_FLEX_SPI_IMR_TXFTHF_Field;
      --  Read-only. RXFEF Interrupt Mask
      RXFEF          : FLEXCOM_FLEX_SPI_IMR_RXFEF_Field;
      --  Read-only. RXFFF Interrupt Mask
      RXFFF          : FLEXCOM_FLEX_SPI_IMR_RXFFF_Field;
      --  Read-only. RXFTHF Interrupt Mask
      RXFTHF         : FLEXCOM_FLEX_SPI_IMR_RXFTHF_Field;
      --  Read-only. TXFPTEF Interrupt Mask
      TXFPTEF        : FLEXCOM_FLEX_SPI_IMR_TXFPTEF_Field;
      --  Read-only. RXFPTEF Interrupt Mask
      RXFPTEF        : FLEXCOM_FLEX_SPI_IMR_RXFPTEF_Field;
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

   subtype FLEXCOM_FLEX_SPI_CSR_CPOL_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_CSR_NCPHA_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_CSR_CSNAAT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_CSR_CSAAT_Field is Interfaces.SAM.Bit;

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

   subtype FLEXCOM_FLEX_SPI_CSR_SCBR_Field is Interfaces.SAM.Byte;
   subtype FLEXCOM_FLEX_SPI_CSR_DLYBS_Field is Interfaces.SAM.Byte;
   subtype FLEXCOM_FLEX_SPI_CSR_DLYBCT_Field is Interfaces.SAM.Byte;

   --  SPI Chip Select Register
   type FLEXCOM_FLEX_SPI_CSR_Register is record
      --  Clock Polarity
      CPOL   : FLEXCOM_FLEX_SPI_CSR_CPOL_Field := 16#0#;
      --  Clock Phase
      NCPHA  : FLEXCOM_FLEX_SPI_CSR_NCPHA_Field := 16#0#;
      --  Chip Select Not Active After Transfer (Ignored if CSAAT = 1)
      CSNAAT : FLEXCOM_FLEX_SPI_CSR_CSNAAT_Field := 16#0#;
      --  Chip Select Active After Transfer
      CSAAT  : FLEXCOM_FLEX_SPI_CSR_CSAAT_Field := 16#0#;
      --  Bits Per Transfer
      BITS   : FLEX_SPI_CSR_BITSSelect := Interfaces.SAM.FLEXCOM.Val_8_BIT;
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

   subtype FLEXCOM_FLEX_SPI_FMR_TXFTHRES_Field is Interfaces.SAM.UInt6;
   subtype FLEXCOM_FLEX_SPI_FMR_RXFTHRES_Field is Interfaces.SAM.UInt6;

   --  SPI FIFO Mode Register
   type FLEXCOM_FLEX_SPI_FMR_Register is record
      --  Transmit Data Register Empty Mode
      TXRDYM         : FLEX_SPI_FMR_TXRDYMSelect :=
                        Interfaces.SAM.FLEXCOM.ONE_DATA;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Receive Data Register Full Mode
      RXRDYM         : FLEX_SPI_FMR_RXRDYMSelect :=
                        Interfaces.SAM.FLEXCOM.ONE_DATA;
      --  unspecified
      Reserved_6_15  : Interfaces.SAM.UInt10 := 16#0#;
      --  Transmit FIFO Threshold
      TXFTHRES       : FLEXCOM_FLEX_SPI_FMR_TXFTHRES_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  Receive FIFO Threshold
      RXFTHRES       : FLEXCOM_FLEX_SPI_FMR_RXFTHRES_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
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

   subtype FLEXCOM_FLEX_SPI_FLR_TXFL_Field is Interfaces.SAM.UInt6;
   subtype FLEXCOM_FLEX_SPI_FLR_RXFL_Field is Interfaces.SAM.UInt6;

   --  SPI FIFO Level Register
   type FLEXCOM_FLEX_SPI_FLR_Register is record
      --  Read-only. Transmit FIFO Level
      TXFL           : FLEXCOM_FLEX_SPI_FLR_TXFL_Field;
      --  unspecified
      Reserved_6_15  : Interfaces.SAM.UInt10;
      --  Read-only. Receive FIFO Level
      RXFL           : FLEXCOM_FLEX_SPI_FLR_RXFL_Field;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10;
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
   subtype FLEXCOM_FLEX_SPI_CMPR_VAL_Element is Interfaces.SAM.UInt16;

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
            Val : Interfaces.SAM.UInt32;
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

   subtype FLEXCOM_FLEX_SPI_WPMR_WPEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_WPMR_WPITEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_WPMR_WPCREN_Field is Interfaces.SAM.Bit;

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
      WPEN         : FLEXCOM_FLEX_SPI_WPMR_WPEN_Field := 16#0#;
      --  Write Protection Interrupt Enable
      WPITEN       : FLEXCOM_FLEX_SPI_WPMR_WPITEN_Field := 16#0#;
      --  Write Protection Control Enable
      WPCREN       : FLEXCOM_FLEX_SPI_WPMR_WPCREN_Field := 16#0#;
      --  unspecified
      Reserved_3_7 : Interfaces.SAM.UInt5 := 16#0#;
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

   subtype FLEXCOM_FLEX_SPI_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_SPI_WPSR_WPVSRC_Field is Interfaces.SAM.Byte;

   --  SPI Write Protection Status Register
   type FLEXCOM_FLEX_SPI_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : FLEXCOM_FLEX_SPI_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : FLEXCOM_FLEX_SPI_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_SPI_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_CR_START_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_STOP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_MSEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_MSDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_SVEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_SVDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_QUICK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_SWRST_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_HSEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_HSDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_SMBEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_SMBDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_PECEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_PECDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_PECRQ_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_CLEAR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_ACMEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_ACMDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_THRCLR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_LOCKCLR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFOEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFODIS_Field is Interfaces.SAM.Bit;

   --  TWI Control Register
   type FLEXCOM_FLEX_TWI_CR_Register is record
      --  Write-only. Send a START Condition
      START          : FLEXCOM_FLEX_TWI_CR_START_Field := 16#0#;
      --  Write-only. Send a STOP Condition
      STOP           : FLEXCOM_FLEX_TWI_CR_STOP_Field := 16#0#;
      --  Write-only. TWI Master Mode Enabled
      MSEN           : FLEXCOM_FLEX_TWI_CR_MSEN_Field := 16#0#;
      --  Write-only. TWI Master Mode Disabled
      MSDIS          : FLEXCOM_FLEX_TWI_CR_MSDIS_Field := 16#0#;
      --  Write-only. TWI Slave Mode Enabled
      SVEN           : FLEXCOM_FLEX_TWI_CR_SVEN_Field := 16#0#;
      --  Write-only. TWI Slave Mode Disabled
      SVDIS          : FLEXCOM_FLEX_TWI_CR_SVDIS_Field := 16#0#;
      --  Write-only. SMBus Quick Command
      QUICK          : FLEXCOM_FLEX_TWI_CR_QUICK_Field := 16#0#;
      --  Write-only. Software Reset
      SWRST          : FLEXCOM_FLEX_TWI_CR_SWRST_Field := 16#0#;
      --  Write-only. TWI High-Speed Mode Enabled
      HSEN           : FLEXCOM_FLEX_TWI_CR_HSEN_Field := 16#0#;
      --  Write-only. TWI High-Speed Mode Disabled
      HSDIS          : FLEXCOM_FLEX_TWI_CR_HSDIS_Field := 16#0#;
      --  Write-only. SMBus Mode Enabled
      SMBEN          : FLEXCOM_FLEX_TWI_CR_SMBEN_Field := 16#0#;
      --  Write-only. SMBus Mode Disabled
      SMBDIS         : FLEXCOM_FLEX_TWI_CR_SMBDIS_Field := 16#0#;
      --  Write-only. Packet Error Checking Enable
      PECEN          : FLEXCOM_FLEX_TWI_CR_PECEN_Field := 16#0#;
      --  Write-only. Packet Error Checking Disable
      PECDIS         : FLEXCOM_FLEX_TWI_CR_PECDIS_Field := 16#0#;
      --  Write-only. PEC Request
      PECRQ          : FLEXCOM_FLEX_TWI_CR_PECRQ_Field := 16#0#;
      --  Write-only. Bus CLEAR Command
      CLEAR          : FLEXCOM_FLEX_TWI_CR_CLEAR_Field := 16#0#;
      --  Write-only. Alternative Command Mode Enable
      ACMEN          : FLEXCOM_FLEX_TWI_CR_ACMEN_Field := 16#0#;
      --  Write-only. Alternative Command Mode Disable
      ACMDIS         : FLEXCOM_FLEX_TWI_CR_ACMDIS_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmit Holding Register Clear
      THRCLR         : FLEXCOM_FLEX_TWI_CR_THRCLR_Field := 16#0#;
      --  unspecified
      Reserved_25_25 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Lock Clear
      LOCKCLR        : FLEXCOM_FLEX_TWI_CR_LOCKCLR_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. FIFO Enable
      FIFOEN         : FLEXCOM_FLEX_TWI_CR_FIFOEN_Field := 16#0#;
      --  Write-only. FIFO Disable
      FIFODIS        : FLEXCOM_FLEX_TWI_CR_FIFODIS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_START_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_STOP_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_MSEN_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_MSDIS_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_SVEN_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_SVDIS_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_QUICK_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_SWRST_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_HSEN_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_HSDIS_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_SMBEN_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_SMBDIS_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_PECEN_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_PECDIS_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_PECRQ_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_CLEAR_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_ACMEN_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_ACMDIS_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_TXFCLR_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_RXFCLR_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_TXFLCLR_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_FIFOEN_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_FIFODIS_Field is
     Interfaces.SAM.Bit;

   --  TWI Control Register
   type FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_Register is record
      --  Write-only. Send a START Condition
      START          : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_START_Field :=
                        16#0#;
      --  Write-only. Send a STOP Condition
      STOP           : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_STOP_Field :=
                        16#0#;
      --  Write-only. TWI Master Mode Enabled
      MSEN           : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_MSEN_Field :=
                        16#0#;
      --  Write-only. TWI Master Mode Disabled
      MSDIS          : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_MSDIS_Field :=
                        16#0#;
      --  Write-only. TWI Slave Mode Enabled
      SVEN           : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_SVEN_Field :=
                        16#0#;
      --  Write-only. TWI Slave Mode Disabled
      SVDIS          : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_SVDIS_Field :=
                        16#0#;
      --  Write-only. SMBus Quick Command
      QUICK          : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_QUICK_Field :=
                        16#0#;
      --  Write-only. Software Reset
      SWRST          : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_SWRST_Field :=
                        16#0#;
      --  Write-only. TWI High-Speed Mode Enabled
      HSEN           : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_HSEN_Field :=
                        16#0#;
      --  Write-only. TWI High-Speed Mode Disabled
      HSDIS          : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_HSDIS_Field :=
                        16#0#;
      --  Write-only. SMBus Mode Enabled
      SMBEN          : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_SMBEN_Field :=
                        16#0#;
      --  Write-only. SMBus Mode Disabled
      SMBDIS         : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_SMBDIS_Field :=
                        16#0#;
      --  Write-only. Packet Error Checking Enable
      PECEN          : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_PECEN_Field :=
                        16#0#;
      --  Write-only. Packet Error Checking Disable
      PECDIS         : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_PECDIS_Field :=
                        16#0#;
      --  Write-only. PEC Request
      PECRQ          : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_PECRQ_Field :=
                        16#0#;
      --  Write-only. Bus CLEAR Command
      CLEAR          : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_CLEAR_Field :=
                        16#0#;
      --  Write-only. Alternative Command Mode Enable
      ACMEN          : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_ACMEN_Field :=
                        16#0#;
      --  Write-only. Alternative Command Mode Disable
      ACMDIS         : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_ACMDIS_Field :=
                        16#0#;
      --  unspecified
      Reserved_18_23 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmit FIFO Clear
      TXFCLR         : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_TXFCLR_Field :=
                        16#0#;
      --  Write-only. Receive FIFO Clear
      RXFCLR         : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_RXFCLR_Field :=
                        16#0#;
      --  Write-only. Transmit FIFO Lock CLEAR
      TXFLCLR        : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_TXFLCLR_Field :=
                        16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. FIFO Enable
      FIFOEN         : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_FIFOEN_Field :=
                        16#0#;
      --  Write-only. FIFO Disable
      FIFODIS        : FLEXCOM_FLEX_TWI_CR_FIFO_ENABLED_MODE_FIFODIS_Field :=
                        16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_MMR_MREAD_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_MMR_DADR_Field is Interfaces.SAM.UInt7;
   subtype FLEXCOM_FLEX_TWI_MMR_NOAP_Field is Interfaces.SAM.Bit;

   --  TWI Master Mode Register
   type FLEXCOM_FLEX_TWI_MMR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.SAM.Byte := 16#0#;
      --  Internal Device Address Size
      IADRSZ         : FLEX_TWI_MMR_IADRSZSelect :=
                        Interfaces.SAM.FLEXCOM.NONE;
      --  unspecified
      Reserved_10_11 : Interfaces.SAM.UInt2 := 16#0#;
      --  Master Read Direction
      MREAD          : FLEXCOM_FLEX_TWI_MMR_MREAD_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  Device Address
      DADR           : FLEXCOM_FLEX_TWI_MMR_DADR_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit := 16#0#;
      --  No Auto-Stop On NACK Error
      NOAP           : FLEXCOM_FLEX_TWI_MMR_NOAP_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_SMR_NACKEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SMR_SMDA_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SMR_SMHH_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SMR_SADAT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SMR_BSEL_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SMR_SCLWSDIS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SMR_SNIFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SMR_MASK_Field is Interfaces.SAM.UInt7;
   subtype FLEXCOM_FLEX_TWI_SMR_SADR_Field is Interfaces.SAM.UInt7;

   --  TWI Slave Mode Register
   type FLEXCOM_FLEX_TWI_SMR_Register is record
      --  Slave Receiver Data Phase NACK Enable
      NACKEN         : FLEXCOM_FLEX_TWI_SMR_NACKEN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.SAM.Bit := 16#0#;
      --  SMBus Default Address
      SMDA           : FLEXCOM_FLEX_TWI_SMR_SMDA_Field := 16#0#;
      --  SMBus Host Header
      SMHH           : FLEXCOM_FLEX_TWI_SMR_SMHH_Field := 16#0#;
      --  Slave Address Treated as Data
      SADAT          : FLEXCOM_FLEX_TWI_SMR_SADAT_Field := 16#0#;
      --  TWI Bus Selection
      BSEL           : FLEXCOM_FLEX_TWI_SMR_BSEL_Field := 16#0#;
      --  Clock Wait State Disable
      SCLWSDIS       : FLEXCOM_FLEX_TWI_SMR_SCLWSDIS_Field := 16#0#;
      --  Slave Sniffer Mode
      SNIFF          : FLEXCOM_FLEX_TWI_SMR_SNIFF_Field := 16#0#;
      --  Slave Address Mask
      MASK           : FLEXCOM_FLEX_TWI_SMR_MASK_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit := 16#0#;
      --  Slave Address
      SADR           : FLEXCOM_FLEX_TWI_SMR_SADR_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_IADR_IADR_Field is Interfaces.SAM.UInt24;

   --  TWI Internal Address Register
   type FLEXCOM_FLEX_TWI_IADR_Register is record
      --  Internal Address
      IADR           : FLEXCOM_FLEX_TWI_IADR_IADR_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_IADR_Register use record
      IADR           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_CWGR_CLDIV_Field is Interfaces.SAM.Byte;
   subtype FLEXCOM_FLEX_TWI_CWGR_CHDIV_Field is Interfaces.SAM.Byte;
   subtype FLEXCOM_FLEX_TWI_CWGR_CKDIV_Field is Interfaces.SAM.UInt3;

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

   subtype FLEXCOM_FLEX_TWI_CWGR_HOLD_Field is Interfaces.SAM.UInt6;

   --  TWI Clock Waveform Generator Register
   type FLEXCOM_FLEX_TWI_CWGR_Register is record
      --  Clock Low Divider
      CLDIV          : FLEXCOM_FLEX_TWI_CWGR_CLDIV_Field := 16#0#;
      --  Clock High Divider
      CHDIV          : FLEXCOM_FLEX_TWI_CWGR_CHDIV_Field := 16#0#;
      --  Clock Divider
      CKDIV          : FLEXCOM_FLEX_TWI_CWGR_CKDIV_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.SAM.Bit := 16#0#;
      --  Bit Rate Source Clock
      BRSRCCLK       : FLEX_TWI_CWGR_BRSRCCLKSelect :=
                        Interfaces.SAM.FLEXCOM.PERIPH_CLK;
      --  unspecified
      Reserved_21_23 : Interfaces.SAM.UInt3 := 16#0#;
      --  TWD Hold Time Versus TWCK Falling
      HOLD           : FLEXCOM_FLEX_TWI_CWGR_HOLD_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_SR_TXCOMP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_SVREAD_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_SVACC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_GACC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_OVRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_UNRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_NACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_ARBLST_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_SCLWS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_EOSACC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_MCACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_SMBAF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_TOUT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_PECERR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_SMBDAM_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_SMBHHM_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_LOCK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_SCL_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_SDA_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_SR_Field is Interfaces.SAM.Bit;

   --  TWI Status Register
   type FLEXCOM_FLEX_TWI_SR_Register is record
      --  Read-only. Transmission Completed (cleared by writing FLEX_TWI_THR)
      TXCOMP         : FLEXCOM_FLEX_TWI_SR_TXCOMP_Field;
      --  Read-only. Receive Holding Register Ready (cleared when reading
      --  FLEX_TWI_RHR)
      RXRDY          : FLEXCOM_FLEX_TWI_SR_RXRDY_Field;
      --  Read-only. Transmit Holding Register Ready (cleared by writing
      --  FLEX_TWI_THR)
      TXRDY          : FLEXCOM_FLEX_TWI_SR_TXRDY_Field;
      --  Read-only. Slave Read
      SVREAD         : FLEXCOM_FLEX_TWI_SR_SVREAD_Field;
      --  Read-only. Slave Access
      SVACC          : FLEXCOM_FLEX_TWI_SR_SVACC_Field;
      --  Read-only. General Call Access (cleared on read)
      GACC           : FLEXCOM_FLEX_TWI_SR_GACC_Field;
      --  Read-only. Overrun Error (cleared on read)
      OVRE           : FLEXCOM_FLEX_TWI_SR_OVRE_Field;
      --  Read-only. Underrun Error (cleared on read)
      UNRE           : FLEXCOM_FLEX_TWI_SR_UNRE_Field;
      --  Read-only. Not Acknowledged (cleared on read)
      NACK           : FLEXCOM_FLEX_TWI_SR_NACK_Field;
      --  Read-only. Arbitration Lost (cleared on read)
      ARBLST         : FLEXCOM_FLEX_TWI_SR_ARBLST_Field;
      --  Read-only. Clock Wait State
      SCLWS          : FLEXCOM_FLEX_TWI_SR_SCLWS_Field;
      --  Read-only. End Of Slave Access (cleared on read)
      EOSACC         : FLEXCOM_FLEX_TWI_SR_EOSACC_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4;
      --  Read-only. Master Code Acknowledge (cleared on read)
      MCACK          : FLEXCOM_FLEX_TWI_SR_MCACK_Field;
      --  Read-only. SMBus Alert Flag (cleared on read)
      SMBAF          : FLEXCOM_FLEX_TWI_SR_SMBAF_Field;
      --  Read-only. Timeout Error (cleared on read)
      TOUT           : FLEXCOM_FLEX_TWI_SR_TOUT_Field;
      --  Read-only. PEC Error (cleared on read)
      PECERR         : FLEXCOM_FLEX_TWI_SR_PECERR_Field;
      --  Read-only. SMBus Default Address Match (cleared on read)
      SMBDAM         : FLEXCOM_FLEX_TWI_SR_SMBDAM_Field;
      --  Read-only. SMBus Host Header Address Match (cleared on read)
      SMBHHM         : FLEXCOM_FLEX_TWI_SR_SMBHHM_Field;
      --  unspecified
      Reserved_22_22 : Interfaces.SAM.Bit;
      --  Read-only. TWI Lock Due to Frame Errors
      LOCK           : FLEXCOM_FLEX_TWI_SR_LOCK_Field;
      --  Read-only. SCL Line Value
      SCL            : FLEXCOM_FLEX_TWI_SR_SCL_Field;
      --  Read-only. SDA Line Value
      SDA            : FLEXCOM_FLEX_TWI_SR_SDA_Field;
      --  Read-only. Start Repeated
      SR             : FLEXCOM_FLEX_TWI_SR_SR_Field;
      --  unspecified
      Reserved_27_31 : Interfaces.SAM.UInt5;
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

   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_TXCOMP_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_RXRDY_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_TXRDY_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SVREAD_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SVACC_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_GACC_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_OVRE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_UNRE_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_NACK_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_ARBLST_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SCLWS_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_EOSACC_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_MCACK_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SMBAF_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_TOUT_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_PECERR_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SMBDAM_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SMBHHM_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_TXFLOCK_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SCL_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SDA_Field is
     Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SR_Field is
     Interfaces.SAM.Bit;

   --  TWI Status Register
   type FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_Register is record
      --  Read-only. Transmission Completed (cleared by writing FLEX_TWI_THR)
      TXCOMP         : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_TXCOMP_Field;
      --  Read-only. Receive Holding Register Ready (cleared when reading
      --  FLEX_TWI_RHR)
      RXRDY          : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_RXRDY_Field;
      --  Read-only. Transmit Holding Register Ready (cleared by writing
      --  FLEX_TWI_THR)
      TXRDY          : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_TXRDY_Field;
      --  Read-only. Slave Read
      SVREAD         : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SVREAD_Field;
      --  Read-only. Slave Access
      SVACC          : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SVACC_Field;
      --  Read-only. General Call Access (cleared on read)
      GACC           : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_GACC_Field;
      --  Read-only. Overrun Error (cleared on read)
      OVRE           : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_OVRE_Field;
      --  Read-only. Underrun Error (cleared on read)
      UNRE           : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_UNRE_Field;
      --  Read-only. Not Acknowledged (cleared on read)
      NACK           : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_NACK_Field;
      --  Read-only. Arbitration Lost (cleared on read)
      ARBLST         : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_ARBLST_Field;
      --  Read-only. Clock Wait State
      SCLWS          : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SCLWS_Field;
      --  Read-only. End Of Slave Access (cleared on read)
      EOSACC         : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_EOSACC_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4;
      --  Read-only. Master Code Acknowledge (cleared on read)
      MCACK          : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_MCACK_Field;
      --  Read-only. SMBus Alert Flag (cleared on read)
      SMBAF          : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SMBAF_Field;
      --  Read-only. Timeout Error (cleared on read)
      TOUT           : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_TOUT_Field;
      --  Read-only. PEC Error (cleared on read)
      PECERR         : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_PECERR_Field;
      --  Read-only. SMBus Default Address Match (cleared on read)
      SMBDAM         : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SMBDAM_Field;
      --  Read-only. SMBus Host Header Address Match (cleared on read)
      SMBHHM         : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SMBHHM_Field;
      --  unspecified
      Reserved_22_22 : Interfaces.SAM.Bit;
      --  Read-only. Transmit FIFO Lock
      TXFLOCK        : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_TXFLOCK_Field;
      --  Read-only. SCL Line Value
      SCL            : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SCL_Field;
      --  Read-only. SDA Line Value
      SDA            : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SDA_Field;
      --  Read-only. Start Repeated
      SR             : FLEXCOM_FLEX_TWI_SR_FIFO_ENABLED_MODE_SR_Field;
      --  unspecified
      Reserved_27_31 : Interfaces.SAM.UInt5;
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

   subtype FLEXCOM_FLEX_TWI_IER_TXCOMP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_RXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_TXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_SVACC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_GACC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_OVRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_UNRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_NACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_ARBLST_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_SCL_WS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_EOSACC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_ENDRX_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_ENDTX_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_MCACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_TOUT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_PECERR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_SMBDAM_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IER_SMBHHM_Field is Interfaces.SAM.Bit;

   --  TWI Interrupt Enable Register
   type FLEXCOM_FLEX_TWI_IER_Register is record
      --  Write-only. Transmission Completed Interrupt Enable
      TXCOMP         : FLEXCOM_FLEX_TWI_IER_TXCOMP_Field := 16#0#;
      --  Write-only. Receive Holding Register Ready Interrupt Enable
      RXRDY          : FLEXCOM_FLEX_TWI_IER_RXRDY_Field := 16#0#;
      --  Write-only. Transmit Holding Register Ready Interrupt Enable
      TXRDY          : FLEXCOM_FLEX_TWI_IER_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Slave Access Interrupt Enable
      SVACC          : FLEXCOM_FLEX_TWI_IER_SVACC_Field := 16#0#;
      --  Write-only. General Call Access Interrupt Enable
      GACC           : FLEXCOM_FLEX_TWI_IER_GACC_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : FLEXCOM_FLEX_TWI_IER_OVRE_Field := 16#0#;
      --  Write-only. Underrun Error Interrupt Enable
      UNRE           : FLEXCOM_FLEX_TWI_IER_UNRE_Field := 16#0#;
      --  Write-only. Not Acknowledge Interrupt Enable
      NACK           : FLEXCOM_FLEX_TWI_IER_NACK_Field := 16#0#;
      --  Write-only. Arbitration Lost Interrupt Enable
      ARBLST         : FLEXCOM_FLEX_TWI_IER_ARBLST_Field := 16#0#;
      --  Write-only. Clock Wait State Interrupt Enable
      SCL_WS         : FLEXCOM_FLEX_TWI_IER_SCL_WS_Field := 16#0#;
      --  Write-only. End Of Slave Access Interrupt Enable
      EOSACC         : FLEXCOM_FLEX_TWI_IER_EOSACC_Field := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : FLEXCOM_FLEX_TWI_IER_ENDRX_Field := 16#0#;
      --  Write-only. End of Transmit Buffer Interrupt Enable
      ENDTX          : FLEXCOM_FLEX_TWI_IER_ENDTX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : FLEXCOM_FLEX_TWI_IER_RXBUFF_Field := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE         : FLEXCOM_FLEX_TWI_IER_TXBUFE_Field := 16#0#;
      --  Write-only. Master Code Acknowledge Interrupt Enable
      MCACK          : FLEXCOM_FLEX_TWI_IER_MCACK_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Timeout Error Interrupt Enable
      TOUT           : FLEXCOM_FLEX_TWI_IER_TOUT_Field := 16#0#;
      --  Write-only. PEC Error Interrupt Enable
      PECERR         : FLEXCOM_FLEX_TWI_IER_PECERR_Field := 16#0#;
      --  Write-only. SMBus Default Address Match Interrupt Enable
      SMBDAM         : FLEXCOM_FLEX_TWI_IER_SMBDAM_Field := 16#0#;
      --  Write-only. SMBus Host Header Address Match Interrupt Enable
      SMBHHM         : FLEXCOM_FLEX_TWI_IER_SMBHHM_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_IDR_TXCOMP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_SVACC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_GACC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_OVRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_UNRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_NACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_ARBLST_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_SCL_WS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_EOSACC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_MCACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_TOUT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_PECERR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_SMBDAM_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IDR_SMBHHM_Field is Interfaces.SAM.Bit;

   --  TWI Interrupt Disable Register
   type FLEXCOM_FLEX_TWI_IDR_Register is record
      --  Write-only. Transmission Completed Interrupt Disable
      TXCOMP         : FLEXCOM_FLEX_TWI_IDR_TXCOMP_Field := 16#0#;
      --  Write-only. Receive Holding Register Ready Interrupt Disable
      RXRDY          : FLEXCOM_FLEX_TWI_IDR_RXRDY_Field := 16#0#;
      --  Write-only. Transmit Holding Register Ready Interrupt Disable
      TXRDY          : FLEXCOM_FLEX_TWI_IDR_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Slave Access Interrupt Disable
      SVACC          : FLEXCOM_FLEX_TWI_IDR_SVACC_Field := 16#0#;
      --  Write-only. General Call Access Interrupt Disable
      GACC           : FLEXCOM_FLEX_TWI_IDR_GACC_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : FLEXCOM_FLEX_TWI_IDR_OVRE_Field := 16#0#;
      --  Write-only. Underrun Error Interrupt Disable
      UNRE           : FLEXCOM_FLEX_TWI_IDR_UNRE_Field := 16#0#;
      --  Write-only. Not Acknowledge Interrupt Disable
      NACK           : FLEXCOM_FLEX_TWI_IDR_NACK_Field := 16#0#;
      --  Write-only. Arbitration Lost Interrupt Disable
      ARBLST         : FLEXCOM_FLEX_TWI_IDR_ARBLST_Field := 16#0#;
      --  Write-only. Clock Wait State Interrupt Disable
      SCL_WS         : FLEXCOM_FLEX_TWI_IDR_SCL_WS_Field := 16#0#;
      --  Write-only. End Of Slave Access Interrupt Disable
      EOSACC         : FLEXCOM_FLEX_TWI_IDR_EOSACC_Field := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : FLEXCOM_FLEX_TWI_IDR_ENDRX_Field := 16#0#;
      --  Write-only. End of Transmit Buffer Interrupt Disable
      ENDTX          : FLEXCOM_FLEX_TWI_IDR_ENDTX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : FLEXCOM_FLEX_TWI_IDR_RXBUFF_Field := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXBUFE         : FLEXCOM_FLEX_TWI_IDR_TXBUFE_Field := 16#0#;
      --  Write-only. Master Code Acknowledge Interrupt Disable
      MCACK          : FLEXCOM_FLEX_TWI_IDR_MCACK_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Timeout Error Interrupt Disable
      TOUT           : FLEXCOM_FLEX_TWI_IDR_TOUT_Field := 16#0#;
      --  Write-only. PEC Error Interrupt Disable
      PECERR         : FLEXCOM_FLEX_TWI_IDR_PECERR_Field := 16#0#;
      --  Write-only. SMBus Default Address Match Interrupt Disable
      SMBDAM         : FLEXCOM_FLEX_TWI_IDR_SMBDAM_Field := 16#0#;
      --  Write-only. SMBus Host Header Address Match Interrupt Disable
      SMBHHM         : FLEXCOM_FLEX_TWI_IDR_SMBHHM_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_IMR_TXCOMP_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_SVACC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_GACC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_OVRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_UNRE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_NACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_ARBLST_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_SCL_WS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_EOSACC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_MCACK_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_TOUT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_PECERR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_SMBDAM_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_IMR_SMBHHM_Field is Interfaces.SAM.Bit;

   --  TWI Interrupt Mask Register
   type FLEXCOM_FLEX_TWI_IMR_Register is record
      --  Read-only. Transmission Completed Interrupt Mask
      TXCOMP         : FLEXCOM_FLEX_TWI_IMR_TXCOMP_Field;
      --  Read-only. Receive Holding Register Ready Interrupt Mask
      RXRDY          : FLEXCOM_FLEX_TWI_IMR_RXRDY_Field;
      --  Read-only. Transmit Holding Register Ready Interrupt Mask
      TXRDY          : FLEXCOM_FLEX_TWI_IMR_TXRDY_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit;
      --  Read-only. Slave Access Interrupt Mask
      SVACC          : FLEXCOM_FLEX_TWI_IMR_SVACC_Field;
      --  Read-only. General Call Access Interrupt Mask
      GACC           : FLEXCOM_FLEX_TWI_IMR_GACC_Field;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : FLEXCOM_FLEX_TWI_IMR_OVRE_Field;
      --  Read-only. Underrun Error Interrupt Mask
      UNRE           : FLEXCOM_FLEX_TWI_IMR_UNRE_Field;
      --  Read-only. Not Acknowledge Interrupt Mask
      NACK           : FLEXCOM_FLEX_TWI_IMR_NACK_Field;
      --  Read-only. Arbitration Lost Interrupt Mask
      ARBLST         : FLEXCOM_FLEX_TWI_IMR_ARBLST_Field;
      --  Read-only. Clock Wait State Interrupt Mask
      SCL_WS         : FLEXCOM_FLEX_TWI_IMR_SCL_WS_Field;
      --  Read-only. End Of Slave Access Interrupt Mask
      EOSACC         : FLEXCOM_FLEX_TWI_IMR_EOSACC_Field;
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : FLEXCOM_FLEX_TWI_IMR_ENDRX_Field;
      --  Read-only. End of Transmit Buffer Interrupt Mask
      ENDTX          : FLEXCOM_FLEX_TWI_IMR_ENDTX_Field;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : FLEXCOM_FLEX_TWI_IMR_RXBUFF_Field;
      --  Read-only. Transmit Buffer Empty Interrupt Mask
      TXBUFE         : FLEXCOM_FLEX_TWI_IMR_TXBUFE_Field;
      --  Read-only. Master Code Acknowledge Interrupt Mask
      MCACK          : FLEXCOM_FLEX_TWI_IMR_MCACK_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit;
      --  Read-only. Timeout Error Interrupt Mask
      TOUT           : FLEXCOM_FLEX_TWI_IMR_TOUT_Field;
      --  Read-only. PEC Error Interrupt Mask
      PECERR         : FLEXCOM_FLEX_TWI_IMR_PECERR_Field;
      --  Read-only. SMBus Default Address Match Interrupt Mask
      SMBDAM         : FLEXCOM_FLEX_TWI_IMR_SMBDAM_Field;
      --  Read-only. SMBus Host Header Address Match Interrupt Mask
      SMBHHM         : FLEXCOM_FLEX_TWI_IMR_SMBHHM_Field;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10;
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

   subtype FLEXCOM_FLEX_TWI_RHR_RXDATA_Field is Interfaces.SAM.Byte;

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

   subtype FLEXCOM_FLEX_TWI_RHR_PSTATE_Field is Interfaces.SAM.Bit;

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
      PSTATE         : FLEXCOM_FLEX_TWI_RHR_PSTATE_Field;
      --  Read-only. Acknowledge State (Slave Sniffer Mode only)
      ASTATE         : FLEX_TWI_RHR_ASTATESelect;
      --  unspecified
      Reserved_13_31 : Interfaces.SAM.UInt19;
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
   subtype FLEXCOM_FLEX_TWI_RHR_FIFO_ENABLED_MODE_RXDATA_Element is
     Interfaces.SAM.Byte;

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
            Val : Interfaces.SAM.UInt32;
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

   subtype FLEXCOM_FLEX_TWI_THR_TXDATA_Field is Interfaces.SAM.Byte;

   --  TWI Transmit Holding Register
   type FLEXCOM_FLEX_TWI_THR_Register is record
      --  Write-only. Master or Slave Transmit Holding Data
      TXDATA        : FLEXCOM_FLEX_TWI_THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_THR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  FLEXCOM_FLEX_TWI_THR_FIFO_ENABLED_MODE_TXDATA array element
   subtype FLEXCOM_FLEX_TWI_THR_FIFO_ENABLED_MODE_TXDATA_Element is
     Interfaces.SAM.Byte;

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
            Val : Interfaces.SAM.UInt32;
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

   subtype FLEXCOM_FLEX_TWI_SMBTR_PRESC_Field is Interfaces.SAM.UInt4;
   subtype FLEXCOM_FLEX_TWI_SMBTR_TLOWS_Field is Interfaces.SAM.Byte;
   subtype FLEXCOM_FLEX_TWI_SMBTR_TLOWM_Field is Interfaces.SAM.Byte;
   subtype FLEXCOM_FLEX_TWI_SMBTR_THMAX_Field is Interfaces.SAM.Byte;

   --  TWI SMBus Timing Register
   type FLEXCOM_FLEX_TWI_SMBTR_Register is record
      --  SMBus Clock Prescaler
      PRESC        : FLEXCOM_FLEX_TWI_SMBTR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : Interfaces.SAM.UInt4 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_ACR_DATAL_Field is Interfaces.SAM.Byte;
   subtype FLEXCOM_FLEX_TWI_ACR_DIR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_ACR_PEC_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_ACR_NDATAL_Field is Interfaces.SAM.Byte;
   subtype FLEXCOM_FLEX_TWI_ACR_NDIR_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_ACR_NPEC_Field is Interfaces.SAM.Bit;

   --  TWI Alternative Command Register
   type FLEXCOM_FLEX_TWI_ACR_Register is record
      --  Data Length
      DATAL          : FLEXCOM_FLEX_TWI_ACR_DATAL_Field := 16#0#;
      --  Transfer Direction
      DIR            : FLEXCOM_FLEX_TWI_ACR_DIR_Field := 16#0#;
      --  PEC Request (SMBus Mode only)
      PEC            : FLEXCOM_FLEX_TWI_ACR_PEC_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Next Data Length
      NDATAL         : FLEXCOM_FLEX_TWI_ACR_NDATAL_Field := 16#0#;
      --  Next Transfer Direction
      NDIR           : FLEXCOM_FLEX_TWI_ACR_NDIR_Field := 16#0#;
      --  Next PEC Request (SMBus Mode only)
      NPEC           : FLEXCOM_FLEX_TWI_ACR_NPEC_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.SAM.UInt6 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_FILTR_FILT_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FILTR_PADFEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FILTR_THRES_Field is Interfaces.SAM.UInt3;

   --  TWI Filter Register
   type FLEXCOM_FLEX_TWI_FILTR_Register is record
      --  RX Digital Filter
      FILT           : FLEXCOM_FLEX_TWI_FILTR_FILT_Field := 16#0#;
      --  PAD Filter Enable
      PADFEN         : FLEXCOM_FLEX_TWI_FILTR_PADFEN_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Digital Filter Threshold
      THRES          : FLEXCOM_FLEX_TWI_FILTR_THRES_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_FMR_TXFTHRES_Field is Interfaces.SAM.UInt6;
   subtype FLEXCOM_FLEX_TWI_FMR_RXFTHRES_Field is Interfaces.SAM.UInt6;

   --  TWI FIFO Mode Register
   type FLEXCOM_FLEX_TWI_FMR_Register is record
      --  Transmitter Ready Mode
      TXRDYM         : FLEX_TWI_FMR_TXRDYMSelect :=
                        Interfaces.SAM.FLEXCOM.ONE_DATA;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Receiver Ready Mode
      RXRDYM         : FLEX_TWI_FMR_RXRDYMSelect :=
                        Interfaces.SAM.FLEXCOM.ONE_DATA;
      --  unspecified
      Reserved_6_15  : Interfaces.SAM.UInt10 := 16#0#;
      --  Transmit FIFO Threshold
      TXFTHRES       : FLEXCOM_FLEX_TWI_FMR_TXFTHRES_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  Receive FIFO Threshold
      RXFTHRES       : FLEXCOM_FLEX_TWI_FMR_RXFTHRES_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_FLR_TXFL_Field is Interfaces.SAM.UInt6;
   subtype FLEXCOM_FLEX_TWI_FLR_RXFL_Field is Interfaces.SAM.UInt6;

   --  TWI FIFO Level Register
   type FLEXCOM_FLEX_TWI_FLR_Register is record
      --  Read-only. Transmit FIFO Level
      TXFL           : FLEXCOM_FLEX_TWI_FLR_TXFL_Field;
      --  unspecified
      Reserved_6_15  : Interfaces.SAM.UInt10;
      --  Read-only. Receive FIFO Level
      RXFL           : FLEXCOM_FLEX_TWI_FLR_RXFL_Field;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM_FLEX_TWI_FLR_Register use record
      TXFL           at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      RXFL           at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype FLEXCOM_FLEX_TWI_FSR_TXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FSR_TXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FSR_TXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FSR_RXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FSR_RXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FSR_RXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FSR_TXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FSR_RXFPTEF_Field is Interfaces.SAM.Bit;

   --  TWI FIFO Status Register
   type FLEXCOM_FLEX_TWI_FSR_Register is record
      --  Read-only. Transmit FIFO Empty Flag (cleared on read)
      TXFEF         : FLEXCOM_FLEX_TWI_FSR_TXFEF_Field;
      --  Read-only. Transmit FIFO Full Flag (cleared on read)
      TXFFF         : FLEXCOM_FLEX_TWI_FSR_TXFFF_Field;
      --  Read-only. Transmit FIFO Threshold Flag (cleared on read)
      TXFTHF        : FLEXCOM_FLEX_TWI_FSR_TXFTHF_Field;
      --  Read-only. Receive FIFO Empty Flag
      RXFEF         : FLEXCOM_FLEX_TWI_FSR_RXFEF_Field;
      --  Read-only. Receive FIFO Full Flag
      RXFFF         : FLEXCOM_FLEX_TWI_FSR_RXFFF_Field;
      --  Read-only. Receive FIFO Threshold Flag
      RXFTHF        : FLEXCOM_FLEX_TWI_FSR_RXFTHF_Field;
      --  Read-only. Transmit FIFO Pointer Error Flag
      TXFPTEF       : FLEXCOM_FLEX_TWI_FSR_TXFPTEF_Field;
      --  Read-only. Receive FIFO Pointer Error Flag
      RXFPTEF       : FLEXCOM_FLEX_TWI_FSR_RXFPTEF_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24;
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

   subtype FLEXCOM_FLEX_TWI_FIER_TXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIER_TXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIER_TXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIER_RXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIER_RXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIER_RXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIER_TXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIER_RXFPTEF_Field is Interfaces.SAM.Bit;

   --  TWI FIFO Interrupt Enable Register
   type FLEXCOM_FLEX_TWI_FIER_Register is record
      --  Write-only. TXFEF Interrupt Enable
      TXFEF         : FLEXCOM_FLEX_TWI_FIER_TXFEF_Field := 16#0#;
      --  Write-only. TXFFF Interrupt Enable
      TXFFF         : FLEXCOM_FLEX_TWI_FIER_TXFFF_Field := 16#0#;
      --  Write-only. TXFTHF Interrupt Enable
      TXFTHF        : FLEXCOM_FLEX_TWI_FIER_TXFTHF_Field := 16#0#;
      --  Write-only. RXFEF Interrupt Enable
      RXFEF         : FLEXCOM_FLEX_TWI_FIER_RXFEF_Field := 16#0#;
      --  Write-only. RXFFF Interrupt Enable
      RXFFF         : FLEXCOM_FLEX_TWI_FIER_RXFFF_Field := 16#0#;
      --  Write-only. RXFTHF Interrupt Enable
      RXFTHF        : FLEXCOM_FLEX_TWI_FIER_RXFTHF_Field := 16#0#;
      --  Write-only. TXFPTEF Interrupt Enable
      TXFPTEF       : FLEXCOM_FLEX_TWI_FIER_TXFPTEF_Field := 16#0#;
      --  Write-only. RXFPTEF Interrupt Enable
      RXFPTEF       : FLEXCOM_FLEX_TWI_FIER_RXFPTEF_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_FIDR_TXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIDR_TXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIDR_TXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIDR_RXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIDR_RXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIDR_RXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIDR_TXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIDR_RXFPTEF_Field is Interfaces.SAM.Bit;

   --  TWI FIFO Interrupt Disable Register
   type FLEXCOM_FLEX_TWI_FIDR_Register is record
      --  Write-only. TXFEF Interrupt Disable
      TXFEF         : FLEXCOM_FLEX_TWI_FIDR_TXFEF_Field := 16#0#;
      --  Write-only. TXFFF Interrupt Disable
      TXFFF         : FLEXCOM_FLEX_TWI_FIDR_TXFFF_Field := 16#0#;
      --  Write-only. TXFTHF Interrupt Disable
      TXFTHF        : FLEXCOM_FLEX_TWI_FIDR_TXFTHF_Field := 16#0#;
      --  Write-only. RXFEF Interrupt Disable
      RXFEF         : FLEXCOM_FLEX_TWI_FIDR_RXFEF_Field := 16#0#;
      --  Write-only. RXFFF Interrupt Disable
      RXFFF         : FLEXCOM_FLEX_TWI_FIDR_RXFFF_Field := 16#0#;
      --  Write-only. RXFTHF Interrupt Disable
      RXFTHF        : FLEXCOM_FLEX_TWI_FIDR_RXFTHF_Field := 16#0#;
      --  Write-only. TXFPTEF Interrupt Disable
      TXFPTEF       : FLEXCOM_FLEX_TWI_FIDR_TXFPTEF_Field := 16#0#;
      --  Write-only. RXFPTEF Interrupt Disable
      RXFPTEF       : FLEXCOM_FLEX_TWI_FIDR_RXFPTEF_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_FIMR_TXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIMR_TXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIMR_TXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIMR_RXFEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIMR_RXFFF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIMR_RXFTHF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIMR_TXFPTEF_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_FIMR_RXFPTEF_Field is Interfaces.SAM.Bit;

   --  TWI FIFO Interrupt Mask Register
   type FLEXCOM_FLEX_TWI_FIMR_Register is record
      --  Read-only. TXFEF Interrupt Mask
      TXFEF         : FLEXCOM_FLEX_TWI_FIMR_TXFEF_Field;
      --  Read-only. TXFFF Interrupt Mask
      TXFFF         : FLEXCOM_FLEX_TWI_FIMR_TXFFF_Field;
      --  Read-only. TXFTHF Interrupt Mask
      TXFTHF        : FLEXCOM_FLEX_TWI_FIMR_TXFTHF_Field;
      --  Read-only. RXFEF Interrupt Mask
      RXFEF         : FLEXCOM_FLEX_TWI_FIMR_RXFEF_Field;
      --  Read-only. RXFFF Interrupt Mask
      RXFFF         : FLEXCOM_FLEX_TWI_FIMR_RXFFF_Field;
      --  Read-only. RXFTHF Interrupt Mask
      RXFTHF        : FLEXCOM_FLEX_TWI_FIMR_RXFTHF_Field;
      --  Read-only. TXFPTEF Interrupt Mask
      TXFPTEF       : FLEXCOM_FLEX_TWI_FIMR_TXFPTEF_Field;
      --  Read-only. RXFPTEF Interrupt Mask
      RXFPTEF       : FLEXCOM_FLEX_TWI_FIMR_RXFPTEF_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24;
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

   subtype FLEXCOM_FLEX_TWI_DR_SWEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_DR_CLKRQ_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_DR_SWMATCH_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_DR_TRP_Field is Interfaces.SAM.Bit;

   --  TWI Debug Register
   type FLEXCOM_FLEX_TWI_DR_Register is record
      --  Read-only. SleepWalking Enable
      SWEN          : FLEXCOM_FLEX_TWI_DR_SWEN_Field;
      --  Read-only. Clock Request
      CLKRQ         : FLEXCOM_FLEX_TWI_DR_CLKRQ_Field;
      --  Read-only. SleepWalking Match
      SWMATCH       : FLEXCOM_FLEX_TWI_DR_SWMATCH_Field;
      --  Read-only. Transfer Pending
      TRP           : FLEXCOM_FLEX_TWI_DR_TRP_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28;
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

   subtype FLEXCOM_FLEX_TWI_WPMR_WPEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_WPMR_WPITEN_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_WPMR_WPCREN_Field is Interfaces.SAM.Bit;

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
      WPEN         : FLEXCOM_FLEX_TWI_WPMR_WPEN_Field := 16#0#;
      --  Write Protection Interrupt Enable
      WPITEN       : FLEXCOM_FLEX_TWI_WPMR_WPITEN_Field := 16#0#;
      --  Write Protection Control Enable
      WPCREN       : FLEXCOM_FLEX_TWI_WPMR_WPCREN_Field := 16#0#;
      --  unspecified
      Reserved_3_7 : Interfaces.SAM.UInt5 := 16#0#;
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

   subtype FLEXCOM_FLEX_TWI_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype FLEXCOM_FLEX_TWI_WPSR_WPVSRC_Field is Interfaces.SAM.UInt24;

   --  TWI Write Protection Status Register
   type FLEXCOM_FLEX_TWI_WPSR_Register is record
      --  Read-only. Write Protect Violation Status
      WPVS         : FLEXCOM_FLEX_TWI_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7;
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

end Interfaces.SAM.FLEXCOM;
