pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.IP1553 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IP1553_CR_TA_Field is HAL.UInt5;

   --  Configuration Register
   type IP1553_CR_Register is record
      --  POTermConf
      PT             : Boolean := False;
      --  TermAddressConf
      TA             : IP1553_CR_TA_Field := 16#0#;
      --  TRBitCmd
      TC             : Boolean := False;
      --  SSBitCmd
      SC             : Boolean := False;
      --  BusyBitCmd
      BC             : Boolean := False;
      --  SREQBitCmd
      SRC            : Boolean := False;
      --  BCEnableCmd
      BEC            : Boolean := False;
      --  Soft Reset
      RST            : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_CR_Register use record
      PT             at 0 range 0 .. 0;
      TA             at 0 range 1 .. 5;
      TC             at 0 range 6 .. 6;
      SC             at 0 range 7 .. 7;
      BC             at 0 range 8 .. 8;
      SRC            at 0 range 9 .. 9;
      BEC            at 0 range 10 .. 10;
      RST            at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CMDR_DATAWORDCOUNT_Field is HAL.UInt5;
   subtype CMDR_RTSUBADDRESS_Field is HAL.UInt5;
   subtype CMDR_RTADDRESS_Field is HAL.UInt5;

   --  Command Register 1
   type CMDR_Register is record
      --  Write-only. DATA WORD COUNT
      DATAWORDCOUNT  : CMDR_DATAWORDCOUNT_Field := 16#0#;
      --  Write-only. RT SUBADDRESS
      RTSUBADDRESS   : CMDR_RTSUBADDRESS_Field := 16#0#;
      --  Write-only. T/R
      T_R            : Boolean := False;
      --  Write-only. RT ADDRESS
      RTADDRESS      : CMDR_RTADDRESS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMDR_Register use record
      DATAWORDCOUNT  at 0 range 0 .. 4;
      RTSUBADDRESS   at 0 range 5 .. 9;
      T_R            at 0 range 10 .. 10;
      RTADDRESS      at 0 range 11 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Command Register 3
   type IP1553_CMDR3_Register is record
      --  Write-only. bus used
      BUS           : Boolean := False;
      --  Write-only. 1553 emitter
      BCE           : Boolean := False;
      --  Write-only. 1553 receiver
      BCR           : Boolean := False;
      --  Write-only. data or command transfer
      ER            : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_CMDR3_Register use record
      BUS           at 0 range 0 .. 0;
      BCE           at 0 range 1 .. 1;
      BCR           at 0 range 2 .. 2;
      ER            at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype IP1553_BITR_TOBITWORD_Field is HAL.UInt16;

   --  BIT Register
   type IP1553_BITR_Register is record
      --  Write-only. to bit word
      TOBITWORD      : IP1553_BITR_TOBITWORD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_BITR_Register use record
      TOBITWORD      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IP1553_VWR_TOVECTORWORD_Field is HAL.UInt16;

   --  Vector Word Register
   type IP1553_VWR_Register is record
      --  Write-only. to vector word
      TOVECTORWORD   : IP1553_VWR_TOVECTORWORD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_VWR_Register use record
      TOVECTORWORD   at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IP1553_IER_ETRANS_Field is HAL.UInt2;

   --  IRQ Mask Enable Register
   type IP1553_IER_Register is record
      --  Write-only. EndMemTransfer
      EMT            : Boolean := False;
      --  Write-only. MemTransferErr
      MTE            : Boolean := False;
      --  Write-only. End reception
      ERX            : Boolean := False;
      --  Write-only. EndTransmission
      ETX            : Boolean := False;
      --  Write-only. EndTransfer
      ETRANS         : IP1553_IER_ETRANS_Field := 16#0#;
      --  Write-only. TransErr
      TE             : Boolean := False;
      --  Write-only. TransCodingErr
      TCE            : Boolean := False;
      --  Write-only. TransParityErr
      TPE            : Boolean := False;
      --  Write-only. TransDataTypeErr
      TDE            : Boolean := False;
      --  Write-only. TransTimeOutErr
      TTE            : Boolean := False;
      --  Write-only. TransWordCounterErr
      TWE            : Boolean := False;
      --  Write-only. BufIFErr
      BE             : Boolean := False;
      --  Write-only. IllegalTransferReq
      ITR            : Boolean := False;
      --  Write-only. TransVecWordReq
      TVR            : Boolean := False;
      --  Write-only. DynamicBusContReq
      DBR            : Boolean := False;
      --  Write-only. InitSelfTestReq
      STR            : Boolean := False;
      --  Write-only. TranShutdownReq
      TSR            : Boolean := False;
      --  Write-only. OvTranShutdownReq
      OSR            : Boolean := False;
      --  Write-only. SyncWithDataReq
      SDR            : Boolean := False;
      --  Write-only. SyncWithoutDataReq
      SWD            : Boolean := False;
      --  Write-only. ResetRTReq
      RRT            : Boolean := False;
      --  Write-only. InhibitTermFlagReq
      ITF            : Boolean := False;
      --  Write-only. OvInhibitTermFlagReq
      OTF            : Boolean := False;
      --  Write-only. IPBusy
      IPB            : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_IER_Register use record
      EMT            at 0 range 0 .. 0;
      MTE            at 0 range 1 .. 1;
      ERX            at 0 range 2 .. 2;
      ETX            at 0 range 3 .. 3;
      ETRANS         at 0 range 4 .. 5;
      TE             at 0 range 6 .. 6;
      TCE            at 0 range 7 .. 7;
      TPE            at 0 range 8 .. 8;
      TDE            at 0 range 9 .. 9;
      TTE            at 0 range 10 .. 10;
      TWE            at 0 range 11 .. 11;
      BE             at 0 range 12 .. 12;
      ITR            at 0 range 13 .. 13;
      TVR            at 0 range 14 .. 14;
      DBR            at 0 range 15 .. 15;
      STR            at 0 range 16 .. 16;
      TSR            at 0 range 17 .. 17;
      OSR            at 0 range 18 .. 18;
      SDR            at 0 range 19 .. 19;
      SWD            at 0 range 20 .. 20;
      RRT            at 0 range 21 .. 21;
      ITF            at 0 range 22 .. 22;
      OTF            at 0 range 23 .. 23;
      IPB            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype IP1553_IDR_ETRANS_Field is HAL.UInt2;

   --  IRQ Mask Disable Register
   type IP1553_IDR_Register is record
      --  Write-only. EndMemTransfer
      EMT            : Boolean := False;
      --  Write-only. MemTransferErr
      MTE            : Boolean := False;
      --  Write-only. End reception
      ERX            : Boolean := False;
      --  Write-only. EndTransmission
      ETX            : Boolean := False;
      --  Write-only. EndTransfer
      ETRANS         : IP1553_IDR_ETRANS_Field := 16#0#;
      --  Write-only. TransErr
      TE             : Boolean := False;
      --  Write-only. TransCodingErr
      TCE            : Boolean := False;
      --  Write-only. TransParityErr
      TPE            : Boolean := False;
      --  Write-only. TransDataTypeErr
      TDE            : Boolean := False;
      --  Write-only. TransTimeOutErr
      TTE            : Boolean := False;
      --  Write-only. TransWordCounterErr
      TWE            : Boolean := False;
      --  Write-only. BufIFErr
      BE             : Boolean := False;
      --  Write-only. IllegalTransferReq
      ITR            : Boolean := False;
      --  Write-only. TransVecWordReq
      TVR            : Boolean := False;
      --  Write-only. DynamicBusContReq
      DBR            : Boolean := False;
      --  Write-only. InitSelfTestReq
      STR            : Boolean := False;
      --  Write-only. TranShutdownReq
      TSR            : Boolean := False;
      --  Write-only. OvTranShutdownReq
      OSR            : Boolean := False;
      --  Write-only. SyncWithDataReq
      SDR            : Boolean := False;
      --  Write-only. SyncWithoutDataReq
      SWD            : Boolean := False;
      --  Write-only. ResetRTReq
      RRT            : Boolean := False;
      --  Write-only. InhibitTermFlagReq
      ITF            : Boolean := False;
      --  Write-only. OvInhibitTermFlagReq
      OTF            : Boolean := False;
      --  Write-only. IPBusy
      IPB            : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_IDR_Register use record
      EMT            at 0 range 0 .. 0;
      MTE            at 0 range 1 .. 1;
      ERX            at 0 range 2 .. 2;
      ETX            at 0 range 3 .. 3;
      ETRANS         at 0 range 4 .. 5;
      TE             at 0 range 6 .. 6;
      TCE            at 0 range 7 .. 7;
      TPE            at 0 range 8 .. 8;
      TDE            at 0 range 9 .. 9;
      TTE            at 0 range 10 .. 10;
      TWE            at 0 range 11 .. 11;
      BE             at 0 range 12 .. 12;
      ITR            at 0 range 13 .. 13;
      TVR            at 0 range 14 .. 14;
      DBR            at 0 range 15 .. 15;
      STR            at 0 range 16 .. 16;
      TSR            at 0 range 17 .. 17;
      OSR            at 0 range 18 .. 18;
      SDR            at 0 range 19 .. 19;
      SWD            at 0 range 20 .. 20;
      RRT            at 0 range 21 .. 21;
      ITF            at 0 range 22 .. 22;
      OTF            at 0 range 23 .. 23;
      IPB            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype IP1553_IMR_ETRANS_Field is HAL.UInt2;

   --  IRQ Mask Register
   type IP1553_IMR_Register is record
      --  Read-only. EndMemTransfer
      EMT            : Boolean;
      --  Read-only. MemTransferErr
      MTE            : Boolean;
      --  Read-only. End reception
      ERX            : Boolean;
      --  Read-only. EndTransmission
      ETX            : Boolean;
      --  Read-only. EndTransfer
      ETRANS         : IP1553_IMR_ETRANS_Field;
      --  Read-only. TransErr
      TE             : Boolean;
      --  Read-only. TransCodingErr
      TCE            : Boolean;
      --  Read-only. TransParityErr
      TPE            : Boolean;
      --  Read-only. TransDataTypeErr
      TDE            : Boolean;
      --  Read-only. TransTimeOutErr
      TTE            : Boolean;
      --  Read-only. TransWordCounterErr
      TWE            : Boolean;
      --  Read-only. BufIFErr
      BE             : Boolean;
      --  Read-only. IllegalTransferReq
      ITR            : Boolean;
      --  Read-only. TransVecWordReq
      TVR            : Boolean;
      --  Read-only. DynamicBusContReq
      DBR            : Boolean;
      --  Read-only. InitSelfTestReq
      STR            : Boolean;
      --  Read-only. TranShutdownReq
      TSR            : Boolean;
      --  Read-only. OvTranShutdownReq
      OSR            : Boolean;
      --  Read-only. SyncWithDataReq
      SDR            : Boolean;
      --  Read-only. SyncWithoutDataReq
      SWD            : Boolean;
      --  Read-only. ResetRTReq
      RRT            : Boolean;
      --  Read-only. InhibitTermFlagReq
      ITF            : Boolean;
      --  Read-only. OvInhibitTermFlagReq
      OTF            : Boolean;
      --  Read-only. IPBusy
      IPB            : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_IMR_Register use record
      EMT            at 0 range 0 .. 0;
      MTE            at 0 range 1 .. 1;
      ERX            at 0 range 2 .. 2;
      ETX            at 0 range 3 .. 3;
      ETRANS         at 0 range 4 .. 5;
      TE             at 0 range 6 .. 6;
      TCE            at 0 range 7 .. 7;
      TPE            at 0 range 8 .. 8;
      TDE            at 0 range 9 .. 9;
      TTE            at 0 range 10 .. 10;
      TWE            at 0 range 11 .. 11;
      BE             at 0 range 12 .. 12;
      ITR            at 0 range 13 .. 13;
      TVR            at 0 range 14 .. 14;
      DBR            at 0 range 15 .. 15;
      STR            at 0 range 16 .. 16;
      TSR            at 0 range 17 .. 17;
      OSR            at 0 range 18 .. 18;
      SDR            at 0 range 19 .. 19;
      SWD            at 0 range 20 .. 20;
      RRT            at 0 range 21 .. 21;
      ITF            at 0 range 22 .. 22;
      OTF            at 0 range 23 .. 23;
      IPB            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype IP1553_ISR_ETRANS_Field is HAL.UInt2;

   --  IRQ Status Register
   type IP1553_ISR_Register is record
      --  Read-only. EndMemTransfer
      EMT            : Boolean;
      --  Read-only. MemTransferErr
      MTE            : Boolean;
      --  Read-only. End reception
      ERX            : Boolean;
      --  Read-only. EndTransmission
      ETX            : Boolean;
      --  Read-only. EndTransfer
      ETRANS         : IP1553_ISR_ETRANS_Field;
      --  Read-only. TransErr
      TE             : Boolean;
      --  Read-only. TransCodingErr
      TCE            : Boolean;
      --  Read-only. TransParityErr
      TPE            : Boolean;
      --  Read-only. TransDataTypeErr
      TDE            : Boolean;
      --  Read-only. TransTimeOutErr
      TTE            : Boolean;
      --  Read-only. TransWordCounterErr
      TWE            : Boolean;
      --  Read-only. BufIFErr
      BE             : Boolean;
      --  Read-only. IllegalTransferReq
      ITR            : Boolean;
      --  Read-only. TransVecWordReq
      TVR            : Boolean;
      --  Read-only. DynamicBusContReq
      DBR            : Boolean;
      --  Read-only. InitSelfTestReq
      STR            : Boolean;
      --  Read-only. TranShutdownReq
      TSR            : Boolean;
      --  Read-only. OvTranShutdownReq
      OSR            : Boolean;
      --  Read-only. SyncWithDataReq
      SDR            : Boolean;
      --  Read-only. SyncWithoutDataReq
      SWD            : Boolean;
      --  Read-only. ResetRTReq
      RRT            : Boolean;
      --  Read-only. InhibitTermFlagReq
      ITF            : Boolean;
      --  Read-only. OvInhibitTermFlagReq
      OTF            : Boolean;
      --  Read-only. IPBusy
      IPB            : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_ISR_Register use record
      EMT            at 0 range 0 .. 0;
      MTE            at 0 range 1 .. 1;
      ERX            at 0 range 2 .. 2;
      ETX            at 0 range 3 .. 3;
      ETRANS         at 0 range 4 .. 5;
      TE             at 0 range 6 .. 6;
      TCE            at 0 range 7 .. 7;
      TPE            at 0 range 8 .. 8;
      TDE            at 0 range 9 .. 9;
      TTE            at 0 range 10 .. 10;
      TWE            at 0 range 11 .. 11;
      BE             at 0 range 12 .. 12;
      ITR            at 0 range 13 .. 13;
      TVR            at 0 range 14 .. 14;
      DBR            at 0 range 15 .. 15;
      STR            at 0 range 16 .. 16;
      TSR            at 0 range 17 .. 17;
      OSR            at 0 range 18 .. 18;
      SDR            at 0 range 19 .. 19;
      SWD            at 0 range 20 .. 20;
      RRT            at 0 range 21 .. 21;
      ITF            at 0 range 22 .. 22;
      OTF            at 0 range 23 .. 23;
      IPB            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  IP1553_CTRL1_IP1553DATA array element
   subtype IP1553_CTRL1_IP1553DATA_Element is HAL.UInt16;

   --  IP1553_CTRL1_IP1553DATA array
   type IP1553_CTRL1_IP1553DATA_Field_Array is array (1 .. 2)
     of IP1553_CTRL1_IP1553DATA_Element
     with Component_Size => 16, Size => 32;

   --  Control Register 1
   type IP1553_CTRL1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IP1553DATA as a value
            Val : HAL.UInt32;
         when True =>
            --  IP1553DATA as an array
            Arr : IP1553_CTRL1_IP1553DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_CTRL1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype IP1553_CTRL2_FROMCOMMANDREG_Field is HAL.UInt4;
   subtype IP1553_CTRL2_FROMVECTORWORD_Field is HAL.UInt16;

   --  Control Register 2
   type IP1553_CTRL2_Register is record
      --  Read-only. from command register
      FROMCOMMANDREG : IP1553_CTRL2_FROMCOMMANDREG_Field;
      --  Read-only. from vector register
      FROMVECTORWORD : IP1553_CTRL2_FROMVECTORWORD_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_CTRL2_Register use record
      FROMCOMMANDREG at 0 range 0 .. 3;
      FROMVECTORWORD at 0 range 4 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype IP1553_CTRL3_FROMSTATUSWORD_Field is HAL.UInt16;
   subtype IP1553_CTRL3_FROMBITWORD_Field is HAL.UInt16;

   --  Control Register 3
   type IP1553_CTRL3_Register is record
      --  Read-only. content of status word register
      FROMSTATUSWORD : IP1553_CTRL3_FROMSTATUSWORD_Field;
      --  Read-only. content of bit word register
      FROMBITWORD    : IP1553_CTRL3_FROMBITWORD_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_CTRL3_Register use record
      FROMSTATUSWORD at 0 range 0 .. 15;
      FROMBITWORD    at 0 range 16 .. 31;
   end record;

   --  IP1553_RXBSR_RE array
   type IP1553_RXBSR_RE_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Rx Buffer Status Register
   type IP1553_RXBSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RE as a value
            Val : HAL.UInt32;
         when True =>
            --  RE as an array
            Arr : IP1553_RXBSR_RE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_RXBSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IP1553_RXBAER_RER array
   type IP1553_RXBAER_RER_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Rx Buffer Access Error Register
   type IP1553_RXBAER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RER as a value
            Val : HAL.UInt32;
         when True =>
            --  RER as an array
            Arr : IP1553_RXBAER_RER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_RXBAER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IP1553_TXBSR_TF array
   type IP1553_TXBSR_TF_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Tx Buffer Status Register
   type IP1553_TXBSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TF as a value
            Val : HAL.UInt32;
         when True =>
            --  TF as an array
            Arr : IP1553_TXBSR_TF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_TXBSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IP1553_TXBAER_TER array
   type IP1553_TXBAER_TER_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Tx Buffer Access Error Register
   type IP1553_TXBAER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TER as a value
            Val : HAL.UInt32;
         when True =>
            --  TER as an array
            Arr : IP1553_TXBAER_TER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_TXBAER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  IP 1553
   type IP1553_Peripheral is record
      --  Configuration Register
      CR     : aliased IP1553_CR_Register;
      --  Command Register 1
      CMDR1  : aliased CMDR_Register;
      --  Command Register 2
      CMDR2  : aliased CMDR_Register;
      --  Command Register 3
      CMDR3  : aliased IP1553_CMDR3_Register;
      --  BIT Register
      BITR   : aliased IP1553_BITR_Register;
      --  Vector Word Register
      VWR    : aliased IP1553_VWR_Register;
      --  IRQ Mask Enable Register
      IER    : aliased IP1553_IER_Register;
      --  IRQ Mask Disable Register
      IDR    : aliased IP1553_IDR_Register;
      --  IRQ Mask Register
      IMR    : aliased IP1553_IMR_Register;
      --  IRQ Status Register
      ISR    : aliased IP1553_ISR_Register;
      --  Control Register 1
      CTRL1  : aliased IP1553_CTRL1_Register;
      --  Control Register 2
      CTRL2  : aliased IP1553_CTRL2_Register;
      --  Control Register 3
      CTRL3  : aliased IP1553_CTRL3_Register;
      --  Address Register Write
      ARW    : aliased HAL.UInt32;
      --  Address Register Read
      ARR    : aliased HAL.UInt32;
      --  Rx Buffer Status Register
      RXBSR  : aliased IP1553_RXBSR_Register;
      --  Rx Buffer Access Error Register
      RXBAER : aliased IP1553_RXBAER_Register;
      --  Tx Buffer Status Register
      TXBSR  : aliased IP1553_TXBSR_Register;
      --  Tx Buffer Access Error Register
      TXBAER : aliased IP1553_TXBAER_Register;
   end record
     with Volatile;

   for IP1553_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      CMDR1  at 16#C# range 0 .. 31;
      CMDR2  at 16#10# range 0 .. 31;
      CMDR3  at 16#14# range 0 .. 31;
      BITR   at 16#18# range 0 .. 31;
      VWR    at 16#1C# range 0 .. 31;
      IER    at 16#20# range 0 .. 31;
      IDR    at 16#24# range 0 .. 31;
      IMR    at 16#28# range 0 .. 31;
      ISR    at 16#2C# range 0 .. 31;
      CTRL1  at 16#30# range 0 .. 31;
      CTRL2  at 16#34# range 0 .. 31;
      CTRL3  at 16#38# range 0 .. 31;
      ARW    at 16#3C# range 0 .. 31;
      ARR    at 16#40# range 0 .. 31;
      RXBSR  at 16#44# range 0 .. 31;
      RXBAER at 16#48# range 0 .. 31;
      TXBSR  at 16#4C# range 0 .. 31;
      TXBAER at 16#50# range 0 .. 31;
   end record;

   --  IP 1553
   IP1553_Periph : aliased IP1553_Peripheral
     with Import, Address => IP1553_Base;

end SAM_SVD.IP1553;
