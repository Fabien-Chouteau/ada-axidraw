pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.UTMI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  OHCI Interrupt Configuration Register
   type UTMI_UTMI_OHCIICR_Register is record
      --  USB PORTx Reset
      RES0           : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  OHCI Asynchronous Resume Interrupt Enable
      ARIE           : Boolean := False;
      APPSTART       : Boolean := False;
      --  unspecified
      Reserved_6_22  : HAL.UInt17 := 16#0#;
      --  USB Device Pull-up Disable
      UDPPUDIS       : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UTMI_UTMI_OHCIICR_Register use record
      RES0           at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      ARIE           at 0 range 4 .. 4;
      APPSTART       at 0 range 5 .. 5;
      Reserved_6_22  at 0 range 6 .. 22;
      UDPPUDIS       at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  UTMI Reference Clock Frequency
   type UTMI_CKTRIM_FREQSelect is
     (--  12 MHz reference clock
      XTAL12,
      --  16 MHz reference clock
      XTAL16)
     with Size => 2;
   for UTMI_CKTRIM_FREQSelect use
     (XTAL12 => 0,
      XTAL16 => 1);

   --  UTMI Clock Trimming Register
   type UTMI_UTMI_CKTRIM_Register is record
      --  UTMI Reference Clock Frequency
      FREQ          : UTMI_CKTRIM_FREQSelect := SAM_SVD.UTMI.XTAL12;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UTMI_UTMI_CKTRIM_Register use record
      FREQ          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USB Transmitter Interface Macrocell
   type UTMI_Peripheral is record
      --  OHCI Interrupt Configuration Register
      UTMI_OHCIICR : aliased UTMI_UTMI_OHCIICR_Register;
      --  UTMI Clock Trimming Register
      UTMI_CKTRIM  : aliased UTMI_UTMI_CKTRIM_Register;
   end record
     with Volatile;

   for UTMI_Peripheral use record
      UTMI_OHCIICR at 16#10# range 0 .. 31;
      UTMI_CKTRIM  at 16#30# range 0 .. 31;
   end record;

   --  USB Transmitter Interface Macrocell
   UTMI_Periph : aliased UTMI_Peripheral
     with Import, Address => UTMI_Base;

end SAM_SVD.UTMI;
