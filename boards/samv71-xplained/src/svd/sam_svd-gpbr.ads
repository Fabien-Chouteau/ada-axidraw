pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.GPBR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  General Purpose Backup Register 0

   --  General Purpose Backup Register 0
   type GPBR_SYS_GPBR_Registers is array (0 .. 7) of HAL.UInt32;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose Backup Registers
   type GPBR_Peripheral is record
      --  General Purpose Backup Register 0
      SYS_GPBR : aliased GPBR_SYS_GPBR_Registers;
   end record
     with Volatile;

   for GPBR_Peripheral use record
      SYS_GPBR at 0 range 0 .. 255;
   end record;

   --  General Purpose Backup Registers
   GPBR_Periph : aliased GPBR_Peripheral
     with Import, Address => GPBR_Base;

end SAM_SVD.GPBR;
