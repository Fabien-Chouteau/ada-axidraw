pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.FPU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Floating-point Context Control Register
   type FPU_FPCCR_Register is record
      --  Lazy state preservation is active. Floating-point stack frame has
      --  been allocated but saving state to it has been deferred.
      LSPACT        : Boolean := False;
      --  Privilege level was user when the floating-point stack frame was
      --  allocated.
      USER          : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Mode was Thread Mode when the floating-point stack frame was
      --  allocated.
      THREAD        : Boolean := False;
      --  Priority permitted setting the HardFault handler to the pending state
      --  when the floating-point stack frame was allocated.
      HFRDY         : Boolean := False;
      --  MemManage is enabled and priority permitted setting the MemManage
      --  handler to the pending state when the floating-point stack frame was
      --  allocated.
      MMRDY         : Boolean := False;
      --  BusFault is enabled and priority permitted setting the BusFault
      --  handler to the pending state when the floating-point stack frame was
      --  allocated.
      BFRDY         : Boolean := False;
      --  unspecified
      Reserved_7_7  : HAL.Bit := 16#0#;
      --  DebugMonitor is enabled and priority permits setting MON_PEND when
      --  the floating-point stack frame was allocated.
      MONRDY        : Boolean := False;
      --  unspecified
      Reserved_9_29 : HAL.UInt21 := 16#0#;
      --  Enable automatic lazy state preservation for floating-point context.
      LSPEN         : Boolean := True;
      --  Enables CONTROL.FPCA setting on execution of a floating-point
      --  instruction. This results in automatic hardware state preservation
      --  and restoration, for floating-point context, on exception entry and
      --  exit.
      ASPEN         : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPU_FPCCR_Register use record
      LSPACT        at 0 range 0 .. 0;
      USER          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      THREAD        at 0 range 3 .. 3;
      HFRDY         at 0 range 4 .. 4;
      MMRDY         at 0 range 5 .. 5;
      BFRDY         at 0 range 6 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      MONRDY        at 0 range 8 .. 8;
      Reserved_9_29 at 0 range 9 .. 29;
      LSPEN         at 0 range 30 .. 30;
      ASPEN         at 0 range 31 .. 31;
   end record;

   subtype FPU_FPCAR_ADDRESS_Field is HAL.UInt29;

   --  Floating-point Context Address Register
   type FPU_FPCAR_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3 := 16#0#;
      --  The location of the unpopulated floating-point register space
      --  allocated on an exception stack frame.
      ADDRESS      : FPU_FPCAR_ADDRESS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPU_FPCAR_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      ADDRESS      at 0 range 3 .. 31;
   end record;

   subtype FPU_FPDSCR_RMode_Field is HAL.UInt2;

   --  Floating-point Default Status Control Register
   type FPU_FPDSCR_Register is record
      --  unspecified
      Reserved_0_21  : HAL.UInt22 := 16#0#;
      --  Default value for FPSCR.RMode.
      RMode          : FPU_FPDSCR_RMode_Field := 16#0#;
      --  Default value for FPSCR.FZ.
      FZ             : Boolean := False;
      --  Default value for FPSCR.DN.
      DN             : Boolean := False;
      --  Default value for FPSCR.AHP.
      AHP            : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPU_FPDSCR_Register use record
      Reserved_0_21  at 0 range 0 .. 21;
      RMode          at 0 range 22 .. 23;
      FZ             at 0 range 24 .. 24;
      DN             at 0 range 25 .. 25;
      AHP            at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype FPU_MVFR0_A_SIMD_registers_Field is HAL.UInt4;
   subtype FPU_MVFR0_Single_precision_Field is HAL.UInt4;
   subtype FPU_MVFR0_Double_precision_Field is HAL.UInt4;
   subtype FPU_MVFR0_FP_excep_trapping_Field is HAL.UInt4;
   subtype FPU_MVFR0_Divide_Field is HAL.UInt4;
   subtype FPU_MVFR0_Square_root_Field is HAL.UInt4;
   subtype FPU_MVFR0_Short_vectors_Field is HAL.UInt4;
   subtype FPU_MVFR0_FP_rounding_modes_Field is HAL.UInt4;

   --  Media and VFP Feature Register 0
   type FPU_MVFR0_Register is record
      --  Read-only. Indicates the size of the FP register bank
      A_SIMD_registers  : FPU_MVFR0_A_SIMD_registers_Field;
      --  Read-only. Indicates the hardware support for FP single-precision
      --  operations
      Single_precision  : FPU_MVFR0_Single_precision_Field;
      --  Read-only. Indicates the hardware support for FP double-precision
      --  operations
      Double_precision  : FPU_MVFR0_Double_precision_Field;
      --  Read-only. Indicates whether the FP hardware implementation supports
      --  exception trapping
      FP_excep_trapping : FPU_MVFR0_FP_excep_trapping_Field;
      --  Read-only. Indicates the hardware support for FP divide operations
      Divide            : FPU_MVFR0_Divide_Field;
      --  Read-only. Indicates the hardware support for FP square root
      --  operations
      Square_root       : FPU_MVFR0_Square_root_Field;
      --  Read-only. Indicates the hardware support for FP short vectors
      Short_vectors     : FPU_MVFR0_Short_vectors_Field;
      --  Read-only. Indicates the rounding modes supported by the FP
      --  floating-point hardware
      FP_rounding_modes : FPU_MVFR0_FP_rounding_modes_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPU_MVFR0_Register use record
      A_SIMD_registers  at 0 range 0 .. 3;
      Single_precision  at 0 range 4 .. 7;
      Double_precision  at 0 range 8 .. 11;
      FP_excep_trapping at 0 range 12 .. 15;
      Divide            at 0 range 16 .. 19;
      Square_root       at 0 range 20 .. 23;
      Short_vectors     at 0 range 24 .. 27;
      FP_rounding_modes at 0 range 28 .. 31;
   end record;

   subtype FPU_MVFR1_FtZ_mode_Field is HAL.UInt4;
   subtype FPU_MVFR1_D_NaN_mode_Field is HAL.UInt4;
   subtype FPU_MVFR1_FP_HPFP_Field is HAL.UInt4;
   subtype FPU_MVFR1_FP_fused_MAC_Field is HAL.UInt4;

   --  Media and VFP Feature Register 1
   type FPU_MVFR1_Register is record
      --  Read-only. Indicates whether the FP hardware implementation supports
      --  only the Flush-to-Zero mode of operation
      FtZ_mode      : FPU_MVFR1_FtZ_mode_Field;
      --  Read-only. Indicates whether the FP hardware implementation supports
      --  only the Default NaN mode
      D_NaN_mode    : FPU_MVFR1_D_NaN_mode_Field;
      --  unspecified
      Reserved_8_23 : HAL.UInt16;
      --  Read-only. Floating Point Half-Precision and double-precision
      FP_HPFP       : FPU_MVFR1_FP_HPFP_Field;
      --  Read-only. Indicates whether the FP supports fused multiply
      --  accumulate operations
      FP_fused_MAC  : FPU_MVFR1_FP_fused_MAC_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPU_MVFR1_Register use record
      FtZ_mode      at 0 range 0 .. 3;
      D_NaN_mode    at 0 range 4 .. 7;
      Reserved_8_23 at 0 range 8 .. 23;
      FP_HPFP       at 0 range 24 .. 27;
      FP_fused_MAC  at 0 range 28 .. 31;
   end record;

   subtype FPU_MVFR2_VFP_Misc_Field is HAL.UInt4;

   --  Media and VFP Feature Register 2
   type FPU_MVFR2_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4;
      --  Read-only. Indicates the hardware support for FP miscellaneous
      --  features
      VFP_Misc      : FPU_MVFR2_VFP_Misc_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPU_MVFR2_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      VFP_Misc      at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Floating Point Unit
   type FPU_Peripheral is record
      --  Floating-point Context Control Register
      FPCCR  : aliased FPU_FPCCR_Register;
      --  Floating-point Context Address Register
      FPCAR  : aliased FPU_FPCAR_Register;
      --  Floating-point Default Status Control Register
      FPDSCR : aliased FPU_FPDSCR_Register;
      --  Media and VFP Feature Register 0
      MVFR0  : aliased FPU_MVFR0_Register;
      --  Media and VFP Feature Register 1
      MVFR1  : aliased FPU_MVFR1_Register;
      --  Media and VFP Feature Register 2
      MVFR2  : aliased FPU_MVFR2_Register;
   end record
     with Volatile;

   for FPU_Peripheral use record
      FPCCR  at 16#4# range 0 .. 31;
      FPCAR  at 16#8# range 0 .. 31;
      FPDSCR at 16#C# range 0 .. 31;
      MVFR0  at 16#10# range 0 .. 31;
      MVFR1  at 16#14# range 0 .. 31;
      MVFR2  at 16#18# range 0 .. 31;
   end record;

   --  Floating Point Unit
   FPU_Periph : aliased FPU_Peripheral
     with Import, Address => FPU_Base;

end SAM_SVD.FPU;
