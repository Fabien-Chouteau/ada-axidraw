pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.SPW is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SPW_ROUTER_STS_DEST_Field is HAL.UInt5;
   subtype SPW_ROUTER_STS_SOURCE_Field is HAL.UInt5;
   subtype SPW_ROUTER_STS_BYTE_Field is HAL.UInt8;
   subtype SPW_ROUTER_STS_COUNT_Field is HAL.UInt8;

   --  SpW Router Status
   type SPW_ROUTER_STS_Register is record
      --  Read-only. Destination addr
      DEST           : SPW_ROUTER_STS_DEST_Field;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. Source address
      SOURCE         : SPW_ROUTER_STS_SOURCE_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Router byte
      BYTE           : SPW_ROUTER_STS_BYTE_Field;
      --  Read-only. Packet Count
      COUNT          : SPW_ROUTER_STS_COUNT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_ROUTER_STS_Register use record
      DEST           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SOURCE         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      BYTE           at 0 range 16 .. 23;
      COUNT          at 0 range 24 .. 31;
   end record;

   --  SpW Router Config
   type SPW_ROUTER_CFG_Register is record
      --  LA Routing Enable
      LAENA         : Boolean := False;
      --  Fallback Routing
      FALLBACK      : Boolean := False;
      --  Disable Timeout
      DISTIMEOUT    : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_ROUTER_CFG_Register use record
      LAENA         at 0 range 0 .. 0;
      FALLBACK      at 0 range 1 .. 1;
      DISTIMEOUT    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SPW_ROUTER_TIMEOUT_ADDR_Field is HAL.UInt5;

   --  SpW Router Timeout
   type SPW_ROUTER_TIMEOUT_Register is record
      --  Read-only. Physical Address
      ADDR          : SPW_ROUTER_TIMEOUT_ADDR_Field;
      --  unspecified
      Reserved_5_30 : HAL.UInt26;
      --  Read-only. Locked
      LOCKED        : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_ROUTER_TIMEOUT_Register use record
      ADDR          at 0 range 0 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      LOCKED        at 0 range 31 .. 31;
   end record;

   subtype SPW_ROUTER_TABLE_ADDR_Field is HAL.UInt5;

   --  SpW Router Table (Logical addresses 32 to 255, index 0 for logical
   --  address 32)
   type SPW_ROUTER_TABLE_Register is record
      --  Address
      ADDR          : SPW_ROUTER_TABLE_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Delete Header Byte
      DELHEAD       : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_ROUTER_TABLE_Register use record
      ADDR          at 0 range 0 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      DELHEAD       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  SpW Router Table (Logical addresses 32 to 255, index 0 for logical
   --  address 32)
   type SPW_ROUTER_TABLE_Registers is array (0 .. 223)
     of SPW_ROUTER_TABLE_Register;

   --  SpW Link 1 Pending Read Masked Interrupt
   type SPW_LINK1_PI_RM_Register is record
      --  Read-only. DisErr
      DISERR         : Boolean;
      --  Read-only. ParErr
      PARERR         : Boolean;
      --  Read-only. ESCErr
      ESCERR         : Boolean;
      --  Read-only. CrErr
      CRERR          : Boolean;
      --  Read-only. LinkAbort
      LINKABORT      : Boolean;
      --  Read-only. EEP transmitted
      EEPTRANS       : Boolean;
      --  Read-only. EEP received
      EEPREC         : Boolean;
      --  Read-only. Discard
      DISCARD        : Boolean;
      --  Read-only. Escape Event 2
      ESCEVENT2      : Boolean;
      --  Read-only. Escape Event 1
      ESCEVENT1      : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_PI_RM_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 1 Pending Read and Clear Masked Interrupt
   type SPW_LINK1_PI_RCM_Register is record
      --  Read-only. DisErr
      DISERR         : Boolean;
      --  Read-only. ParErr
      PARERR         : Boolean;
      --  Read-only. ESCErr
      ESCERR         : Boolean;
      --  Read-only. CrErr
      CRERR          : Boolean;
      --  Read-only. LinkAbort
      LINKABORT      : Boolean;
      --  Read-only. EEP transmitted
      EEPTRANS       : Boolean;
      --  Read-only. EEP received
      EEPREC         : Boolean;
      --  Read-only. Discard
      DISCARD        : Boolean;
      --  Read-only. Escape Event 2
      ESCEVENT2      : Boolean;
      --  Read-only. Escape Event 1
      ESCEVENT1      : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_PI_RCM_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 1 Pending Read Interrupt
   type SPW_LINK1_PI_R_Register is record
      --  Read-only. DisErr
      DISERR         : Boolean;
      --  Read-only. ParErr
      PARERR         : Boolean;
      --  Read-only. ESCErr
      ESCERR         : Boolean;
      --  Read-only. CrErr
      CRERR          : Boolean;
      --  Read-only. LinkAbort
      LINKABORT      : Boolean;
      --  Read-only. EEP transmitted
      EEPTRANS       : Boolean;
      --  Read-only. EEP received
      EEPREC         : Boolean;
      --  Read-only. Discard
      DISCARD        : Boolean;
      --  Read-only. Escape Event 2
      ESCEVENT2      : Boolean;
      --  Read-only. Escape Event 1
      ESCEVENT1      : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_PI_R_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 1 Pending Read, Clear and Enabed Interrupt
   type SPW_LINK1_PI_RCS_Register is record
      --  DisErr
      DISERR         : Boolean := False;
      --  ParErr
      PARERR         : Boolean := False;
      --  ESCErr
      ESCERR         : Boolean := False;
      --  CrErr
      CRERR          : Boolean := False;
      --  LinkAbort
      LINKABORT      : Boolean := False;
      --  EEP transmitted
      EEPTRANS       : Boolean := False;
      --  EEP received
      EEPREC         : Boolean := False;
      --  Discard
      DISCARD        : Boolean := False;
      --  Escape Event 2
      ESCEVENT2      : Boolean := False;
      --  Escape Event 1
      ESCEVENT1      : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_PI_RCS_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 1 Interrupt Mask
   type SPW_LINK1_IM_Register is record
      --  DisErr
      DISERR         : Boolean := False;
      --  ParErr
      PARERR         : Boolean := False;
      --  ESCErr
      ESCERR         : Boolean := False;
      --  CrErr
      CRERR          : Boolean := False;
      --  LinkAbort
      LINKABORT      : Boolean := False;
      --  EEP transmitted
      EEPTRANS       : Boolean := False;
      --  EEP received
      EEPREC         : Boolean := False;
      --  Discard
      DISCARD        : Boolean := False;
      --  Escape Event 2
      ESCEVENT2      : Boolean := False;
      --  Escape Event 1
      ESCEVENT1      : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_IM_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 1 Clear Pending Interrupt
   type SPW_LINK1_PI_C_Register is record
      --  Write-only. DisErr
      DISERR         : Boolean := False;
      --  Write-only. ParErr
      PARERR         : Boolean := False;
      --  Write-only. ESCErr
      ESCERR         : Boolean := False;
      --  Write-only. CrErr
      CRERR          : Boolean := False;
      --  Write-only. LinkAbort
      LINKABORT      : Boolean := False;
      --  Write-only. EEP transmitted
      EEPTRANS       : Boolean := False;
      --  Write-only. EEP received
      EEPREC         : Boolean := False;
      --  Write-only. Discard
      DISCARD        : Boolean := False;
      --  Write-only. Escape Event 2
      ESCEVENT2      : Boolean := False;
      --  Write-only. Escape Event 1
      ESCEVENT1      : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_PI_C_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 1 Interrupt Set Mask
   type SPW_LINK1_IM_S_Register is record
      --  Write-only. DisErr
      DISERR         : Boolean := False;
      --  Write-only. ParErr
      PARERR         : Boolean := False;
      --  Write-only. ESCErr
      ESCERR         : Boolean := False;
      --  Write-only. CrErr
      CRERR          : Boolean := False;
      --  Write-only. LinkAbort
      LINKABORT      : Boolean := False;
      --  Write-only. EEP transmitted
      EEPTRANS       : Boolean := False;
      --  Write-only. EEP received
      EEPREC         : Boolean := False;
      --  Write-only. Discard
      DISCARD        : Boolean := False;
      --  Write-only. Escape Event 2
      ESCEVENT2      : Boolean := False;
      --  Write-only. Escape Event 1
      ESCEVENT1      : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_IM_S_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 1 Interrupt Clear Mask
   type SPW_LINK1_IM_C_Register is record
      --  Write-only. DisErr
      DISERR         : Boolean := False;
      --  Write-only. ParErr
      PARERR         : Boolean := False;
      --  Write-only. ESCErr
      ESCERR         : Boolean := False;
      --  Write-only. CrErr
      CRERR          : Boolean := False;
      --  Write-only. LinkAbort
      LINKABORT      : Boolean := False;
      --  Write-only. EEP transmitted
      EEPTRANS       : Boolean := False;
      --  Write-only. EEP received
      EEPREC         : Boolean := False;
      --  Write-only. Discard
      DISCARD        : Boolean := False;
      --  Write-only. Escape Event 2
      ESCEVENT2      : Boolean := False;
      --  Write-only. Escape Event 1
      ESCEVENT1      : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_IM_C_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Command
   type LINK1_CFG_COMMANDSelect is
     (--  The link proceeds directly to the ErrorReset state when reaching the Run
--  state.
      LINK_DISABLE,
      --  State is not actively changed.
      NO_COMMAND,
      --  The Codec will wait in state Ready until the first NULL character is
--  received.
      AUTO_START,
      --  SpaceWire link can proceed to Started state.
      LINK_START)
     with Size => 2;
   for LINK1_CFG_COMMANDSelect use
     (LINK_DISABLE => 0,
      NO_COMMAND => 1,
      AUTO_START => 2,
      LINK_START => 3);

   --  SpW Link 1 Config
   type SPW_LINK1_CFG_Register is record
      --  Command
      COMMAND       : LINK1_CFG_COMMANDSelect := SAM_SVD.SPW.LINK_DISABLE;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_CFG_Register use record
      COMMAND       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SPW_LINK1_CLKDIV_TXOPERDIV_Field is HAL.UInt5;
   subtype SPW_LINK1_CLKDIV_TXINITDIV_Field is HAL.UInt5;

   --  SpW Link 1 Clock Division
   type SPW_LINK1_CLKDIV_Register is record
      --  TxOperDiv
      TXOPERDIV      : SPW_LINK1_CLKDIV_TXOPERDIV_Field := 16#0#;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  TxInitDiv
      TXINITDIV      : SPW_LINK1_CLKDIV_TXINITDIV_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_CLKDIV_Register use record
      TXOPERDIV      at 0 range 0 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      TXINITDIV      at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  LinkState
   type LINK1_STATUS_LINKSTATESelect is
     (--  CODEC link state machine in ErrorReset state
      ERRORRESET,
      --  CODEC link state machine in ErrorWait state
      ERRORWAIT,
      --  CODEC link state machine in Ready state
      READY,
      --  CODEC link state machine in Started state
      STARTED,
      --  CODEC link state machine in Connecting state
      CONNECTING,
      --  CODEC link state machine in Run state
      RUN)
     with Size => 3;
   for LINK1_STATUS_LINKSTATESelect use
     (ERRORRESET => 0,
      ERRORWAIT => 1,
      READY => 2,
      STARTED => 3,
      CONNECTING => 4,
      RUN => 5);

   subtype SPW_LINK1_STATUS_TXDEFDIV_Field is HAL.UInt5;

   --  SPW_LINK1_STATUS_SEEN array
   type SPW_LINK1_STATUS_SEEN_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for SPW_LINK1_STATUS_SEEN
   type SPW_LINK1_STATUS_SEEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEEN as a value
            Val : HAL.UInt6;
         when True =>
            --  SEEN as an array
            Arr : SPW_LINK1_STATUS_SEEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for SPW_LINK1_STATUS_SEEN_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  SpW Link 1 Status
   type SPW_LINK1_STATUS_Register is record
      --  Read-only. LinkState
      LINKSTATE      : LINK1_STATUS_LINKSTATESelect;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. TxDefDiv
      TXDEFDIV       : SPW_LINK1_STATUS_TXDEFDIV_Field;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. TxEmpty
      TXEMPTY        : Boolean;
      --  Read-only. GotNull
      GOTNULL        : Boolean;
      --  Read-only. GotFCT
      GOTFCT         : Boolean;
      --  Read-only. GotNChar
      GOTNCHAR       : Boolean;
      --  Read-only. SEEN0
      SEEN           : SPW_LINK1_STATUS_SEEN_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_STATUS_Register use record
      LINKSTATE      at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TXDEFDIV       at 0 range 4 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      TXEMPTY        at 0 range 16 .. 16;
      GOTNULL        at 0 range 17 .. 17;
      GOTFCT         at 0 range 18 .. 18;
      GOTNCHAR       at 0 range 19 .. 19;
      SEEN           at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype LINK1_ESCCHAREVENT_VALUE_Field is HAL.UInt8;
   subtype LINK1_ESCCHAREVENT_MASK_Field is HAL.UInt8;

   --  SpW Link 1 Escape Character Event 0
   type LINK1_ESCCHAREVENT_Register is record
      --  Value
      VALUE          : LINK1_ESCCHAREVENT_VALUE_Field := 16#0#;
      --  Mask
      MASK           : LINK1_ESCCHAREVENT_MASK_Field := 16#0#;
      --  Active
      ACTIVE         : Boolean := False;
      --  HwEvent
      HWEVENT        : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LINK1_ESCCHAREVENT_Register use record
      VALUE          at 0 range 0 .. 7;
      MASK           at 0 range 8 .. 15;
      ACTIVE         at 0 range 16 .. 16;
      HWEVENT        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  SPW_LINK1_ESCCHARSTS_CHAR array element
   subtype SPW_LINK1_ESCCHARSTS_CHAR_Element is HAL.UInt8;

   --  SPW_LINK1_ESCCHARSTS_CHAR array
   type SPW_LINK1_ESCCHARSTS_CHAR_Field_Array is array (1 .. 2)
     of SPW_LINK1_ESCCHARSTS_CHAR_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for SPW_LINK1_ESCCHARSTS_CHAR
   type SPW_LINK1_ESCCHARSTS_CHAR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHAR as a value
            Val : HAL.UInt16;
         when True =>
            --  CHAR as an array
            Arr : SPW_LINK1_ESCCHARSTS_CHAR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SPW_LINK1_ESCCHARSTS_CHAR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  SpW Link 1 Escape Character Status
   type SPW_LINK1_ESCCHARSTS_Register is record
      --  Read-only. Esc Char 1
      CHAR           : SPW_LINK1_ESCCHARSTS_CHAR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_ESCCHARSTS_Register use record
      CHAR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPW_LINK1_TRANSESC_CHAR_Field is HAL.UInt8;

   --  SpW Link 1 Transmit Escape Character
   type SPW_LINK1_TRANSESC_Register is record
      --  Character
      CHAR          : SPW_LINK1_TRANSESC_CHAR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_TRANSESC_Register use record
      CHAR          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  SPW_LINK1_DISTINTPI_RM_DI array
   type SPW_LINK1_DISTINTPI_RM_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Pending Read Masked Interrupt
   type SPW_LINK1_DISTINTPI_RM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK1_DISTINTPI_RM_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTINTPI_RM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTINTPI_RCM_DI array
   type SPW_LINK1_DISTINTPI_RCM_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Pending Read and Clear Masked Interrupt
   type SPW_LINK1_DISTINTPI_RCM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK1_DISTINTPI_RCM_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTINTPI_RCM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTINTPI_R_DI array
   type SPW_LINK1_DISTINTPI_R_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Pending Read Interrupt
   type SPW_LINK1_DISTINTPI_R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK1_DISTINTPI_R_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTINTPI_R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTINTPI_RCS_DI array
   type SPW_LINK1_DISTINTPI_RCS_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Pending Read and Clear Interrupt
   type SPW_LINK1_DISTINTPI_RCS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK1_DISTINTPI_RCS_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTINTPI_RCS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTINTIM_DI array
   type SPW_LINK1_DISTINTIM_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Mask
   type SPW_LINK1_DISTINTIM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK1_DISTINTIM_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTINTIM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTINTPI_C_DI array
   type SPW_LINK1_DISTINTPI_C_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Clear Pending Interrupt
   type SPW_LINK1_DISTINTPI_C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK1_DISTINTPI_C_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTINTPI_C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTINTIM_S_DI array
   type SPW_LINK1_DISTINTIM_S_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Set Mask
   type SPW_LINK1_DISTINTIM_S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK1_DISTINTIM_S_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTINTIM_S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTINTIM_C_DI array
   type SPW_LINK1_DISTINTIM_C_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Clear Mask
   type SPW_LINK1_DISTINTIM_C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK1_DISTINTIM_C_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTINTIM_C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTACKPI_RM_DA array
   type SPW_LINK1_DISTACKPI_RM_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Acknowledge Pending Read Masked
   --  Interrupt
   type SPW_LINK1_DISTACKPI_RM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK1_DISTACKPI_RM_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTACKPI_RM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTACKPI_RCM_DA array
   type SPW_LINK1_DISTACKPI_RCM_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Acknowledge Pending Read and Clear
   --  Masked Interrupt
   type SPW_LINK1_DISTACKPI_RCM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK1_DISTACKPI_RCM_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTACKPI_RCM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTACKPI_R_DA array
   type SPW_LINK1_DISTACKPI_R_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Acknowledge Pending Read Interrupt
   type SPW_LINK1_DISTACKPI_R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK1_DISTACKPI_R_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTACKPI_R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTACKPI_RCS_DA array
   type SPW_LINK1_DISTACKPI_RCS_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Acknowledge Pending Read and Clear
   --  Interrupt
   type SPW_LINK1_DISTACKPI_RCS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK1_DISTACKPI_RCS_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTACKPI_RCS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTACKIM_DA array
   type SPW_LINK1_DISTACKIM_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Acknowledge Mask
   type SPW_LINK1_DISTACKIM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK1_DISTACKIM_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTACKIM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTACKPI_C_DA array
   type SPW_LINK1_DISTACKPI_C_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Acknowledge Clear Pending Interrupt
   type SPW_LINK1_DISTACKPI_C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK1_DISTACKPI_C_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTACKPI_C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTACKIM_S_DA array
   type SPW_LINK1_DISTACKIM_S_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Acknowledge Set Mask
   type SPW_LINK1_DISTACKIM_S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK1_DISTACKIM_S_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTACKIM_S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK1_DISTACKIM_C_DA array
   type SPW_LINK1_DISTACKIM_C_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 1 Distributed Interrupt Acknowledge Clear Mask
   type SPW_LINK1_DISTACKIM_C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK1_DISTACKIM_C_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK1_DISTACKIM_C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SpW Link 2 Pending Read Masked Interrupt
   type SPW_LINK2_PI_RM_Register is record
      --  Read-only. DisErr
      DISERR         : Boolean;
      --  Read-only. ParErr
      PARERR         : Boolean;
      --  Read-only. ESCErr
      ESCERR         : Boolean;
      --  Read-only. CrErr
      CRERR          : Boolean;
      --  Read-only. LinkAbort
      LINKABORT      : Boolean;
      --  Read-only. EEP transmitted
      EEPTRANS       : Boolean;
      --  Read-only. EEP received
      EEPREC         : Boolean;
      --  Read-only. Discard
      DISCARD        : Boolean;
      --  Read-only. Escape Event 2
      ESCEVENT2      : Boolean;
      --  Read-only. Escape Event 1
      ESCEVENT1      : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_PI_RM_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 2 Pending Read and Clear Masked Interrupt
   type SPW_LINK2_PI_RCM_Register is record
      --  Read-only. DisErr
      DISERR         : Boolean;
      --  Read-only. ParErr
      PARERR         : Boolean;
      --  Read-only. ESCErr
      ESCERR         : Boolean;
      --  Read-only. CrErr
      CRERR          : Boolean;
      --  Read-only. LinkAbort
      LINKABORT      : Boolean;
      --  Read-only. EEP transmitted
      EEPTRANS       : Boolean;
      --  Read-only. EEP received
      EEPREC         : Boolean;
      --  Read-only. Discard
      DISCARD        : Boolean;
      --  Read-only. Escape Event 2
      ESCEVENT2      : Boolean;
      --  Read-only. Escape Event 1
      ESCEVENT1      : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_PI_RCM_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 2 Pending Read Interrupt
   type SPW_LINK2_PI_R_Register is record
      --  Read-only. DisErr
      DISERR         : Boolean;
      --  Read-only. ParErr
      PARERR         : Boolean;
      --  Read-only. ESCErr
      ESCERR         : Boolean;
      --  Read-only. CrErr
      CRERR          : Boolean;
      --  Read-only. LinkAbort
      LINKABORT      : Boolean;
      --  Read-only. EEP transmitted
      EEPTRANS       : Boolean;
      --  Read-only. EEP received
      EEPREC         : Boolean;
      --  Read-only. Discard
      DISCARD        : Boolean;
      --  Read-only. Escape Event 2
      ESCEVENT2      : Boolean;
      --  Read-only. Escape Event 1
      ESCEVENT1      : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_PI_R_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 2 Pending Read, Clear and Enabled Interrupt
   type SPW_LINK2_PI_RCS_Register is record
      --  DisErr
      DISERR         : Boolean := False;
      --  ParErr
      PARERR         : Boolean := False;
      --  ESCErr
      ESCERR         : Boolean := False;
      --  CrErr
      CRERR          : Boolean := False;
      --  LinkAbort
      LINKABORT      : Boolean := False;
      --  EEP transmitted
      EEPTRANS       : Boolean := False;
      --  EEP received
      EEPREC         : Boolean := False;
      --  Discard
      DISCARD        : Boolean := False;
      --  Escape Event 2
      ESCEVENT2      : Boolean := False;
      --  Escape Event 1
      ESCEVENT1      : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_PI_RCS_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 2 Interrupt Mask
   type SPW_LINK2_IM_Register is record
      --  DisErr
      DISERR         : Boolean := False;
      --  ParErr
      PARERR         : Boolean := False;
      --  ESCErr
      ESCERR         : Boolean := False;
      --  CrErr
      CRERR          : Boolean := False;
      --  LinkAbort
      LINKABORT      : Boolean := False;
      --  EEP transmitted
      EEPTRANS       : Boolean := False;
      --  EEP received
      EEPREC         : Boolean := False;
      --  Discard
      DISCARD        : Boolean := False;
      --  Escape Event 2
      ESCEVENT2      : Boolean := False;
      --  Escape Event 1
      ESCEVENT1      : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_IM_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 2 Clear Pending Interrupt
   type SPW_LINK2_PI_C_Register is record
      --  Write-only. DisErr
      DISERR         : Boolean := False;
      --  Write-only. ParErr
      PARERR         : Boolean := False;
      --  Write-only. ESCErr
      ESCERR         : Boolean := False;
      --  Write-only. CrErr
      CRERR          : Boolean := False;
      --  Write-only. LinkAbort
      LINKABORT      : Boolean := False;
      --  Write-only. EEP transmitted
      EEPTRANS       : Boolean := False;
      --  Write-only. EEP received
      EEPREC         : Boolean := False;
      --  Write-only. Discard
      DISCARD        : Boolean := False;
      --  Write-only. Escape Event 2
      ESCEVENT2      : Boolean := False;
      --  Write-only. Escape Event 1
      ESCEVENT1      : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_PI_C_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 2 Interrupt Set Mask
   type SPW_LINK2_IM_S_Register is record
      --  Write-only. DisErr
      DISERR         : Boolean := False;
      --  Write-only. ParErr
      PARERR         : Boolean := False;
      --  Write-only. ESCErr
      ESCERR         : Boolean := False;
      --  Write-only. CrErr
      CRERR          : Boolean := False;
      --  Write-only. LinkAbort
      LINKABORT      : Boolean := False;
      --  Write-only. EEP transmitted
      EEPTRANS       : Boolean := False;
      --  Write-only. EEP received
      EEPREC         : Boolean := False;
      --  Write-only. Discard
      DISCARD        : Boolean := False;
      --  Write-only. Escape Event 2
      ESCEVENT2      : Boolean := False;
      --  Write-only. Escape Event 1
      ESCEVENT1      : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_IM_S_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SpW Link 2 Interrupt Clear Mask
   type SPW_LINK2_IM_C_Register is record
      --  Write-only. DisErr
      DISERR         : Boolean := False;
      --  Write-only. ParErr
      PARERR         : Boolean := False;
      --  Write-only. ESCErr
      ESCERR         : Boolean := False;
      --  Write-only. CrErr
      CRERR          : Boolean := False;
      --  Write-only. LinkAbort
      LINKABORT      : Boolean := False;
      --  Write-only. EEP transmitted
      EEPTRANS       : Boolean := False;
      --  Write-only. EEP received
      EEPREC         : Boolean := False;
      --  Write-only. Discard
      DISCARD        : Boolean := False;
      --  Write-only. Escape Event 2
      ESCEVENT2      : Boolean := False;
      --  Write-only. Escape Event 1
      ESCEVENT1      : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_IM_C_Register use record
      DISERR         at 0 range 0 .. 0;
      PARERR         at 0 range 1 .. 1;
      ESCERR         at 0 range 2 .. 2;
      CRERR          at 0 range 3 .. 3;
      LINKABORT      at 0 range 4 .. 4;
      EEPTRANS       at 0 range 5 .. 5;
      EEPREC         at 0 range 6 .. 6;
      DISCARD        at 0 range 7 .. 7;
      ESCEVENT2      at 0 range 8 .. 8;
      ESCEVENT1      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Command
   type LINK2_CFG_COMMANDSelect is
     (--  The link proceeds directly to the ErrorReset state when reaching the Run
--  state.
      LINK_DISABLE,
      --  State is not actively changed.
      NO_COMMAND,
      --  The Codec will wait in state Ready until the first NULL character is
--  received.
      AUTO_START,
      --  SpaceWire link can proceed to Started state.
      LINK_START)
     with Size => 2;
   for LINK2_CFG_COMMANDSelect use
     (LINK_DISABLE => 0,
      NO_COMMAND => 1,
      AUTO_START => 2,
      LINK_START => 3);

   --  SpW Link 2 Config
   type SPW_LINK2_CFG_Register is record
      --  Command
      COMMAND       : LINK2_CFG_COMMANDSelect := SAM_SVD.SPW.LINK_DISABLE;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_CFG_Register use record
      COMMAND       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SPW_LINK2_CLKDIV_TXOPERDIV_Field is HAL.UInt5;
   subtype SPW_LINK2_CLKDIV_TXINITDIV_Field is HAL.UInt5;

   --  SpW Link 2 Clock Division
   type SPW_LINK2_CLKDIV_Register is record
      --  TxOperDiv
      TXOPERDIV      : SPW_LINK2_CLKDIV_TXOPERDIV_Field := 16#0#;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  TxInitDiv
      TXINITDIV      : SPW_LINK2_CLKDIV_TXINITDIV_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_CLKDIV_Register use record
      TXOPERDIV      at 0 range 0 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      TXINITDIV      at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  LinkState
   type LINK2_STATUS_LINKSTATESelect is
     (--  CODEC link state machine in ErrorReset state
      ERRORRESET,
      --  CODEC link state machine in ErrorWait state
      ERRORWAIT,
      --  CODEC link state machine in Ready state
      READY,
      --  CODEC link state machine in Started state
      STARTED,
      --  CODEC link state machine in Connecting state
      CONNECTING,
      --  CODEC link state machine in Run state
      RUN)
     with Size => 3;
   for LINK2_STATUS_LINKSTATESelect use
     (ERRORRESET => 0,
      ERRORWAIT => 1,
      READY => 2,
      STARTED => 3,
      CONNECTING => 4,
      RUN => 5);

   subtype SPW_LINK2_STATUS_TXDEFDIV_Field is HAL.UInt5;

   --  SPW_LINK2_STATUS_SEEN array
   type SPW_LINK2_STATUS_SEEN_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for SPW_LINK2_STATUS_SEEN
   type SPW_LINK2_STATUS_SEEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEEN as a value
            Val : HAL.UInt6;
         when True =>
            --  SEEN as an array
            Arr : SPW_LINK2_STATUS_SEEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for SPW_LINK2_STATUS_SEEN_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  SpW Link 2 Status
   type SPW_LINK2_STATUS_Register is record
      --  Read-only. LinkState
      LINKSTATE      : LINK2_STATUS_LINKSTATESelect;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. TxDefDiv
      TXDEFDIV       : SPW_LINK2_STATUS_TXDEFDIV_Field;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. TxEmpty
      TXEMPTY        : Boolean;
      --  Read-only. GotNull
      GOTNULL        : Boolean;
      --  Read-only. GotFCT
      GOTFCT         : Boolean;
      --  Read-only. GotNChar
      GOTNCHAR       : Boolean;
      --  Read-only. SEEN0
      SEEN           : SPW_LINK2_STATUS_SEEN_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_STATUS_Register use record
      LINKSTATE      at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TXDEFDIV       at 0 range 4 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      TXEMPTY        at 0 range 16 .. 16;
      GOTNULL        at 0 range 17 .. 17;
      GOTFCT         at 0 range 18 .. 18;
      GOTNCHAR       at 0 range 19 .. 19;
      SEEN           at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype LINK2_ESCCHAREVENT_VALUE_Field is HAL.UInt8;
   subtype LINK2_ESCCHAREVENT_MASK_Field is HAL.UInt8;

   --  SpW Link 2 Escape Character Event 0
   type LINK2_ESCCHAREVENT_Register is record
      --  Value
      VALUE          : LINK2_ESCCHAREVENT_VALUE_Field := 16#0#;
      --  Mask
      MASK           : LINK2_ESCCHAREVENT_MASK_Field := 16#0#;
      --  Active
      ACTIVE         : Boolean := False;
      --  HwEvent
      HWEVENT        : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LINK2_ESCCHAREVENT_Register use record
      VALUE          at 0 range 0 .. 7;
      MASK           at 0 range 8 .. 15;
      ACTIVE         at 0 range 16 .. 16;
      HWEVENT        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  SPW_LINK2_ESCCHARSTS_CHAR array element
   subtype SPW_LINK2_ESCCHARSTS_CHAR_Element is HAL.UInt8;

   --  SPW_LINK2_ESCCHARSTS_CHAR array
   type SPW_LINK2_ESCCHARSTS_CHAR_Field_Array is array (1 .. 2)
     of SPW_LINK2_ESCCHARSTS_CHAR_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for SPW_LINK2_ESCCHARSTS_CHAR
   type SPW_LINK2_ESCCHARSTS_CHAR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHAR as a value
            Val : HAL.UInt16;
         when True =>
            --  CHAR as an array
            Arr : SPW_LINK2_ESCCHARSTS_CHAR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SPW_LINK2_ESCCHARSTS_CHAR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  SpW Link 2 Escape Character Status
   type SPW_LINK2_ESCCHARSTS_Register is record
      --  Read-only. Esc Char 1
      CHAR           : SPW_LINK2_ESCCHARSTS_CHAR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_ESCCHARSTS_Register use record
      CHAR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPW_LINK2_TRANSESC_CHAR_Field is HAL.UInt8;

   --  SpW Link 2 Transmit Escape Character
   type SPW_LINK2_TRANSESC_Register is record
      --  Character
      CHAR          : SPW_LINK2_TRANSESC_CHAR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_TRANSESC_Register use record
      CHAR          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  SPW_LINK2_DISTINTPI_RM_DI array
   type SPW_LINK2_DISTINTPI_RM_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Pending Read Masked Interrupt
   type SPW_LINK2_DISTINTPI_RM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK2_DISTINTPI_RM_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTINTPI_RM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTINTPI_RCM_DI array
   type SPW_LINK2_DISTINTPI_RCM_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Pending Read and Clear Masked Interrupt
   type SPW_LINK2_DISTINTPI_RCM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK2_DISTINTPI_RCM_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTINTPI_RCM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTINTPI_R_DI array
   type SPW_LINK2_DISTINTPI_R_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Pending Read Interrupt
   type SPW_LINK2_DISTINTPI_R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK2_DISTINTPI_R_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTINTPI_R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTINTPI_RCS_DI array
   type SPW_LINK2_DISTINTPI_RCS_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Pending Read and Clear Interrupt
   type SPW_LINK2_DISTINTPI_RCS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK2_DISTINTPI_RCS_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTINTPI_RCS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTINTIM_DI array
   type SPW_LINK2_DISTINTIM_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Mask
   type SPW_LINK2_DISTINTIM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK2_DISTINTIM_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTINTIM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTINTPI_C_DI array
   type SPW_LINK2_DISTINTPI_C_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Clear Pending Interrupt
   type SPW_LINK2_DISTINTPI_C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK2_DISTINTPI_C_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTINTPI_C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTINTIM_S_DI array
   type SPW_LINK2_DISTINTIM_S_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Set Mask
   type SPW_LINK2_DISTINTIM_S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK2_DISTINTIM_S_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTINTIM_S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTINTIM_C_DI array
   type SPW_LINK2_DISTINTIM_C_DI_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Clear Mask
   type SPW_LINK2_DISTINTIM_C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt32;
         when True =>
            --  DI as an array
            Arr : SPW_LINK2_DISTINTIM_C_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTINTIM_C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTACKPI_RM_DA array
   type SPW_LINK2_DISTACKPI_RM_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Acknowledge Pending Read Masked
   --  Interrupt
   type SPW_LINK2_DISTACKPI_RM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK2_DISTACKPI_RM_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTACKPI_RM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTACKPI_RCM_DA array
   type SPW_LINK2_DISTACKPI_RCM_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Acknowledge Pending Read and Clear
   --  Masked Interrupt
   type SPW_LINK2_DISTACKPI_RCM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK2_DISTACKPI_RCM_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTACKPI_RCM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTACKPI_R_DA array
   type SPW_LINK2_DISTACKPI_R_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Acknowledge Pending Read Interrupt
   type SPW_LINK2_DISTACKPI_R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK2_DISTACKPI_R_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTACKPI_R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTACKPI_RCS_DA array
   type SPW_LINK2_DISTACKPI_RCS_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Acknowledge Pending Read and Clear
   --  Interrupt
   type SPW_LINK2_DISTACKPI_RCS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK2_DISTACKPI_RCS_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTACKPI_RCS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTACKIM_DA array
   type SPW_LINK2_DISTACKIM_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Acknowledge Mask
   type SPW_LINK2_DISTACKIM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK2_DISTACKIM_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTACKIM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTACKPI_C_DA array
   type SPW_LINK2_DISTACKPI_C_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Acknowledge Clear Pending Interrupt
   type SPW_LINK2_DISTACKPI_C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK2_DISTACKPI_C_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTACKPI_C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTACKIM_S_DA array
   type SPW_LINK2_DISTACKIM_S_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Acknowledge Set Mask
   type SPW_LINK2_DISTACKIM_S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK2_DISTACKIM_S_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTACKIM_S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SPW_LINK2_DISTACKIM_C_DA array
   type SPW_LINK2_DISTACKIM_C_DA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  SpW Link 2 Distributed Interrupt Acknowledge Clear Mask
   type SPW_LINK2_DISTACKIM_C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DA as a value
            Val : HAL.UInt32;
         when True =>
            --  DA as an array
            Arr : SPW_LINK2_DISTACKIM_C_DA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_LINK2_DISTACKIM_C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PktRx Pending Read Masked Interrupt
   type SPW_PKTRX1_PI_RM_Register is record
      --  Read-only. Deactivated
      DEACT         : Boolean;
      --  Read-only. EOP seen
      EOP           : Boolean;
      --  Read-only. EEP seen
      EEP           : Boolean;
      --  Read-only. Packet Discard
      DISCARD       : Boolean;
      --  Read-only. Activated
      ACT           : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_PI_RM_Register use record
      DEACT         at 0 range 0 .. 0;
      EOP           at 0 range 1 .. 1;
      EEP           at 0 range 2 .. 2;
      DISCARD       at 0 range 3 .. 3;
      ACT           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  PktRx Pending Read and Clear Masked Interrupt
   type SPW_PKTRX1_PI_RCM_Register is record
      --  Read-only. Deactivated
      DEACT         : Boolean;
      --  Read-only. EOP seen
      EOP           : Boolean;
      --  Read-only. EEP seen
      EEP           : Boolean;
      --  Read-only. Packet Discard
      DISCARD       : Boolean;
      --  Read-only. Activated
      ACT           : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_PI_RCM_Register use record
      DEACT         at 0 range 0 .. 0;
      EOP           at 0 range 1 .. 1;
      EEP           at 0 range 2 .. 2;
      DISCARD       at 0 range 3 .. 3;
      ACT           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  PktRx Pending Read Interrupt
   type SPW_PKTRX1_PI_R_Register is record
      --  Read-only. Deactivated
      DEACT         : Boolean;
      --  Read-only. EOP seen
      EOP           : Boolean;
      --  Read-only. EEP seen
      EEP           : Boolean;
      --  Read-only. Packet Discard
      DISCARD       : Boolean;
      --  Read-only. Activated
      ACT           : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_PI_R_Register use record
      DEACT         at 0 range 0 .. 0;
      EOP           at 0 range 1 .. 1;
      EEP           at 0 range 2 .. 2;
      DISCARD       at 0 range 3 .. 3;
      ACT           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  PktRx Pending Read, Clear and Enabled Interrupt
   type SPW_PKTRX1_PI_RCS_Register is record
      --  Deactivated
      DEACT         : Boolean := False;
      --  EOP seen
      EOP           : Boolean := False;
      --  EEP seen
      EEP           : Boolean := False;
      --  Packet Discard
      DISCARD       : Boolean := False;
      --  Activated
      ACT           : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_PI_RCS_Register use record
      DEACT         at 0 range 0 .. 0;
      EOP           at 0 range 1 .. 1;
      EEP           at 0 range 2 .. 2;
      DISCARD       at 0 range 3 .. 3;
      ACT           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  PktRx Interrupt Mask
   type SPW_PKTRX1_IM_Register is record
      --  Deactivated
      DEACT         : Boolean := False;
      --  EOP seen
      EOP           : Boolean := False;
      --  EEP seen
      EEP           : Boolean := False;
      --  Packet Discard
      DISCARD       : Boolean := False;
      --  Activated
      ACT           : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_IM_Register use record
      DEACT         at 0 range 0 .. 0;
      EOP           at 0 range 1 .. 1;
      EEP           at 0 range 2 .. 2;
      DISCARD       at 0 range 3 .. 3;
      ACT           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  PktRx Clear Pending Interrupt
   type SPW_PKTRX1_PI_C_Register is record
      --  Write-only. Deactivated
      DEACT         : Boolean := False;
      --  Write-only. EOP seen
      EOP           : Boolean := False;
      --  Write-only. EEP seen
      EEP           : Boolean := False;
      --  Write-only. Packet Discard
      DISCARD       : Boolean := False;
      --  Write-only. Activated
      ACT           : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_PI_C_Register use record
      DEACT         at 0 range 0 .. 0;
      EOP           at 0 range 1 .. 1;
      EEP           at 0 range 2 .. 2;
      DISCARD       at 0 range 3 .. 3;
      ACT           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  PktRx Interrupt Set Mask
   type SPW_PKTRX1_IM_S_Register is record
      --  Write-only. Deactivated
      DEACT         : Boolean := False;
      --  Write-only. EOP seen
      EOP           : Boolean := False;
      --  Write-only. EEP seen
      EEP           : Boolean := False;
      --  Write-only. Packet Discard
      DISCARD       : Boolean := False;
      --  Write-only. Activated
      ACT           : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_IM_S_Register use record
      DEACT         at 0 range 0 .. 0;
      EOP           at 0 range 1 .. 1;
      EEP           at 0 range 2 .. 2;
      DISCARD       at 0 range 3 .. 3;
      ACT           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  PktRx Interrupt Clear Mask
   type SPW_PKTRX1_IM_C_Register is record
      --  Write-only. Deactivated
      DEACT         : Boolean := False;
      --  Write-only. EOP seen
      EOP           : Boolean := False;
      --  Write-only. EEP seen
      EEP           : Boolean := False;
      --  Write-only. Packet Discard
      DISCARD       : Boolean := False;
      --  Write-only. Activated
      ACT           : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_IM_C_Register use record
      DEACT         at 0 range 0 .. 0;
      EOP           at 0 range 1 .. 1;
      EEP           at 0 range 2 .. 2;
      DISCARD       at 0 range 3 .. 3;
      ACT           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  PktRx Config
   type SPW_PKTRX1_CFG_Register is record
      --  Discard
      DISCARD       : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_CFG_Register use record
      DISCARD       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SPW_PKTRX1_STATUS_COUNT_Field is HAL.UInt16;

   --  PktRx Status
   type SPW_PKTRX1_STATUS_Register is record
      --  Read-only. Packet Count
      COUNT          : SPW_PKTRX1_STATUS_COUNT_Field;
      --  Read-only. Packet
      PACKET         : Boolean;
      --  Read-only. Locked
      LOCKED         : Boolean;
      --  Read-only. Armed
      ARM            : Boolean;
      --  Read-only. Active
      ACT            : Boolean;
      --  Read-only. Pending
      PENDING        : Boolean;
      --  Read-only. Deactivating
      DEACT          : Boolean;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_STATUS_Register use record
      COUNT          at 0 range 0 .. 15;
      PACKET         at 0 range 16 .. 16;
      LOCKED         at 0 range 17 .. 17;
      ARM            at 0 range 18 .. 18;
      ACT            at 0 range 19 .. 19;
      PENDING        at 0 range 20 .. 20;
      DEACT          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype SPW_PKTRX1_NXTBUFDATALEN_LEN_Field is HAL.UInt24;

   --  PktRx Next Buffer Data Length
   type SPW_PKTRX1_NXTBUFDATALEN_Register is record
      --  Length
      LEN            : SPW_PKTRX1_NXTBUFDATALEN_LEN_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_NXTBUFDATALEN_Register use record
      LEN            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SPW_PKTRX1_NXTBUFCFG_MAXCNT_Field is HAL.UInt16;
   subtype SPW_PKTRX1_NXTBUFCFG_VALUE_Field is HAL.UInt6;

   --  Start Mode
   type PKTRX1_NXTBUFCFG_STARTSelect is
     (--  Start if any bit in Start Value matches an incoming event
      STARTEVENT,
      --  Start immediately. Request a deactivation on next packet boundary.
      STARTNOW,
      --  Start if Start Value matches an incoming Time Code from Time Code Handler 1
      STARTTCH1,
      --  Start when current buffer is deactivated (e.g., by buffer becoming full)
      STARTLATER)
     with Size => 3;
   for PKTRX1_NXTBUFCFG_STARTSelect use
     (STARTEVENT => 0,
      STARTNOW => 1,
      STARTTCH1 => 2,
      STARTLATER => 4);

   --  PktRx Next Buffer Config
   type SPW_PKTRX1_NXTBUFCFG_Register is record
      --  Max Count
      MAXCNT         : SPW_PKTRX1_NXTBUFCFG_MAXCNT_Field := 16#0#;
      --  Start Value
      VALUE          : SPW_PKTRX1_NXTBUFCFG_VALUE_Field := 16#0#;
      --  Start Mode
      START          : PKTRX1_NXTBUFCFG_STARTSelect := SAM_SVD.SPW.STARTEVENT;
      --  unspecified
      Reserved_25_29 : HAL.UInt5 := 16#0#;
      --  Split Pkt
      SPLIT          : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_NXTBUFCFG_Register use record
      MAXCNT         at 0 range 0 .. 15;
      VALUE          at 0 range 16 .. 21;
      START          at 0 range 22 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      SPLIT          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype SPW_PKTRX1_CURBUFDATALEN_LEN_Field is HAL.UInt24;

   --  PktRx Current Buffer Data Length
   type SPW_PKTRX1_CURBUFDATALEN_Register is record
      --  Read-only. Length
      LEN            : SPW_PKTRX1_CURBUFDATALEN_LEN_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_CURBUFDATALEN_Register use record
      LEN            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SPW_PKTRX1_CURBUFCFG_MAXCNT_Field is HAL.UInt16;

   --  PktRx Current Buffer Config
   type SPW_PKTRX1_CURBUFCFG_Register is record
      --  Max Count
      MAXCNT         : SPW_PKTRX1_CURBUFCFG_MAXCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_29 : HAL.UInt14 := 16#0#;
      --  Split
      SPLIT          : Boolean := False;
      --  Abort
      ABORT_k        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_CURBUFCFG_Register use record
      MAXCNT         at 0 range 0 .. 15;
      Reserved_16_29 at 0 range 16 .. 29;
      SPLIT          at 0 range 30 .. 30;
      ABORT_k        at 0 range 31 .. 31;
   end record;

   subtype SPW_PKTRX1_PREVBUFDATALEN_LEN_Field is HAL.UInt24;

   --  PktRx Previous Buffer Data Length
   type SPW_PKTRX1_PREVBUFDATALEN_Register is record
      --  Read-only. Length
      LEN            : SPW_PKTRX1_PREVBUFDATALEN_LEN_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_PREVBUFDATALEN_Register use record
      LEN            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SPW_PKTRX1_PREVBUFSTS_CNT_Field is HAL.UInt16;

   --  PktRx Previous Buffer Status
   type SPW_PKTRX1_PREVBUFSTS_Register is record
      --  Read-only. Count
      CNT            : SPW_PKTRX1_PREVBUFSTS_CNT_Field;
      --  Read-only. EEP seen
      EEP            : Boolean;
      --  Read-only. Buffer Info Full
      FULLI          : Boolean;
      --  Read-only. Buffer Data Full
      FULLD          : Boolean;
      --  Read-only. DMA Error
      DMAERR         : Boolean;
      --  unspecified
      Reserved_20_30 : HAL.UInt11;
      --  Read-only. Locked
      LOCKED         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTRX1_PREVBUFSTS_Register use record
      CNT            at 0 range 0 .. 15;
      EEP            at 0 range 16 .. 16;
      FULLI          at 0 range 17 .. 17;
      FULLD          at 0 range 18 .. 18;
      DMAERR         at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      LOCKED         at 0 range 31 .. 31;
   end record;

   --  PktTx Pending Read Masked Interrupt
   type SPW_PKTTX1_PI_RM_Register is record
      --  Read-only. Deactivated
      DEACT         : Boolean;
      --  Read-only. Activated
      ACT           : Boolean;
      --  Read-only. EOP sent
      EOP           : Boolean;
      --  Read-only. EEP sent
      EEP           : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_PI_RM_Register use record
      DEACT         at 0 range 0 .. 0;
      ACT           at 0 range 1 .. 1;
      EOP           at 0 range 2 .. 2;
      EEP           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PktTx Pending Read and Clear Masked Interrupt
   type SPW_PKTTX1_PI_RCM_Register is record
      --  Read-only. Deactivated
      DEACT         : Boolean;
      --  Read-only. Activated
      ACT           : Boolean;
      --  Read-only. EOP sent
      EOP           : Boolean;
      --  Read-only. EEP sent
      EEP           : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_PI_RCM_Register use record
      DEACT         at 0 range 0 .. 0;
      ACT           at 0 range 1 .. 1;
      EOP           at 0 range 2 .. 2;
      EEP           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PktTx Pending Read Interrupt
   type SPW_PKTTX1_PI_R_Register is record
      --  Read-only. Deactivated
      DEACT         : Boolean;
      --  Read-only. Activated
      ACT           : Boolean;
      --  Read-only. EOP sent
      EOP           : Boolean;
      --  Read-only. EEP sent
      EEP           : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_PI_R_Register use record
      DEACT         at 0 range 0 .. 0;
      ACT           at 0 range 1 .. 1;
      EOP           at 0 range 2 .. 2;
      EEP           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PktTx Pending Read, Clear and Enabled Interrupt
   type SPW_PKTTX1_PI_RCS_Register is record
      --  Deactivated
      DEACT         : Boolean := False;
      --  Activated
      ACT           : Boolean := False;
      --  EOP sent
      EOP           : Boolean := False;
      --  EEP sent
      EEP           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_PI_RCS_Register use record
      DEACT         at 0 range 0 .. 0;
      ACT           at 0 range 1 .. 1;
      EOP           at 0 range 2 .. 2;
      EEP           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PktTx Interrupt Mask
   type SPW_PKTTX1_IM_Register is record
      --  Deactivated
      DEACT         : Boolean := False;
      --  Activated
      ACT           : Boolean := False;
      --  EOP sent
      EOP           : Boolean := False;
      --  EEP sent
      EEP           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_IM_Register use record
      DEACT         at 0 range 0 .. 0;
      ACT           at 0 range 1 .. 1;
      EOP           at 0 range 2 .. 2;
      EEP           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PktTx Clear Pending Interrupt
   type SPW_PKTTX1_PI_C_Register is record
      --  Write-only. Deactivated
      DEACT         : Boolean := False;
      --  Write-only. Activated
      ACT           : Boolean := False;
      --  Write-only. EOP sent
      EOP           : Boolean := False;
      --  Write-only. EEP sent
      EEP           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_PI_C_Register use record
      DEACT         at 0 range 0 .. 0;
      ACT           at 0 range 1 .. 1;
      EOP           at 0 range 2 .. 2;
      EEP           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PktTx Interrupt Set Mask
   type SPW_PKTTX1_IM_S_Register is record
      --  Write-only. Deactivated
      DEACT         : Boolean := False;
      --  Write-only. Activated
      ACT           : Boolean := False;
      --  Write-only. EOP sent
      EOP           : Boolean := False;
      --  Write-only. EEP sent
      EEP           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_IM_S_Register use record
      DEACT         at 0 range 0 .. 0;
      ACT           at 0 range 1 .. 1;
      EOP           at 0 range 2 .. 2;
      EEP           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PktTx Interrupt Clear Mask
   type SPW_PKTTX1_IM_C_Register is record
      --  Write-only. Deactivated
      DEACT         : Boolean := False;
      --  Write-only. Activated
      ACT           : Boolean := False;
      --  Write-only. EOP sent
      EOP           : Boolean := False;
      --  Write-only. EEP sent
      EEP           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_IM_C_Register use record
      DEACT         at 0 range 0 .. 0;
      ACT           at 0 range 1 .. 1;
      EOP           at 0 range 2 .. 2;
      EEP           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Previous
   type PKTTX1_STATUS_PREVSelect is
     (--  No information. Field not locked.
      NOINFO,
      --  Last send list fully done
      LASTSENDLISTOK,
      --  Aborted due to memory access error.
      ABORTEDMEMERR,
      --  Aborted by new send list.
      ABORTEDNEWSD,
      --  Aborted by direct user command.
      ABORTEDUSERCMD,
      --  Aborted by timeout.
      ABORTEDTIMEOUT)
     with Size => 3;
   for PKTTX1_STATUS_PREVSelect use
     (NOINFO => 0,
      LASTSENDLISTOK => 1,
      ABORTEDMEMERR => 2,
      ABORTEDNEWSD => 3,
      ABORTEDUSERCMD => 4,
      ABORTEDTIMEOUT => 5);

   --  PktTx Status
   type SPW_PKTTX1_STATUS_Register is record
      --  Armed
      ARM            : Boolean := False;
      --  Active
      ACT            : Boolean := False;
      --  Pending
      PENDING        : Boolean := False;
      --  Deactivating
      DEACT          : Boolean := False;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Previous
      PREV           : PKTTX1_STATUS_PREVSelect := SAM_SVD.SPW.NOINFO;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_STATUS_Register use record
      ARM            at 0 range 0 .. 0;
      ACT            at 0 range 1 .. 1;
      PENDING        at 0 range 2 .. 2;
      DEACT          at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      PREV           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SPW_PKTTX1_NXTSENDROUT_BYTE4_Field is HAL.UInt8;
   subtype SPW_PKTTX1_NXTSENDROUT_BYTE3_Field is HAL.UInt8;
   subtype SPW_PKTTX1_NXTSENDROUT_BYTE2_Field is HAL.UInt8;
   subtype SPW_PKTTX1_NXTSENDROUT_BYTE1_Field is HAL.UInt8;

   --  PktTx Next Send List Router Bytes
   type SPW_PKTTX1_NXTSENDROUT_Register is record
      --  Byte4
      BYTE4 : SPW_PKTTX1_NXTSENDROUT_BYTE4_Field := 16#0#;
      --  Byte3
      BYTE3 : SPW_PKTTX1_NXTSENDROUT_BYTE3_Field := 16#0#;
      --  Byte2
      BYTE2 : SPW_PKTTX1_NXTSENDROUT_BYTE2_Field := 16#0#;
      --  Byte1
      BYTE1 : SPW_PKTTX1_NXTSENDROUT_BYTE1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_NXTSENDROUT_Register use record
      BYTE4 at 0 range 0 .. 7;
      BYTE3 at 0 range 8 .. 15;
      BYTE2 at 0 range 16 .. 23;
      BYTE1 at 0 range 24 .. 31;
   end record;

   subtype SPW_PKTTX1_NXTSENDCFG_LEN_Field is HAL.UInt16;
   subtype SPW_PKTTX1_NXTSENDCFG_VALUE_Field is HAL.UInt6;

   --  Start Mode
   type PKTTX1_NXTSENDCFG_STARTSelect is
     (--  Start if any bit in Start Value matches an incoming event
      STARTEVENT,
      --  Start immediately, if possible
      STARTNOW,
      --  Start if Start Value matches an incoming Time Code from Time Code Handler 1
      STARTTCH1)
     with Size => 2;
   for PKTTX1_NXTSENDCFG_STARTSelect use
     (STARTEVENT => 0,
      STARTNOW => 1,
      STARTTCH1 => 2);

   --  PktTx Next Send List Config
   type SPW_PKTTX1_NXTSENDCFG_Register is record
      --  Length
      LEN            : SPW_PKTTX1_NXTSENDCFG_LEN_Field := 16#0#;
      --  Start Value
      VALUE          : SPW_PKTTX1_NXTSENDCFG_VALUE_Field := 16#0#;
      --  Start Mode
      START          : PKTTX1_NXTSENDCFG_STARTSelect :=
                        SAM_SVD.SPW.STARTEVENT;
      --  unspecified
      Reserved_24_28 : HAL.UInt5 := 16#0#;
      --  Abort
      ABORT_k        : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_NXTSENDCFG_Register use record
      LEN            at 0 range 0 .. 15;
      VALUE          at 0 range 16 .. 21;
      START          at 0 range 22 .. 23;
      Reserved_24_28 at 0 range 24 .. 28;
      ABORT_k        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype SPW_PKTTX1_CURSENDROUT_BYTE4_Field is HAL.UInt8;
   subtype SPW_PKTTX1_CURSENDROUT_BYTE3_Field is HAL.UInt8;
   subtype SPW_PKTTX1_CURSENDROUT_BYTE2_Field is HAL.UInt8;
   subtype SPW_PKTTX1_CURSENDROUT_BYTE1_Field is HAL.UInt8;

   --  PktTx Current Send List Router Bytes
   type SPW_PKTTX1_CURSENDROUT_Register is record
      --  Read-only. Byte4
      BYTE4 : SPW_PKTTX1_CURSENDROUT_BYTE4_Field;
      --  Read-only. Byte3
      BYTE3 : SPW_PKTTX1_CURSENDROUT_BYTE3_Field;
      --  Read-only. Byte2
      BYTE2 : SPW_PKTTX1_CURSENDROUT_BYTE2_Field;
      --  Read-only. Byte1
      BYTE1 : SPW_PKTTX1_CURSENDROUT_BYTE1_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_CURSENDROUT_Register use record
      BYTE4 at 0 range 0 .. 7;
      BYTE3 at 0 range 8 .. 15;
      BYTE2 at 0 range 16 .. 23;
      BYTE1 at 0 range 24 .. 31;
   end record;

   subtype SPW_PKTTX1_CURSENDCFG_LEN_Field is HAL.UInt16;

   --  PktTx Current Send List Config
   type SPW_PKTTX1_CURSENDCFG_Register is record
      --  Length
      LEN            : SPW_PKTTX1_CURSENDCFG_LEN_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Abort
      ABORT_k        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_PKTTX1_CURSENDCFG_Register use record
      LEN            at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      ABORT_k        at 0 range 31 .. 31;
   end record;

   subtype SPW_RMAP1_CFG_DESTKEY_Field is HAL.UInt8;
   subtype SPW_RMAP1_CFG_TLA_Field is HAL.UInt8;

   --  SpW RMAP 1 Config
   type SPW_RMAP1_CFG_Register is record
      --  DestKey
      DESTKEY        : SPW_RMAP1_CFG_DESTKEY_Field := 16#0#;
      --  Address
      TLA            : SPW_RMAP1_CFG_TLA_Field := 16#0#;
      --  RMAP Enable
      RMAPENA        : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_RMAP1_CFG_Register use record
      DESTKEY        at 0 range 0 .. 7;
      TLA            at 0 range 8 .. 15;
      RMAPENA        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Error Code
   type RMAP1_STS_RC_ERRCODESelect is
     (--  No error detected
      NOERROR,
      --  Error while DMA accessing the internal bus, e.g. illegal address.
      DMAERROR,
      --  Unused RMAP command according to [RMAP]
      RMAPERROR,
      --  Destination key error
      DESTKEYERROR,
      --  Data CRC error
      DATACRCERROR,
      --  Early EOP in header or data, i.e. EOP has been received with less data than
--  expected from the RMAP command header.
      EOPERROR,
      --  Cargo too large. Late EOP or EEP in data, i.e. EOP/EEP has been received
--  with more data than expected from the RMAP command header.
      CARGOERROR,
      --  Early EEP in data for RMAP commands. EEP has been received with less data
--  or exactly as much as expected from the RMAP command header.
      EEPERROR,
      --  Authorisation error:Invalid or unsupported command.
      CMDERROR,
      --  Non-matching Target Logical Address.
      TLAERROR,
      --  Incorrect header CRC.
      HEADERCRCERROR,
      --  Protocol Identifier not supported.
      PROTOCOLIDERROR,
      --  Unsupported reply address length
      REPLYADDERROR)
     with Size => 8;
   for RMAP1_STS_RC_ERRCODESelect use
     (NOERROR => 0,
      DMAERROR => 1,
      RMAPERROR => 2,
      DESTKEYERROR => 3,
      DATACRCERROR => 4,
      EOPERROR => 5,
      CARGOERROR => 6,
      EEPERROR => 7,
      CMDERROR => 10,
      TLAERROR => 12,
      HEADERCRCERROR => 16,
      PROTOCOLIDERROR => 17,
      REPLYADDERROR => 18);

   --  SpW RMAP 1 Read and Clear Status
   type SPW_RMAP1_STS_RC_Register is record
      --  Read-only. Error Code
      ERRCODE       : RMAP1_STS_RC_ERRCODESelect;
      --  Read-only. Valid
      VALID         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_RMAP1_STS_RC_Register use record
      ERRCODE       at 0 range 0 .. 7;
      VALID         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Error Code
   type RMAP1_STS_ERRCODESelect is
     (--  No error detected
      NOERROR,
      --  Error while DMA accessing the internal bus, e.g. illegal address.
      DMAERROR,
      --  Unused RMAP command according to [RMAP]
      RMAPERROR,
      --  Destination key error
      DESTKEYERROR,
      --  Data CRC error
      DATACRCERROR,
      --  Early EOP in header or data, i.e. EOP has been received with less data than
--  expected from the RMAP command header.
      EOPERROR,
      --  Cargo too large. Late EOP or EEP in data, i.e. EOP/EEP has been received
--  with more data than expected from the RMAP command header.
      CARGOERROR,
      --  Early EEP in data for RMAP commands. EEP has been received with less data
--  or exactly as much as expected from the RMAP command header.
      EEPERROR,
      --  Authorisation error:Invalid or unsupported command.
      CMDERROR,
      --  Non-matching Target Logical Address.
      TLAERROR,
      --  Incorrect header CRC.
      HEADERCRCERROR,
      --  Protocol Identifier not supported.
      PROTOCOLIDERROR,
      --  Unsupported reply address length
      REPLYADDERROR)
     with Size => 8;
   for RMAP1_STS_ERRCODESelect use
     (NOERROR => 0,
      DMAERROR => 1,
      RMAPERROR => 2,
      DESTKEYERROR => 3,
      DATACRCERROR => 4,
      EOPERROR => 5,
      CARGOERROR => 6,
      EEPERROR => 7,
      CMDERROR => 10,
      TLAERROR => 12,
      HEADERCRCERROR => 16,
      PROTOCOLIDERROR => 17,
      REPLYADDERROR => 18);

   --  SpW RMAP 1 Read Status
   type SPW_RMAP1_STS_Register is record
      --  Read-only. Error Code
      ERRCODE       : RMAP1_STS_ERRCODESelect;
      --  Read-only. Valid
      VALID         : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_RMAP1_STS_Register use record
      ERRCODE       at 0 range 0 .. 7;
      VALID         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  SpW Tch Pending Read Masked Interrupt
   type SPW_TCH_PI_RM_Register is record
      --  Read-only. TcEvent
      TCEVENT       : Boolean;
      --  Read-only. Time Code
      TIMECODE      : Boolean;
      --  Read-only. Any Time Code
      ANYTIMECODE   : Boolean;
      --  Read-only. Late Watchdog
      LATEWD        : Boolean;
      --  Read-only. Early Watchdog
      EARLYWD       : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_PI_RM_Register use record
      TCEVENT       at 0 range 0 .. 0;
      TIMECODE      at 0 range 1 .. 1;
      ANYTIMECODE   at 0 range 2 .. 2;
      LATEWD        at 0 range 3 .. 3;
      EARLYWD       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  SpW Tch Pending Read and Clear Masked Interrupt
   type SPW_TCH_PI_RCM_Register is record
      --  Read-only. TcEvent
      TCEVENT       : Boolean;
      --  Read-only. Time Code
      TIMECODE      : Boolean;
      --  Read-only. Any Time Code
      ANYTIMECODE   : Boolean;
      --  Read-only. Late Watchdog
      LATEWD        : Boolean;
      --  Read-only. Early Watchdog
      EARLYWD       : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_PI_RCM_Register use record
      TCEVENT       at 0 range 0 .. 0;
      TIMECODE      at 0 range 1 .. 1;
      ANYTIMECODE   at 0 range 2 .. 2;
      LATEWD        at 0 range 3 .. 3;
      EARLYWD       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  SpW Tch Pending Read Interrupt
   type SPW_TCH_PI_R_Register is record
      --  Read-only. TcEvent
      TCEVENT       : Boolean;
      --  Read-only. Time Code
      TIMECODE      : Boolean;
      --  Read-only. Any Time Code
      ANYTIMECODE   : Boolean;
      --  Read-only. Late Watchdog
      LATEWD        : Boolean;
      --  Read-only. Early Watchdog
      EARLYWD       : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_PI_R_Register use record
      TCEVENT       at 0 range 0 .. 0;
      TIMECODE      at 0 range 1 .. 1;
      ANYTIMECODE   at 0 range 2 .. 2;
      LATEWD        at 0 range 3 .. 3;
      EARLYWD       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  SpW Tch Pending Read, Clear and Enabled Interrupt
   type SPW_TCH_PI_RCS_Register is record
      --  TcEvent
      TCEVENT       : Boolean := False;
      --  Time Code
      TIMECODE      : Boolean := False;
      --  Any Time Code
      ANYTIMECODE   : Boolean := False;
      --  Late Watchdog
      LATEWD        : Boolean := False;
      --  Early Watchdog
      EARLYWD       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_PI_RCS_Register use record
      TCEVENT       at 0 range 0 .. 0;
      TIMECODE      at 0 range 1 .. 1;
      ANYTIMECODE   at 0 range 2 .. 2;
      LATEWD        at 0 range 3 .. 3;
      EARLYWD       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  SpW Tch Interrupt Mask
   type SPW_TCH_IM_Register is record
      --  TcEvent
      TCEVENT       : Boolean := False;
      --  Time Code
      TIMECODE      : Boolean := False;
      --  Any Time Code
      ANYTIMECODE   : Boolean := False;
      --  Late Watchdog
      LATEWD        : Boolean := False;
      --  Early Watchdog
      EARLYWD       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_IM_Register use record
      TCEVENT       at 0 range 0 .. 0;
      TIMECODE      at 0 range 1 .. 1;
      ANYTIMECODE   at 0 range 2 .. 2;
      LATEWD        at 0 range 3 .. 3;
      EARLYWD       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  SpW Tch Clear Pending Interrupt
   type SPW_TCH_PI_C_Register is record
      --  Write-only. TcEvent
      TCEVENT       : Boolean := False;
      --  Write-only. Time Code
      TIMECODE      : Boolean := False;
      --  Write-only. Any Time Code
      ANYTIMECODE   : Boolean := False;
      --  Write-only. Late Watchdog
      LATEWD        : Boolean := False;
      --  Write-only. Early Watchdog
      EARLYWD       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_PI_C_Register use record
      TCEVENT       at 0 range 0 .. 0;
      TIMECODE      at 0 range 1 .. 1;
      ANYTIMECODE   at 0 range 2 .. 2;
      LATEWD        at 0 range 3 .. 3;
      EARLYWD       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  SpW Tch Interrupt Set Mask
   type SPW_TCH_IM_S_Register is record
      --  Write-only. TcEvent
      TCEVENT       : Boolean := False;
      --  Write-only. Time Code
      TIMECODE      : Boolean := False;
      --  Write-only. Any Time Code
      ANYTIMECODE   : Boolean := False;
      --  Write-only. Late Watchdog
      LATEWD        : Boolean := False;
      --  Write-only. Early Watchdog
      EARLYWD       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_IM_S_Register use record
      TCEVENT       at 0 range 0 .. 0;
      TIMECODE      at 0 range 1 .. 1;
      ANYTIMECODE   at 0 range 2 .. 2;
      LATEWD        at 0 range 3 .. 3;
      EARLYWD       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  SpW Tch Interrupt Clear Mask
   type SPW_TCH_IM_C_Register is record
      --  Write-only. TcEvent
      TCEVENT       : Boolean := False;
      --  Write-only. Time Code
      TIMECODE      : Boolean := False;
      --  Write-only. Any Time Code
      ANYTIMECODE   : Boolean := False;
      --  Write-only. Late Watchdog
      LATEWD        : Boolean := False;
      --  Write-only. Early Watchdog
      EARLYWD       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_IM_C_Register use record
      TCEVENT       at 0 range 0 .. 0;
      TIMECODE      at 0 range 1 .. 1;
      ANYTIMECODE   at 0 range 2 .. 2;
      LATEWD        at 0 range 3 .. 3;
      EARLYWD       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  SPW_TCH_CFGLISTEN_L array
   type SPW_TCH_CFGLISTEN_L_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SPW_TCH_CFGLISTEN_L
   type SPW_TCH_CFGLISTEN_L_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  L as a value
            Val : HAL.UInt2;
         when True =>
            --  L as an array
            Arr : SPW_TCH_CFGLISTEN_L_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SPW_TCH_CFGLISTEN_L_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SpW Tch Config Listener
   type SPW_TCH_CFGLISTEN_Register is record
      --  Listen link 1
      L             : SPW_TCH_CFGLISTEN_L_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_CFGLISTEN_Register use record
      L             at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SPW_TCH_CFGSEND_S array
   type SPW_TCH_CFGSEND_S_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SPW_TCH_CFGSEND_S
   type SPW_TCH_CFGSEND_S_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  S as a value
            Val : HAL.UInt2;
         when True =>
            --  S as an array
            Arr : SPW_TCH_CFGSEND_S_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SPW_TCH_CFGSEND_S_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SpW Tch Config Sender
   type SPW_TCH_CFGSEND_Register is record
      --  Send link 1
      S             : SPW_TCH_CFGSEND_S_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_CFGSEND_Register use record
      S             at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SPW_TCH_CFG_EVENT_Field is HAL.UInt6;

   --  SpW Tch Config
   type SPW_TCH_CFG_Register is record
      --  Event
      EVENT         : SPW_TCH_CFG_EVENT_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_CFG_Register use record
      EVENT         at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype SPW_TCH_CFGRESTART_VALUE_Field is HAL.UInt6;
   subtype SPW_TCH_CFGRESTART_EVENT_Field is HAL.UInt6;

   --  SpW Tch Config Restart
   type SPW_TCH_CFGRESTART_Register is record
      --  Value
      VALUE          : SPW_TCH_CFGRESTART_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Event
      EVENT          : SPW_TCH_CFGRESTART_EVENT_Field := 16#0#;
      --  Pps
      PPS            : Boolean := False;
      --  One Shot
      ONESHOT        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_CFGRESTART_Register use record
      VALUE          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EVENT          at 0 range 8 .. 13;
      PPS            at 0 range 14 .. 14;
      ONESHOT        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPW_TCH_CFGTCEVENT_VALUE_Field is HAL.UInt6;
   subtype SPW_TCH_CFGTCEVENT_MASK_Field is HAL.UInt6;

   --  SpW Tch Config Tc Event
   type SPW_TCH_CFGTCEVENT_Register is record
      --  Value
      VALUE          : SPW_TCH_CFGTCEVENT_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Mask
      MASK           : SPW_TCH_CFGTCEVENT_MASK_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_CFGTCEVENT_Register use record
      VALUE          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MASK           at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype SPW_TCH_CFGWD_LATE_Field is HAL.UInt16;
   subtype SPW_TCH_CFGWD_EARLY_Field is HAL.UInt16;

   --  SpW Tch Config Watchdog
   type SPW_TCH_CFGWD_Register is record
      --  Late
      LATE  : SPW_TCH_CFGWD_LATE_Field := 16#0#;
      --  Early
      EARLY : SPW_TCH_CFGWD_EARLY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_CFGWD_Register use record
      LATE  at 0 range 0 .. 15;
      EARLY at 0 range 16 .. 31;
   end record;

   subtype SPW_TCH_LASTTIMECODE_VALUE_Field is HAL.UInt6;

   --  SpW Tch Last Time Code
   type SPW_TCH_LASTTIMECODE_Register is record
      --  Value
      VALUE         : SPW_TCH_LASTTIMECODE_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Send Now
      SEND          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_TCH_LASTTIMECODE_Register use record
      VALUE         at 0 range 0 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      SEND          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  SpW Group Interrupt status 1
   type SPW_GROUP_IRQSTS1_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7;
      --  Read-only. Tx 1
      TX1            : Boolean;
      --  unspecified
      Reserved_8_14  : HAL.UInt7;
      --  Read-only. Rx 1
      RX1            : Boolean;
      --  Read-only. Time Code Handler
      TCH            : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_GROUP_IRQSTS1_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      TX1            at 0 range 7 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      RX1            at 0 range 15 .. 15;
      TCH            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  SpW Group Interrupt status 2
   type SPW_GROUP_IRQSTS2_Register is record
      --  unspecified
      Reserved_0_17  : HAL.UInt18;
      --  Read-only. Link 2
      Link2          : Boolean;
      --  Read-only. Distributed Interrupt Acknowledge, Link 2
      Dia2           : Boolean;
      --  Read-only. Distributed Interrupt 2
      Di2            : Boolean;
      --  Read-only. Link 1
      Link1          : Boolean;
      --  Read-only. Distributed Interrupt Acknowledge, Link 1
      Dia1           : Boolean;
      --  Read-only. Distributed Interrupt 1
      Di1            : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_GROUP_IRQSTS2_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      Link2          at 0 range 18 .. 18;
      Dia2           at 0 range 19 .. 19;
      Di2            at 0 range 20 .. 20;
      Link1          at 0 range 21 .. 21;
      Dia1           at 0 range 22 .. 22;
      Di1            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SPW_GROUP_EDACSTS_CORR_Field is HAL.UInt8;
   subtype SPW_GROUP_EDACSTS_UNCORR_Field is HAL.UInt8;

   --  SpW Group Interrupt status
   type SPW_GROUP_EDACSTS_Register is record
      --  Read-only. Correction Count
      CORR           : SPW_GROUP_EDACSTS_CORR_Field;
      --  Read-only. Uncorrectable Error
      UNCORR         : SPW_GROUP_EDACSTS_UNCORR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPW_GROUP_EDACSTS_Register use record
      CORR           at 0 range 0 .. 7;
      UNCORR         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SpW
   type SPW_Peripheral is record
      --  SpW Router Status
      ROUTER_STS            : aliased SPW_ROUTER_STS_Register;
      --  SpW Router Config
      ROUTER_CFG            : aliased SPW_ROUTER_CFG_Register;
      --  SpW Router Timeout
      ROUTER_TIMEOUT        : aliased SPW_ROUTER_TIMEOUT_Register;
      --  SpW Router Table (Logical addresses 32 to 255, index 0 for logical
      --  address 32)
      ROUTER_TABLE          : aliased SPW_ROUTER_TABLE_Registers;
      --  SpW Link 1 Pending Read Masked Interrupt
      LINK1_PI_RM           : aliased SPW_LINK1_PI_RM_Register;
      --  SpW Link 1 Pending Read and Clear Masked Interrupt
      LINK1_PI_RCM          : aliased SPW_LINK1_PI_RCM_Register;
      --  SpW Link 1 Pending Read Interrupt
      LINK1_PI_R            : aliased SPW_LINK1_PI_R_Register;
      --  SpW Link 1 Pending Read, Clear and Enabed Interrupt
      LINK1_PI_RCS          : aliased SPW_LINK1_PI_RCS_Register;
      --  SpW Link 1 Interrupt Mask
      LINK1_IM              : aliased SPW_LINK1_IM_Register;
      --  SpW Link 1 Clear Pending Interrupt
      LINK1_PI_C            : aliased SPW_LINK1_PI_C_Register;
      --  SpW Link 1 Interrupt Set Mask
      LINK1_IM_S            : aliased SPW_LINK1_IM_S_Register;
      --  SpW Link 1 Interrupt Clear Mask
      LINK1_IM_C            : aliased SPW_LINK1_IM_C_Register;
      --  SpW Link 1 Config
      LINK1_CFG             : aliased SPW_LINK1_CFG_Register;
      --  SpW Link 1 Clock Division
      LINK1_CLKDIV          : aliased SPW_LINK1_CLKDIV_Register;
      --  SpW Link 1 Status
      LINK1_STATUS          : aliased SPW_LINK1_STATUS_Register;
      --  SpW Link 1 Software Reset
      LINK1_SWRESET         : aliased HAL.UInt32;
      --  SpW Link 1 Escape Character Event 0
      LINK1_ESCCHAREVENT0   : aliased LINK1_ESCCHAREVENT_Register;
      --  SpW Link 1 Escape Character Event 1
      LINK1_ESCCHAREVENT1   : aliased LINK1_ESCCHAREVENT_Register;
      --  SpW Link 1 Escape Character Status
      LINK1_ESCCHARSTS      : aliased SPW_LINK1_ESCCHARSTS_Register;
      --  SpW Link 1 Transmit Escape Character
      LINK1_TRANSESC        : aliased SPW_LINK1_TRANSESC_Register;
      --  SpW Link 1 Distributed Interrupt Pending Read Masked Interrupt
      LINK1_DISTINTPI_RM    : aliased SPW_LINK1_DISTINTPI_RM_Register;
      --  SpW Link 1 Distributed Interrupt Pending Read and Clear Masked
      --  Interrupt
      LINK1_DISTINTPI_RCM   : aliased SPW_LINK1_DISTINTPI_RCM_Register;
      --  SpW Link 1 Distributed Interrupt Pending Read Interrupt
      LINK1_DISTINTPI_R     : aliased SPW_LINK1_DISTINTPI_R_Register;
      --  SpW Link 1 Distributed Interrupt Pending Read and Clear Interrupt
      LINK1_DISTINTPI_RCS   : aliased SPW_LINK1_DISTINTPI_RCS_Register;
      --  SpW Link 1 Distributed Interrupt Mask
      LINK1_DISTINTIM       : aliased SPW_LINK1_DISTINTIM_Register;
      --  SpW Link 1 Distributed Interrupt Clear Pending Interrupt
      LINK1_DISTINTPI_C     : aliased SPW_LINK1_DISTINTPI_C_Register;
      --  SpW Link 1 Distributed Interrupt Set Mask
      LINK1_DISTINTIM_S     : aliased SPW_LINK1_DISTINTIM_S_Register;
      --  SpW Link 1 Distributed Interrupt Clear Mask
      LINK1_DISTINTIM_C     : aliased SPW_LINK1_DISTINTIM_C_Register;
      --  SpW Link 1 Distributed Interrupt Acknowledge Pending Read Masked
      --  Interrupt
      LINK1_DISTACKPI_RM    : aliased SPW_LINK1_DISTACKPI_RM_Register;
      --  SpW Link 1 Distributed Interrupt Acknowledge Pending Read and Clear
      --  Masked Interrupt
      LINK1_DISTACKPI_RCM   : aliased SPW_LINK1_DISTACKPI_RCM_Register;
      --  SpW Link 1 Distributed Interrupt Acknowledge Pending Read Interrupt
      LINK1_DISTACKPI_R     : aliased SPW_LINK1_DISTACKPI_R_Register;
      --  SpW Link 1 Distributed Interrupt Acknowledge Pending Read and Clear
      --  Interrupt
      LINK1_DISTACKPI_RCS   : aliased SPW_LINK1_DISTACKPI_RCS_Register;
      --  SpW Link 1 Distributed Interrupt Acknowledge Mask
      LINK1_DISTACKIM       : aliased SPW_LINK1_DISTACKIM_Register;
      --  SpW Link 1 Distributed Interrupt Acknowledge Clear Pending Interrupt
      LINK1_DISTACKPI_C     : aliased SPW_LINK1_DISTACKPI_C_Register;
      --  SpW Link 1 Distributed Interrupt Acknowledge Set Mask
      LINK1_DISTACKIM_S     : aliased SPW_LINK1_DISTACKIM_S_Register;
      --  SpW Link 1 Distributed Interrupt Acknowledge Clear Mask
      LINK1_DISTACKIM_C     : aliased SPW_LINK1_DISTACKIM_C_Register;
      --  SpW Link 2 Pending Read Masked Interrupt
      LINK2_PI_RM           : aliased SPW_LINK2_PI_RM_Register;
      --  SpW Link 2 Pending Read and Clear Masked Interrupt
      LINK2_PI_RCM          : aliased SPW_LINK2_PI_RCM_Register;
      --  SpW Link 2 Pending Read Interrupt
      LINK2_PI_R            : aliased SPW_LINK2_PI_R_Register;
      --  SpW Link 2 Pending Read, Clear and Enabled Interrupt
      LINK2_PI_RCS          : aliased SPW_LINK2_PI_RCS_Register;
      --  SpW Link 2 Interrupt Mask
      LINK2_IM              : aliased SPW_LINK2_IM_Register;
      --  SpW Link 2 Clear Pending Interrupt
      LINK2_PI_C            : aliased SPW_LINK2_PI_C_Register;
      --  SpW Link 2 Interrupt Set Mask
      LINK2_IM_S            : aliased SPW_LINK2_IM_S_Register;
      --  SpW Link 2 Interrupt Clear Mask
      LINK2_IM_C            : aliased SPW_LINK2_IM_C_Register;
      --  SpW Link 2 Config
      LINK2_CFG             : aliased SPW_LINK2_CFG_Register;
      --  SpW Link 2 Clock Division
      LINK2_CLKDIV          : aliased SPW_LINK2_CLKDIV_Register;
      --  SpW Link 2 Status
      LINK2_STATUS          : aliased SPW_LINK2_STATUS_Register;
      --  SpW Link 2 Software Reset
      LINK2_SWRESET         : aliased HAL.UInt32;
      --  SpW Link 2 Escape Character Event 0
      LINK2_ESCCHAREVENT0   : aliased LINK2_ESCCHAREVENT_Register;
      --  SpW Link 2 Escape Character Event 1
      LINK2_ESCCHAREVENT1   : aliased LINK2_ESCCHAREVENT_Register;
      --  SpW Link 2 Escape Character Status
      LINK2_ESCCHARSTS      : aliased SPW_LINK2_ESCCHARSTS_Register;
      --  SpW Link 2 Transmit Escape Character
      LINK2_TRANSESC        : aliased SPW_LINK2_TRANSESC_Register;
      --  SpW Link 2 Distributed Interrupt Pending Read Masked Interrupt
      LINK2_DISTINTPI_RM    : aliased SPW_LINK2_DISTINTPI_RM_Register;
      --  SpW Link 2 Distributed Interrupt Pending Read and Clear Masked
      --  Interrupt
      LINK2_DISTINTPI_RCM   : aliased SPW_LINK2_DISTINTPI_RCM_Register;
      --  SpW Link 2 Distributed Interrupt Pending Read Interrupt
      LINK2_DISTINTPI_R     : aliased SPW_LINK2_DISTINTPI_R_Register;
      --  SpW Link 2 Distributed Interrupt Pending Read and Clear Interrupt
      LINK2_DISTINTPI_RCS   : aliased SPW_LINK2_DISTINTPI_RCS_Register;
      --  SpW Link 2 Distributed Interrupt Mask
      LINK2_DISTINTIM       : aliased SPW_LINK2_DISTINTIM_Register;
      --  SpW Link 2 Distributed Interrupt Clear Pending Interrupt
      LINK2_DISTINTPI_C     : aliased SPW_LINK2_DISTINTPI_C_Register;
      --  SpW Link 2 Distributed Interrupt Set Mask
      LINK2_DISTINTIM_S     : aliased SPW_LINK2_DISTINTIM_S_Register;
      --  SpW Link 2 Distributed Interrupt Clear Mask
      LINK2_DISTINTIM_C     : aliased SPW_LINK2_DISTINTIM_C_Register;
      --  SpW Link 2 Distributed Interrupt Acknowledge Pending Read Masked
      --  Interrupt
      LINK2_DISTACKPI_RM    : aliased SPW_LINK2_DISTACKPI_RM_Register;
      --  SpW Link 2 Distributed Interrupt Acknowledge Pending Read and Clear
      --  Masked Interrupt
      LINK2_DISTACKPI_RCM   : aliased SPW_LINK2_DISTACKPI_RCM_Register;
      --  SpW Link 2 Distributed Interrupt Acknowledge Pending Read Interrupt
      LINK2_DISTACKPI_R     : aliased SPW_LINK2_DISTACKPI_R_Register;
      --  SpW Link 2 Distributed Interrupt Acknowledge Pending Read and Clear
      --  Interrupt
      LINK2_DISTACKPI_RCS   : aliased SPW_LINK2_DISTACKPI_RCS_Register;
      --  SpW Link 2 Distributed Interrupt Acknowledge Mask
      LINK2_DISTACKIM       : aliased SPW_LINK2_DISTACKIM_Register;
      --  SpW Link 2 Distributed Interrupt Acknowledge Clear Pending Interrupt
      LINK2_DISTACKPI_C     : aliased SPW_LINK2_DISTACKPI_C_Register;
      --  SpW Link 2 Distributed Interrupt Acknowledge Set Mask
      LINK2_DISTACKIM_S     : aliased SPW_LINK2_DISTACKIM_S_Register;
      --  SpW Link 2 Distributed Interrupt Acknowledge Clear Mask
      LINK2_DISTACKIM_C     : aliased SPW_LINK2_DISTACKIM_C_Register;
      --  PktRx Pending Read Masked Interrupt
      PKTRX1_PI_RM          : aliased SPW_PKTRX1_PI_RM_Register;
      --  PktRx Pending Read and Clear Masked Interrupt
      PKTRX1_PI_RCM         : aliased SPW_PKTRX1_PI_RCM_Register;
      --  PktRx Pending Read Interrupt
      PKTRX1_PI_R           : aliased SPW_PKTRX1_PI_R_Register;
      --  PktRx Pending Read, Clear and Enabled Interrupt
      PKTRX1_PI_RCS         : aliased SPW_PKTRX1_PI_RCS_Register;
      --  PktRx Interrupt Mask
      PKTRX1_IM             : aliased SPW_PKTRX1_IM_Register;
      --  PktRx Clear Pending Interrupt
      PKTRX1_PI_C           : aliased SPW_PKTRX1_PI_C_Register;
      --  PktRx Interrupt Set Mask
      PKTRX1_IM_S           : aliased SPW_PKTRX1_IM_S_Register;
      --  PktRx Interrupt Clear Mask
      PKTRX1_IM_C           : aliased SPW_PKTRX1_IM_C_Register;
      --  PktRx Config
      PKTRX1_CFG            : aliased SPW_PKTRX1_CFG_Register;
      --  PktRx Status
      PKTRX1_STATUS         : aliased SPW_PKTRX1_STATUS_Register;
      --  PktRx Next Buffer Data Address
      PKTRX1_NXTBUFDATAADDR : aliased HAL.UInt32;
      --  PktRx Next Buffer Data Length
      PKTRX1_NXTBUFDATALEN  : aliased SPW_PKTRX1_NXTBUFDATALEN_Register;
      --  PktRx Next Buffer Packet Address
      PKTRX1_NXTBUFPKTADDR  : aliased HAL.UInt32;
      --  PktRx Next Buffer Config
      PKTRX1_NXTBUFCFG      : aliased SPW_PKTRX1_NXTBUFCFG_Register;
      --  PktRx Current Buffer Data Address
      PKTRX1_CURBUFDATAADDR : aliased HAL.UInt32;
      --  PktRx Current Buffer Data Length
      PKTRX1_CURBUFDATALEN  : aliased SPW_PKTRX1_CURBUFDATALEN_Register;
      --  PktRx Current Buffer Packet Address
      PKTRX1_CURBUFPKTADDR  : aliased HAL.UInt32;
      --  PktRx Current Buffer Config
      PKTRX1_CURBUFCFG      : aliased SPW_PKTRX1_CURBUFCFG_Register;
      --  PktRx Previous Buffer Data Length
      PKTRX1_PREVBUFDATALEN : aliased SPW_PKTRX1_PREVBUFDATALEN_Register;
      --  PktRx Previous Buffer Status
      PKTRX1_PREVBUFSTS     : aliased SPW_PKTRX1_PREVBUFSTS_Register;
      --  PktRx Software Reset
      PKTRX1_SWRESET        : aliased HAL.UInt32;
      --  PktTx Pending Read Masked Interrupt
      PKTTX1_PI_RM          : aliased SPW_PKTTX1_PI_RM_Register;
      --  PktTx Pending Read and Clear Masked Interrupt
      PKTTX1_PI_RCM         : aliased SPW_PKTTX1_PI_RCM_Register;
      --  PktTx Pending Read Interrupt
      PKTTX1_PI_R           : aliased SPW_PKTTX1_PI_R_Register;
      --  PktTx Pending Read, Clear and Enabled Interrupt
      PKTTX1_PI_RCS         : aliased SPW_PKTTX1_PI_RCS_Register;
      --  PktTx Interrupt Mask
      PKTTX1_IM             : aliased SPW_PKTTX1_IM_Register;
      --  PktTx Clear Pending Interrupt
      PKTTX1_PI_C           : aliased SPW_PKTTX1_PI_C_Register;
      --  PktTx Interrupt Set Mask
      PKTTX1_IM_S           : aliased SPW_PKTTX1_IM_S_Register;
      --  PktTx Interrupt Clear Mask
      PKTTX1_IM_C           : aliased SPW_PKTTX1_IM_C_Register;
      --  PktTx Status
      PKTTX1_STATUS         : aliased SPW_PKTTX1_STATUS_Register;
      --  PktTx Next Send List Router Bytes
      PKTTX1_NXTSENDROUT    : aliased SPW_PKTTX1_NXTSENDROUT_Register;
      --  PktTx Next Send List Address
      PKTTX1_NXTSENDADDR    : aliased HAL.UInt32;
      --  PktTx Next Send List Config
      PKTTX1_NXTSENDCFG     : aliased SPW_PKTTX1_NXTSENDCFG_Register;
      --  PktTx Current Send List Router Bytes
      PKTTX1_CURSENDROUT    : aliased SPW_PKTTX1_CURSENDROUT_Register;
      --  PktTx Current Send List Address
      PKTTX1_CURSENDADDR    : aliased HAL.UInt32;
      --  PktTx Current Send List Config
      PKTTX1_CURSENDCFG     : aliased SPW_PKTTX1_CURSENDCFG_Register;
      --  PktTx Software Reset
      PKTTX1_SWRESET        : aliased HAL.UInt32;
      --  SpW RMAP 1 Config
      RMAP1_CFG             : aliased SPW_RMAP1_CFG_Register;
      --  SpW RMAP 1 Read and Clear Status
      RMAP1_STS_RC          : aliased SPW_RMAP1_STS_RC_Register;
      --  SpW RMAP 1 Read Status
      RMAP1_STS             : aliased SPW_RMAP1_STS_Register;
      --  SpW Tch Pending Read Masked Interrupt
      TCH_PI_RM             : aliased SPW_TCH_PI_RM_Register;
      --  SpW Tch Pending Read and Clear Masked Interrupt
      TCH_PI_RCM            : aliased SPW_TCH_PI_RCM_Register;
      --  SpW Tch Pending Read Interrupt
      TCH_PI_R              : aliased SPW_TCH_PI_R_Register;
      --  SpW Tch Pending Read, Clear and Enabled Interrupt
      TCH_PI_RCS            : aliased SPW_TCH_PI_RCS_Register;
      --  SpW Tch Interrupt Mask
      TCH_IM                : aliased SPW_TCH_IM_Register;
      --  SpW Tch Clear Pending Interrupt
      TCH_PI_C              : aliased SPW_TCH_PI_C_Register;
      --  SpW Tch Interrupt Set Mask
      TCH_IM_S              : aliased SPW_TCH_IM_S_Register;
      --  SpW Tch Interrupt Clear Mask
      TCH_IM_C              : aliased SPW_TCH_IM_C_Register;
      --  SpW Tch Config Listener
      TCH_CFGLISTEN         : aliased SPW_TCH_CFGLISTEN_Register;
      --  SpW Tch Config Sender
      TCH_CFGSEND           : aliased SPW_TCH_CFGSEND_Register;
      --  SpW Tch Config
      TCH_CFG               : aliased SPW_TCH_CFG_Register;
      --  SpW Tch Config Restart
      TCH_CFGRESTART        : aliased SPW_TCH_CFGRESTART_Register;
      --  SpW Tch Config Tc Event
      TCH_CFGTCEVENT        : aliased SPW_TCH_CFGTCEVENT_Register;
      --  SpW Tch Config Watchdog
      TCH_CFGWD             : aliased SPW_TCH_CFGWD_Register;
      --  SpW Tch Last Time Code
      TCH_LASTTIMECODE      : aliased SPW_TCH_LASTTIMECODE_Register;
      --  SpW Tch Software Reset
      TCH_SWRESET           : aliased HAL.UInt32;
      --  SpW Group Interrupt status 1
      GROUP_IRQSTS1         : aliased SPW_GROUP_IRQSTS1_Register;
      --  SpW Group Interrupt status 2
      GROUP_IRQSTS2         : aliased SPW_GROUP_IRQSTS2_Register;
      --  SpW Group Interrupt status
      GROUP_EDACSTS         : aliased SPW_GROUP_EDACSTS_Register;
   end record
     with Volatile;

   for SPW_Peripheral use record
      ROUTER_STS            at 16#0# range 0 .. 31;
      ROUTER_CFG            at 16#4# range 0 .. 31;
      ROUTER_TIMEOUT        at 16#8# range 0 .. 31;
      ROUTER_TABLE          at 16#80# range 0 .. 7167;
      LINK1_PI_RM           at 16#400# range 0 .. 31;
      LINK1_PI_RCM          at 16#404# range 0 .. 31;
      LINK1_PI_R            at 16#408# range 0 .. 31;
      LINK1_PI_RCS          at 16#40C# range 0 .. 31;
      LINK1_IM              at 16#410# range 0 .. 31;
      LINK1_PI_C            at 16#414# range 0 .. 31;
      LINK1_IM_S            at 16#418# range 0 .. 31;
      LINK1_IM_C            at 16#41C# range 0 .. 31;
      LINK1_CFG             at 16#420# range 0 .. 31;
      LINK1_CLKDIV          at 16#424# range 0 .. 31;
      LINK1_STATUS          at 16#428# range 0 .. 31;
      LINK1_SWRESET         at 16#42C# range 0 .. 31;
      LINK1_ESCCHAREVENT0   at 16#430# range 0 .. 31;
      LINK1_ESCCHAREVENT1   at 16#434# range 0 .. 31;
      LINK1_ESCCHARSTS      at 16#438# range 0 .. 31;
      LINK1_TRANSESC        at 16#43C# range 0 .. 31;
      LINK1_DISTINTPI_RM    at 16#440# range 0 .. 31;
      LINK1_DISTINTPI_RCM   at 16#444# range 0 .. 31;
      LINK1_DISTINTPI_R     at 16#448# range 0 .. 31;
      LINK1_DISTINTPI_RCS   at 16#44C# range 0 .. 31;
      LINK1_DISTINTIM       at 16#450# range 0 .. 31;
      LINK1_DISTINTPI_C     at 16#454# range 0 .. 31;
      LINK1_DISTINTIM_S     at 16#458# range 0 .. 31;
      LINK1_DISTINTIM_C     at 16#45C# range 0 .. 31;
      LINK1_DISTACKPI_RM    at 16#460# range 0 .. 31;
      LINK1_DISTACKPI_RCM   at 16#464# range 0 .. 31;
      LINK1_DISTACKPI_R     at 16#468# range 0 .. 31;
      LINK1_DISTACKPI_RCS   at 16#46C# range 0 .. 31;
      LINK1_DISTACKIM       at 16#470# range 0 .. 31;
      LINK1_DISTACKPI_C     at 16#474# range 0 .. 31;
      LINK1_DISTACKIM_S     at 16#478# range 0 .. 31;
      LINK1_DISTACKIM_C     at 16#47C# range 0 .. 31;
      LINK2_PI_RM           at 16#480# range 0 .. 31;
      LINK2_PI_RCM          at 16#484# range 0 .. 31;
      LINK2_PI_R            at 16#488# range 0 .. 31;
      LINK2_PI_RCS          at 16#48C# range 0 .. 31;
      LINK2_IM              at 16#490# range 0 .. 31;
      LINK2_PI_C            at 16#494# range 0 .. 31;
      LINK2_IM_S            at 16#498# range 0 .. 31;
      LINK2_IM_C            at 16#49C# range 0 .. 31;
      LINK2_CFG             at 16#4A0# range 0 .. 31;
      LINK2_CLKDIV          at 16#4A4# range 0 .. 31;
      LINK2_STATUS          at 16#4A8# range 0 .. 31;
      LINK2_SWRESET         at 16#4AC# range 0 .. 31;
      LINK2_ESCCHAREVENT0   at 16#4B0# range 0 .. 31;
      LINK2_ESCCHAREVENT1   at 16#4B4# range 0 .. 31;
      LINK2_ESCCHARSTS      at 16#4B8# range 0 .. 31;
      LINK2_TRANSESC        at 16#4BC# range 0 .. 31;
      LINK2_DISTINTPI_RM    at 16#4C0# range 0 .. 31;
      LINK2_DISTINTPI_RCM   at 16#4C4# range 0 .. 31;
      LINK2_DISTINTPI_R     at 16#4C8# range 0 .. 31;
      LINK2_DISTINTPI_RCS   at 16#4CC# range 0 .. 31;
      LINK2_DISTINTIM       at 16#4D0# range 0 .. 31;
      LINK2_DISTINTPI_C     at 16#4D4# range 0 .. 31;
      LINK2_DISTINTIM_S     at 16#4D8# range 0 .. 31;
      LINK2_DISTINTIM_C     at 16#4DC# range 0 .. 31;
      LINK2_DISTACKPI_RM    at 16#4E0# range 0 .. 31;
      LINK2_DISTACKPI_RCM   at 16#4E4# range 0 .. 31;
      LINK2_DISTACKPI_R     at 16#4E8# range 0 .. 31;
      LINK2_DISTACKPI_RCS   at 16#4EC# range 0 .. 31;
      LINK2_DISTACKIM       at 16#4F0# range 0 .. 31;
      LINK2_DISTACKPI_C     at 16#4F4# range 0 .. 31;
      LINK2_DISTACKIM_S     at 16#4F8# range 0 .. 31;
      LINK2_DISTACKIM_C     at 16#4FC# range 0 .. 31;
      PKTRX1_PI_RM          at 16#800# range 0 .. 31;
      PKTRX1_PI_RCM         at 16#804# range 0 .. 31;
      PKTRX1_PI_R           at 16#808# range 0 .. 31;
      PKTRX1_PI_RCS         at 16#80C# range 0 .. 31;
      PKTRX1_IM             at 16#810# range 0 .. 31;
      PKTRX1_PI_C           at 16#814# range 0 .. 31;
      PKTRX1_IM_S           at 16#818# range 0 .. 31;
      PKTRX1_IM_C           at 16#81C# range 0 .. 31;
      PKTRX1_CFG            at 16#820# range 0 .. 31;
      PKTRX1_STATUS         at 16#824# range 0 .. 31;
      PKTRX1_NXTBUFDATAADDR at 16#830# range 0 .. 31;
      PKTRX1_NXTBUFDATALEN  at 16#834# range 0 .. 31;
      PKTRX1_NXTBUFPKTADDR  at 16#838# range 0 .. 31;
      PKTRX1_NXTBUFCFG      at 16#83C# range 0 .. 31;
      PKTRX1_CURBUFDATAADDR at 16#840# range 0 .. 31;
      PKTRX1_CURBUFDATALEN  at 16#844# range 0 .. 31;
      PKTRX1_CURBUFPKTADDR  at 16#848# range 0 .. 31;
      PKTRX1_CURBUFCFG      at 16#84C# range 0 .. 31;
      PKTRX1_PREVBUFDATALEN at 16#850# range 0 .. 31;
      PKTRX1_PREVBUFSTS     at 16#854# range 0 .. 31;
      PKTRX1_SWRESET        at 16#87C# range 0 .. 31;
      PKTTX1_PI_RM          at 16#C00# range 0 .. 31;
      PKTTX1_PI_RCM         at 16#C04# range 0 .. 31;
      PKTTX1_PI_R           at 16#C08# range 0 .. 31;
      PKTTX1_PI_RCS         at 16#C0C# range 0 .. 31;
      PKTTX1_IM             at 16#C10# range 0 .. 31;
      PKTTX1_PI_C           at 16#C14# range 0 .. 31;
      PKTTX1_IM_S           at 16#C18# range 0 .. 31;
      PKTTX1_IM_C           at 16#C1C# range 0 .. 31;
      PKTTX1_STATUS         at 16#C20# range 0 .. 31;
      PKTTX1_NXTSENDROUT    at 16#C24# range 0 .. 31;
      PKTTX1_NXTSENDADDR    at 16#C28# range 0 .. 31;
      PKTTX1_NXTSENDCFG     at 16#C2C# range 0 .. 31;
      PKTTX1_CURSENDROUT    at 16#C30# range 0 .. 31;
      PKTTX1_CURSENDADDR    at 16#C34# range 0 .. 31;
      PKTTX1_CURSENDCFG     at 16#C38# range 0 .. 31;
      PKTTX1_SWRESET        at 16#C3C# range 0 .. 31;
      RMAP1_CFG             at 16#E00# range 0 .. 31;
      RMAP1_STS_RC          at 16#E04# range 0 .. 31;
      RMAP1_STS             at 16#E08# range 0 .. 31;
      TCH_PI_RM             at 16#E80# range 0 .. 31;
      TCH_PI_RCM            at 16#E84# range 0 .. 31;
      TCH_PI_R              at 16#E88# range 0 .. 31;
      TCH_PI_RCS            at 16#E8C# range 0 .. 31;
      TCH_IM                at 16#E90# range 0 .. 31;
      TCH_PI_C              at 16#E94# range 0 .. 31;
      TCH_IM_S              at 16#E98# range 0 .. 31;
      TCH_IM_C              at 16#E9C# range 0 .. 31;
      TCH_CFGLISTEN         at 16#EA0# range 0 .. 31;
      TCH_CFGSEND           at 16#EA4# range 0 .. 31;
      TCH_CFG               at 16#EA8# range 0 .. 31;
      TCH_CFGRESTART        at 16#EAC# range 0 .. 31;
      TCH_CFGTCEVENT        at 16#EB0# range 0 .. 31;
      TCH_CFGWD             at 16#EB4# range 0 .. 31;
      TCH_LASTTIMECODE      at 16#EB8# range 0 .. 31;
      TCH_SWRESET           at 16#EBC# range 0 .. 31;
      GROUP_IRQSTS1         at 16#F00# range 0 .. 31;
      GROUP_IRQSTS2         at 16#F04# range 0 .. 31;
      GROUP_EDACSTS         at 16#F0C# range 0 .. 31;
   end record;

   --  SpW
   SPW_Periph : aliased SPW_Peripheral
     with Import, Address => SPW_Base;

end SAM_SVD.SPW;
