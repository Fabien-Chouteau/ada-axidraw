pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.ICM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ICM_CFG_BBC_Field is HAL.UInt4;

   --  User SHA Algorithm
   type CFG_UALGOSelect is
     (--  SHA1 algorithm processed
      SHA1,
      --  SHA256 algorithm processed
      SHA256,
      --  SHA224 algorithm processed
      SHA224)
     with Size => 3;
   for CFG_UALGOSelect use
     (SHA1 => 0,
      SHA256 => 1,
      SHA224 => 4);

   --  Configuration Register
   type ICM_CFG_Register is record
      --  Write Back Disable
      WBDIS          : Boolean := False;
      --  End of Monitoring Disable
      EOMDIS         : Boolean := False;
      --  Secondary List Branching Disable
      SLBDIS         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Bus Burden Control
      BBC            : ICM_CFG_BBC_Field := 16#0#;
      --  Automatic Switch To Compare Digest
      ASCD           : Boolean := False;
      --  Dual Input Buffer
      DUALBUFF       : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  User Initial Hash Value
      UIHASH         : Boolean := False;
      --  User SHA Algorithm
      UALGO          : CFG_UALGOSelect := SAM_SVD.ICM.SHA1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_CFG_Register use record
      WBDIS          at 0 range 0 .. 0;
      EOMDIS         at 0 range 1 .. 1;
      SLBDIS         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      BBC            at 0 range 4 .. 7;
      ASCD           at 0 range 8 .. 8;
      DUALBUFF       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      UIHASH         at 0 range 12 .. 12;
      UALGO          at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ICM_CTRL_REHASH_Field is HAL.UInt4;
   subtype ICM_CTRL_RMDIS_Field is HAL.UInt4;
   subtype ICM_CTRL_RMEN_Field is HAL.UInt4;

   --  Control Register
   type ICM_CTRL_Register is record
      --  Write-only. ICM Enable
      ENABLE         : Boolean := False;
      --  Write-only. ICM Disable Register
      DISABLE        : Boolean := False;
      --  Write-only. Software Reset
      SWRST          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Write-only. Recompute Internal Hash
      REHASH         : ICM_CTRL_REHASH_Field := 16#0#;
      --  Write-only. Region Monitoring Disable
      RMDIS          : ICM_CTRL_RMDIS_Field := 16#0#;
      --  Write-only. Region Monitoring Enable
      RMEN           : ICM_CTRL_RMEN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_CTRL_Register use record
      ENABLE         at 0 range 0 .. 0;
      DISABLE        at 0 range 1 .. 1;
      SWRST          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      REHASH         at 0 range 4 .. 7;
      RMDIS          at 0 range 8 .. 11;
      RMEN           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ICM_SR_RAWRMDIS_Field is HAL.UInt4;
   subtype ICM_SR_RMDIS_Field is HAL.UInt4;

   --  Status Register
   type ICM_SR_Register is record
      --  Read-only. ICM Enable Register
      ENABLE         : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Region Monitoring Disabled Raw Status
      RAWRMDIS       : ICM_SR_RAWRMDIS_Field;
      --  Read-only. Region Monitoring Disabled Status
      RMDIS          : ICM_SR_RMDIS_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_SR_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      RAWRMDIS       at 0 range 8 .. 11;
      RMDIS          at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ICM_IER_RHC_Field is HAL.UInt4;
   subtype ICM_IER_RDM_Field is HAL.UInt4;
   subtype ICM_IER_RBE_Field is HAL.UInt4;
   subtype ICM_IER_RWC_Field is HAL.UInt4;
   subtype ICM_IER_REC_Field is HAL.UInt4;
   subtype ICM_IER_RSU_Field is HAL.UInt4;

   --  Interrupt Enable Register
   type ICM_IER_Register is record
      --  Write-only. Region Hash Completed Interrupt Enable
      RHC            : ICM_IER_RHC_Field := 16#0#;
      --  Write-only. Region Digest Mismatch Interrupt Enable
      RDM            : ICM_IER_RDM_Field := 16#0#;
      --  Write-only. Region Bus Error Interrupt Enable
      RBE            : ICM_IER_RBE_Field := 16#0#;
      --  Write-only. Region Wrap Condition detected Interrupt Enable
      RWC            : ICM_IER_RWC_Field := 16#0#;
      --  Write-only. Region End bit Condition Detected Interrupt Enable
      REC            : ICM_IER_REC_Field := 16#0#;
      --  Write-only. Region Status Updated Interrupt Disable
      RSU            : ICM_IER_RSU_Field := 16#0#;
      --  Write-only. Undefined Register Access Detection Interrupt Enable
      URAD           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_IER_Register use record
      RHC            at 0 range 0 .. 3;
      RDM            at 0 range 4 .. 7;
      RBE            at 0 range 8 .. 11;
      RWC            at 0 range 12 .. 15;
      REC            at 0 range 16 .. 19;
      RSU            at 0 range 20 .. 23;
      URAD           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ICM_IDR_RHC_Field is HAL.UInt4;
   subtype ICM_IDR_RDM_Field is HAL.UInt4;
   subtype ICM_IDR_RBE_Field is HAL.UInt4;
   subtype ICM_IDR_RWC_Field is HAL.UInt4;
   subtype ICM_IDR_REC_Field is HAL.UInt4;
   subtype ICM_IDR_RSU_Field is HAL.UInt4;

   --  Interrupt Disable Register
   type ICM_IDR_Register is record
      --  Write-only. Region Hash Completed Interrupt Disable
      RHC            : ICM_IDR_RHC_Field := 16#0#;
      --  Write-only. Region Digest Mismatch Interrupt Disable
      RDM            : ICM_IDR_RDM_Field := 16#0#;
      --  Write-only. Region Bus Error Interrupt Disable
      RBE            : ICM_IDR_RBE_Field := 16#0#;
      --  Write-only. Region Wrap Condition Detected Interrupt Disable
      RWC            : ICM_IDR_RWC_Field := 16#0#;
      --  Write-only. Region End bit Condition detected Interrupt Disable
      REC            : ICM_IDR_REC_Field := 16#0#;
      --  Write-only. Region Status Updated Interrupt Disable
      RSU            : ICM_IDR_RSU_Field := 16#0#;
      --  Write-only. Undefined Register Access Detection Interrupt Disable
      URAD           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_IDR_Register use record
      RHC            at 0 range 0 .. 3;
      RDM            at 0 range 4 .. 7;
      RBE            at 0 range 8 .. 11;
      RWC            at 0 range 12 .. 15;
      REC            at 0 range 16 .. 19;
      RSU            at 0 range 20 .. 23;
      URAD           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ICM_IMR_RHC_Field is HAL.UInt4;
   subtype ICM_IMR_RDM_Field is HAL.UInt4;
   subtype ICM_IMR_RBE_Field is HAL.UInt4;
   subtype ICM_IMR_RWC_Field is HAL.UInt4;
   subtype ICM_IMR_REC_Field is HAL.UInt4;
   subtype ICM_IMR_RSU_Field is HAL.UInt4;

   --  Interrupt Mask Register
   type ICM_IMR_Register is record
      --  Read-only. Region Hash Completed Interrupt Mask
      RHC            : ICM_IMR_RHC_Field;
      --  Read-only. Region Digest Mismatch Interrupt Mask
      RDM            : ICM_IMR_RDM_Field;
      --  Read-only. Region Bus Error Interrupt Mask
      RBE            : ICM_IMR_RBE_Field;
      --  Read-only. Region Wrap Condition Detected Interrupt Mask
      RWC            : ICM_IMR_RWC_Field;
      --  Read-only. Region End bit Condition Detected Interrupt Mask
      REC            : ICM_IMR_REC_Field;
      --  Read-only. Region Status Updated Interrupt Mask
      RSU            : ICM_IMR_RSU_Field;
      --  Read-only. Undefined Register Access Detection Interrupt Mask
      URAD           : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_IMR_Register use record
      RHC            at 0 range 0 .. 3;
      RDM            at 0 range 4 .. 7;
      RBE            at 0 range 8 .. 11;
      RWC            at 0 range 12 .. 15;
      REC            at 0 range 16 .. 19;
      RSU            at 0 range 20 .. 23;
      URAD           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ICM_ISR_RHC_Field is HAL.UInt4;
   subtype ICM_ISR_RDM_Field is HAL.UInt4;
   subtype ICM_ISR_RBE_Field is HAL.UInt4;
   subtype ICM_ISR_RWC_Field is HAL.UInt4;
   subtype ICM_ISR_REC_Field is HAL.UInt4;
   subtype ICM_ISR_RSU_Field is HAL.UInt4;

   --  Interrupt Status Register
   type ICM_ISR_Register is record
      --  Read-only. Region Hash Completed
      RHC            : ICM_ISR_RHC_Field;
      --  Read-only. Region Digest Mismatch
      RDM            : ICM_ISR_RDM_Field;
      --  Read-only. Region Bus Error
      RBE            : ICM_ISR_RBE_Field;
      --  Read-only. Region Wrap Condition Detected
      RWC            : ICM_ISR_RWC_Field;
      --  Read-only. Region End Bit Condition Detected
      REC            : ICM_ISR_REC_Field;
      --  Read-only. Region Status Updated Detected
      RSU            : ICM_ISR_RSU_Field;
      --  Read-only. Undefined Register Access Detection Status
      URAD           : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_ISR_Register use record
      RHC            at 0 range 0 .. 3;
      RDM            at 0 range 4 .. 7;
      RBE            at 0 range 8 .. 11;
      RWC            at 0 range 12 .. 15;
      REC            at 0 range 16 .. 19;
      RSU            at 0 range 20 .. 23;
      URAD           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Undefined Register Access Trace
   type UASR_URATSelect is
     (--  Unspecified structure member set to one detected when the descriptor is
--  loaded.
      UNSPEC_STRUCT_MEMBER,
      --  ICM_CFG modified during active monitoring.
      ICM_CFG_MODIFIED,
      --  ICM_DSCR modified during active monitoring.
      ICM_DSCR_MODIFIED,
      --  ICM_HASH modified during active monitoring
      ICM_HASH_MODIFIED,
      --  Write-only register read access
      READ_ACCESS)
     with Size => 3;
   for UASR_URATSelect use
     (UNSPEC_STRUCT_MEMBER => 0,
      ICM_CFG_MODIFIED => 1,
      ICM_DSCR_MODIFIED => 2,
      ICM_HASH_MODIFIED => 3,
      READ_ACCESS => 4);

   --  Undefined Access Status Register
   type ICM_UASR_Register is record
      --  Read-only. Undefined Register Access Trace
      URAT          : UASR_URATSelect;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_UASR_Register use record
      URAT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ICM_DSCR_DASA_Field is HAL.UInt26;

   --  Region Descriptor Area Start Address Register
   type ICM_DSCR_Register is record
      --  unspecified
      Reserved_0_5 : HAL.UInt6 := 16#0#;
      --  Descriptor Area Start Address
      DASA         : ICM_DSCR_DASA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_DSCR_Register use record
      Reserved_0_5 at 0 range 0 .. 5;
      DASA         at 0 range 6 .. 31;
   end record;

   subtype ICM_HASH_HASA_Field is HAL.UInt25;

   --  Region Hash Area Start Address Register
   type ICM_HASH_Register is record
      --  unspecified
      Reserved_0_6 : HAL.UInt7 := 16#0#;
      --  Hash Area Start Address
      HASA         : ICM_HASH_HASA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_HASH_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      HASA         at 0 range 7 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEYSelect is
     (--  Reset value for the field
      WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN, WPITEN and WPCREN bits. Always reads as 0
      PASSWD)
     with Size => 24;
   for WPMR_WPKEYSelect use
     (WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 4801357);

   --  ICM Write Protection Mode Register
   type ICM_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  Write Protection Interrupt Enable
      WPITEN       : Boolean := False;
      --  Write Protection Control Enable
      WPCREN       : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      WPITEN       at 0 range 1 .. 1;
      WPCREN       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype ICM_WPSR_WPVSRC_Field is HAL.UInt8;

   --  ICM Write Protection Status Register
   type ICM_WPSR_Register is record
      --  Read-only. Write Protection Violation Status (Cleared on read)
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : ICM_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICM_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Integrity Check Monitor
   type ICM_Peripheral is record
      --  Configuration Register
      CFG     : aliased ICM_CFG_Register;
      --  Control Register
      CTRL    : aliased ICM_CTRL_Register;
      --  Status Register
      SR      : aliased ICM_SR_Register;
      --  Interrupt Enable Register
      IER     : aliased ICM_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased ICM_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased ICM_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased ICM_ISR_Register;
      --  Undefined Access Status Register
      UASR    : aliased ICM_UASR_Register;
      --  Region Descriptor Area Start Address Register
      DSCR    : aliased ICM_DSCR_Register;
      --  Region Hash Area Start Address Register
      HASH    : aliased ICM_HASH_Register;
      --  User Initial Hash Value 0 Register 0
      UIHVAL0 : aliased HAL.UInt32;
      --  User Initial Hash Value 0 Register 1
      UIHVAL1 : aliased HAL.UInt32;
      --  User Initial Hash Value 0 Register 2
      UIHVAL2 : aliased HAL.UInt32;
      --  User Initial Hash Value 0 Register 3
      UIHVAL3 : aliased HAL.UInt32;
      --  User Initial Hash Value 0 Register 4
      UIHVAL4 : aliased HAL.UInt32;
      --  User Initial Hash Value 0 Register 5
      UIHVAL5 : aliased HAL.UInt32;
      --  User Initial Hash Value 0 Register 6
      UIHVAL6 : aliased HAL.UInt32;
      --  User Initial Hash Value 0 Register 7
      UIHVAL7 : aliased HAL.UInt32;
      --  ICM Write Protection Mode Register
      WPMR    : aliased ICM_WPMR_Register;
      --  ICM Write Protection Status Register
      WPSR    : aliased ICM_WPSR_Register;
   end record
     with Volatile;

   for ICM_Peripheral use record
      CFG     at 16#0# range 0 .. 31;
      CTRL    at 16#4# range 0 .. 31;
      SR      at 16#8# range 0 .. 31;
      IER     at 16#10# range 0 .. 31;
      IDR     at 16#14# range 0 .. 31;
      IMR     at 16#18# range 0 .. 31;
      ISR     at 16#1C# range 0 .. 31;
      UASR    at 16#20# range 0 .. 31;
      DSCR    at 16#30# range 0 .. 31;
      HASH    at 16#34# range 0 .. 31;
      UIHVAL0 at 16#38# range 0 .. 31;
      UIHVAL1 at 16#3C# range 0 .. 31;
      UIHVAL2 at 16#40# range 0 .. 31;
      UIHVAL3 at 16#44# range 0 .. 31;
      UIHVAL4 at 16#48# range 0 .. 31;
      UIHVAL5 at 16#4C# range 0 .. 31;
      UIHVAL6 at 16#50# range 0 .. 31;
      UIHVAL7 at 16#54# range 0 .. 31;
      WPMR    at 16#E4# range 0 .. 31;
      WPSR    at 16#E8# range 0 .. 31;
   end record;

   --  Integrity Check Monitor
   ICM_Periph : aliased ICM_Peripheral
     with Import, Address => ICM_Base;

end SAM_SVD.ICM;
