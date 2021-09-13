pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.CHIPID is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CHIPID_CHIPID_CIDR_VERSION_Field is HAL.UInt5;

   --  Embedded Processor
   type CHIPID_CIDR_EPROCSelect is
     (--  Cortex-M7
      SAMx7,
      --  ARM946ES
      ARM946ES,
      --  ARM7TDMI
      ARM7TDMI,
      --  Cortex-M3
      CM3,
      --  ARM920T
      ARM920T,
      --  ARM926EJS
      ARM926EJS,
      --  Cortex-A5
      CA5,
      --  Cortex-M4
      CM4)
     with Size => 3;
   for CHIPID_CIDR_EPROCSelect use
     (SAMx7 => 0,
      ARM946ES => 1,
      ARM7TDMI => 2,
      CM3 => 3,
      ARM920T => 4,
      ARM926EJS => 5,
      CA5 => 6,
      CM4 => 7);

   --  Nonvolatile Program Memory Size
   type CHIPID_CIDR_NVPSIZSelect is
     (--  None
      NONE,
      --  8 Kbytes
      Val_8K,
      --  16 Kbytes
      Val_16K,
      --  32 Kbytes
      Val_32K,
      --  64 Kbytes
      Val_64K,
      --  128 Kbytes
      Val_128K,
      --  160 Kbytes
      Val_160K,
      --  256 Kbytes
      Val_256K,
      --  512 Kbytes
      Val_512K,
      --  1024 Kbytes
      Val_1024K,
      --  2048 Kbytes
      Val_2048K)
     with Size => 4;
   for CHIPID_CIDR_NVPSIZSelect use
     (NONE => 0,
      Val_8K => 1,
      Val_16K => 2,
      Val_32K => 3,
      Val_64K => 5,
      Val_128K => 7,
      Val_160K => 8,
      Val_256K => 9,
      Val_512K => 10,
      Val_1024K => 12,
      Val_2048K => 14);

   --  Second Nonvolatile Program Memory Size
   type CHIPID_CIDR_NVPSIZ2Select is
     (--  None
      NONE,
      --  8 Kbytes
      Val_8K,
      --  16 Kbytes
      Val_16K,
      --  32 Kbytes
      Val_32K,
      --  64 Kbytes
      Val_64K,
      --  128 Kbytes
      Val_128K,
      --  256 Kbytes
      Val_256K,
      --  512 Kbytes
      Val_512K,
      --  1024 Kbytes
      Val_1024K,
      --  2048 Kbytes
      Val_2048K)
     with Size => 4;
   for CHIPID_CIDR_NVPSIZ2Select use
     (NONE => 0,
      Val_8K => 1,
      Val_16K => 2,
      Val_32K => 3,
      Val_64K => 5,
      Val_128K => 7,
      Val_256K => 9,
      Val_512K => 10,
      Val_1024K => 12,
      Val_2048K => 14);

   --  Internal SRAM Size
   type CHIPID_CIDR_SRAMSIZSelect is
     (--  48 Kbytes
      Val_48K,
      --  192 Kbytes
      Val_192K,
      --  384 Kbytes
      Val_384K,
      --  6 Kbytes
      Val_6K,
      --  24 Kbytes
      Val_24K,
      --  4 Kbytes
      Val_4K,
      --  80 Kbytes
      Val_80K,
      --  160 Kbytes
      Val_160K,
      --  8 Kbytes
      Val_8K,
      --  16 Kbytes
      Val_16K,
      --  32 Kbytes
      Val_32K,
      --  64 Kbytes
      Val_64K,
      --  128 Kbytes
      Val_128K,
      --  256 Kbytes
      Val_256K,
      --  96 Kbytes
      Val_96K,
      --  512 Kbytes
      Val_512K)
     with Size => 4;
   for CHIPID_CIDR_SRAMSIZSelect use
     (Val_48K => 0,
      Val_192K => 1,
      Val_384K => 2,
      Val_6K => 3,
      Val_24K => 4,
      Val_4K => 5,
      Val_80K => 6,
      Val_160K => 7,
      Val_8K => 8,
      Val_16K => 9,
      Val_32K => 10,
      Val_64K => 11,
      Val_128K => 12,
      Val_256K => 13,
      Val_96K => 14,
      Val_512K => 15);

   --  Architecture Identifier
   type CHIPID_CIDR_ARCHSelect is
     (--  SAM V71
      SAMV71)
     with Size => 8;
   for CHIPID_CIDR_ARCHSelect use
     (SAMV71 => 18);

   --  Nonvolatile Program Memory Type
   type CHIPID_CIDR_NVPTYPSelect is
     (--  ROM
      ROM,
      --  ROMless or on-chip Flash
      ROMLESS,
      --  Embedded Flash Memory
      FLASH,
      --  ROM and Embedded Flash Memory- NVPSIZ is ROM size- NVPSIZ2 is Flash size
      ROM_FLASH,
      --  SRAM emulating ROM
      SRAM)
     with Size => 3;
   for CHIPID_CIDR_NVPTYPSelect use
     (ROM => 0,
      ROMLESS => 1,
      FLASH => 2,
      ROM_FLASH => 3,
      SRAM => 4);

   --  Chip ID Register
   type CHIPID_CHIPID_CIDR_Register is record
      --  Read-only. Version of the Device
      VERSION : CHIPID_CHIPID_CIDR_VERSION_Field;
      --  Read-only. Embedded Processor
      EPROC   : CHIPID_CIDR_EPROCSelect;
      --  Read-only. Nonvolatile Program Memory Size
      NVPSIZ  : CHIPID_CIDR_NVPSIZSelect;
      --  Read-only. Second Nonvolatile Program Memory Size
      NVPSIZ2 : CHIPID_CIDR_NVPSIZ2Select;
      --  Read-only. Internal SRAM Size
      SRAMSIZ : CHIPID_CIDR_SRAMSIZSelect;
      --  Read-only. Architecture Identifier
      ARCH    : CHIPID_CIDR_ARCHSelect;
      --  Read-only. Nonvolatile Program Memory Type
      NVPTYP  : CHIPID_CIDR_NVPTYPSelect;
      --  Read-only. Extension Flag
      EXT     : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHIPID_CHIPID_CIDR_Register use record
      VERSION at 0 range 0 .. 4;
      EPROC   at 0 range 5 .. 7;
      NVPSIZ  at 0 range 8 .. 11;
      NVPSIZ2 at 0 range 12 .. 15;
      SRAMSIZ at 0 range 16 .. 19;
      ARCH    at 0 range 20 .. 27;
      NVPTYP  at 0 range 28 .. 30;
      EXT     at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Chip Identifier
   type CHIPID_Peripheral is record
      --  Chip ID Register
      CHIPID_CIDR : aliased CHIPID_CHIPID_CIDR_Register;
      --  Chip ID Extension Register
      CHIPID_EXID : aliased HAL.UInt32;
   end record
     with Volatile;

   for CHIPID_Peripheral use record
      CHIPID_CIDR at 16#0# range 0 .. 31;
      CHIPID_EXID at 16#4# range 0 .. 31;
   end record;

   --  Chip Identifier
   CHIPID_Periph : aliased CHIPID_Peripheral
     with Import, Address => CHIPID_Base;

end SAM_SVD.CHIPID;
