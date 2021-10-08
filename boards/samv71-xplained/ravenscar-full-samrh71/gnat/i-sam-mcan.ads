--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.MCAN is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype MCAN_CREL_DAY_Field is Interfaces.SAM.Byte;
   subtype MCAN_CREL_MON_Field is Interfaces.SAM.Byte;
   subtype MCAN_CREL_YEAR_Field is Interfaces.SAM.UInt4;
   subtype MCAN_CREL_SUBSTEP_Field is Interfaces.SAM.UInt4;
   subtype MCAN_CREL_STEP_Field is Interfaces.SAM.UInt4;
   subtype MCAN_CREL_REL_Field is Interfaces.SAM.UInt4;

   --  Core Release Register
   type MCAN_CREL_Register is record
      --  Read-only. Timestamp Day
      DAY     : MCAN_CREL_DAY_Field;
      --  Read-only. Timestamp Month
      MON     : MCAN_CREL_MON_Field;
      --  Read-only. Timestamp Year
      YEAR    : MCAN_CREL_YEAR_Field;
      --  Read-only. Sub-step of Core Release
      SUBSTEP : MCAN_CREL_SUBSTEP_Field;
      --  Read-only. Step of Core Release
      STEP    : MCAN_CREL_STEP_Field;
      --  Read-only. Core Release
      REL     : MCAN_CREL_REL_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_CREL_Register use record
      DAY     at 0 range 0 .. 7;
      MON     at 0 range 8 .. 15;
      YEAR    at 0 range 16 .. 19;
      SUBSTEP at 0 range 20 .. 23;
      STEP    at 0 range 24 .. 27;
      REL     at 0 range 28 .. 31;
   end record;

   subtype MCAN_DBTP_DSJW_Field is Interfaces.SAM.UInt3;
   subtype MCAN_DBTP_DTSEG2_Field is Interfaces.SAM.UInt4;
   subtype MCAN_DBTP_DTSEG1_Field is Interfaces.SAM.UInt5;
   subtype MCAN_DBTP_DBRP_Field is Interfaces.SAM.UInt5;

   --  Transmitter Delay Compensation
   type DBTP_TDCSelect is
     (--  Transmitter Delay Compensation disabled.
      DISABLED,
      --  Transmitter Delay Compensation enabled.
      ENABLED)
     with Size => 1;
   for DBTP_TDCSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Data Bit Timing and Prescaler Register
   type MCAN_DBTP_Register is record
      --  Data (Re) Synchronization Jump Width
      DSJW           : MCAN_DBTP_DSJW_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit := 16#0#;
      --  Data Time Segment After Sample Point
      DTSEG2         : MCAN_DBTP_DTSEG2_Field := 16#0#;
      --  Data Time Segment Before Sample Point
      DTSEG1         : MCAN_DBTP_DTSEG1_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  Data Bit Rate Prescaler
      DBRP           : MCAN_DBTP_DBRP_Field := 16#0#;
      --  unspecified
      Reserved_21_22 : Interfaces.SAM.UInt2 := 16#0#;
      --  Transmitter Delay Compensation
      TDC            : DBTP_TDCSelect := Interfaces.SAM.MCAN.DISABLED;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_DBTP_Register use record
      DSJW           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DTSEG2         at 0 range 4 .. 7;
      DTSEG1         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DBRP           at 0 range 16 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      TDC            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Loop Back Mode (read/write)
   type TEST_LBCKSelect is
     (--  Reset value. Loop Back mode is disabled.
      DISABLED,
      --  Loop Back mode is enabled (see Section 6.1.9).
      ENABLED)
     with Size => 1;
   for TEST_LBCKSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Control of Transmit Pin (read/write)
   type TEST_TXSelect is
     (--  Reset value, CANTX controlled by the CAN Core, updated at the end of the
--  CAN bit time.
      RESET,
      --  Sample Point can be monitored at pin CANTX.
      SAMPLE_POINT_MONITORING,
      --  Dominant ('0') level at pin CANTX.
      DOMINANT,
      --  Recessive ('1') at pin CANTX.
      RECESSIVE)
     with Size => 2;
   for TEST_TXSelect use
     (RESET => 0,
      SAMPLE_POINT_MONITORING => 1,
      DOMINANT => 2,
      RECESSIVE => 3);

   subtype MCAN_TEST_RX_Field is Interfaces.SAM.Bit;

   --  Test Register
   type MCAN_TEST_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.SAM.UInt4 := 16#0#;
      --  Loop Back Mode (read/write)
      LBCK          : TEST_LBCKSelect := Interfaces.SAM.MCAN.DISABLED;
      --  Control of Transmit Pin (read/write)
      TX            : TEST_TXSelect := Interfaces.SAM.MCAN.RESET;
      --  Receive Pin (read-only)
      RX            : MCAN_TEST_RX_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TEST_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      LBCK          at 0 range 4 .. 4;
      TX            at 0 range 5 .. 6;
      RX            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MCAN_RWD_WDC_Field is Interfaces.SAM.Byte;
   subtype MCAN_RWD_WDV_Field is Interfaces.SAM.Byte;

   --  RAM Watchdog Register
   type MCAN_RWD_Register is record
      --  Watchdog Configuration (read/write)
      WDC            : MCAN_RWD_WDC_Field := 16#0#;
      --  Watchdog Value (read-only)
      WDV            : MCAN_RWD_WDV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_RWD_Register use record
      WDC            at 0 range 0 .. 7;
      WDV            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Initialization (read/write)
   type CCCR_INITSelect is
     (--  Normal operation.
      DISABLED,
      --  Initialization is started.
      ENABLED)
     with Size => 1;
   for CCCR_INITSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Configuration Change Enable (read/write, write protection)
   type CCCR_CCESelect is
     (--  The processor has no write access to the protected configuration registers.
      PROTECTED_k,
      --  The processor has write access to the protected configuration registers
--  (while MCAN_CCCR.INIT = '1').
      CONFIGURABLE)
     with Size => 1;
   for CCCR_CCESelect use
     (PROTECTED_k => 0,
      CONFIGURABLE => 1);

   --  Restricted Operation Mode (read/write, write protection against '1')
   type CCCR_ASMSelect is
     (--  Normal CAN operation.
      NORMAL,
      --  Restricted Operation mode active.
      RESTRICTED)
     with Size => 1;
   for CCCR_ASMSelect use
     (NORMAL => 0,
      RESTRICTED => 1);

   subtype MCAN_CCCR_CSA_Field is Interfaces.SAM.Bit;

   --  Clock Stop Request (read/write)
   type CCCR_CSRSelect is
     (--  No clock stop is requested.
      NO_CLOCK_STOP,
      --  Clock stop requested. When clock stop is requested, first INIT and then CSA
--  will be set after all pending transfer requests have been completed and the
--  CAN bus reached idle.
      CLOCK_STOP)
     with Size => 1;
   for CCCR_CSRSelect use
     (NO_CLOCK_STOP => 0,
      CLOCK_STOP => 1);

   --  Bus Monitoring Mode (read/write, write protection against '1')
   type CCCR_MONSelect is
     (--  Bus Monitoring mode is disabled.
      DISABLED,
      --  Bus Monitoring mode is enabled.
      ENABLED)
     with Size => 1;
   for CCCR_MONSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Disable Automatic Retransmission (read/write, write protection)
   type CCCR_DARSelect is
     (--  Automatic retransmission of messages not transmitted successfully enabled.
      AUTO_RETX,
      --  Automatic retransmission disabled.
      NO_AUTO_RETX)
     with Size => 1;
   for CCCR_DARSelect use
     (AUTO_RETX => 0,
      NO_AUTO_RETX => 1);

   --  Test Mode Enable (read/write, write protection against '1')
   type CCCR_TESTSelect is
     (--  Normal operation, MCAN_TEST register holds reset values.
      DISABLED,
      --  Test mode, write access to MCAN_TEST register enabled.
      ENABLED)
     with Size => 1;
   for CCCR_TESTSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  CAN FD Operation Enable (read/write, write protection)
   type CCCR_FDOESelect is
     (--  FD operation disabled.
      DISABLED,
      --  FD operation enabled.
      ENABLED)
     with Size => 1;
   for CCCR_FDOESelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Bit Rate Switching Enable (read/write, write protection)
   type CCCR_BRSESelect is
     (--  Bit rate switching for transmissions disabled.
      DISABLED,
      --  Bit rate switching for transmissions enabled.
      ENABLED)
     with Size => 1;
   for CCCR_BRSESelect use
     (DISABLED => 0,
      ENABLED => 1);

   subtype MCAN_CCCR_PXHD_Field is Interfaces.SAM.Bit;
   subtype MCAN_CCCR_EFBI_Field is Interfaces.SAM.Bit;
   subtype MCAN_CCCR_TXP_Field is Interfaces.SAM.Bit;
   subtype MCAN_CCCR_NISO_Field is Interfaces.SAM.Bit;

   --  CC Control Register
   type MCAN_CCCR_Register is record
      --  Initialization (read/write)
      INIT           : CCCR_INITSelect := Interfaces.SAM.MCAN.DISABLED;
      --  Configuration Change Enable (read/write, write protection)
      CCE            : CCCR_CCESelect := Interfaces.SAM.MCAN.PROTECTED_k;
      --  Restricted Operation Mode (read/write, write protection against '1')
      ASM            : CCCR_ASMSelect := Interfaces.SAM.MCAN.NORMAL;
      --  Clock Stop Acknowledge (read-only)
      CSA            : MCAN_CCCR_CSA_Field := 16#0#;
      --  Clock Stop Request (read/write)
      CSR            : CCCR_CSRSelect := Interfaces.SAM.MCAN.NO_CLOCK_STOP;
      --  Bus Monitoring Mode (read/write, write protection against '1')
      MON            : CCCR_MONSelect := Interfaces.SAM.MCAN.DISABLED;
      --  Disable Automatic Retransmission (read/write, write protection)
      DAR            : CCCR_DARSelect := Interfaces.SAM.MCAN.AUTO_RETX;
      --  Test Mode Enable (read/write, write protection against '1')
      TEST           : CCCR_TESTSelect := Interfaces.SAM.MCAN.DISABLED;
      --  CAN FD Operation Enable (read/write, write protection)
      FDOE           : CCCR_FDOESelect := Interfaces.SAM.MCAN.DISABLED;
      --  Bit Rate Switching Enable (read/write, write protection)
      BRSE           : CCCR_BRSESelect := Interfaces.SAM.MCAN.DISABLED;
      --  unspecified
      Reserved_10_11 : Interfaces.SAM.UInt2 := 16#0#;
      --  Protocol Exception Event Handling (read/write, write protection)
      PXHD           : MCAN_CCCR_PXHD_Field := 16#0#;
      --  Edge Filtering during Bus Integration (read/write, write protection)
      EFBI           : MCAN_CCCR_EFBI_Field := 16#0#;
      --  Transmit Pause (read/write, write protection)
      TXP            : MCAN_CCCR_TXP_Field := 16#0#;
      --  Non-ISO Operation
      NISO           : MCAN_CCCR_NISO_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_CCCR_Register use record
      INIT           at 0 range 0 .. 0;
      CCE            at 0 range 1 .. 1;
      ASM            at 0 range 2 .. 2;
      CSA            at 0 range 3 .. 3;
      CSR            at 0 range 4 .. 4;
      MON            at 0 range 5 .. 5;
      DAR            at 0 range 6 .. 6;
      TEST           at 0 range 7 .. 7;
      FDOE           at 0 range 8 .. 8;
      BRSE           at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PXHD           at 0 range 12 .. 12;
      EFBI           at 0 range 13 .. 13;
      TXP            at 0 range 14 .. 14;
      NISO           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MCAN_NBTP_NTSEG2_Field is Interfaces.SAM.UInt7;
   subtype MCAN_NBTP_NTSEG1_Field is Interfaces.SAM.Byte;
   subtype MCAN_NBTP_NBRP_Field is Interfaces.SAM.UInt9;
   subtype MCAN_NBTP_NSJW_Field is Interfaces.SAM.UInt7;

   --  Nominal Bit Timing and Prescaler Register
   type MCAN_NBTP_Register is record
      --  Nominal Time Segment After Sample Point
      NTSEG2       : MCAN_NBTP_NTSEG2_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : Interfaces.SAM.Bit := 16#0#;
      --  Nominal Time Segment Before Sample Point
      NTSEG1       : MCAN_NBTP_NTSEG1_Field := 16#0#;
      --  Nominal Bit Rate Prescaler
      NBRP         : MCAN_NBTP_NBRP_Field := 16#0#;
      --  Nominal (Re) Synchronization Jump Width
      NSJW         : MCAN_NBTP_NSJW_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_NBTP_Register use record
      NTSEG2       at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      NTSEG1       at 0 range 8 .. 15;
      NBRP         at 0 range 16 .. 24;
      NSJW         at 0 range 25 .. 31;
   end record;

   --  Timestamp Select
   type TSCC_TSSSelect is
     (--  Timestamp counter value always 0x0000
      ALWAYS_0,
      --  Timestamp counter value incremented according to TCP
      TCP_INC,
      --  External timestamp counter value used
      EXT_TIMESTAMP)
     with Size => 2;
   for TSCC_TSSSelect use
     (ALWAYS_0 => 0,
      TCP_INC => 1,
      EXT_TIMESTAMP => 2);

   subtype MCAN_TSCC_TCP_Field is Interfaces.SAM.UInt4;

   --  Timestamp Counter Configuration Register
   type MCAN_TSCC_Register is record
      --  Timestamp Select
      TSS            : TSCC_TSSSelect := Interfaces.SAM.MCAN.ALWAYS_0;
      --  unspecified
      Reserved_2_15  : Interfaces.SAM.UInt14 := 16#0#;
      --  Timestamp Counter Prescaler
      TCP            : MCAN_TSCC_TCP_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TSCC_Register use record
      TSS            at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      TCP            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype MCAN_TSCV_TSC_Field is Interfaces.SAM.UInt16;

   --  Timestamp Counter Value Register
   type MCAN_TSCV_Register is record
      --  Timestamp Counter (cleared on write)
      TSC            : MCAN_TSCV_TSC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TSCV_Register use record
      TSC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Enable Timeout Counter
   type TOCC_ETOCSelect is
     (--  Timeout Counter disabled.
      NO_TIMEOUT,
      --  Timeout Counter enabled.
      TOS_CONTROLLED)
     with Size => 1;
   for TOCC_ETOCSelect use
     (NO_TIMEOUT => 0,
      TOS_CONTROLLED => 1);

   --  Timeout Select
   type TOCC_TOSSelect is
     (--  Continuous operation
      CONTINUOUS,
      --  Timeout controlled by Tx Event FIFO
      TX_EV_TIMEOUT,
      --  Timeout controlled by Receive FIFO 0
      RX0_EV_TIMEOUT,
      --  Timeout controlled by Receive FIFO 1
      RX1_EV_TIMEOUT)
     with Size => 2;
   for TOCC_TOSSelect use
     (CONTINUOUS => 0,
      TX_EV_TIMEOUT => 1,
      RX0_EV_TIMEOUT => 2,
      RX1_EV_TIMEOUT => 3);

   subtype MCAN_TOCC_TOP_Field is Interfaces.SAM.UInt16;

   --  Timeout Counter Configuration Register
   type MCAN_TOCC_Register is record
      --  Enable Timeout Counter
      ETOC          : TOCC_ETOCSelect := Interfaces.SAM.MCAN.NO_TIMEOUT;
      --  Timeout Select
      TOS           : TOCC_TOSSelect := Interfaces.SAM.MCAN.CONTINUOUS;
      --  unspecified
      Reserved_3_15 : Interfaces.SAM.UInt13 := 16#0#;
      --  Timeout Period
      TOP           : MCAN_TOCC_TOP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TOCC_Register use record
      ETOC          at 0 range 0 .. 0;
      TOS           at 0 range 1 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
      TOP           at 0 range 16 .. 31;
   end record;

   subtype MCAN_TOCV_TOC_Field is Interfaces.SAM.UInt16;

   --  Timeout Counter Value Register
   type MCAN_TOCV_Register is record
      --  Timeout Counter (cleared on write)
      TOC            : MCAN_TOCV_TOC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TOCV_Register use record
      TOC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MCAN_ECR_TEC_Field is Interfaces.SAM.Byte;
   subtype MCAN_ECR_REC_Field is Interfaces.SAM.UInt7;
   subtype MCAN_ECR_RP_Field is Interfaces.SAM.Bit;
   subtype MCAN_ECR_CEL_Field is Interfaces.SAM.Byte;

   --  Error Counter Register
   type MCAN_ECR_Register is record
      --  Read-only. Transmit Error Counter
      TEC            : MCAN_ECR_TEC_Field;
      --  Read-only. Receive Error Counter
      REC            : MCAN_ECR_REC_Field;
      --  Read-only. Receive Error Passive
      RP             : MCAN_ECR_RP_Field;
      --  Read-only. CAN Error Logging (cleared on read)
      CEL            : MCAN_ECR_CEL_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_ECR_Register use record
      TEC            at 0 range 0 .. 7;
      REC            at 0 range 8 .. 14;
      RP             at 0 range 15 .. 15;
      CEL            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Last Error Code (set to 111 on read)
   type PSR_LECSelect is
     (--  No error occurred since LEC has been reset by successful reception or
--  transmission.
      NO_ERROR,
      --  More than 5 equal bits in a sequence have occurred in a part of a received
--  message where this is not allowed.
      STUFF_ERROR,
      --  A fixed format part of a received frame has the wrong format.
      FORM_ERROR,
      --  The message transmitted by the MCAN was not acknowledged by another node.
      ACK_ERROR,
      --  During transmission of a message (with the exception of the arbitration
--  field), the device tried to send a recessive level (bit of logical value
--  '1'), but the monitored bus value was dominant.
      BIT1_ERROR,
      --  During transmission of a message (or acknowledge bit, or active error flag,
--  or overload flag), the device tried to send a dominant level (data or
--  identifier bit logical value '0'), but the monitored bus value was
--  recessive. During Bus_Off recovery, this status is set each time a sequence
--  of 11 recessive bits has been monitored. This enables the processor to
--  monitor the proceeding of the Bus_Off recovery sequence (indicating the bus
--  is not stuck at dominant or continuously disturbed).
      BIT0_ERROR,
      --  The CRC check sum of a received message was incorrect. The CRC of an
--  incoming message does not match the CRC calculated from the received data.
      CRC_ERROR,
      --  Any read access to the Protocol Status Register re-initializes the LEC to
--  '7'. When the LEC shows value '7', no CAN bus event was detected since the
--  last processor read access to the Protocol Status Register.
      NO_CHANGE)
     with Size => 3;
   for PSR_LECSelect use
     (NO_ERROR => 0,
      STUFF_ERROR => 1,
      FORM_ERROR => 2,
      ACK_ERROR => 3,
      BIT1_ERROR => 4,
      BIT0_ERROR => 5,
      CRC_ERROR => 6,
      NO_CHANGE => 7);

   --  Activity
   type PSR_ACTSelect is
     (--  Node is synchronizing on CAN communication
      SYNCHRONIZING,
      --  Node is neither receiver nor transmitter
      IDLE,
      --  Node is operating as receiver
      RECEIVER,
      --  Node is operating as transmitter
      TRANSMITTER)
     with Size => 2;
   for PSR_ACTSelect use
     (SYNCHRONIZING => 0,
      IDLE => 1,
      RECEIVER => 2,
      TRANSMITTER => 3);

   subtype MCAN_PSR_EP_Field is Interfaces.SAM.Bit;
   subtype MCAN_PSR_EW_Field is Interfaces.SAM.Bit;
   subtype MCAN_PSR_BO_Field is Interfaces.SAM.Bit;
   subtype MCAN_PSR_DLEC_Field is Interfaces.SAM.UInt3;
   subtype MCAN_PSR_RESI_Field is Interfaces.SAM.Bit;
   subtype MCAN_PSR_RBRS_Field is Interfaces.SAM.Bit;
   subtype MCAN_PSR_RFDF_Field is Interfaces.SAM.Bit;
   subtype MCAN_PSR_PXE_Field is Interfaces.SAM.Bit;
   subtype MCAN_PSR_TDCV_Field is Interfaces.SAM.UInt7;

   --  Protocol Status Register
   type MCAN_PSR_Register is record
      --  Read-only. Last Error Code (set to 111 on read)
      LEC            : PSR_LECSelect;
      --  Read-only. Activity
      ACT            : PSR_ACTSelect;
      --  Read-only. Error Passive
      EP             : MCAN_PSR_EP_Field;
      --  Read-only. Warning Status
      EW             : MCAN_PSR_EW_Field;
      --  Read-only. Bus_Off Status
      BO             : MCAN_PSR_BO_Field;
      --  Read-only. Data Phase Last Error Code (set to 111 on read)
      DLEC           : MCAN_PSR_DLEC_Field;
      --  Read-only. ESI Flag of Last Received CAN FD Message (cleared on read)
      RESI           : MCAN_PSR_RESI_Field;
      --  Read-only. BRS Flag of Last Received CAN FD Message (cleared on read)
      RBRS           : MCAN_PSR_RBRS_Field;
      --  Read-only. Received a CAN FD Message (cleared on read)
      RFDF           : MCAN_PSR_RFDF_Field;
      --  Read-only. Protocol Exception Event (cleared on read)
      PXE            : MCAN_PSR_PXE_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit;
      --  Read-only. Transmitter Delay Compensation Value
      TDCV           : MCAN_PSR_TDCV_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_PSR_Register use record
      LEC            at 0 range 0 .. 2;
      ACT            at 0 range 3 .. 4;
      EP             at 0 range 5 .. 5;
      EW             at 0 range 6 .. 6;
      BO             at 0 range 7 .. 7;
      DLEC           at 0 range 8 .. 10;
      RESI           at 0 range 11 .. 11;
      RBRS           at 0 range 12 .. 12;
      RFDF           at 0 range 13 .. 13;
      PXE            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TDCV           at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype MCAN_TDCR_TDCF_Field is Interfaces.SAM.UInt7;
   subtype MCAN_TDCR_TDCO_Field is Interfaces.SAM.UInt7;

   --  Transmit Delay Compensation Register
   type MCAN_TDCR_Register is record
      --  Transmitter Delay Compensation Filter
      TDCF           : MCAN_TDCR_TDCF_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Transmitter Delay Compensation Offset
      TDCO           : MCAN_TDCR_TDCO_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.SAM.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TDCR_Register use record
      TDCF           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TDCO           at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype MCAN_IR_RF0N_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_RF0W_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_RF0F_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_RF0L_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_RF1N_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_RF1W_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_RF1F_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_RF1L_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_HPM_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_TC_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_TCF_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_TFE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_TEFN_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_TEFW_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_TEFF_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_TEFL_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_TSW_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_MRAF_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_TOO_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_DRX_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_ELO_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_EP_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_EW_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_BO_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_WDI_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_PEA_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_PED_Field is Interfaces.SAM.Bit;
   subtype MCAN_IR_ARA_Field is Interfaces.SAM.Bit;

   --  Interrupt Register
   type MCAN_IR_Register is record
      --  Receive FIFO 0 New Message
      RF0N           : MCAN_IR_RF0N_Field := 16#0#;
      --  Receive FIFO 0 Watermark Reached
      RF0W           : MCAN_IR_RF0W_Field := 16#0#;
      --  Receive FIFO 0 Full
      RF0F           : MCAN_IR_RF0F_Field := 16#0#;
      --  Receive FIFO 0 Message Lost
      RF0L           : MCAN_IR_RF0L_Field := 16#0#;
      --  Receive FIFO 1 New Message
      RF1N           : MCAN_IR_RF1N_Field := 16#0#;
      --  Receive FIFO 1 Watermark Reached
      RF1W           : MCAN_IR_RF1W_Field := 16#0#;
      --  Receive FIFO 1 Full
      RF1F           : MCAN_IR_RF1F_Field := 16#0#;
      --  Receive FIFO 1 Message Lost
      RF1L           : MCAN_IR_RF1L_Field := 16#0#;
      --  High Priority Message
      HPM            : MCAN_IR_HPM_Field := 16#0#;
      --  Transmission Completed
      TC             : MCAN_IR_TC_Field := 16#0#;
      --  Transmission Cancellation Finished
      TCF            : MCAN_IR_TCF_Field := 16#0#;
      --  Tx FIFO Empty
      TFE            : MCAN_IR_TFE_Field := 16#0#;
      --  Tx Event FIFO New Entry
      TEFN           : MCAN_IR_TEFN_Field := 16#0#;
      --  Tx Event FIFO Watermark Reached
      TEFW           : MCAN_IR_TEFW_Field := 16#0#;
      --  Tx Event FIFO Full
      TEFF           : MCAN_IR_TEFF_Field := 16#0#;
      --  Tx Event FIFO Element Lost
      TEFL           : MCAN_IR_TEFL_Field := 16#0#;
      --  Timestamp Wraparound
      TSW            : MCAN_IR_TSW_Field := 16#0#;
      --  Message RAM Access Failure
      MRAF           : MCAN_IR_MRAF_Field := 16#0#;
      --  Timeout Occurred
      TOO            : MCAN_IR_TOO_Field := 16#0#;
      --  Message stored to Dedicated Receive Buffer
      DRX            : MCAN_IR_DRX_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : Interfaces.SAM.UInt2 := 16#0#;
      --  Error Logging Overflow
      ELO            : MCAN_IR_ELO_Field := 16#0#;
      --  Error Passive
      EP             : MCAN_IR_EP_Field := 16#0#;
      --  Warning Status
      EW             : MCAN_IR_EW_Field := 16#0#;
      --  Bus_Off Status
      BO             : MCAN_IR_BO_Field := 16#0#;
      --  Watchdog Interrupt
      WDI            : MCAN_IR_WDI_Field := 16#0#;
      --  Protocol Error in Arbitration Phase
      PEA            : MCAN_IR_PEA_Field := 16#0#;
      --  Protocol Error in Data Phase
      PED            : MCAN_IR_PED_Field := 16#0#;
      --  Access to Reserved Address
      ARA            : MCAN_IR_ARA_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_IR_Register use record
      RF0N           at 0 range 0 .. 0;
      RF0W           at 0 range 1 .. 1;
      RF0F           at 0 range 2 .. 2;
      RF0L           at 0 range 3 .. 3;
      RF1N           at 0 range 4 .. 4;
      RF1W           at 0 range 5 .. 5;
      RF1F           at 0 range 6 .. 6;
      RF1L           at 0 range 7 .. 7;
      HPM            at 0 range 8 .. 8;
      TC             at 0 range 9 .. 9;
      TCF            at 0 range 10 .. 10;
      TFE            at 0 range 11 .. 11;
      TEFN           at 0 range 12 .. 12;
      TEFW           at 0 range 13 .. 13;
      TEFF           at 0 range 14 .. 14;
      TEFL           at 0 range 15 .. 15;
      TSW            at 0 range 16 .. 16;
      MRAF           at 0 range 17 .. 17;
      TOO            at 0 range 18 .. 18;
      DRX            at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      ELO            at 0 range 22 .. 22;
      EP             at 0 range 23 .. 23;
      EW             at 0 range 24 .. 24;
      BO             at 0 range 25 .. 25;
      WDI            at 0 range 26 .. 26;
      PEA            at 0 range 27 .. 27;
      PED            at 0 range 28 .. 28;
      ARA            at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype MCAN_IE_RF0NE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_RF0WE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_RF0FE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_RF0LE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_RF1NE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_RF1WE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_RF1FE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_RF1LE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_HPME_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_TCE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_TCFE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_TFEE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_TEFNE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_TEFWE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_TEFFE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_TEFLE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_TSWE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_MRAFE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_TOOE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_DRXE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_ELOE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_EPE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_EWE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_BOE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_WDIE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_PEAE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_PEDE_Field is Interfaces.SAM.Bit;
   subtype MCAN_IE_ARAE_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type MCAN_IE_Register is record
      --  Receive FIFO 0 New Message Interrupt Enable
      RF0NE          : MCAN_IE_RF0NE_Field := 16#0#;
      --  Receive FIFO 0 Watermark Reached Interrupt Enable
      RF0WE          : MCAN_IE_RF0WE_Field := 16#0#;
      --  Receive FIFO 0 Full Interrupt Enable
      RF0FE          : MCAN_IE_RF0FE_Field := 16#0#;
      --  Receive FIFO 0 Message Lost Interrupt Enable
      RF0LE          : MCAN_IE_RF0LE_Field := 16#0#;
      --  Receive FIFO 1 New Message Interrupt Enable
      RF1NE          : MCAN_IE_RF1NE_Field := 16#0#;
      --  Receive FIFO 1 Watermark Reached Interrupt Enable
      RF1WE          : MCAN_IE_RF1WE_Field := 16#0#;
      --  Receive FIFO 1 Full Interrupt Enable
      RF1FE          : MCAN_IE_RF1FE_Field := 16#0#;
      --  Receive FIFO 1 Message Lost Interrupt Enable
      RF1LE          : MCAN_IE_RF1LE_Field := 16#0#;
      --  High Priority Message Interrupt Enable
      HPME           : MCAN_IE_HPME_Field := 16#0#;
      --  Transmission Completed Interrupt Enable
      TCE            : MCAN_IE_TCE_Field := 16#0#;
      --  Transmission Cancellation Finished Interrupt Enable
      TCFE           : MCAN_IE_TCFE_Field := 16#0#;
      --  Tx FIFO Empty Interrupt Enable
      TFEE           : MCAN_IE_TFEE_Field := 16#0#;
      --  Tx Event FIFO New Entry Interrupt Enable
      TEFNE          : MCAN_IE_TEFNE_Field := 16#0#;
      --  Tx Event FIFO Watermark Reached Interrupt Enable
      TEFWE          : MCAN_IE_TEFWE_Field := 16#0#;
      --  Tx Event FIFO Full Interrupt Enable
      TEFFE          : MCAN_IE_TEFFE_Field := 16#0#;
      --  Tx Event FIFO Event Lost Interrupt Enable
      TEFLE          : MCAN_IE_TEFLE_Field := 16#0#;
      --  Timestamp Wraparound Interrupt Enable
      TSWE           : MCAN_IE_TSWE_Field := 16#0#;
      --  Message RAM Access Failure Interrupt Enable
      MRAFE          : MCAN_IE_MRAFE_Field := 16#0#;
      --  Timeout Occurred Interrupt Enable
      TOOE           : MCAN_IE_TOOE_Field := 16#0#;
      --  Message stored to Dedicated Receive Buffer Interrupt Enable
      DRXE           : MCAN_IE_DRXE_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : Interfaces.SAM.UInt2 := 16#0#;
      --  Error Logging Overflow Interrupt Enable
      ELOE           : MCAN_IE_ELOE_Field := 16#0#;
      --  Error Passive Interrupt Enable
      EPE            : MCAN_IE_EPE_Field := 16#0#;
      --  Warning Status Interrupt Enable
      EWE            : MCAN_IE_EWE_Field := 16#0#;
      --  Bus_Off Status Interrupt Enable
      BOE            : MCAN_IE_BOE_Field := 16#0#;
      --  Watchdog Interrupt Enable
      WDIE           : MCAN_IE_WDIE_Field := 16#0#;
      --  Protocol Error in Arbitration Phase Enable
      PEAE           : MCAN_IE_PEAE_Field := 16#0#;
      --  Protocol Error in Data Phase Enable
      PEDE           : MCAN_IE_PEDE_Field := 16#0#;
      --  Access to Reserved Address Enable
      ARAE           : MCAN_IE_ARAE_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_IE_Register use record
      RF0NE          at 0 range 0 .. 0;
      RF0WE          at 0 range 1 .. 1;
      RF0FE          at 0 range 2 .. 2;
      RF0LE          at 0 range 3 .. 3;
      RF1NE          at 0 range 4 .. 4;
      RF1WE          at 0 range 5 .. 5;
      RF1FE          at 0 range 6 .. 6;
      RF1LE          at 0 range 7 .. 7;
      HPME           at 0 range 8 .. 8;
      TCE            at 0 range 9 .. 9;
      TCFE           at 0 range 10 .. 10;
      TFEE           at 0 range 11 .. 11;
      TEFNE          at 0 range 12 .. 12;
      TEFWE          at 0 range 13 .. 13;
      TEFFE          at 0 range 14 .. 14;
      TEFLE          at 0 range 15 .. 15;
      TSWE           at 0 range 16 .. 16;
      MRAFE          at 0 range 17 .. 17;
      TOOE           at 0 range 18 .. 18;
      DRXE           at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      ELOE           at 0 range 22 .. 22;
      EPE            at 0 range 23 .. 23;
      EWE            at 0 range 24 .. 24;
      BOE            at 0 range 25 .. 25;
      WDIE           at 0 range 26 .. 26;
      PEAE           at 0 range 27 .. 27;
      PEDE           at 0 range 28 .. 28;
      ARAE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype MCAN_ILS_RF0NL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_RF0WL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_RF0FL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_RF0LL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_RF1NL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_RF1WL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_RF1FL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_RF1LL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_HPML_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_TCL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_TCFL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_TFEL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_TEFNL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_TEFWL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_TEFFL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_TEFLL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_TSWL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_MRAFL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_TOOL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_DRXL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_ELOL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_EPL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_EWL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_BOL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_WDIL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_PEAL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_PEDL_Field is Interfaces.SAM.Bit;
   subtype MCAN_ILS_ARAL_Field is Interfaces.SAM.Bit;

   --  Interrupt Line Select Register
   type MCAN_ILS_Register is record
      --  Receive FIFO 0 New Message Interrupt Line
      RF0NL          : MCAN_ILS_RF0NL_Field := 16#0#;
      --  Receive FIFO 0 Watermark Reached Interrupt Line
      RF0WL          : MCAN_ILS_RF0WL_Field := 16#0#;
      --  Receive FIFO 0 Full Interrupt Line
      RF0FL          : MCAN_ILS_RF0FL_Field := 16#0#;
      --  Receive FIFO 0 Message Lost Interrupt Line
      RF0LL          : MCAN_ILS_RF0LL_Field := 16#0#;
      --  Receive FIFO 1 New Message Interrupt Line
      RF1NL          : MCAN_ILS_RF1NL_Field := 16#0#;
      --  Receive FIFO 1 Watermark Reached Interrupt Line
      RF1WL          : MCAN_ILS_RF1WL_Field := 16#0#;
      --  Receive FIFO 1 Full Interrupt Line
      RF1FL          : MCAN_ILS_RF1FL_Field := 16#0#;
      --  Receive FIFO 1 Message Lost Interrupt Line
      RF1LL          : MCAN_ILS_RF1LL_Field := 16#0#;
      --  High Priority Message Interrupt Line
      HPML           : MCAN_ILS_HPML_Field := 16#0#;
      --  Transmission Completed Interrupt Line
      TCL            : MCAN_ILS_TCL_Field := 16#0#;
      --  Transmission Cancellation Finished Interrupt Line
      TCFL           : MCAN_ILS_TCFL_Field := 16#0#;
      --  Tx FIFO Empty Interrupt Line
      TFEL           : MCAN_ILS_TFEL_Field := 16#0#;
      --  Tx Event FIFO New Entry Interrupt Line
      TEFNL          : MCAN_ILS_TEFNL_Field := 16#0#;
      --  Tx Event FIFO Watermark Reached Interrupt Line
      TEFWL          : MCAN_ILS_TEFWL_Field := 16#0#;
      --  Tx Event FIFO Full Interrupt Line
      TEFFL          : MCAN_ILS_TEFFL_Field := 16#0#;
      --  Tx Event FIFO Event Lost Interrupt Line
      TEFLL          : MCAN_ILS_TEFLL_Field := 16#0#;
      --  Timestamp Wraparound Interrupt Line
      TSWL           : MCAN_ILS_TSWL_Field := 16#0#;
      --  Message RAM Access Failure Interrupt Line
      MRAFL          : MCAN_ILS_MRAFL_Field := 16#0#;
      --  Timeout Occurred Interrupt Line
      TOOL           : MCAN_ILS_TOOL_Field := 16#0#;
      --  Message stored to Dedicated Receive Buffer Interrupt Line
      DRXL           : MCAN_ILS_DRXL_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : Interfaces.SAM.UInt2 := 16#0#;
      --  Error Logging Overflow Interrupt Line
      ELOL           : MCAN_ILS_ELOL_Field := 16#0#;
      --  Error Passive Interrupt Line
      EPL            : MCAN_ILS_EPL_Field := 16#0#;
      --  Warning Status Interrupt Line
      EWL            : MCAN_ILS_EWL_Field := 16#0#;
      --  Bus_Off Status Interrupt Line
      BOL            : MCAN_ILS_BOL_Field := 16#0#;
      --  Watchdog Interrupt Line
      WDIL           : MCAN_ILS_WDIL_Field := 16#0#;
      --  Protocol Error in Arbitration Phase Line
      PEAL           : MCAN_ILS_PEAL_Field := 16#0#;
      --  Protocol Error in Data Phase Line
      PEDL           : MCAN_ILS_PEDL_Field := 16#0#;
      --  Access to Reserved Address Line
      ARAL           : MCAN_ILS_ARAL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_ILS_Register use record
      RF0NL          at 0 range 0 .. 0;
      RF0WL          at 0 range 1 .. 1;
      RF0FL          at 0 range 2 .. 2;
      RF0LL          at 0 range 3 .. 3;
      RF1NL          at 0 range 4 .. 4;
      RF1WL          at 0 range 5 .. 5;
      RF1FL          at 0 range 6 .. 6;
      RF1LL          at 0 range 7 .. 7;
      HPML           at 0 range 8 .. 8;
      TCL            at 0 range 9 .. 9;
      TCFL           at 0 range 10 .. 10;
      TFEL           at 0 range 11 .. 11;
      TEFNL          at 0 range 12 .. 12;
      TEFWL          at 0 range 13 .. 13;
      TEFFL          at 0 range 14 .. 14;
      TEFLL          at 0 range 15 .. 15;
      TSWL           at 0 range 16 .. 16;
      MRAFL          at 0 range 17 .. 17;
      TOOL           at 0 range 18 .. 18;
      DRXL           at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      ELOL           at 0 range 22 .. 22;
      EPL            at 0 range 23 .. 23;
      EWL            at 0 range 24 .. 24;
      BOL            at 0 range 25 .. 25;
      WDIL           at 0 range 26 .. 26;
      PEAL           at 0 range 27 .. 27;
      PEDL           at 0 range 28 .. 28;
      ARAL           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  MCAN_ILE_EINT array element
   subtype MCAN_ILE_EINT_Element is Interfaces.SAM.Bit;

   --  MCAN_ILE_EINT array
   type MCAN_ILE_EINT_Field_Array is array (0 .. 1) of MCAN_ILE_EINT_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for MCAN_ILE_EINT
   type MCAN_ILE_EINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EINT as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  EINT as an array
            Arr : MCAN_ILE_EINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for MCAN_ILE_EINT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Line Enable Register
   type MCAN_ILE_Register is record
      --  Enable Interrupt Line 0
      EINT          : MCAN_ILE_EINT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_ILE_Register use record
      EINT          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Reject Remote Frames Extended
   type GFC_RRFESelect is
     (--  Filter remote frames with 29-bit extended IDs.
      FILTER,
      --  Reject all remote frames with 29-bit extended IDs.
      REJECT)
     with Size => 1;
   for GFC_RRFESelect use
     (FILTER => 0,
      REJECT => 1);

   --  Reject Remote Frames Standard
   type GFC_RRFSSelect is
     (--  Filter remote frames with 11-bit standard IDs.
      FILTER,
      --  Reject all remote frames with 11-bit standard IDs.
      REJECT)
     with Size => 1;
   for GFC_RRFSSelect use
     (FILTER => 0,
      REJECT => 1);

   --  Accept Non-matching Frames Extended
   type GFC_ANFESelect is
     (--  Accept in Rx FIFO 0
      RX_FIFO_0,
      --  Accept in Rx FIFO 1
      RX_FIFO_1)
     with Size => 2;
   for GFC_ANFESelect use
     (RX_FIFO_0 => 0,
      RX_FIFO_1 => 1);

   --  Accept Non-matching Frames Standard
   type GFC_ANFSSelect is
     (--  Accept in Rx FIFO 0
      RX_FIFO_0,
      --  Accept in Rx FIFO 1
      RX_FIFO_1)
     with Size => 2;
   for GFC_ANFSSelect use
     (RX_FIFO_0 => 0,
      RX_FIFO_1 => 1);

   --  Global Filter Configuration Register
   type MCAN_GFC_Register is record
      --  Reject Remote Frames Extended
      RRFE          : GFC_RRFESelect := Interfaces.SAM.MCAN.FILTER;
      --  Reject Remote Frames Standard
      RRFS          : GFC_RRFSSelect := Interfaces.SAM.MCAN.FILTER;
      --  Accept Non-matching Frames Extended
      ANFE          : GFC_ANFESelect := Interfaces.SAM.MCAN.RX_FIFO_0;
      --  Accept Non-matching Frames Standard
      ANFS          : GFC_ANFSSelect := Interfaces.SAM.MCAN.RX_FIFO_0;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_GFC_Register use record
      RRFE          at 0 range 0 .. 0;
      RRFS          at 0 range 1 .. 1;
      ANFE          at 0 range 2 .. 3;
      ANFS          at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype MCAN_SIDFC_FLSSA_Field is Interfaces.SAM.UInt14;
   subtype MCAN_SIDFC_LSS_Field is Interfaces.SAM.Byte;

   --  Standard ID Filter Configuration Register
   type MCAN_SIDFC_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Filter List Standard Start Address
      FLSSA          : MCAN_SIDFC_FLSSA_Field := 16#0#;
      --  List Size Standard
      LSS            : MCAN_SIDFC_LSS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_SIDFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FLSSA          at 0 range 2 .. 15;
      LSS            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype MCAN_XIDFC_FLESA_Field is Interfaces.SAM.UInt14;
   subtype MCAN_XIDFC_LSE_Field is Interfaces.SAM.UInt7;

   --  Extended ID Filter Configuration Register
   type MCAN_XIDFC_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Filter List Extended Start Address
      FLESA          : MCAN_XIDFC_FLESA_Field := 16#0#;
      --  List Size Extended
      LSE            : MCAN_XIDFC_LSE_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_XIDFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FLESA          at 0 range 2 .. 15;
      LSE            at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype MCAN_XIDAM_EIDM_Field is Interfaces.SAM.UInt29;

   --  Extended ID AND Mask Register
   type MCAN_XIDAM_Register is record
      --  Extended ID Mask
      EIDM           : MCAN_XIDAM_EIDM_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_XIDAM_Register use record
      EIDM           at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype MCAN_HPMS_BIDX_Field is Interfaces.SAM.UInt6;

   --  Message Storage Indicator
   type HPMS_MSISelect is
     (--  No FIFO selected.
      NO_FIFO_SEL,
      --  FIFO message lost.
      LOST,
      --  Message stored in FIFO 0.
      FIFO_0,
      --  Message stored in FIFO 1.
      FIFO_1)
     with Size => 2;
   for HPMS_MSISelect use
     (NO_FIFO_SEL => 0,
      LOST => 1,
      FIFO_0 => 2,
      FIFO_1 => 3);

   subtype MCAN_HPMS_FIDX_Field is Interfaces.SAM.UInt7;
   subtype MCAN_HPMS_FLST_Field is Interfaces.SAM.Bit;

   --  High Priority Message Status Register
   type MCAN_HPMS_Register is record
      --  Read-only. Buffer Index
      BIDX           : MCAN_HPMS_BIDX_Field;
      --  Read-only. Message Storage Indicator
      MSI            : HPMS_MSISelect;
      --  Read-only. Filter Index
      FIDX           : MCAN_HPMS_FIDX_Field;
      --  Read-only. Filter List
      FLST           : MCAN_HPMS_FLST_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_HPMS_Register use record
      BIDX           at 0 range 0 .. 5;
      MSI            at 0 range 6 .. 7;
      FIDX           at 0 range 8 .. 14;
      FLST           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MCAN_NDAT1_ND array element
   subtype MCAN_NDAT1_ND_Element is Interfaces.SAM.Bit;

   --  MCAN_NDAT1_ND array
   type MCAN_NDAT1_ND_Field_Array is array (0 .. 31) of MCAN_NDAT1_ND_Element
     with Component_Size => 1, Size => 32;

   --  New Data 1 Register
   type MCAN_NDAT1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ND as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  ND as an array
            Arr : MCAN_NDAT1_ND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_NDAT1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN_NDAT2_ND array element
   subtype MCAN_NDAT2_ND_Element is Interfaces.SAM.Bit;

   --  MCAN_NDAT2_ND array
   type MCAN_NDAT2_ND_Field_Array is array (32 .. 63)
     of MCAN_NDAT2_ND_Element
     with Component_Size => 1, Size => 32;

   --  New Data 2 Register
   type MCAN_NDAT2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ND as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  ND as an array
            Arr : MCAN_NDAT2_ND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_NDAT2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype MCAN_RXF0C_F0SA_Field is Interfaces.SAM.UInt14;
   subtype MCAN_RXF0C_F0S_Field is Interfaces.SAM.UInt7;
   subtype MCAN_RXF0C_F0WM_Field is Interfaces.SAM.UInt7;
   subtype MCAN_RXF0C_F0OM_Field is Interfaces.SAM.Bit;

   --  Receive FIFO 0 Configuration Register
   type MCAN_RXF0C_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Receive FIFO 0 Start Address
      F0SA           : MCAN_RXF0C_F0SA_Field := 16#0#;
      --  Receive FIFO 0 Size
      F0S            : MCAN_RXF0C_F0S_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit := 16#0#;
      --  Receive FIFO 0 Watermark
      F0WM           : MCAN_RXF0C_F0WM_Field := 16#0#;
      --  FIFO 0 Operation Mode
      F0OM           : MCAN_RXF0C_F0OM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_RXF0C_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      F0SA           at 0 range 2 .. 15;
      F0S            at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      F0WM           at 0 range 24 .. 30;
      F0OM           at 0 range 31 .. 31;
   end record;

   subtype MCAN_RXF0S_F0FL_Field is Interfaces.SAM.UInt7;
   subtype MCAN_RXF0S_F0GI_Field is Interfaces.SAM.UInt6;
   subtype MCAN_RXF0S_F0PI_Field is Interfaces.SAM.UInt6;
   subtype MCAN_RXF0S_F0F_Field is Interfaces.SAM.Bit;
   subtype MCAN_RXF0S_RF0L_Field is Interfaces.SAM.Bit;

   --  Receive FIFO 0 Status Register
   type MCAN_RXF0S_Register is record
      --  Read-only. Receive FIFO 0 Fill Level
      F0FL           : MCAN_RXF0S_F0FL_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit;
      --  Read-only. Receive FIFO 0 Get Index
      F0GI           : MCAN_RXF0S_F0GI_Field;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2;
      --  Read-only. Receive FIFO 0 Put Index
      F0PI           : MCAN_RXF0S_F0PI_Field;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2;
      --  Read-only. Receive FIFO 0 Full
      F0F            : MCAN_RXF0S_F0F_Field;
      --  Read-only. Receive FIFO 0 Message Lost
      RF0L           : MCAN_RXF0S_RF0L_Field;
      --  unspecified
      Reserved_26_31 : Interfaces.SAM.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_RXF0S_Register use record
      F0FL           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      F0GI           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      F0PI           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      F0F            at 0 range 24 .. 24;
      RF0L           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MCAN_RXF0A_F0AI_Field is Interfaces.SAM.UInt6;

   --  Receive FIFO 0 Acknowledge Register
   type MCAN_RXF0A_Register is record
      --  Receive FIFO 0 Acknowledge Index
      F0AI          : MCAN_RXF0A_F0AI_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_RXF0A_Register use record
      F0AI          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype MCAN_RXBC_RBSA_Field is Interfaces.SAM.UInt14;

   --  Receive Rx Buffer Configuration Register
   type MCAN_RXBC_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Receive Buffer Start Address
      RBSA           : MCAN_RXBC_RBSA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_RXBC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RBSA           at 0 range 2 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MCAN_RXF1C_F1SA_Field is Interfaces.SAM.UInt14;
   subtype MCAN_RXF1C_F1S_Field is Interfaces.SAM.UInt7;
   subtype MCAN_RXF1C_F1WM_Field is Interfaces.SAM.UInt7;
   subtype MCAN_RXF1C_F1OM_Field is Interfaces.SAM.Bit;

   --  Receive FIFO 1 Configuration Register
   type MCAN_RXF1C_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Receive FIFO 1 Start Address
      F1SA           : MCAN_RXF1C_F1SA_Field := 16#0#;
      --  Receive FIFO 1 Size
      F1S            : MCAN_RXF1C_F1S_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit := 16#0#;
      --  Receive FIFO 1 Watermark
      F1WM           : MCAN_RXF1C_F1WM_Field := 16#0#;
      --  FIFO 1 Operation Mode
      F1OM           : MCAN_RXF1C_F1OM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_RXF1C_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      F1SA           at 0 range 2 .. 15;
      F1S            at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      F1WM           at 0 range 24 .. 30;
      F1OM           at 0 range 31 .. 31;
   end record;

   subtype MCAN_RXF1S_F1FL_Field is Interfaces.SAM.UInt7;
   subtype MCAN_RXF1S_F1GI_Field is Interfaces.SAM.UInt6;
   subtype MCAN_RXF1S_F1PI_Field is Interfaces.SAM.UInt6;
   subtype MCAN_RXF1S_F1F_Field is Interfaces.SAM.Bit;
   subtype MCAN_RXF1S_RF1L_Field is Interfaces.SAM.Bit;

   --  Debug Message Status
   type RXF1S_DMSSelect is
     (--  Idle state, wait for reception of debug messages, DMA request is cleared.
      IDLE,
      --  Debug message A received.
      MSG_A,
      --  Debug messages A, B received.
      MSG_AB,
      --  Debug messages A, B, C received, DMA request is set.
      MSG_ABC)
     with Size => 2;
   for RXF1S_DMSSelect use
     (IDLE => 0,
      MSG_A => 1,
      MSG_AB => 2,
      MSG_ABC => 3);

   --  Receive FIFO 1 Status Register
   type MCAN_RXF1S_Register is record
      --  Read-only. Receive FIFO 1 Fill Level
      F1FL           : MCAN_RXF1S_F1FL_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit;
      --  Read-only. Receive FIFO 1 Get Index
      F1GI           : MCAN_RXF1S_F1GI_Field;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2;
      --  Read-only. Receive FIFO 1 Put Index
      F1PI           : MCAN_RXF1S_F1PI_Field;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2;
      --  Read-only. Receive FIFO 1 Full
      F1F            : MCAN_RXF1S_F1F_Field;
      --  Read-only. Receive FIFO 1 Message Lost
      RF1L           : MCAN_RXF1S_RF1L_Field;
      --  unspecified
      Reserved_26_29 : Interfaces.SAM.UInt4;
      --  Read-only. Debug Message Status
      DMS            : RXF1S_DMSSelect;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_RXF1S_Register use record
      F1FL           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      F1GI           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      F1PI           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      F1F            at 0 range 24 .. 24;
      RF1L           at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      DMS            at 0 range 30 .. 31;
   end record;

   subtype MCAN_RXF1A_F1AI_Field is Interfaces.SAM.UInt6;

   --  Receive FIFO 1 Acknowledge Register
   type MCAN_RXF1A_Register is record
      --  Receive FIFO 1 Acknowledge Index
      F1AI          : MCAN_RXF1A_F1AI_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_RXF1A_Register use record
      F1AI          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Receive FIFO 0 Data Field Size
   type RXESC_F0DSSelect is
     (--  8-byte data field
      Val_8_BYTE,
      --  12-byte data field
      Val_12_BYTE,
      --  16-byte data field
      Val_16_BYTE,
      --  20-byte data field
      Val_20_BYTE,
      --  24-byte data field
      Val_24_BYTE,
      --  32-byte data field
      Val_32_BYTE,
      --  48-byte data field
      Val_48_BYTE,
      --  64-byte data field
      Val_64_BYTE)
     with Size => 3;
   for RXESC_F0DSSelect use
     (Val_8_BYTE => 0,
      Val_12_BYTE => 1,
      Val_16_BYTE => 2,
      Val_20_BYTE => 3,
      Val_24_BYTE => 4,
      Val_32_BYTE => 5,
      Val_48_BYTE => 6,
      Val_64_BYTE => 7);

   --  Receive FIFO 1 Data Field Size
   type RXESC_F1DSSelect is
     (--  8-byte data field
      Val_8_BYTE,
      --  12-byte data field
      Val_12_BYTE,
      --  16-byte data field
      Val_16_BYTE,
      --  20-byte data field
      Val_20_BYTE,
      --  24-byte data field
      Val_24_BYTE,
      --  32-byte data field
      Val_32_BYTE,
      --  48-byte data field
      Val_48_BYTE,
      --  64-byte data field
      Val_64_BYTE)
     with Size => 3;
   for RXESC_F1DSSelect use
     (Val_8_BYTE => 0,
      Val_12_BYTE => 1,
      Val_16_BYTE => 2,
      Val_20_BYTE => 3,
      Val_24_BYTE => 4,
      Val_32_BYTE => 5,
      Val_48_BYTE => 6,
      Val_64_BYTE => 7);

   --  Receive Buffer Data Field Size
   type RXESC_RBDSSelect is
     (--  8-byte data field
      Val_8_BYTE,
      --  12-byte data field
      Val_12_BYTE,
      --  16-byte data field
      Val_16_BYTE,
      --  20-byte data field
      Val_20_BYTE,
      --  24-byte data field
      Val_24_BYTE,
      --  32-byte data field
      Val_32_BYTE,
      --  48-byte data field
      Val_48_BYTE,
      --  64-byte data field
      Val_64_BYTE)
     with Size => 3;
   for RXESC_RBDSSelect use
     (Val_8_BYTE => 0,
      Val_12_BYTE => 1,
      Val_16_BYTE => 2,
      Val_20_BYTE => 3,
      Val_24_BYTE => 4,
      Val_32_BYTE => 5,
      Val_48_BYTE => 6,
      Val_64_BYTE => 7);

   --  Receive Buffer / FIFO Element Size Configuration Register
   type MCAN_RXESC_Register is record
      --  Receive FIFO 0 Data Field Size
      F0DS           : RXESC_F0DSSelect := Interfaces.SAM.MCAN.Val_8_BYTE;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit := 16#0#;
      --  Receive FIFO 1 Data Field Size
      F1DS           : RXESC_F1DSSelect := Interfaces.SAM.MCAN.Val_8_BYTE;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Receive Buffer Data Field Size
      RBDS           : RXESC_RBDSSelect := Interfaces.SAM.MCAN.Val_8_BYTE;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_RXESC_Register use record
      F0DS           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      F1DS           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RBDS           at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype MCAN_TXBC_TBSA_Field is Interfaces.SAM.UInt14;
   subtype MCAN_TXBC_NDTB_Field is Interfaces.SAM.UInt6;
   subtype MCAN_TXBC_TFQS_Field is Interfaces.SAM.UInt6;
   subtype MCAN_TXBC_TFQM_Field is Interfaces.SAM.Bit;

   --  Transmit Buffer Configuration Register
   type MCAN_TXBC_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Tx Buffers Start Address
      TBSA           : MCAN_TXBC_TBSA_Field := 16#0#;
      --  Number of Dedicated Transmit Buffers
      NDTB           : MCAN_TXBC_NDTB_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  Transmit FIFO/Queue Size
      TFQS           : MCAN_TXBC_TFQS_Field := 16#0#;
      --  Tx FIFO/Queue Mode
      TFQM           : MCAN_TXBC_TFQM_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.SAM.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXBC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      TBSA           at 0 range 2 .. 15;
      NDTB           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TFQS           at 0 range 24 .. 29;
      TFQM           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype MCAN_TXFQS_TFFL_Field is Interfaces.SAM.UInt6;
   subtype MCAN_TXFQS_TFGI_Field is Interfaces.SAM.UInt5;
   subtype MCAN_TXFQS_TFQPI_Field is Interfaces.SAM.UInt5;
   subtype MCAN_TXFQS_TFQF_Field is Interfaces.SAM.Bit;

   --  Transmit FIFO/Queue Status Register
   type MCAN_TXFQS_Register is record
      --  Read-only. Tx FIFO Free Level
      TFFL           : MCAN_TXFQS_TFFL_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2;
      --  Read-only. Tx FIFO Get Index
      TFGI           : MCAN_TXFQS_TFGI_Field;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3;
      --  Read-only. Tx FIFO/Queue Put Index
      TFQPI          : MCAN_TXFQS_TFQPI_Field;
      --  Read-only. Tx FIFO/Queue Full
      TFQF           : MCAN_TXFQS_TFQF_Field;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXFQS_Register use record
      TFFL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TFGI           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TFQPI          at 0 range 16 .. 20;
      TFQF           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Tx Buffer Data Field Size
   type TXESC_TBDSSelect is
     (--  8-byte data field
      Val_8_BYTE,
      --  12-byte data field
      Val_12_BYTE,
      --  16-byte data field
      Val_16_BYTE,
      --  20-byte data field
      Val_20_BYTE,
      --  24-byte data field
      Val_24_BYTE,
      --  32-byte data field
      Val_32_BYTE,
      --  48- byte data field
      Val_48_BYTE,
      --  64-byte data field
      Val_64_BYTE)
     with Size => 3;
   for TXESC_TBDSSelect use
     (Val_8_BYTE => 0,
      Val_12_BYTE => 1,
      Val_16_BYTE => 2,
      Val_20_BYTE => 3,
      Val_24_BYTE => 4,
      Val_32_BYTE => 5,
      Val_48_BYTE => 6,
      Val_64_BYTE => 7);

   --  Transmit Buffer Element Size Configuration Register
   type MCAN_TXESC_Register is record
      --  Tx Buffer Data Field Size
      TBDS          : TXESC_TBDSSelect := Interfaces.SAM.MCAN.Val_8_BYTE;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXESC_Register use record
      TBDS          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  MCAN_TXBRP_TRP array element
   subtype MCAN_TXBRP_TRP_Element is Interfaces.SAM.Bit;

   --  MCAN_TXBRP_TRP array
   type MCAN_TXBRP_TRP_Field_Array is array (0 .. 31)
     of MCAN_TXBRP_TRP_Element
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Request Pending Register
   type MCAN_TXBRP_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRP as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  TRP as an array
            Arr : MCAN_TXBRP_TRP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXBRP_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN_TXBAR_AR array element
   subtype MCAN_TXBAR_AR_Element is Interfaces.SAM.Bit;

   --  MCAN_TXBAR_AR array
   type MCAN_TXBAR_AR_Field_Array is array (0 .. 31) of MCAN_TXBAR_AR_Element
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Add Request Register
   type MCAN_TXBAR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AR as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  AR as an array
            Arr : MCAN_TXBAR_AR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXBAR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN_TXBCR_CR array element
   subtype MCAN_TXBCR_CR_Element is Interfaces.SAM.Bit;

   --  MCAN_TXBCR_CR array
   type MCAN_TXBCR_CR_Field_Array is array (0 .. 31) of MCAN_TXBCR_CR_Element
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Cancellation Request Register
   type MCAN_TXBCR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CR as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  CR as an array
            Arr : MCAN_TXBCR_CR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXBCR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN_TXBTO_TO array element
   subtype MCAN_TXBTO_TO_Element is Interfaces.SAM.Bit;

   --  MCAN_TXBTO_TO array
   type MCAN_TXBTO_TO_Field_Array is array (0 .. 31) of MCAN_TXBTO_TO_Element
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Transmission Occurred Register
   type MCAN_TXBTO_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TO as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  TO as an array
            Arr : MCAN_TXBTO_TO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXBTO_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN_TXBCF_CF array element
   subtype MCAN_TXBCF_CF_Element is Interfaces.SAM.Bit;

   --  MCAN_TXBCF_CF array
   type MCAN_TXBCF_CF_Field_Array is array (0 .. 31) of MCAN_TXBCF_CF_Element
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Cancellation Finished Register
   type MCAN_TXBCF_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CF as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  CF as an array
            Arr : MCAN_TXBCF_CF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXBCF_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN_TXBTIE_TIE array element
   subtype MCAN_TXBTIE_TIE_Element is Interfaces.SAM.Bit;

   --  MCAN_TXBTIE_TIE array
   type MCAN_TXBTIE_TIE_Field_Array is array (0 .. 31)
     of MCAN_TXBTIE_TIE_Element
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Transmission Interrupt Enable Register
   type MCAN_TXBTIE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIE as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  TIE as an array
            Arr : MCAN_TXBTIE_TIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXBTIE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MCAN_TXBCIE_CFIE array element
   subtype MCAN_TXBCIE_CFIE_Element is Interfaces.SAM.Bit;

   --  MCAN_TXBCIE_CFIE array
   type MCAN_TXBCIE_CFIE_Field_Array is array (0 .. 31)
     of MCAN_TXBCIE_CFIE_Element
     with Component_Size => 1, Size => 32;

   --  Transmit Buffer Cancellation Finished Interrupt Enable Register
   type MCAN_TXBCIE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFIE as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  CFIE as an array
            Arr : MCAN_TXBCIE_CFIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXBCIE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype MCAN_TXEFC_EFSA_Field is Interfaces.SAM.UInt14;
   subtype MCAN_TXEFC_EFS_Field is Interfaces.SAM.UInt6;
   subtype MCAN_TXEFC_EFWM_Field is Interfaces.SAM.UInt6;

   --  Transmit Event FIFO Configuration Register
   type MCAN_TXEFC_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Event FIFO Start Address
      EFSA           : MCAN_TXEFC_EFSA_Field := 16#0#;
      --  Event FIFO Size
      EFS            : MCAN_TXEFC_EFS_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  Event FIFO Watermark
      EFWM           : MCAN_TXEFC_EFWM_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXEFC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      EFSA           at 0 range 2 .. 15;
      EFS            at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      EFWM           at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype MCAN_TXEFS_EFFL_Field is Interfaces.SAM.UInt6;
   subtype MCAN_TXEFS_EFGI_Field is Interfaces.SAM.UInt5;
   subtype MCAN_TXEFS_EFPI_Field is Interfaces.SAM.UInt5;
   subtype MCAN_TXEFS_EFF_Field is Interfaces.SAM.Bit;
   subtype MCAN_TXEFS_TEFL_Field is Interfaces.SAM.Bit;

   --  Transmit Event FIFO Status Register
   type MCAN_TXEFS_Register is record
      --  Read-only. Event FIFO Fill Level
      EFFL           : MCAN_TXEFS_EFFL_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2;
      --  Read-only. Event FIFO Get Index
      EFGI           : MCAN_TXEFS_EFGI_Field;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3;
      --  Read-only. Event FIFO Put Index
      EFPI           : MCAN_TXEFS_EFPI_Field;
      --  unspecified
      Reserved_21_23 : Interfaces.SAM.UInt3;
      --  Read-only. Event FIFO Full
      EFF            : MCAN_TXEFS_EFF_Field;
      --  Read-only. Tx Event FIFO Element Lost
      TEFL           : MCAN_TXEFS_TEFL_Field;
      --  unspecified
      Reserved_26_31 : Interfaces.SAM.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXEFS_Register use record
      EFFL           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EFGI           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      EFPI           at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      EFF            at 0 range 24 .. 24;
      TEFL           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MCAN_TXEFA_EFAI_Field is Interfaces.SAM.UInt5;

   --  Transmit Event FIFO Acknowledge Register
   type MCAN_TXEFA_Register is record
      --  Event FIFO Acknowledge Index
      EFAI          : MCAN_TXEFA_EFAI_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.SAM.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCAN_TXEFA_Register use record
      EFAI          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Controller Area Network
   type MCAN_Peripheral is record
      --  Core Release Register
      CREL   : aliased MCAN_CREL_Register;
      --  Endian Register
      ENDN   : aliased Interfaces.SAM.UInt32;
      --  Customer Register
      CUST   : aliased Interfaces.SAM.UInt32;
      --  Data Bit Timing and Prescaler Register
      DBTP   : aliased MCAN_DBTP_Register;
      --  Test Register
      TEST   : aliased MCAN_TEST_Register;
      --  RAM Watchdog Register
      RWD    : aliased MCAN_RWD_Register;
      --  CC Control Register
      CCCR   : aliased MCAN_CCCR_Register;
      --  Nominal Bit Timing and Prescaler Register
      NBTP   : aliased MCAN_NBTP_Register;
      --  Timestamp Counter Configuration Register
      TSCC   : aliased MCAN_TSCC_Register;
      --  Timestamp Counter Value Register
      TSCV   : aliased MCAN_TSCV_Register;
      --  Timeout Counter Configuration Register
      TOCC   : aliased MCAN_TOCC_Register;
      --  Timeout Counter Value Register
      TOCV   : aliased MCAN_TOCV_Register;
      --  Error Counter Register
      ECR    : aliased MCAN_ECR_Register;
      --  Protocol Status Register
      PSR    : aliased MCAN_PSR_Register;
      --  Transmit Delay Compensation Register
      TDCR   : aliased MCAN_TDCR_Register;
      --  Interrupt Register
      IR     : aliased MCAN_IR_Register;
      --  Interrupt Enable Register
      IE     : aliased MCAN_IE_Register;
      --  Interrupt Line Select Register
      ILS    : aliased MCAN_ILS_Register;
      --  Interrupt Line Enable Register
      ILE    : aliased MCAN_ILE_Register;
      --  Global Filter Configuration Register
      GFC    : aliased MCAN_GFC_Register;
      --  Standard ID Filter Configuration Register
      SIDFC  : aliased MCAN_SIDFC_Register;
      --  Extended ID Filter Configuration Register
      XIDFC  : aliased MCAN_XIDFC_Register;
      --  Extended ID AND Mask Register
      XIDAM  : aliased MCAN_XIDAM_Register;
      --  High Priority Message Status Register
      HPMS   : aliased MCAN_HPMS_Register;
      --  New Data 1 Register
      NDAT1  : aliased MCAN_NDAT1_Register;
      --  New Data 2 Register
      NDAT2  : aliased MCAN_NDAT2_Register;
      --  Receive FIFO 0 Configuration Register
      RXF0C  : aliased MCAN_RXF0C_Register;
      --  Receive FIFO 0 Status Register
      RXF0S  : aliased MCAN_RXF0S_Register;
      --  Receive FIFO 0 Acknowledge Register
      RXF0A  : aliased MCAN_RXF0A_Register;
      --  Receive Rx Buffer Configuration Register
      RXBC   : aliased MCAN_RXBC_Register;
      --  Receive FIFO 1 Configuration Register
      RXF1C  : aliased MCAN_RXF1C_Register;
      --  Receive FIFO 1 Status Register
      RXF1S  : aliased MCAN_RXF1S_Register;
      --  Receive FIFO 1 Acknowledge Register
      RXF1A  : aliased MCAN_RXF1A_Register;
      --  Receive Buffer / FIFO Element Size Configuration Register
      RXESC  : aliased MCAN_RXESC_Register;
      --  Transmit Buffer Configuration Register
      TXBC   : aliased MCAN_TXBC_Register;
      --  Transmit FIFO/Queue Status Register
      TXFQS  : aliased MCAN_TXFQS_Register;
      --  Transmit Buffer Element Size Configuration Register
      TXESC  : aliased MCAN_TXESC_Register;
      --  Transmit Buffer Request Pending Register
      TXBRP  : aliased MCAN_TXBRP_Register;
      --  Transmit Buffer Add Request Register
      TXBAR  : aliased MCAN_TXBAR_Register;
      --  Transmit Buffer Cancellation Request Register
      TXBCR  : aliased MCAN_TXBCR_Register;
      --  Transmit Buffer Transmission Occurred Register
      TXBTO  : aliased MCAN_TXBTO_Register;
      --  Transmit Buffer Cancellation Finished Register
      TXBCF  : aliased MCAN_TXBCF_Register;
      --  Transmit Buffer Transmission Interrupt Enable Register
      TXBTIE : aliased MCAN_TXBTIE_Register;
      --  Transmit Buffer Cancellation Finished Interrupt Enable Register
      TXBCIE : aliased MCAN_TXBCIE_Register;
      --  Transmit Event FIFO Configuration Register
      TXEFC  : aliased MCAN_TXEFC_Register;
      --  Transmit Event FIFO Status Register
      TXEFS  : aliased MCAN_TXEFS_Register;
      --  Transmit Event FIFO Acknowledge Register
      TXEFA  : aliased MCAN_TXEFA_Register;
   end record
     with Volatile;

   for MCAN_Peripheral use record
      CREL   at 16#0# range 0 .. 31;
      ENDN   at 16#4# range 0 .. 31;
      CUST   at 16#8# range 0 .. 31;
      DBTP   at 16#C# range 0 .. 31;
      TEST   at 16#10# range 0 .. 31;
      RWD    at 16#14# range 0 .. 31;
      CCCR   at 16#18# range 0 .. 31;
      NBTP   at 16#1C# range 0 .. 31;
      TSCC   at 16#20# range 0 .. 31;
      TSCV   at 16#24# range 0 .. 31;
      TOCC   at 16#28# range 0 .. 31;
      TOCV   at 16#2C# range 0 .. 31;
      ECR    at 16#40# range 0 .. 31;
      PSR    at 16#44# range 0 .. 31;
      TDCR   at 16#48# range 0 .. 31;
      IR     at 16#50# range 0 .. 31;
      IE     at 16#54# range 0 .. 31;
      ILS    at 16#58# range 0 .. 31;
      ILE    at 16#5C# range 0 .. 31;
      GFC    at 16#80# range 0 .. 31;
      SIDFC  at 16#84# range 0 .. 31;
      XIDFC  at 16#88# range 0 .. 31;
      XIDAM  at 16#90# range 0 .. 31;
      HPMS   at 16#94# range 0 .. 31;
      NDAT1  at 16#98# range 0 .. 31;
      NDAT2  at 16#9C# range 0 .. 31;
      RXF0C  at 16#A0# range 0 .. 31;
      RXF0S  at 16#A4# range 0 .. 31;
      RXF0A  at 16#A8# range 0 .. 31;
      RXBC   at 16#AC# range 0 .. 31;
      RXF1C  at 16#B0# range 0 .. 31;
      RXF1S  at 16#B4# range 0 .. 31;
      RXF1A  at 16#B8# range 0 .. 31;
      RXESC  at 16#BC# range 0 .. 31;
      TXBC   at 16#C0# range 0 .. 31;
      TXFQS  at 16#C4# range 0 .. 31;
      TXESC  at 16#C8# range 0 .. 31;
      TXBRP  at 16#CC# range 0 .. 31;
      TXBAR  at 16#D0# range 0 .. 31;
      TXBCR  at 16#D4# range 0 .. 31;
      TXBTO  at 16#D8# range 0 .. 31;
      TXBCF  at 16#DC# range 0 .. 31;
      TXBTIE at 16#E0# range 0 .. 31;
      TXBCIE at 16#E4# range 0 .. 31;
      TXEFC  at 16#F0# range 0 .. 31;
      TXEFS  at 16#F4# range 0 .. 31;
      TXEFA  at 16#F8# range 0 .. 31;
   end record;

   --  Controller Area Network
   MCAN0_Periph : aliased MCAN_Peripheral
     with Import, Address => MCAN0_Base;

   --  Controller Area Network
   MCAN1_Periph : aliased MCAN_Peripheral
     with Import, Address => MCAN1_Base;

end Interfaces.SAM.MCAN;