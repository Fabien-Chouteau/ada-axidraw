pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.SSC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type SSC_SSC_CR_Register is record
      --  Write-only. Receive Enable
      RXEN           : Boolean := False;
      --  Write-only. Receive Disable
      RXDIS          : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write-only. Transmit Enable
      TXEN           : Boolean := False;
      --  Write-only. Transmit Disable
      TXDIS          : Boolean := False;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Write-only. Software Reset
      SWRST          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_CR_Register use record
      RXEN           at 0 range 0 .. 0;
      RXDIS          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXEN           at 0 range 8 .. 8;
      TXDIS          at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      SWRST          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_SSC_CMR_DIV_Field is HAL.UInt12;

   --  Clock Mode Register
   type SSC_SSC_CMR_Register is record
      --  Clock Divider
      DIV            : SSC_SSC_CMR_DIV_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_CMR_Register use record
      DIV            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Receive Clock Selection
   type SSC_RCMR_CKSSelect is
     (--  Divided Clock
      MCK,
      --  TK Clock signal
      TK,
      --  RK pin
      RK)
     with Size => 2;
   for SSC_RCMR_CKSSelect use
     (MCK => 0,
      TK => 1,
      RK => 2);

   --  Receive Clock Output Mode Selection
   type SSC_RCMR_CKOSelect is
     (--  None, RK pin is an input
      NONE,
      --  Continuous Receive Clock, RK pin is an output
      CONTINUOUS,
      --  Receive Clock only during data transfers, RK pin is an output
      TRANSFER)
     with Size => 3;
   for SSC_RCMR_CKOSelect use
     (NONE => 0,
      CONTINUOUS => 1,
      TRANSFER => 2);

   --  Receive Clock Gating Selection
   type SSC_RCMR_CKGSelect is
     (--  None
      CONTINUOUS,
      --  Receive Clock enabled only if RF Low
      EN_RF_LOW,
      --  Receive Clock enabled only if RF High
      EN_RF_HIGH)
     with Size => 2;
   for SSC_RCMR_CKGSelect use
     (CONTINUOUS => 0,
      EN_RF_LOW => 1,
      EN_RF_HIGH => 2);

   --  Receive Start Selection
   type SSC_RCMR_STARTSelect is
     (--  Continuous, as soon as the receiver is enabled, and immediately after the
--  end of transfer of the previous data.
      CONTINUOUS,
      --  Transmit start
      TRANSMIT,
      --  Detection of a low level on RF signal
      RF_LOW,
      --  Detection of a high level on RF signal
      RF_HIGH,
      --  Detection of a falling edge on RF signal
      RF_FALLING,
      --  Detection of a rising edge on RF signal
      RF_RISING,
      --  Detection of any level change on RF signal
      RF_LEVEL,
      --  Detection of any edge on RF signal
      RF_EDGE,
      --  Compare 0
      CMP_0)
     with Size => 4;
   for SSC_RCMR_STARTSelect use
     (CONTINUOUS => 0,
      TRANSMIT => 1,
      RF_LOW => 2,
      RF_HIGH => 3,
      RF_FALLING => 4,
      RF_RISING => 5,
      RF_LEVEL => 6,
      RF_EDGE => 7,
      CMP_0 => 8);

   subtype SSC_SSC_RCMR_STTDLY_Field is HAL.UInt8;
   subtype SSC_SSC_RCMR_PERIOD_Field is HAL.UInt8;

   --  Receive Clock Mode Register
   type SSC_SSC_RCMR_Register is record
      --  Receive Clock Selection
      CKS            : SSC_RCMR_CKSSelect := SAM_SVD.SSC.MCK;
      --  Receive Clock Output Mode Selection
      CKO            : SSC_RCMR_CKOSelect := SAM_SVD.SSC.NONE;
      --  Receive Clock Inversion
      CKI            : Boolean := False;
      --  Receive Clock Gating Selection
      CKG            : SSC_RCMR_CKGSelect := SAM_SVD.SSC.CONTINUOUS;
      --  Receive Start Selection
      START          : SSC_RCMR_STARTSelect := SAM_SVD.SSC.CONTINUOUS;
      --  Receive Stop Selection
      STOP           : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Receive Start Delay
      STTDLY         : SSC_SSC_RCMR_STTDLY_Field := 16#0#;
      --  Receive Period Divider Selection
      PERIOD         : SSC_SSC_RCMR_PERIOD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_RCMR_Register use record
      CKS            at 0 range 0 .. 1;
      CKO            at 0 range 2 .. 4;
      CKI            at 0 range 5 .. 5;
      CKG            at 0 range 6 .. 7;
      START          at 0 range 8 .. 11;
      STOP           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      STTDLY         at 0 range 16 .. 23;
      PERIOD         at 0 range 24 .. 31;
   end record;

   subtype SSC_SSC_RFMR_DATLEN_Field is HAL.UInt5;
   subtype SSC_SSC_RFMR_DATNB_Field is HAL.UInt4;
   subtype SSC_SSC_RFMR_FSLEN_Field is HAL.UInt4;

   --  Receive Frame Sync Output Selection
   type SSC_RFMR_FSOSSelect is
     (--  None, RF pin is an input
      NONE,
      --  Negative Pulse, RF pin is an output
      NEGATIVE,
      --  Positive Pulse, RF pin is an output
      POSITIVE,
      --  Driven Low during data transfer, RF pin is an output
      LOW,
      --  Driven High during data transfer, RF pin is an output
      HIGH,
      --  Toggling at each start of data transfer, RF pin is an output
      TOGGLING)
     with Size => 3;
   for SSC_RFMR_FSOSSelect use
     (NONE => 0,
      NEGATIVE => 1,
      POSITIVE => 2,
      LOW => 3,
      HIGH => 4,
      TOGGLING => 5);

   --  Frame Sync Edge Detection
   type SSC_RFMR_FSEDGESelect is
     (--  Positive Edge Detection
      POSITIVE,
      --  Negative Edge Detection
      NEGATIVE)
     with Size => 1;
   for SSC_RFMR_FSEDGESelect use
     (POSITIVE => 0,
      NEGATIVE => 1);

   subtype SSC_SSC_RFMR_FSLEN_EXT_Field is HAL.UInt4;

   --  Receive Frame Mode Register
   type SSC_SSC_RFMR_Register is record
      --  Data Length
      DATLEN         : SSC_SSC_RFMR_DATLEN_Field := 16#0#;
      --  Loop Mode
      LOOP_k         : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Most Significant Bit First
      MSBF           : Boolean := False;
      --  Data Number per Frame
      DATNB          : SSC_SSC_RFMR_DATNB_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Receive Frame Sync Length
      FSLEN          : SSC_SSC_RFMR_FSLEN_Field := 16#0#;
      --  Receive Frame Sync Output Selection
      FSOS           : SSC_RFMR_FSOSSelect := SAM_SVD.SSC.NONE;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Frame Sync Edge Detection
      FSEDGE         : SSC_RFMR_FSEDGESelect := SAM_SVD.SSC.POSITIVE;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  FSLEN Field Extension
      FSLEN_EXT      : SSC_SSC_RFMR_FSLEN_EXT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_RFMR_Register use record
      DATLEN         at 0 range 0 .. 4;
      LOOP_k         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      MSBF           at 0 range 7 .. 7;
      DATNB          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FSLEN          at 0 range 16 .. 19;
      FSOS           at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      FSEDGE         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      FSLEN_EXT      at 0 range 28 .. 31;
   end record;

   --  Transmit Clock Selection
   type SSC_TCMR_CKSSelect is
     (--  Divided Clock
      MCK,
      --  RK Clock signal
      RK,
      --  TK pin
      TK)
     with Size => 2;
   for SSC_TCMR_CKSSelect use
     (MCK => 0,
      RK => 1,
      TK => 2);

   --  Transmit Clock Output Mode Selection
   type SSC_TCMR_CKOSelect is
     (--  None, TK pin is an input
      NONE,
      --  Continuous Transmit Clock, TK pin is an output
      CONTINUOUS,
      --  Transmit Clock only during data transfers, TK pin is an output
      TRANSFER)
     with Size => 3;
   for SSC_TCMR_CKOSelect use
     (NONE => 0,
      CONTINUOUS => 1,
      TRANSFER => 2);

   --  Transmit Clock Gating Selection
   type SSC_TCMR_CKGSelect is
     (--  None
      CONTINUOUS,
      --  Transmit Clock enabled only if TF Low
      EN_TF_LOW,
      --  Transmit Clock enabled only if TF High
      EN_TF_HIGH)
     with Size => 2;
   for SSC_TCMR_CKGSelect use
     (CONTINUOUS => 0,
      EN_TF_LOW => 1,
      EN_TF_HIGH => 2);

   --  Transmit Start Selection
   type SSC_TCMR_STARTSelect is
     (--  Continuous, as soon as a word is written in the SSC_THR (if Transmit is
--  enabled), and immediately after the end of transfer of the previous data
      CONTINUOUS,
      --  Receive start
      RECEIVE,
      --  Detection of a low level on TF signal
      TF_LOW,
      --  Detection of a high level on TF signal
      TF_HIGH,
      --  Detection of a falling edge on TF signal
      TF_FALLING,
      --  Detection of a rising edge on TF signal
      TF_RISING,
      --  Detection of any level change on TF signal
      TF_LEVEL,
      --  Detection of any edge on TF signal
      TF_EDGE)
     with Size => 4;
   for SSC_TCMR_STARTSelect use
     (CONTINUOUS => 0,
      RECEIVE => 1,
      TF_LOW => 2,
      TF_HIGH => 3,
      TF_FALLING => 4,
      TF_RISING => 5,
      TF_LEVEL => 6,
      TF_EDGE => 7);

   subtype SSC_SSC_TCMR_STTDLY_Field is HAL.UInt8;
   subtype SSC_SSC_TCMR_PERIOD_Field is HAL.UInt8;

   --  Transmit Clock Mode Register
   type SSC_SSC_TCMR_Register is record
      --  Transmit Clock Selection
      CKS            : SSC_TCMR_CKSSelect := SAM_SVD.SSC.MCK;
      --  Transmit Clock Output Mode Selection
      CKO            : SSC_TCMR_CKOSelect := SAM_SVD.SSC.NONE;
      --  Transmit Clock Inversion
      CKI            : Boolean := False;
      --  Transmit Clock Gating Selection
      CKG            : SSC_TCMR_CKGSelect := SAM_SVD.SSC.CONTINUOUS;
      --  Transmit Start Selection
      START          : SSC_TCMR_STARTSelect := SAM_SVD.SSC.CONTINUOUS;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Transmit Start Delay
      STTDLY         : SSC_SSC_TCMR_STTDLY_Field := 16#0#;
      --  Transmit Period Divider Selection
      PERIOD         : SSC_SSC_TCMR_PERIOD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_TCMR_Register use record
      CKS            at 0 range 0 .. 1;
      CKO            at 0 range 2 .. 4;
      CKI            at 0 range 5 .. 5;
      CKG            at 0 range 6 .. 7;
      START          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      STTDLY         at 0 range 16 .. 23;
      PERIOD         at 0 range 24 .. 31;
   end record;

   subtype SSC_SSC_TFMR_DATLEN_Field is HAL.UInt5;
   subtype SSC_SSC_TFMR_DATNB_Field is HAL.UInt4;
   subtype SSC_SSC_TFMR_FSLEN_Field is HAL.UInt4;

   --  Transmit Frame Sync Output Selection
   type SSC_TFMR_FSOSSelect is
     (--  None, TF pin is an input
      NONE,
      --  Negative Pulse, TF pin is an output
      NEGATIVE,
      --  Positive Pulse, TF pin is an output
      POSITIVE,
      --  Driven Low during data transfer
      LOW,
      --  Driven High during data transfer
      HIGH,
      --  Toggling at each start of data transfer
      TOGGLING)
     with Size => 3;
   for SSC_TFMR_FSOSSelect use
     (NONE => 0,
      NEGATIVE => 1,
      POSITIVE => 2,
      LOW => 3,
      HIGH => 4,
      TOGGLING => 5);

   --  Frame Sync Edge Detection
   type SSC_TFMR_FSEDGESelect is
     (--  Positive Edge Detection
      POSITIVE,
      --  Negative Edge Detection
      NEGATIVE)
     with Size => 1;
   for SSC_TFMR_FSEDGESelect use
     (POSITIVE => 0,
      NEGATIVE => 1);

   subtype SSC_SSC_TFMR_FSLEN_EXT_Field is HAL.UInt4;

   --  Transmit Frame Mode Register
   type SSC_SSC_TFMR_Register is record
      --  Data Length
      DATLEN         : SSC_SSC_TFMR_DATLEN_Field := 16#0#;
      --  Data Default Value
      DATDEF         : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Most Significant Bit First
      MSBF           : Boolean := False;
      --  Data Number per Frame
      DATNB          : SSC_SSC_TFMR_DATNB_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Transmit Frame Sync Length
      FSLEN          : SSC_SSC_TFMR_FSLEN_Field := 16#0#;
      --  Transmit Frame Sync Output Selection
      FSOS           : SSC_TFMR_FSOSSelect := SAM_SVD.SSC.NONE;
      --  Frame Sync Data Enable
      FSDEN          : Boolean := False;
      --  Frame Sync Edge Detection
      FSEDGE         : SSC_TFMR_FSEDGESelect := SAM_SVD.SSC.POSITIVE;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  FSLEN Field Extension
      FSLEN_EXT      : SSC_SSC_TFMR_FSLEN_EXT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_TFMR_Register use record
      DATLEN         at 0 range 0 .. 4;
      DATDEF         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      MSBF           at 0 range 7 .. 7;
      DATNB          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FSLEN          at 0 range 16 .. 19;
      FSOS           at 0 range 20 .. 22;
      FSDEN          at 0 range 23 .. 23;
      FSEDGE         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      FSLEN_EXT      at 0 range 28 .. 31;
   end record;

   subtype SSC_SSC_RSHR_RSDAT_Field is HAL.UInt16;

   --  Receive Sync. Holding Register
   type SSC_SSC_RSHR_Register is record
      --  Read-only. Receive Synchronization Data
      RSDAT          : SSC_SSC_RSHR_RSDAT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_RSHR_Register use record
      RSDAT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_SSC_TSHR_TSDAT_Field is HAL.UInt16;

   --  Transmit Sync. Holding Register
   type SSC_SSC_TSHR_Register is record
      --  Transmit Synchronization Data
      TSDAT          : SSC_SSC_TSHR_TSDAT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_TSHR_Register use record
      TSDAT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_SSC_RC0R_CP0_Field is HAL.UInt16;

   --  Receive Compare 0 Register
   type SSC_SSC_RC0R_Register is record
      --  Receive Compare Data 0
      CP0            : SSC_SSC_RC0R_CP0_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_RC0R_Register use record
      CP0            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_SSC_RC1R_CP1_Field is HAL.UInt16;

   --  Receive Compare 1 Register
   type SSC_SSC_RC1R_Register is record
      --  Receive Compare Data 1
      CP1            : SSC_SSC_RC1R_CP1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_RC1R_Register use record
      CP1            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SSC_SSC_SR_CP array
   type SSC_SSC_SR_CP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SSC_SSC_SR_CP
   type SSC_SSC_SR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : HAL.UInt2;
         when True =>
            --  CP as an array
            Arr : SSC_SSC_SR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SSC_SSC_SR_CP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Status Register
   type SSC_SSC_SR_Register is record
      --  Read-only. Transmit Ready
      TXRDY          : Boolean;
      --  Read-only. Transmit Empty
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. Receive Ready
      RXRDY          : Boolean;
      --  Read-only. Receive Overrun
      OVRUN          : Boolean;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Compare 0
      CP             : SSC_SSC_SR_CP_Field;
      --  Read-only. Transmit Sync
      TXSYN          : Boolean;
      --  Read-only. Receive Sync
      RXSYN          : Boolean;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Transmit Enable
      TXEN           : Boolean;
      --  Read-only. Receive Enable
      RXEN           : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_SR_Register use record
      TXRDY          at 0 range 0 .. 0;
      TXEMPTY        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXRDY          at 0 range 4 .. 4;
      OVRUN          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CP             at 0 range 8 .. 9;
      TXSYN          at 0 range 10 .. 10;
      RXSYN          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TXEN           at 0 range 16 .. 16;
      RXEN           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  SSC_SSC_IER_CP array
   type SSC_SSC_IER_CP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SSC_SSC_IER_CP
   type SSC_SSC_IER_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : HAL.UInt2;
         when True =>
            --  CP as an array
            Arr : SSC_SSC_IER_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SSC_SSC_IER_CP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Register
   type SSC_SSC_IER_Register is record
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY          : Boolean := False;
      --  Write-only. Transmit Empty Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Write-only. Receive Ready Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. Receive Overrun Interrupt Enable
      OVRUN          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. Compare 0 Interrupt Enable
      CP             : SSC_SSC_IER_CP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Tx Sync Interrupt Enable
      TXSYN          : Boolean := False;
      --  Write-only. Rx Sync Interrupt Enable
      RXSYN          : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_IER_Register use record
      TXRDY          at 0 range 0 .. 0;
      TXEMPTY        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXRDY          at 0 range 4 .. 4;
      OVRUN          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CP             at 0 range 8 .. 9;
      TXSYN          at 0 range 10 .. 10;
      RXSYN          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  SSC_SSC_IDR_CP array
   type SSC_SSC_IDR_CP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SSC_SSC_IDR_CP
   type SSC_SSC_IDR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : HAL.UInt2;
         when True =>
            --  CP as an array
            Arr : SSC_SSC_IDR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SSC_SSC_IDR_CP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Disable Register
   type SSC_SSC_IDR_Register is record
      --  Write-only. Transmit Ready Interrupt Disable
      TXRDY          : Boolean := False;
      --  Write-only. Transmit Empty Interrupt Disable
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Write-only. Receive Ready Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. Receive Overrun Interrupt Disable
      OVRUN          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. Compare 0 Interrupt Disable
      CP             : SSC_SSC_IDR_CP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Tx Sync Interrupt Enable
      TXSYN          : Boolean := False;
      --  Write-only. Rx Sync Interrupt Enable
      RXSYN          : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_IDR_Register use record
      TXRDY          at 0 range 0 .. 0;
      TXEMPTY        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXRDY          at 0 range 4 .. 4;
      OVRUN          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CP             at 0 range 8 .. 9;
      TXSYN          at 0 range 10 .. 10;
      RXSYN          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  SSC_SSC_IMR_CP array
   type SSC_SSC_IMR_CP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SSC_SSC_IMR_CP
   type SSC_SSC_IMR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : HAL.UInt2;
         when True =>
            --  CP as an array
            Arr : SSC_SSC_IMR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SSC_SSC_IMR_CP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Mask Register
   type SSC_SSC_IMR_Register is record
      --  Read-only. Transmit Ready Interrupt Mask
      TXRDY          : Boolean;
      --  Read-only. Transmit Empty Interrupt Mask
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. Receive Ready Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. Receive Overrun Interrupt Mask
      OVRUN          : Boolean;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Compare 0 Interrupt Mask
      CP             : SSC_SSC_IMR_CP_Field;
      --  Read-only. Tx Sync Interrupt Mask
      TXSYN          : Boolean;
      --  Read-only. Rx Sync Interrupt Mask
      RXSYN          : Boolean;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_IMR_Register use record
      TXRDY          at 0 range 0 .. 0;
      TXEMPTY        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXRDY          at 0 range 4 .. 4;
      OVRUN          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CP             at 0 range 8 .. 9;
      TXSYN          at 0 range 10 .. 10;
      RXSYN          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Write Protection Key
   type SSC_WPMR_WPKEYSelect is
     (--  Reset value for the field
      SSC_WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit.Always reads as 0.
      PASSWD)
     with Size => 24;
   for SSC_WPMR_WPKEYSelect use
     (SSC_WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5460803);

   --  Write Protection Mode Register
   type SSC_SSC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : SSC_WPMR_WPKEYSelect := SSC_WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype SSC_SSC_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protection Status Register
   type SSC_SSC_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protect Violation Source
      WPVSRC         : SSC_SSC_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SSC_SSC_VERSION_VERSION_Field is HAL.UInt16;
   subtype SSC_SSC_VERSION_MFN_Field is HAL.UInt3;

   --  Version Register
   type SSC_SSC_VERSION_Register is record
      --  Read-only. Version of the Hardware Module
      VERSION        : SSC_SSC_VERSION_VERSION_Field;
      --  Read-only. Metal Fix Number
      MFN            : SSC_SSC_VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SSC_VERSION_Register use record
      VERSION        at 0 range 0 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Synchronous Serial Controller
   type SSC_Peripheral is record
      --  Control Register
      SSC_CR      : aliased SSC_SSC_CR_Register;
      --  Clock Mode Register
      SSC_CMR     : aliased SSC_SSC_CMR_Register;
      --  Receive Clock Mode Register
      SSC_RCMR    : aliased SSC_SSC_RCMR_Register;
      --  Receive Frame Mode Register
      SSC_RFMR    : aliased SSC_SSC_RFMR_Register;
      --  Transmit Clock Mode Register
      SSC_TCMR    : aliased SSC_SSC_TCMR_Register;
      --  Transmit Frame Mode Register
      SSC_TFMR    : aliased SSC_SSC_TFMR_Register;
      --  Receive Holding Register
      SSC_RHR     : aliased HAL.UInt32;
      --  Transmit Holding Register
      SSC_THR     : aliased HAL.UInt32;
      --  Receive Sync. Holding Register
      SSC_RSHR    : aliased SSC_SSC_RSHR_Register;
      --  Transmit Sync. Holding Register
      SSC_TSHR    : aliased SSC_SSC_TSHR_Register;
      --  Receive Compare 0 Register
      SSC_RC0R    : aliased SSC_SSC_RC0R_Register;
      --  Receive Compare 1 Register
      SSC_RC1R    : aliased SSC_SSC_RC1R_Register;
      --  Status Register
      SSC_SR      : aliased SSC_SSC_SR_Register;
      --  Interrupt Enable Register
      SSC_IER     : aliased SSC_SSC_IER_Register;
      --  Interrupt Disable Register
      SSC_IDR     : aliased SSC_SSC_IDR_Register;
      --  Interrupt Mask Register
      SSC_IMR     : aliased SSC_SSC_IMR_Register;
      --  Write Protection Mode Register
      SSC_WPMR    : aliased SSC_SSC_WPMR_Register;
      --  Write Protection Status Register
      SSC_WPSR    : aliased SSC_SSC_WPSR_Register;
      --  Version Register
      SSC_VERSION : aliased SSC_SSC_VERSION_Register;
   end record
     with Volatile;

   for SSC_Peripheral use record
      SSC_CR      at 16#0# range 0 .. 31;
      SSC_CMR     at 16#4# range 0 .. 31;
      SSC_RCMR    at 16#10# range 0 .. 31;
      SSC_RFMR    at 16#14# range 0 .. 31;
      SSC_TCMR    at 16#18# range 0 .. 31;
      SSC_TFMR    at 16#1C# range 0 .. 31;
      SSC_RHR     at 16#20# range 0 .. 31;
      SSC_THR     at 16#24# range 0 .. 31;
      SSC_RSHR    at 16#30# range 0 .. 31;
      SSC_TSHR    at 16#34# range 0 .. 31;
      SSC_RC0R    at 16#38# range 0 .. 31;
      SSC_RC1R    at 16#3C# range 0 .. 31;
      SSC_SR      at 16#40# range 0 .. 31;
      SSC_IER     at 16#44# range 0 .. 31;
      SSC_IDR     at 16#48# range 0 .. 31;
      SSC_IMR     at 16#4C# range 0 .. 31;
      SSC_WPMR    at 16#E4# range 0 .. 31;
      SSC_WPSR    at 16#E8# range 0 .. 31;
      SSC_VERSION at 16#FC# range 0 .. 31;
   end record;

   --  Synchronous Serial Controller
   SSC_Periph : aliased SSC_Peripheral
     with Import, Address => SSC_Base;

end SAM_SVD.SSC;
