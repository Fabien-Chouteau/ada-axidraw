pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.TRNG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Register Write Access Key
   type CR_WAKEYSelect is
     (--  Reset value for the field
      CR_WAKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.
      PASSWD)
     with Size => 24;
   for CR_WAKEYSelect use
     (CR_WAKEYSelect_Reset => 0,
      PASSWD => 5393991);

   --  Control Register
   type TRNG_CR_Register is record
      --  Write-only. Enables the TRNG to Provide Random Values
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write-only. Register Write Access Key
      WAKEY        : CR_WAKEYSelect := CR_WAKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_CR_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WAKEY        at 0 range 8 .. 31;
   end record;

   --  Interrupt Enable Register
   type TRNG_IER_Register is record
      --  Write-only. Data Ready Interrupt Enable
      DATRDY        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_IER_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Disable Register
   type TRNG_IDR_Register is record
      --  Write-only. Data Ready Interrupt Disable
      DATRDY        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_IDR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Mask Register
   type TRNG_IMR_Register is record
      --  Read-only. Data Ready Interrupt Mask
      DATRDY        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_IMR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Status Register
   type TRNG_ISR_Register is record
      --  Read-only. Data Ready (cleared on read)
      DATRDY        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRNG_ISR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  True Random Number Generator
   type TRNG_Peripheral is record
      --  Control Register
      CR    : aliased TRNG_CR_Register;
      --  Interrupt Enable Register
      IER   : aliased TRNG_IER_Register;
      --  Interrupt Disable Register
      IDR   : aliased TRNG_IDR_Register;
      --  Interrupt Mask Register
      IMR   : aliased TRNG_IMR_Register;
      --  Interrupt Status Register
      ISR   : aliased TRNG_ISR_Register;
      --  Output Data Register
      ODATA : aliased HAL.UInt32;
   end record
     with Volatile;

   for TRNG_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      IER   at 16#10# range 0 .. 31;
      IDR   at 16#14# range 0 .. 31;
      IMR   at 16#18# range 0 .. 31;
      ISR   at 16#1C# range 0 .. 31;
      ODATA at 16#50# range 0 .. 31;
   end record;

   --  True Random Number Generator
   TRNG_Periph : aliased TRNG_Peripheral
     with Import, Address => TRNG_Base;

end SAM_SVD.TRNG;
