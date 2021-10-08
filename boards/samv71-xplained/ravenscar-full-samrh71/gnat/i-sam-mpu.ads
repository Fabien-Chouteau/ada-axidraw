--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.MPU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype MPU_TYPE_SEPARATE_Field is Interfaces.SAM.Bit;
   subtype MPU_TYPE_DREGION_Field is Interfaces.SAM.Byte;
   subtype MPU_TYPE_IREGION_Field is Interfaces.SAM.Byte;

   --  MPU Type Register
   type MPU_TYPE_Register is record
      --  Indicates support for unified or separate instruction and date memory
      --  maps.
      SEPARATE_k     : MPU_TYPE_SEPARATE_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7 := 16#0#;
      --  Indicates the number of supported MPU instruction regions.
      DREGION        : MPU_TYPE_DREGION_Field := 16#10#;
      --  Indicates the number of supported MPU data regions.
      IREGION        : MPU_TYPE_IREGION_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_TYPE_Register use record
      SEPARATE_k     at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DREGION        at 0 range 8 .. 15;
      IREGION        at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype MPU_CTRL_ENABLE_Field is Interfaces.SAM.Bit;
   subtype MPU_CTRL_HFNMIENA_Field is Interfaces.SAM.Bit;
   subtype MPU_CTRL_PRIVDEFENA_Field is Interfaces.SAM.Bit;

   --  MPU Control Register
   type MPU_CTRL_Register is record
      --  Enables the MPU
      ENABLE        : MPU_CTRL_ENABLE_Field := 16#0#;
      --  Enables the operation of MPU during hard fault, NMI, and FAULTMASK
      --  handlers.
      HFNMIENA      : MPU_CTRL_HFNMIENA_Field := 16#0#;
      --  Enables privileged software access to the default memory map.
      PRIVDEFENA    : MPU_CTRL_PRIVDEFENA_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_CTRL_Register use record
      ENABLE        at 0 range 0 .. 0;
      HFNMIENA      at 0 range 1 .. 1;
      PRIVDEFENA    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype MPU_RNR_REGION_Field is Interfaces.SAM.Byte;

   --  MPU Region Number Register
   type MPU_RNR_Register is record
      --  Indicates the MPU region referenced by the MPU_RBAR and MPU_RASR
      --  registers.
      REGION        : MPU_RNR_REGION_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_RNR_Register use record
      REGION        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MPU_RBAR_REGION_Field is Interfaces.SAM.UInt4;
   subtype MPU_RBAR_VALID_Field is Interfaces.SAM.Bit;
   subtype MPU_RBAR_ADDR_Field is Interfaces.SAM.UInt27;

   --  MPU Region Base Address Register
   type MPU_RBAR_Register is record
      --  MPU region field.
      REGION : MPU_RBAR_REGION_Field := 16#0#;
      --  MPU Region Number valid bit.
      VALID  : MPU_RBAR_VALID_Field := 16#0#;
      --  Region base address field.
      ADDR   : MPU_RBAR_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_RBAR_Register use record
      REGION at 0 range 0 .. 3;
      VALID  at 0 range 4 .. 4;
      ADDR   at 0 range 5 .. 31;
   end record;

   subtype MPU_RASR_ENABLE_Field is Interfaces.SAM.Bit;
   subtype MPU_RASR_SIZE_Field is Interfaces.SAM.UInt5;
   subtype MPU_RASR_SRD_Field is Interfaces.SAM.Byte;
   subtype MPU_RASR_B_Field is Interfaces.SAM.Bit;
   subtype MPU_RASR_C_Field is Interfaces.SAM.Bit;
   subtype MPU_RASR_S_Field is Interfaces.SAM.Bit;
   subtype MPU_RASR_TEX_Field is Interfaces.SAM.UInt3;
   subtype MPU_RASR_AP_Field is Interfaces.SAM.UInt3;
   subtype MPU_RASR_XN_Field is Interfaces.SAM.Bit;

   --  MPU Region Attribute and Size Register
   type MPU_RASR_Register is record
      --  Region enable bit.
      ENABLE         : MPU_RASR_ENABLE_Field := 16#0#;
      --  Specifies the size of the MPU protection region.
      SIZE           : MPU_RASR_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2 := 16#0#;
      --  Subregion disable bits.
      SRD            : MPU_RASR_SRD_Field := 16#0#;
      --  MPU access permission attributes.
      B              : MPU_RASR_B_Field := 16#0#;
      --  MPU access permission attributes.
      C              : MPU_RASR_C_Field := 16#0#;
      --  Shareable bit.
      S              : MPU_RASR_S_Field := 16#0#;
      --  MPU access permission attributes.
      TEX            : MPU_RASR_TEX_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  Access permission field.
      AP             : MPU_RASR_AP_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.SAM.Bit := 16#0#;
      --  Instruction access disable bit.
      XN             : MPU_RASR_XN_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_RASR_Register use record
      ENABLE         at 0 range 0 .. 0;
      SIZE           at 0 range 1 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SRD            at 0 range 8 .. 15;
      B              at 0 range 16 .. 16;
      C              at 0 range 17 .. 17;
      S              at 0 range 18 .. 18;
      TEX            at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      AP             at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      XN             at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Memory Protection Unit
   type MPU_Peripheral is record
      --  MPU Type Register
      TYPE_k  : aliased MPU_TYPE_Register;
      --  MPU Control Register
      CTRL    : aliased MPU_CTRL_Register;
      --  MPU Region Number Register
      RNR     : aliased MPU_RNR_Register;
      --  MPU Region Base Address Register
      RBAR    : aliased MPU_RBAR_Register;
      --  MPU Region Attribute and Size Register
      RASR    : aliased MPU_RASR_Register;
      --  MPU Alias 1 Region Base Address Register
      RBAR_A1 : aliased Interfaces.SAM.UInt32;
      --  MPU Alias 1 Region Attribute and Size Register
      RASR_A1 : aliased Interfaces.SAM.UInt32;
      --  MPU Alias 2 Region Base Address Register
      RBAR_A2 : aliased Interfaces.SAM.UInt32;
      --  MPU Alias 2 Region Attribute and Size Register
      RASR_A2 : aliased Interfaces.SAM.UInt32;
      --  MPU Alias 3 Region Base Address Register
      RBAR_A3 : aliased Interfaces.SAM.UInt32;
      --  MPU Alias 3 Region Attribute and Size Register
      RASR_A3 : aliased Interfaces.SAM.UInt32;
   end record
     with Volatile;

   for MPU_Peripheral use record
      TYPE_k  at 16#0# range 0 .. 31;
      CTRL    at 16#4# range 0 .. 31;
      RNR     at 16#8# range 0 .. 31;
      RBAR    at 16#C# range 0 .. 31;
      RASR    at 16#10# range 0 .. 31;
      RBAR_A1 at 16#14# range 0 .. 31;
      RASR_A1 at 16#18# range 0 .. 31;
      RBAR_A2 at 16#1C# range 0 .. 31;
      RASR_A2 at 16#20# range 0 .. 31;
      RBAR_A3 at 16#24# range 0 .. 31;
      RASR_A3 at 16#28# range 0 .. 31;
   end record;

   --  Memory Protection Unit
   MPU_Periph : aliased MPU_Peripheral
     with Import, Address => MPU_Base;

end Interfaces.SAM.MPU;
