pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.NVIC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Interrupt Set Enable Register n

   --  Interrupt Set Enable Register n
   type NVIC_ISER_Registers is array (0 .. 7) of HAL.UInt32;

   --  Interrupt Clear Enable Register n

   --  Interrupt Clear Enable Register n
   type NVIC_ICER_Registers is array (0 .. 7) of HAL.UInt32;

   --  Interrupt Set Pending Register n

   --  Interrupt Set Pending Register n
   type NVIC_ISPR_Registers is array (0 .. 7) of HAL.UInt32;

   --  Interrupt Clear Pending Register n

   --  Interrupt Clear Pending Register n
   type NVIC_ICPR_Registers is array (0 .. 7) of HAL.UInt32;

   --  Interrupt Active bit Register n

   --  Interrupt Active bit Register n
   type NVIC_IABR_Registers is array (0 .. 7) of HAL.UInt32;

   --  Interrupt Priority Register (8Bit wide) n

   --  Interrupt Priority Register (8Bit wide) n
   type NVIC_IP_Registers is array (0 .. 239) of HAL.UInt8;

   subtype NVIC_STIR_INTID_Field is HAL.UInt9;

   --  Software Trigger Interrupt Register
   type NVIC_STIR_Register is record
      --  Write-only. Interrupt ID of the interrupt to trigger, in the range
      --  0-239. For example, a value of 0x03 specifies interrupt IRQ3.
      INTID         : NVIC_STIR_INTID_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVIC_STIR_Register use record
      INTID         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Nested Vectored Interrupt Controller
   type NVIC_Peripheral is record
      --  Interrupt Set Enable Register n
      ISER : aliased NVIC_ISER_Registers;
      --  Interrupt Clear Enable Register n
      ICER : aliased NVIC_ICER_Registers;
      --  Interrupt Set Pending Register n
      ISPR : aliased NVIC_ISPR_Registers;
      --  Interrupt Clear Pending Register n
      ICPR : aliased NVIC_ICPR_Registers;
      --  Interrupt Active bit Register n
      IABR : aliased NVIC_IABR_Registers;
      --  Interrupt Priority Register (8Bit wide) n
      IP   : aliased NVIC_IP_Registers;
      --  Software Trigger Interrupt Register
      STIR : aliased NVIC_STIR_Register;
   end record
     with Volatile;

   for NVIC_Peripheral use record
      ISER at 16#0# range 0 .. 255;
      ICER at 16#80# range 0 .. 255;
      ISPR at 16#100# range 0 .. 255;
      ICPR at 16#180# range 0 .. 255;
      IABR at 16#200# range 0 .. 255;
      IP   at 16#300# range 0 .. 1919;
      STIR at 16#E00# range 0 .. 31;
   end record;

   --  Nested Vectored Interrupt Controller
   NVIC_Periph : aliased NVIC_Peripheral
     with Import, Address => NVIC_Base;

end SAM_SVD.NVIC;
