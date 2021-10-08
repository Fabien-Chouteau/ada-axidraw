--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.IP1553 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype IP1553_CR_PT_Field is Interfaces.SAM.Bit;
   subtype IP1553_CR_TA_Field is Interfaces.SAM.UInt5;
   subtype IP1553_CR_TC_Field is Interfaces.SAM.Bit;
   subtype IP1553_CR_SC_Field is Interfaces.SAM.Bit;
   subtype IP1553_CR_BC_Field is Interfaces.SAM.Bit;
   subtype IP1553_CR_SRC_Field is Interfaces.SAM.Bit;
   subtype IP1553_CR_BEC_Field is Interfaces.SAM.Bit;
   subtype IP1553_CR_RST_Field is Interfaces.SAM.Bit;

   --  Configuration Register
   type IP1553_CR_Register is record
      --  POTermConf
      PT             : IP1553_CR_PT_Field := 16#0#;
      --  TermAddressConf
      TA             : IP1553_CR_TA_Field := 16#0#;
      --  TRBitCmd
      TC             : IP1553_CR_TC_Field := 16#0#;
      --  SSBitCmd
      SC             : IP1553_CR_SC_Field := 16#0#;
      --  BusyBitCmd
      BC             : IP1553_CR_BC_Field := 16#0#;
      --  SREQBitCmd
      SRC            : IP1553_CR_SRC_Field := 16#0#;
      --  BCEnableCmd
      BEC            : IP1553_CR_BEC_Field := 16#0#;
      --  Soft Reset
      RST            : IP1553_CR_RST_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.SAM.UInt20 := 16#0#;
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

   subtype CMDR_DATAWORDCOUNT_Field is Interfaces.SAM.UInt5;
   subtype CMDR_RTSUBADDRESS_Field is Interfaces.SAM.UInt5;
   subtype CMDR_T_R_Field is Interfaces.SAM.Bit;
   subtype CMDR_RTADDRESS_Field is Interfaces.SAM.UInt5;

   --  Command Register 1
   type CMDR_Register is record
      --  Write-only. DATA WORD COUNT
      DATAWORDCOUNT  : CMDR_DATAWORDCOUNT_Field := 16#0#;
      --  Write-only. RT SUBADDRESS
      RTSUBADDRESS   : CMDR_RTSUBADDRESS_Field := 16#0#;
      --  Write-only. T/R
      T_R            : CMDR_T_R_Field := 16#0#;
      --  Write-only. RT ADDRESS
      RTADDRESS      : CMDR_RTADDRESS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
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

   subtype IP1553_CMDR3_BUS_Field is Interfaces.SAM.Bit;
   subtype IP1553_CMDR3_BCE_Field is Interfaces.SAM.Bit;
   subtype IP1553_CMDR3_BCR_Field is Interfaces.SAM.Bit;
   subtype IP1553_CMDR3_ER_Field is Interfaces.SAM.Bit;

   --  Command Register 3
   type IP1553_CMDR3_Register is record
      --  Write-only. bus used
      BUS           : IP1553_CMDR3_BUS_Field := 16#0#;
      --  Write-only. 1553 emitter
      BCE           : IP1553_CMDR3_BCE_Field := 16#0#;
      --  Write-only. 1553 receiver
      BCR           : IP1553_CMDR3_BCR_Field := 16#0#;
      --  Write-only. data or command transfer
      ER            : IP1553_CMDR3_ER_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
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

   subtype IP1553_BITR_TOBITWORD_Field is Interfaces.SAM.UInt16;

   --  BIT Register
   type IP1553_BITR_Register is record
      --  Write-only. to bit word
      TOBITWORD      : IP1553_BITR_TOBITWORD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_BITR_Register use record
      TOBITWORD      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IP1553_VWR_TOVECTORWORD_Field is Interfaces.SAM.UInt16;

   --  Vector Word Register
   type IP1553_VWR_Register is record
      --  Write-only. to vector word
      TOVECTORWORD   : IP1553_VWR_TOVECTORWORD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_VWR_Register use record
      TOVECTORWORD   at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IP1553_IER_EMT_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_MTE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_ERX_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_ETX_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_ETRANS_Field is Interfaces.SAM.UInt2;
   subtype IP1553_IER_TE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_TCE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_TPE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_TDE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_TTE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_TWE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_BE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_ITR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_TVR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_DBR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_STR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_TSR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_OSR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_SDR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_SWD_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_RRT_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_ITF_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_OTF_Field is Interfaces.SAM.Bit;
   subtype IP1553_IER_IPB_Field is Interfaces.SAM.Bit;

   --  IRQ Mask Enable Register
   type IP1553_IER_Register is record
      --  Write-only. EndMemTransfer
      EMT            : IP1553_IER_EMT_Field := 16#0#;
      --  Write-only. MemTransferErr
      MTE            : IP1553_IER_MTE_Field := 16#0#;
      --  Write-only. End reception
      ERX            : IP1553_IER_ERX_Field := 16#0#;
      --  Write-only. EndTransmission
      ETX            : IP1553_IER_ETX_Field := 16#0#;
      --  Write-only. EndTransfer
      ETRANS         : IP1553_IER_ETRANS_Field := 16#0#;
      --  Write-only. TransErr
      TE             : IP1553_IER_TE_Field := 16#0#;
      --  Write-only. TransCodingErr
      TCE            : IP1553_IER_TCE_Field := 16#0#;
      --  Write-only. TransParityErr
      TPE            : IP1553_IER_TPE_Field := 16#0#;
      --  Write-only. TransDataTypeErr
      TDE            : IP1553_IER_TDE_Field := 16#0#;
      --  Write-only. TransTimeOutErr
      TTE            : IP1553_IER_TTE_Field := 16#0#;
      --  Write-only. TransWordCounterErr
      TWE            : IP1553_IER_TWE_Field := 16#0#;
      --  Write-only. BufIFErr
      BE             : IP1553_IER_BE_Field := 16#0#;
      --  Write-only. IllegalTransferReq
      ITR            : IP1553_IER_ITR_Field := 16#0#;
      --  Write-only. TransVecWordReq
      TVR            : IP1553_IER_TVR_Field := 16#0#;
      --  Write-only. DynamicBusContReq
      DBR            : IP1553_IER_DBR_Field := 16#0#;
      --  Write-only. InitSelfTestReq
      STR            : IP1553_IER_STR_Field := 16#0#;
      --  Write-only. TranShutdownReq
      TSR            : IP1553_IER_TSR_Field := 16#0#;
      --  Write-only. OvTranShutdownReq
      OSR            : IP1553_IER_OSR_Field := 16#0#;
      --  Write-only. SyncWithDataReq
      SDR            : IP1553_IER_SDR_Field := 16#0#;
      --  Write-only. SyncWithoutDataReq
      SWD            : IP1553_IER_SWD_Field := 16#0#;
      --  Write-only. ResetRTReq
      RRT            : IP1553_IER_RRT_Field := 16#0#;
      --  Write-only. InhibitTermFlagReq
      ITF            : IP1553_IER_ITF_Field := 16#0#;
      --  Write-only. OvInhibitTermFlagReq
      OTF            : IP1553_IER_OTF_Field := 16#0#;
      --  Write-only. IPBusy
      IPB            : IP1553_IER_IPB_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
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

   subtype IP1553_IDR_EMT_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_MTE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_ERX_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_ETX_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_ETRANS_Field is Interfaces.SAM.UInt2;
   subtype IP1553_IDR_TE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_TCE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_TPE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_TDE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_TTE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_TWE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_BE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_ITR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_TVR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_DBR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_STR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_TSR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_OSR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_SDR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_SWD_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_RRT_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_ITF_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_OTF_Field is Interfaces.SAM.Bit;
   subtype IP1553_IDR_IPB_Field is Interfaces.SAM.Bit;

   --  IRQ Mask Disable Register
   type IP1553_IDR_Register is record
      --  Write-only. EndMemTransfer
      EMT            : IP1553_IDR_EMT_Field := 16#0#;
      --  Write-only. MemTransferErr
      MTE            : IP1553_IDR_MTE_Field := 16#0#;
      --  Write-only. End reception
      ERX            : IP1553_IDR_ERX_Field := 16#0#;
      --  Write-only. EndTransmission
      ETX            : IP1553_IDR_ETX_Field := 16#0#;
      --  Write-only. EndTransfer
      ETRANS         : IP1553_IDR_ETRANS_Field := 16#0#;
      --  Write-only. TransErr
      TE             : IP1553_IDR_TE_Field := 16#0#;
      --  Write-only. TransCodingErr
      TCE            : IP1553_IDR_TCE_Field := 16#0#;
      --  Write-only. TransParityErr
      TPE            : IP1553_IDR_TPE_Field := 16#0#;
      --  Write-only. TransDataTypeErr
      TDE            : IP1553_IDR_TDE_Field := 16#0#;
      --  Write-only. TransTimeOutErr
      TTE            : IP1553_IDR_TTE_Field := 16#0#;
      --  Write-only. TransWordCounterErr
      TWE            : IP1553_IDR_TWE_Field := 16#0#;
      --  Write-only. BufIFErr
      BE             : IP1553_IDR_BE_Field := 16#0#;
      --  Write-only. IllegalTransferReq
      ITR            : IP1553_IDR_ITR_Field := 16#0#;
      --  Write-only. TransVecWordReq
      TVR            : IP1553_IDR_TVR_Field := 16#0#;
      --  Write-only. DynamicBusContReq
      DBR            : IP1553_IDR_DBR_Field := 16#0#;
      --  Write-only. InitSelfTestReq
      STR            : IP1553_IDR_STR_Field := 16#0#;
      --  Write-only. TranShutdownReq
      TSR            : IP1553_IDR_TSR_Field := 16#0#;
      --  Write-only. OvTranShutdownReq
      OSR            : IP1553_IDR_OSR_Field := 16#0#;
      --  Write-only. SyncWithDataReq
      SDR            : IP1553_IDR_SDR_Field := 16#0#;
      --  Write-only. SyncWithoutDataReq
      SWD            : IP1553_IDR_SWD_Field := 16#0#;
      --  Write-only. ResetRTReq
      RRT            : IP1553_IDR_RRT_Field := 16#0#;
      --  Write-only. InhibitTermFlagReq
      ITF            : IP1553_IDR_ITF_Field := 16#0#;
      --  Write-only. OvInhibitTermFlagReq
      OTF            : IP1553_IDR_OTF_Field := 16#0#;
      --  Write-only. IPBusy
      IPB            : IP1553_IDR_IPB_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
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

   subtype IP1553_IMR_EMT_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_MTE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_ERX_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_ETX_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_ETRANS_Field is Interfaces.SAM.UInt2;
   subtype IP1553_IMR_TE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_TCE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_TPE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_TDE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_TTE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_TWE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_BE_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_ITR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_TVR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_DBR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_STR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_TSR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_OSR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_SDR_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_SWD_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_RRT_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_ITF_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_OTF_Field is Interfaces.SAM.Bit;
   subtype IP1553_IMR_IPB_Field is Interfaces.SAM.Bit;

   --  IRQ Mask Register
   type IP1553_IMR_Register is record
      --  Read-only. EndMemTransfer
      EMT            : IP1553_IMR_EMT_Field;
      --  Read-only. MemTransferErr
      MTE            : IP1553_IMR_MTE_Field;
      --  Read-only. End reception
      ERX            : IP1553_IMR_ERX_Field;
      --  Read-only. EndTransmission
      ETX            : IP1553_IMR_ETX_Field;
      --  Read-only. EndTransfer
      ETRANS         : IP1553_IMR_ETRANS_Field;
      --  Read-only. TransErr
      TE             : IP1553_IMR_TE_Field;
      --  Read-only. TransCodingErr
      TCE            : IP1553_IMR_TCE_Field;
      --  Read-only. TransParityErr
      TPE            : IP1553_IMR_TPE_Field;
      --  Read-only. TransDataTypeErr
      TDE            : IP1553_IMR_TDE_Field;
      --  Read-only. TransTimeOutErr
      TTE            : IP1553_IMR_TTE_Field;
      --  Read-only. TransWordCounterErr
      TWE            : IP1553_IMR_TWE_Field;
      --  Read-only. BufIFErr
      BE             : IP1553_IMR_BE_Field;
      --  Read-only. IllegalTransferReq
      ITR            : IP1553_IMR_ITR_Field;
      --  Read-only. TransVecWordReq
      TVR            : IP1553_IMR_TVR_Field;
      --  Read-only. DynamicBusContReq
      DBR            : IP1553_IMR_DBR_Field;
      --  Read-only. InitSelfTestReq
      STR            : IP1553_IMR_STR_Field;
      --  Read-only. TranShutdownReq
      TSR            : IP1553_IMR_TSR_Field;
      --  Read-only. OvTranShutdownReq
      OSR            : IP1553_IMR_OSR_Field;
      --  Read-only. SyncWithDataReq
      SDR            : IP1553_IMR_SDR_Field;
      --  Read-only. SyncWithoutDataReq
      SWD            : IP1553_IMR_SWD_Field;
      --  Read-only. ResetRTReq
      RRT            : IP1553_IMR_RRT_Field;
      --  Read-only. InhibitTermFlagReq
      ITF            : IP1553_IMR_ITF_Field;
      --  Read-only. OvInhibitTermFlagReq
      OTF            : IP1553_IMR_OTF_Field;
      --  Read-only. IPBusy
      IPB            : IP1553_IMR_IPB_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
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

   subtype IP1553_ISR_EMT_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_MTE_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_ERX_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_ETX_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_ETRANS_Field is Interfaces.SAM.UInt2;
   subtype IP1553_ISR_TE_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_TCE_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_TPE_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_TDE_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_TTE_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_TWE_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_BE_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_ITR_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_TVR_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_DBR_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_STR_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_TSR_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_OSR_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_SDR_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_SWD_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_RRT_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_ITF_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_OTF_Field is Interfaces.SAM.Bit;
   subtype IP1553_ISR_IPB_Field is Interfaces.SAM.Bit;

   --  IRQ Status Register
   type IP1553_ISR_Register is record
      --  Read-only. EndMemTransfer
      EMT            : IP1553_ISR_EMT_Field;
      --  Read-only. MemTransferErr
      MTE            : IP1553_ISR_MTE_Field;
      --  Read-only. End reception
      ERX            : IP1553_ISR_ERX_Field;
      --  Read-only. EndTransmission
      ETX            : IP1553_ISR_ETX_Field;
      --  Read-only. EndTransfer
      ETRANS         : IP1553_ISR_ETRANS_Field;
      --  Read-only. TransErr
      TE             : IP1553_ISR_TE_Field;
      --  Read-only. TransCodingErr
      TCE            : IP1553_ISR_TCE_Field;
      --  Read-only. TransParityErr
      TPE            : IP1553_ISR_TPE_Field;
      --  Read-only. TransDataTypeErr
      TDE            : IP1553_ISR_TDE_Field;
      --  Read-only. TransTimeOutErr
      TTE            : IP1553_ISR_TTE_Field;
      --  Read-only. TransWordCounterErr
      TWE            : IP1553_ISR_TWE_Field;
      --  Read-only. BufIFErr
      BE             : IP1553_ISR_BE_Field;
      --  Read-only. IllegalTransferReq
      ITR            : IP1553_ISR_ITR_Field;
      --  Read-only. TransVecWordReq
      TVR            : IP1553_ISR_TVR_Field;
      --  Read-only. DynamicBusContReq
      DBR            : IP1553_ISR_DBR_Field;
      --  Read-only. InitSelfTestReq
      STR            : IP1553_ISR_STR_Field;
      --  Read-only. TranShutdownReq
      TSR            : IP1553_ISR_TSR_Field;
      --  Read-only. OvTranShutdownReq
      OSR            : IP1553_ISR_OSR_Field;
      --  Read-only. SyncWithDataReq
      SDR            : IP1553_ISR_SDR_Field;
      --  Read-only. SyncWithoutDataReq
      SWD            : IP1553_ISR_SWD_Field;
      --  Read-only. ResetRTReq
      RRT            : IP1553_ISR_RRT_Field;
      --  Read-only. InhibitTermFlagReq
      ITF            : IP1553_ISR_ITF_Field;
      --  Read-only. OvInhibitTermFlagReq
      OTF            : IP1553_ISR_OTF_Field;
      --  Read-only. IPBusy
      IPB            : IP1553_ISR_IPB_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
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
   subtype IP1553_CTRL1_IP1553DATA_Element is Interfaces.SAM.UInt16;

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
            Val : Interfaces.SAM.UInt32;
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

   subtype IP1553_CTRL2_FROMCOMMANDREG_Field is Interfaces.SAM.UInt4;
   subtype IP1553_CTRL2_FROMVECTORWORD_Field is Interfaces.SAM.UInt16;

   --  Control Register 2
   type IP1553_CTRL2_Register is record
      --  Read-only. from command register
      FROMCOMMANDREG : IP1553_CTRL2_FROMCOMMANDREG_Field;
      --  Read-only. from vector register
      FROMVECTORWORD : IP1553_CTRL2_FROMVECTORWORD_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IP1553_CTRL2_Register use record
      FROMCOMMANDREG at 0 range 0 .. 3;
      FROMVECTORWORD at 0 range 4 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype IP1553_CTRL3_FROMSTATUSWORD_Field is Interfaces.SAM.UInt16;
   subtype IP1553_CTRL3_FROMBITWORD_Field is Interfaces.SAM.UInt16;

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

   --  IP1553_RXBSR_RE array element
   subtype IP1553_RXBSR_RE_Element is Interfaces.SAM.Bit;

   --  IP1553_RXBSR_RE array
   type IP1553_RXBSR_RE_Field_Array is array (0 .. 31)
     of IP1553_RXBSR_RE_Element
     with Component_Size => 1, Size => 32;

   --  Rx Buffer Status Register
   type IP1553_RXBSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RE as a value
            Val : Interfaces.SAM.UInt32;
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

   --  IP1553_RXBAER_RER array element
   subtype IP1553_RXBAER_RER_Element is Interfaces.SAM.Bit;

   --  IP1553_RXBAER_RER array
   type IP1553_RXBAER_RER_Field_Array is array (0 .. 31)
     of IP1553_RXBAER_RER_Element
     with Component_Size => 1, Size => 32;

   --  Rx Buffer Access Error Register
   type IP1553_RXBAER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RER as a value
            Val : Interfaces.SAM.UInt32;
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

   --  IP1553_TXBSR_TF array element
   subtype IP1553_TXBSR_TF_Element is Interfaces.SAM.Bit;

   --  IP1553_TXBSR_TF array
   type IP1553_TXBSR_TF_Field_Array is array (0 .. 31)
     of IP1553_TXBSR_TF_Element
     with Component_Size => 1, Size => 32;

   --  Tx Buffer Status Register
   type IP1553_TXBSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TF as a value
            Val : Interfaces.SAM.UInt32;
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

   --  IP1553_TXBAER_TER array element
   subtype IP1553_TXBAER_TER_Element is Interfaces.SAM.Bit;

   --  IP1553_TXBAER_TER array
   type IP1553_TXBAER_TER_Field_Array is array (0 .. 31)
     of IP1553_TXBAER_TER_Element
     with Component_Size => 1, Size => 32;

   --  Tx Buffer Access Error Register
   type IP1553_TXBAER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TER as a value
            Val : Interfaces.SAM.UInt32;
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
      ARW    : aliased Interfaces.SAM.UInt32;
      --  Address Register Read
      ARR    : aliased Interfaces.SAM.UInt32;
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

end Interfaces.SAM.IP1553;
