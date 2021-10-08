--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd


with System;

package Interfaces.SAM.SCB is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype SCB_CPUID_REVISION_Field is Interfaces.SAM.UInt4;
   subtype SCB_CPUID_PARTNO_Field is Interfaces.SAM.UInt12;
   subtype SCB_CPUID_ARCHITECTURE_Field is Interfaces.SAM.UInt4;
   subtype SCB_CPUID_VARIANT_Field is Interfaces.SAM.UInt4;
   subtype SCB_CPUID_IMPLEMENTER_Field is Interfaces.SAM.Byte;

   --  CPUID Base Register
   type SCB_CPUID_Register is record
      --  Read-only. Indicates patch release: 0x0 = Patch 0
      REVISION     : SCB_CPUID_REVISION_Field;
      --  Read-only. Indicates part number
      PARTNO       : SCB_CPUID_PARTNO_Field;
      --  Read-only. Indicates architecture. Reads as 0xF
      ARCHITECTURE : SCB_CPUID_ARCHITECTURE_Field;
      --  Read-only. Indicates processor revision: 0x2 = Revision 2
      VARIANT      : SCB_CPUID_VARIANT_Field;
      --  Read-only. Implementer code
      IMPLEMENTER  : SCB_CPUID_IMPLEMENTER_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CPUID_Register use record
      REVISION     at 0 range 0 .. 3;
      PARTNO       at 0 range 4 .. 15;
      ARCHITECTURE at 0 range 16 .. 19;
      VARIANT      at 0 range 20 .. 23;
      IMPLEMENTER  at 0 range 24 .. 31;
   end record;

   subtype SCB_ICSR_VECTACTIVE_Field is Interfaces.SAM.UInt9;

   --  Indicates whether there is an active exception other than the exception
   --  indicated by the current value of the IPSR
   type ICSR_RETTOBASESelect is
     (--  there are preempted active exceptions to execute
      VALUE_0,
      --  there are no active exceptions, or the currently-executing exception is the
--  only active exception
      VALUE_1)
     with Size => 1;
   for ICSR_RETTOBASESelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   subtype SCB_ICSR_VECTPENDING_Field is Interfaces.SAM.UInt6;
   subtype SCB_ICSR_ISRPENDING_Field is Interfaces.SAM.Bit;

   --  Indicates whether a pending exception will be serviced on exit from
   --  debug halt state
   type ICSR_ISRPREEMPTSelect is
     (--  Will not service
      VALUE_0,
      --  Will service a pending exception
      VALUE_1)
     with Size => 1;
   for ICSR_ISRPREEMPTSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Removes the pending status of the SysTick exception
   type ICSR_PENDSTCLRSelect is
     (--  no effect
      VALUE_0,
      --  removes the pending state from the SysTick exception
      VALUE_1)
     with Size => 1;
   for ICSR_PENDSTCLRSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Sets the SysTick exception as pending, or reads the current state of the
   --  exception
   type ICSR_PENDSTSETSelect is
     (--  write: no effect; read: SysTick exception is not pending
      VALUE_0,
      --  write: changes SysTick exception state to pending; read: SysTick exception
--  is pending
      VALUE_1)
     with Size => 1;
   for ICSR_PENDSTSETSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Removes the pending status of the PendSV exception
   type ICSR_PENDSVCLRSelect is
     (--  no effect
      VALUE_0,
      --  removes the pending state from the PendSV exception
      VALUE_1)
     with Size => 1;
   for ICSR_PENDSVCLRSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Sets the PendSV exception as pending, or reads the current state of the
   --  exception
   type ICSR_PENDSVSETSelect is
     (--  write: no effect; read: PendSV exception is not pending
      VALUE_0,
      --  write: changes PendSV exception state to pending; read: PendSV exception is
--  pending
      VALUE_1)
     with Size => 1;
   for ICSR_PENDSVSETSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Makes the NMI exception active, or reads the state of the exception
   type ICSR_NMIPENDSETSelect is
     (--  write: no effect; read: NMI exception is not pending
      VALUE_0,
      --  write: changes NMI exception state to pending; read: NMI exception is
--  pending
      VALUE_1)
     with Size => 1;
   for ICSR_NMIPENDSETSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Interrupt Control and State Register
   type SCB_ICSR_Register is record
      --  Active exception number
      VECTACTIVE     : SCB_ICSR_VECTACTIVE_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.SAM.UInt2 := 16#0#;
      --  Indicates whether there is an active exception other than the
      --  exception indicated by the current value of the IPSR
      RETTOBASE      : ICSR_RETTOBASESelect := Interfaces.SAM.SCB.VALUE_0;
      --  Exception number of the highest priority pending enabled exception
      VECTPENDING    : SCB_ICSR_VECTPENDING_Field := 16#0#;
      --  unspecified
      Reserved_18_21 : Interfaces.SAM.UInt4 := 16#0#;
      --  Is external interrupt, generated by the NVIC, pending
      ISRPENDING     : SCB_ICSR_ISRPENDING_Field := 16#0#;
      --  Indicates whether a pending exception will be serviced on exit from
      --  debug halt state
      ISRPREEMPT     : ICSR_ISRPREEMPTSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_24_24 : Interfaces.SAM.Bit := 16#0#;
      --  Removes the pending status of the SysTick exception
      PENDSTCLR      : ICSR_PENDSTCLRSelect := Interfaces.SAM.SCB.VALUE_0;
      --  Sets the SysTick exception as pending, or reads the current state of
      --  the exception
      PENDSTSET      : ICSR_PENDSTSETSelect := Interfaces.SAM.SCB.VALUE_0;
      --  Removes the pending status of the PendSV exception
      PENDSVCLR      : ICSR_PENDSVCLRSelect := Interfaces.SAM.SCB.VALUE_0;
      --  Sets the PendSV exception as pending, or reads the current state of
      --  the exception
      PENDSVSET      : ICSR_PENDSVSETSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_29_30 : Interfaces.SAM.UInt2 := 16#0#;
      --  Makes the NMI exception active, or reads the state of the exception
      NMIPENDSET     : ICSR_NMIPENDSETSelect := Interfaces.SAM.SCB.VALUE_0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ICSR_Register use record
      VECTACTIVE     at 0 range 0 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RETTOBASE      at 0 range 11 .. 11;
      VECTPENDING    at 0 range 12 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      ISRPENDING     at 0 range 22 .. 22;
      ISRPREEMPT     at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      PENDSTCLR      at 0 range 25 .. 25;
      PENDSTSET      at 0 range 26 .. 26;
      PENDSVCLR      at 0 range 27 .. 27;
      PENDSVSET      at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      NMIPENDSET     at 0 range 31 .. 31;
   end record;

   subtype SCB_VTOR_TBLOFF_Field is Interfaces.SAM.UInt25;

   --  Vector Table Offset Register
   type SCB_VTOR_Register is record
      --  unspecified
      Reserved_0_6 : Interfaces.SAM.UInt7 := 16#0#;
      --  Bits[31:7] of the vector table address
      TBLOFF       : SCB_VTOR_TBLOFF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_VTOR_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      TBLOFF       at 0 range 7 .. 31;
   end record;

   subtype SCB_AIRCR_VECTRESET_Field is Interfaces.SAM.Bit;
   subtype SCB_AIRCR_VECTCLRACTIVE_Field is Interfaces.SAM.Bit;

   --  System Reset Request
   type AIRCR_SYSRESETREQSelect is
     (--  no system reset request
      VALUE_0,
      --  asserts a signal to the outer system that requests a reset
      VALUE_1)
     with Size => 1;
   for AIRCR_SYSRESETREQSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   subtype SCB_AIRCR_PRIGROUP_Field is Interfaces.SAM.UInt3;

   --  Memory system endianness
   type AIRCR_ENDIANNESSSelect is
     (--  Little-endian
      VALUE_0,
      --  Big-endian
      VALUE_1)
     with Size => 1;
   for AIRCR_ENDIANNESSSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   subtype SCB_AIRCR_VECTKEY_Field is Interfaces.SAM.UInt16;

   --  Application Interrupt and Reset Control Register
   type SCB_AIRCR_Register is record
      --  Writing 1 to this bit causes a local system reset
      VECTRESET      : SCB_AIRCR_VECTRESET_Field := 16#0#;
      --  Clears all active state information for fixed and configurable
      --  exceptions
      VECTCLRACTIVE  : SCB_AIRCR_VECTCLRACTIVE_Field := 16#0#;
      --  System Reset Request
      SYSRESETREQ    : AIRCR_SYSRESETREQSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_3_7   : Interfaces.SAM.UInt5 := 16#0#;
      --  Interrupt priority grouping field. This field determines the split of
      --  group priority from subpriority.
      PRIGROUP       : SCB_AIRCR_PRIGROUP_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.SAM.UInt4 := 16#0#;
      --  Memory system endianness
      ENDIANNESS     : AIRCR_ENDIANNESSSelect := Interfaces.SAM.SCB.VALUE_0;
      --  Vector key
      VECTKEY        : SCB_AIRCR_VECTKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_AIRCR_Register use record
      VECTRESET      at 0 range 0 .. 0;
      VECTCLRACTIVE  at 0 range 1 .. 1;
      SYSRESETREQ    at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PRIGROUP       at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      ENDIANNESS     at 0 range 15 .. 15;
      VECTKEY        at 0 range 16 .. 31;
   end record;

   --  Determines whether, on an exit from an ISR that returns to the base
   --  level of execution priority, the processor enters a sleep state
   type SCR_SLEEPONEXITSelect is
     (--  o not sleep when returning to Thread mode
      VALUE_0,
      --  enter sleep, or deep sleep, on return from an ISR
      VALUE_1)
     with Size => 1;
   for SCR_SLEEPONEXITSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Provides a qualifying hint indicating that waking from sleep might take
   --  longer
   type SCR_SLEEPDEEPSelect is
     (--  sleep
      VALUE_0,
      --  deep sleep
      VALUE_1)
     with Size => 1;
   for SCR_SLEEPDEEPSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Determines whether an interrupt transition from inactive state to
   --  pending state is a wakeup event
   type SCR_SEVONPENDSelect is
     (--  only enabled interrupts or events can wakeup the processor, disabled
--  interrupts are excluded
      VALUE_0,
      --  enabled events and all interrupts, including disabled interrupts, can
--  wakeup the processor
      VALUE_1)
     with Size => 1;
   for SCR_SEVONPENDSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  System Control Register
   type SCB_SCR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.SAM.Bit := 16#0#;
      --  Determines whether, on an exit from an ISR that returns to the base
      --  level of execution priority, the processor enters a sleep state
      SLEEPONEXIT   : SCR_SLEEPONEXITSelect := Interfaces.SAM.SCB.VALUE_0;
      --  Provides a qualifying hint indicating that waking from sleep might
      --  take longer
      SLEEPDEEP     : SCR_SLEEPDEEPSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_3_3  : Interfaces.SAM.Bit := 16#0#;
      --  Determines whether an interrupt transition from inactive state to
      --  pending state is a wakeup event
      SEVONPEND     : SCR_SEVONPENDSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_5_31 : Interfaces.SAM.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SLEEPONEXIT   at 0 range 1 .. 1;
      SLEEPDEEP     at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      SEVONPEND     at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Controls whether the processor can enter Thread mode with exceptions
   --  active
   type CCR_NONBASETHRDENASelect is
     (--  processor can enter Thread mode only when no exception is active
      VALUE_0,
      --  processor can enter Thread mode from any level under the control of an
--  EXC_RETURN value
      VALUE_1)
     with Size => 1;
   for CCR_NONBASETHRDENASelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Enables unprivileged software access to the STIR
   type CCR_USERSETMPENDSelect is
     (--  disable
      VALUE_0,
      --  enable
      VALUE_1)
     with Size => 1;
   for CCR_USERSETMPENDSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Enables unaligned access traps
   type CCR_UNALIGN_TRPSelect is
     (--  do not trap unaligned halfword and word accesses
      VALUE_0,
      --  trap unaligned halfword and word accesses
      VALUE_1)
     with Size => 1;
   for CCR_UNALIGN_TRPSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Enables faulting or halting when the processor executes an SDIV or UDIV
   --  instruction with a divisor of 0
   type CCR_DIV_0_TRPSelect is
     (--  do not trap divide by 0
      VALUE_0,
      --  trap divide by 0
      VALUE_1)
     with Size => 1;
   for CCR_DIV_0_TRPSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Enables handlers with priority -1 or -2 to ignore data BusFaults caused
   --  by load and store instructions.
   type CCR_BFHFNMIGNSelect is
     (--  data bus faults caused by load and store instructions cause a lock-up
      VALUE_0,
      --  handlers running at priority -1 and -2 ignore data bus faults caused by
--  load and store instructions
      VALUE_1)
     with Size => 1;
   for CCR_BFHFNMIGNSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Indicates stack alignment on exception entry
   type CCR_STKALIGNSelect is
     (--  4-byte aligned
      VALUE_0,
      --  8-byte aligned
      VALUE_1)
     with Size => 1;
   for CCR_STKALIGNSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   subtype SCB_CCR_DC_Field is Interfaces.SAM.Bit;
   subtype SCB_CCR_IC_Field is Interfaces.SAM.Bit;
   subtype SCB_CCR_BP_Field is Interfaces.SAM.Bit;

   --  Configuration and Control Register
   type SCB_CCR_Register is record
      --  Controls whether the processor can enter Thread mode with exceptions
      --  active
      NONBASETHRDENA : CCR_NONBASETHRDENASelect := Interfaces.SAM.SCB.VALUE_0;
      --  Enables unprivileged software access to the STIR
      USERSETMPEND   : CCR_USERSETMPENDSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit := 16#0#;
      --  Enables unaligned access traps
      UNALIGN_TRP    : CCR_UNALIGN_TRPSelect := Interfaces.SAM.SCB.VALUE_0;
      --  Enables faulting or halting when the processor executes an SDIV or
      --  UDIV instruction with a divisor of 0
      DIV_0_TRP      : CCR_DIV_0_TRPSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Enables handlers with priority -1 or -2 to ignore data BusFaults
      --  caused by load and store instructions.
      BFHFNMIGN      : CCR_BFHFNMIGNSelect := Interfaces.SAM.SCB.VALUE_0;
      --  Indicates stack alignment on exception entry
      STKALIGN       : CCR_STKALIGNSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Cache enable bit
      DC             : SCB_CCR_DC_Field := 16#0#;
      --  Instruction cache enable bi
      IC             : SCB_CCR_IC_Field := 16#0#;
      --  Branch prediction enable bi
      BP             : SCB_CCR_BP_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CCR_Register use record
      NONBASETHRDENA at 0 range 0 .. 0;
      USERSETMPEND   at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      UNALIGN_TRP    at 0 range 3 .. 3;
      DIV_0_TRP      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      BFHFNMIGN      at 0 range 8 .. 8;
      STKALIGN       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      DC             at 0 range 16 .. 16;
      IC             at 0 range 17 .. 17;
      BP             at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SCB_SHPR1_PRI_4_Field is Interfaces.SAM.Byte;
   subtype SCB_SHPR1_PRI_5_Field is Interfaces.SAM.Byte;
   subtype SCB_SHPR1_PRI_6_Field is Interfaces.SAM.Byte;

   --  System Handler Priority Register 1
   type SCB_SHPR1_Register is record
      --  Priority of system handler 4, MemManage
      PRI_4          : SCB_SHPR1_PRI_4_Field := 16#0#;
      --  Priority of system handler 5, BusFault
      PRI_5          : SCB_SHPR1_PRI_5_Field := 16#0#;
      --  Priority of system handler 6, UsageFault
      PRI_6          : SCB_SHPR1_PRI_6_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHPR1_Register use record
      PRI_4          at 0 range 0 .. 7;
      PRI_5          at 0 range 8 .. 15;
      PRI_6          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SCB_SHPR2_PRI_11_Field is Interfaces.SAM.Byte;

   --  System Handler Priority Register 2
   type SCB_SHPR2_Register is record
      --  unspecified
      Reserved_0_23 : Interfaces.SAM.UInt24 := 16#0#;
      --  Priority of system handler 11, SVCall
      PRI_11        : SCB_SHPR2_PRI_11_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHPR2_Register use record
      Reserved_0_23 at 0 range 0 .. 23;
      PRI_11        at 0 range 24 .. 31;
   end record;

   subtype SCB_SHPR3_PRI_12_Field is Interfaces.SAM.Byte;
   subtype SCB_SHPR3_PRI_14_Field is Interfaces.SAM.Byte;
   subtype SCB_SHPR3_PRI_15_Field is Interfaces.SAM.Byte;

   --  System Handler Priority Register 3
   type SCB_SHPR3_Register is record
      --  Priority of system handler 12, SysTick
      PRI_12        : SCB_SHPR3_PRI_12_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : Interfaces.SAM.Byte := 16#0#;
      --  Priority of system handler 14, PendSV
      PRI_14        : SCB_SHPR3_PRI_14_Field := 16#0#;
      --  Priority of system handler 15, SysTick exception
      PRI_15        : SCB_SHPR3_PRI_15_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHPR3_Register use record
      PRI_12        at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      PRI_14        at 0 range 16 .. 23;
      PRI_15        at 0 range 24 .. 31;
   end record;

   type SHCSR_MEMFAULTACTSelect is
     (--  exception is not active
      VALUE_0,
      --  exception is active
      VALUE_1)
     with Size => 1;
   for SHCSR_MEMFAULTACTSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_BUSFAULTACTSelect is
     (--  exception is not active
      VALUE_0,
      --  exception is active
      VALUE_1)
     with Size => 1;
   for SHCSR_BUSFAULTACTSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_USGFAULTACTSelect is
     (--  exception is not active
      VALUE_0,
      --  exception is active
      VALUE_1)
     with Size => 1;
   for SHCSR_USGFAULTACTSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_SVCALLACTSelect is
     (--  exception is not active
      VALUE_0,
      --  exception is active
      VALUE_1)
     with Size => 1;
   for SHCSR_SVCALLACTSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_MONITORACTSelect is
     (--  exception is not active
      VALUE_0,
      --  exception is active
      VALUE_1)
     with Size => 1;
   for SHCSR_MONITORACTSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_PENDSVACTSelect is
     (--  exception is not active
      VALUE_0,
      --  exception is active
      VALUE_1)
     with Size => 1;
   for SHCSR_PENDSVACTSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_SYSTICKACTSelect is
     (--  exception is not active
      VALUE_0,
      --  exception is active
      VALUE_1)
     with Size => 1;
   for SHCSR_SYSTICKACTSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_USGFAULTPENDEDSelect is
     (--  exception is not pending
      VALUE_0,
      --  exception is pending
      VALUE_1)
     with Size => 1;
   for SHCSR_USGFAULTPENDEDSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_MEMFAULTPENDEDSelect is
     (--  exception is not pending
      VALUE_0,
      --  exception is pending
      VALUE_1)
     with Size => 1;
   for SHCSR_MEMFAULTPENDEDSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_BUSFAULTPENDEDSelect is
     (--  exception is not pending
      VALUE_0,
      --  exception is pending
      VALUE_1)
     with Size => 1;
   for SHCSR_BUSFAULTPENDEDSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_SVCALLPENDEDSelect is
     (--  exception is not pending
      VALUE_0,
      --  exception is pending
      VALUE_1)
     with Size => 1;
   for SHCSR_SVCALLPENDEDSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_MEMFAULTENASelect is
     (--  disable the exception
      VALUE_0,
      --  enable the exception
      VALUE_1)
     with Size => 1;
   for SHCSR_MEMFAULTENASelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_BUSFAULTENASelect is
     (--  disable the exception
      VALUE_0,
      --  enable the exception
      VALUE_1)
     with Size => 1;
   for SHCSR_BUSFAULTENASelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type SHCSR_USGFAULTENASelect is
     (--  disable the exception
      VALUE_0,
      --  enable the exception
      VALUE_1)
     with Size => 1;
   for SHCSR_USGFAULTENASelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  System Handler Control and State Register
   type SCB_SHCSR_Register is record
      MEMFAULTACT    : SHCSR_MEMFAULTACTSelect := Interfaces.SAM.SCB.VALUE_0;
      BUSFAULTACT    : SHCSR_BUSFAULTACTSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit := 16#0#;
      USGFAULTACT    : SHCSR_USGFAULTACTSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_4_6   : Interfaces.SAM.UInt3 := 16#0#;
      SVCALLACT      : SHCSR_SVCALLACTSelect := Interfaces.SAM.SCB.VALUE_0;
      MONITORACT     : SHCSR_MONITORACTSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_9_9   : Interfaces.SAM.Bit := 16#0#;
      PENDSVACT      : SHCSR_PENDSVACTSelect := Interfaces.SAM.SCB.VALUE_0;
      SYSTICKACT     : SHCSR_SYSTICKACTSelect := Interfaces.SAM.SCB.VALUE_0;
      USGFAULTPENDED : SHCSR_USGFAULTPENDEDSelect :=
                        Interfaces.SAM.SCB.VALUE_0;
      MEMFAULTPENDED : SHCSR_MEMFAULTPENDEDSelect :=
                        Interfaces.SAM.SCB.VALUE_0;
      BUSFAULTPENDED : SHCSR_BUSFAULTPENDEDSelect :=
                        Interfaces.SAM.SCB.VALUE_0;
      SVCALLPENDED   : SHCSR_SVCALLPENDEDSelect := Interfaces.SAM.SCB.VALUE_0;
      MEMFAULTENA    : SHCSR_MEMFAULTENASelect := Interfaces.SAM.SCB.VALUE_0;
      BUSFAULTENA    : SHCSR_BUSFAULTENASelect := Interfaces.SAM.SCB.VALUE_0;
      USGFAULTENA    : SHCSR_USGFAULTENASelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHCSR_Register use record
      MEMFAULTACT    at 0 range 0 .. 0;
      BUSFAULTACT    at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      USGFAULTACT    at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      SVCALLACT      at 0 range 7 .. 7;
      MONITORACT     at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PENDSVACT      at 0 range 10 .. 10;
      SYSTICKACT     at 0 range 11 .. 11;
      USGFAULTPENDED at 0 range 12 .. 12;
      MEMFAULTPENDED at 0 range 13 .. 13;
      BUSFAULTPENDED at 0 range 14 .. 14;
      SVCALLPENDED   at 0 range 15 .. 15;
      MEMFAULTENA    at 0 range 16 .. 16;
      BUSFAULTENA    at 0 range 17 .. 17;
      USGFAULTENA    at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   type CFSR_IACCVIOLSelect is
     (--  no instruction access violation fault
      VALUE_0,
      --  the processor attempted an instruction fetch from a location that does not
--  permit execution
      VALUE_1)
     with Size => 1;
   for CFSR_IACCVIOLSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_DACCVIOLSelect is
     (--  no data access violation fault
      VALUE_0,
      --  the processor attempted a load or store at a location that does not permit
--  the operation
      VALUE_1)
     with Size => 1;
   for CFSR_DACCVIOLSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_MUNSTKERRSelect is
     (--  no unstacking fault
      VALUE_0,
      --  unstack for an exception return has caused one or more access violations
      VALUE_1)
     with Size => 1;
   for CFSR_MUNSTKERRSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_MSTKERRSelect is
     (--  no stacking fault
      VALUE_0,
      --  stacking for an exception entry has caused one or more access violations
      VALUE_1)
     with Size => 1;
   for CFSR_MSTKERRSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_MLSPERRSelect is
     (--  No MemManage fault occurred during floating-point lazy state preservation
      VALUE_0,
      --  A MemManage fault occurred during floating-point lazy state preservation
      VALUE_1)
     with Size => 1;
   for CFSR_MLSPERRSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_MMARVALIDSelect is
     (--  value in MMAR is not a valid fault address
      VALUE_0,
      --  MMAR holds a valid fault address
      VALUE_1)
     with Size => 1;
   for CFSR_MMARVALIDSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_IBUSERRSelect is
     (--  no instruction bus error
      VALUE_0,
      --  instruction bus error
      VALUE_1)
     with Size => 1;
   for CFSR_IBUSERRSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_PRECISERRSelect is
     (--  no precise data bus error
      VALUE_0,
      --  a data bus error has occurred, and the PC value stacked for the exception
--  return points to the instruction that caused the fault
      VALUE_1)
     with Size => 1;
   for CFSR_PRECISERRSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_IMPRECISERRSelect is
     (--  no imprecise data bus error
      VALUE_0,
      --  a data bus error has occurred, but the return address in the stack frame is
--  not related to the instruction that caused the error
      VALUE_1)
     with Size => 1;
   for CFSR_IMPRECISERRSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_UNSTKERRSelect is
     (--  no unstacking fault
      VALUE_0,
      --  unstack for an exception return has caused one or more BusFaults
      VALUE_1)
     with Size => 1;
   for CFSR_UNSTKERRSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_STKERRSelect is
     (--  no stacking fault
      VALUE_0,
      --  stacking for an exception entry has caused one or more BusFaults
      VALUE_1)
     with Size => 1;
   for CFSR_STKERRSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_LSPERRSelect is
     (--  No bus fault occurred during floating-point lazy state preservation
      VALUE_0,
      --  A bus fault occurred during floating-point lazy state preservation
      VALUE_1)
     with Size => 1;
   for CFSR_LSPERRSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_BFARVALIDSelect is
     (--  value in BFAR is not a valid fault address
      VALUE_0,
      --  BFAR holds a valid fault address
      VALUE_1)
     with Size => 1;
   for CFSR_BFARVALIDSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_UNDEFINSTRSelect is
     (--  no undefined instruction UsageFault
      VALUE_0,
      --  the processor has attempted to execute an undefined instruction
      VALUE_1)
     with Size => 1;
   for CFSR_UNDEFINSTRSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_INVSTATESelect is
     (--  no invalid state UsageFault
      VALUE_0,
      --  the processor has attempted to execute an instruction that makes illegal
--  use of the EPSR
      VALUE_1)
     with Size => 1;
   for CFSR_INVSTATESelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_INVPCSelect is
     (--  no invalid PC load UsageFault
      VALUE_0,
      --  the processor has attempted an illegal load of EXC_RETURN to the PC
      VALUE_1)
     with Size => 1;
   for CFSR_INVPCSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_NOCPSelect is
     (--  no UsageFault caused by attempting to access a coprocessor
      VALUE_0,
      --  the processor has attempted to access a coprocessor
      VALUE_1)
     with Size => 1;
   for CFSR_NOCPSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_UNALIGNEDSelect is
     (--  no unaligned access fault, or unaligned access trapping not enabled
      VALUE_0,
      --  the processor has made an unaligned memory access
      VALUE_1)
     with Size => 1;
   for CFSR_UNALIGNEDSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   type CFSR_DIVBYZEROSelect is
     (--  no divide by zero fault, or divide by zero trapping not enabled
      VALUE_0,
      --  the processor has executed an SDIV or UDIV instruction with a divisor of 0
      VALUE_1)
     with Size => 1;
   for CFSR_DIVBYZEROSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Configurable Fault Status Registers
   type SCB_CFSR_Register is record
      IACCVIOL       : CFSR_IACCVIOLSelect := Interfaces.SAM.SCB.VALUE_0;
      DACCVIOL       : CFSR_DACCVIOLSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit := 16#0#;
      MUNSTKERR      : CFSR_MUNSTKERRSelect := Interfaces.SAM.SCB.VALUE_0;
      MSTKERR        : CFSR_MSTKERRSelect := Interfaces.SAM.SCB.VALUE_0;
      MLSPERR        : CFSR_MLSPERRSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_6_6   : Interfaces.SAM.Bit := 16#0#;
      MMARVALID      : CFSR_MMARVALIDSelect := Interfaces.SAM.SCB.VALUE_0;
      IBUSERR        : CFSR_IBUSERRSelect := Interfaces.SAM.SCB.VALUE_0;
      PRECISERR      : CFSR_PRECISERRSelect := Interfaces.SAM.SCB.VALUE_0;
      IMPRECISERR    : CFSR_IMPRECISERRSelect := Interfaces.SAM.SCB.VALUE_0;
      UNSTKERR       : CFSR_UNSTKERRSelect := Interfaces.SAM.SCB.VALUE_0;
      STKERR         : CFSR_STKERRSelect := Interfaces.SAM.SCB.VALUE_0;
      LSPERR         : CFSR_LSPERRSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_14_14 : Interfaces.SAM.Bit := 16#0#;
      BFARVALID      : CFSR_BFARVALIDSelect := Interfaces.SAM.SCB.VALUE_0;
      UNDEFINSTR     : CFSR_UNDEFINSTRSelect := Interfaces.SAM.SCB.VALUE_0;
      INVSTATE       : CFSR_INVSTATESelect := Interfaces.SAM.SCB.VALUE_0;
      INVPC          : CFSR_INVPCSelect := Interfaces.SAM.SCB.VALUE_0;
      NOCP           : CFSR_NOCPSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      UNALIGNED      : CFSR_UNALIGNEDSelect := Interfaces.SAM.SCB.VALUE_0;
      DIVBYZERO      : CFSR_DIVBYZEROSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_26_31 : Interfaces.SAM.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CFSR_Register use record
      IACCVIOL       at 0 range 0 .. 0;
      DACCVIOL       at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      MUNSTKERR      at 0 range 3 .. 3;
      MSTKERR        at 0 range 4 .. 4;
      MLSPERR        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      MMARVALID      at 0 range 7 .. 7;
      IBUSERR        at 0 range 8 .. 8;
      PRECISERR      at 0 range 9 .. 9;
      IMPRECISERR    at 0 range 10 .. 10;
      UNSTKERR       at 0 range 11 .. 11;
      STKERR         at 0 range 12 .. 12;
      LSPERR         at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      BFARVALID      at 0 range 15 .. 15;
      UNDEFINSTR     at 0 range 16 .. 16;
      INVSTATE       at 0 range 17 .. 17;
      INVPC          at 0 range 18 .. 18;
      NOCP           at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      UNALIGNED      at 0 range 24 .. 24;
      DIVBYZERO      at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Indicates when a fault has occurred because of a vector table read error
   --  on exception processing
   type HFSR_VECTTBLSelect is
     (--  no BusFault on vector table read
      VALUE_0,
      --  BusFault on vector table read
      VALUE_1)
     with Size => 1;
   for HFSR_VECTTBLSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Indicates that a fault with configurable priority has been escalated to
   --  a HardFault exception
   type HFSR_FORCEDSelect is
     (--  no forced HardFault
      VALUE_0,
      --  forced HardFault
      VALUE_1)
     with Size => 1;
   for HFSR_FORCEDSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   subtype SCB_HFSR_DEBUGEVT_Field is Interfaces.SAM.Bit;

   --  HardFault Status register
   type SCB_HFSR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.SAM.Bit := 16#0#;
      --  Indicates when a fault has occurred because of a vector table read
      --  error on exception processing
      VECTTBL       : HFSR_VECTTBLSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_2_29 : Interfaces.SAM.UInt28 := 16#0#;
      --  Indicates that a fault with configurable priority has been escalated
      --  to a HardFault exception
      FORCED        : HFSR_FORCEDSelect := Interfaces.SAM.SCB.VALUE_0;
      --  Indicates when a Debug event has occurred
      DEBUGEVT      : SCB_HFSR_DEBUGEVT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_HFSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      VECTTBL       at 0 range 1 .. 1;
      Reserved_2_29 at 0 range 2 .. 29;
      FORCED        at 0 range 30 .. 30;
      DEBUGEVT      at 0 range 31 .. 31;
   end record;

   --  debug event generated by
   type DFSR_HALTEDSelect is
     (--  No active halt request debug event
      VALUE_0,
      --  Halt request debug event active
      VALUE_1)
     with Size => 1;
   for DFSR_HALTEDSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  debug event generated by BKPT instruction execution or a breakpoint
   --  match in FPB
   type DFSR_BKPTSelect is
     (--  No current breakpoint debug event
      VALUE_0,
      --  At least one current breakpoint debug event
      VALUE_1)
     with Size => 1;
   for DFSR_BKPTSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  debug event generated by the DWT
   type DFSR_DWTTRAPSelect is
     (--  No current debug events generated by the DWT
      VALUE_0,
      --  At least one current debug event generated by the DWT
      VALUE_1)
     with Size => 1;
   for DFSR_DWTTRAPSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  triggering of a Vector catch
   type DFSR_VCATCHSelect is
     (--  No Vector catch triggered
      VALUE_0,
      --  Vector catch triggered
      VALUE_1)
     with Size => 1;
   for DFSR_VCATCHSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  debug event generated because of the assertion of an external debug
   --  request
   type DFSR_EXTERNALSelect is
     (--  No EDBGRQ debug event
      VALUE_0,
      --  EDBGRQ debug event
      VALUE_1)
     with Size => 1;
   for DFSR_EXTERNALSelect use
     (VALUE_0 => 0,
      VALUE_1 => 1);

   --  Debug Fault Status Register
   type SCB_DFSR_Register is record
      --  debug event generated by
      HALTED        : DFSR_HALTEDSelect := Interfaces.SAM.SCB.VALUE_0;
      --  debug event generated by BKPT instruction execution or a breakpoint
      --  match in FPB
      BKPT          : DFSR_BKPTSelect := Interfaces.SAM.SCB.VALUE_0;
      --  debug event generated by the DWT
      DWTTRAP       : DFSR_DWTTRAPSelect := Interfaces.SAM.SCB.VALUE_0;
      --  triggering of a Vector catch
      VCATCH        : DFSR_VCATCHSelect := Interfaces.SAM.SCB.VALUE_0;
      --  debug event generated because of the assertion of an external debug
      --  request
      EXTERNAL      : DFSR_EXTERNALSelect := Interfaces.SAM.SCB.VALUE_0;
      --  unspecified
      Reserved_5_31 : Interfaces.SAM.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_DFSR_Register use record
      HALTED        at 0 range 0 .. 0;
      BKPT          at 0 range 1 .. 1;
      DWTTRAP       at 0 range 2 .. 2;
      VCATCH        at 0 range 3 .. 3;
      EXTERNAL      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Level of Coherency
   type CLIDR_LoCSelect is
     (--  if neither instruction nor data cache is implemented
      LEVEL_1,
      --  if either cache is implemented
      LEVEL_2)
     with Size => 3;
   for CLIDR_LoCSelect use
     (LEVEL_1 => 0,
      LEVEL_2 => 1);

   --  Level of Unification
   type CLIDR_LoUSelect is
     (--  if neither instruction nor data cache is implemented
      LEVEL_1,
      --  if either cache is implemented
      LEVEL_2)
     with Size => 3;
   for CLIDR_LoUSelect use
     (LEVEL_1 => 0,
      LEVEL_2 => 1);

   --  Cache Level ID Register
   type SCB_CLIDR_Register is record
      --  unspecified
      Reserved_0_23  : Interfaces.SAM.UInt24;
      --  Read-only. Level of Coherency
      LoC            : CLIDR_LoCSelect;
      --  Read-only. Level of Unification
      LoU            : CLIDR_LoUSelect;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CLIDR_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      LoC            at 0 range 24 .. 26;
      LoU            at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype SCB_CTR_IMINLINE_Field is Interfaces.SAM.UInt4;
   subtype SCB_CTR_DMINLINE_Field is Interfaces.SAM.UInt4;
   subtype SCB_CTR_ERG_Field is Interfaces.SAM.UInt4;
   subtype SCB_CTR_CWG_Field is Interfaces.SAM.UInt4;
   subtype SCB_CTR_FORMAT_Field is Interfaces.SAM.UInt3;

   --  Cache Type Register
   type SCB_CTR_Register is record
      --  Read-only. Smallest cache line of all the instruction caches under
      --  the control of the processor
      IMINLINE       : SCB_CTR_IMINLINE_Field;
      --  unspecified
      Reserved_4_15  : Interfaces.SAM.UInt12;
      --  Read-only. Smallest cache line of all the data and unified caches
      --  under the core control
      DMINLINE       : SCB_CTR_DMINLINE_Field;
      --  Read-only. Exclusives Reservation Granule
      ERG            : SCB_CTR_ERG_Field;
      --  Read-only. Cache Writeback Granule
      CWG            : SCB_CTR_CWG_Field;
      --  unspecified
      Reserved_28_28 : Interfaces.SAM.Bit;
      --  Read-only. Register format
      FORMAT         : SCB_CTR_FORMAT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CTR_Register use record
      IMINLINE       at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      DMINLINE       at 0 range 16 .. 19;
      ERG            at 0 range 20 .. 23;
      CWG            at 0 range 24 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      FORMAT         at 0 range 29 .. 31;
   end record;

   subtype SCB_CCSIDR_LineSize_Field is Interfaces.SAM.UInt3;
   subtype SCB_CCSIDR_Associativity_Field is Interfaces.SAM.UInt9;
   subtype SCB_CCSIDR_NumSets_Field is Interfaces.SAM.UInt16;
   subtype SCB_CCSIDR_WA_Field is Interfaces.SAM.Bit;
   subtype SCB_CCSIDR_RA_Field is Interfaces.SAM.Bit;
   subtype SCB_CCSIDR_WB_Field is Interfaces.SAM.Bit;
   subtype SCB_CCSIDR_WT_Field is Interfaces.SAM.Bit;

   --  Cache Size ID Register
   type SCB_CCSIDR_Register is record
      --  Read-only. number of words in each cache line
      LineSize      : SCB_CCSIDR_LineSize_Field;
      --  Read-only. number of ways
      Associativity : SCB_CCSIDR_Associativity_Field;
      --  Read-only. number of sets
      NumSets       : SCB_CCSIDR_NumSets_Field;
      --  Read-only. Write allocation support
      WA            : SCB_CCSIDR_WA_Field;
      --  Read-only. Read allocation support
      RA            : SCB_CCSIDR_RA_Field;
      --  Read-only. Write-Back support
      WB            : SCB_CCSIDR_WB_Field;
      --  Read-only. Write-Through support
      WT            : SCB_CCSIDR_WT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CCSIDR_Register use record
      LineSize      at 0 range 0 .. 2;
      Associativity at 0 range 3 .. 11;
      NumSets       at 0 range 12 .. 27;
      WA            at 0 range 28 .. 28;
      RA            at 0 range 29 .. 29;
      WB            at 0 range 30 .. 30;
      WT            at 0 range 31 .. 31;
   end record;

   --  selection of instruction or data cache
   type CSSELR_INDSelect is
     (--  Data cache
      DATA,
      --  Instruction cache
      INSTRUCTION)
     with Size => 1;
   for CSSELR_INDSelect use
     (DATA => 0,
      INSTRUCTION => 1);

   subtype SCB_CSSELR_LEVEL_Field is Interfaces.SAM.UInt3;

   --  Cache Size Selection Register
   type SCB_CSSELR_Register is record
      --  selection of instruction or data cache
      IND           : CSSELR_INDSelect := Interfaces.SAM.SCB.DATA;
      --  cache level selected
      LEVEL         : SCB_CSSELR_LEVEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CSSELR_Register use record
      IND           at 0 range 0 .. 0;
      LEVEL         at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  SCB_CPACR_CP array element
   subtype SCB_CPACR_CP_Element is Interfaces.SAM.UInt2;

   --  SCB_CPACR_CP array
   type SCB_CPACR_CP_Field_Array is array (10 .. 11) of SCB_CPACR_CP_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for SCB_CPACR_CP
   type SCB_CPACR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  CP as an array
            Arr : SCB_CPACR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SCB_CPACR_CP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Coprocessor Access Control Register
   type SCB_CPACR_Register is record
      --  unspecified
      Reserved_0_19  : Interfaces.SAM.UInt20 := 16#0#;
      --  Access privileges for coprocessor 10.
      CP             : SCB_CPACR_CP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CPACR_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      CP             at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SCB_STIR_INTID_Field is Interfaces.SAM.UInt9;

   --  Software Trigger Interrupt Register
   type SCB_STIR_Register is record
      --  Write-only. Interrupt ID of the interrupt to trigger, in the range
      --  0-239. For example, a value of 0x03 specifies interrupt IRQ3.
      INTID         : SCB_STIR_INTID_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_STIR_Register use record
      INTID         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Block
   type SCB_Peripheral is record
      --  CPUID Base Register
      CPUID  : aliased SCB_CPUID_Register;
      --  Interrupt Control and State Register
      ICSR   : aliased SCB_ICSR_Register;
      --  Vector Table Offset Register
      VTOR   : aliased SCB_VTOR_Register;
      --  Application Interrupt and Reset Control Register
      AIRCR  : aliased SCB_AIRCR_Register;
      --  System Control Register
      SCR    : aliased SCB_SCR_Register;
      --  Configuration and Control Register
      CCR    : aliased SCB_CCR_Register;
      --  System Handler Priority Register 1
      SHPR1  : aliased SCB_SHPR1_Register;
      --  System Handler Priority Register 2
      SHPR2  : aliased SCB_SHPR2_Register;
      --  System Handler Priority Register 3
      SHPR3  : aliased SCB_SHPR3_Register;
      --  System Handler Control and State Register
      SHCSR  : aliased SCB_SHCSR_Register;
      --  Configurable Fault Status Registers
      CFSR   : aliased SCB_CFSR_Register;
      --  HardFault Status register
      HFSR   : aliased SCB_HFSR_Register;
      --  Debug Fault Status Register
      DFSR   : aliased SCB_DFSR_Register;
      --  MemManage Fault Address Register
      MMFAR  : aliased Interfaces.SAM.UInt32;
      --  BusFault Address Register
      BFAR   : aliased Interfaces.SAM.UInt32;
      --  Auxiliary Fault Status Register
      AFSR   : aliased Interfaces.SAM.UInt32;
      --  Cache Level ID Register
      CLIDR  : aliased SCB_CLIDR_Register;
      --  Cache Type Register
      CTR    : aliased SCB_CTR_Register;
      --  Cache Size ID Register
      CCSIDR : aliased SCB_CCSIDR_Register;
      --  Cache Size Selection Register
      CSSELR : aliased SCB_CSSELR_Register;
      --  Coprocessor Access Control Register
      CPACR  : aliased SCB_CPACR_Register;
      --  Software Trigger Interrupt Register
      STIR   : aliased SCB_STIR_Register;
      --  Media and VFP Feature Register 0
      MVFR0  : aliased Interfaces.SAM.UInt32;
      --  Media and VFP Feature Register 1
      MVFR1  : aliased Interfaces.SAM.UInt32;
      --  Media and VFP Feature Register 2
      MVFR2  : aliased Interfaces.SAM.UInt32;
   end record
     with Volatile;

   for SCB_Peripheral use record
      CPUID  at 16#0# range 0 .. 31;
      ICSR   at 16#4# range 0 .. 31;
      VTOR   at 16#8# range 0 .. 31;
      AIRCR  at 16#C# range 0 .. 31;
      SCR    at 16#10# range 0 .. 31;
      CCR    at 16#14# range 0 .. 31;
      SHPR1  at 16#18# range 0 .. 31;
      SHPR2  at 16#1C# range 0 .. 31;
      SHPR3  at 16#20# range 0 .. 31;
      SHCSR  at 16#24# range 0 .. 31;
      CFSR   at 16#28# range 0 .. 31;
      HFSR   at 16#2C# range 0 .. 31;
      DFSR   at 16#30# range 0 .. 31;
      MMFAR  at 16#34# range 0 .. 31;
      BFAR   at 16#38# range 0 .. 31;
      AFSR   at 16#3C# range 0 .. 31;
      CLIDR  at 16#78# range 0 .. 31;
      CTR    at 16#7C# range 0 .. 31;
      CCSIDR at 16#80# range 0 .. 31;
      CSSELR at 16#84# range 0 .. 31;
      CPACR  at 16#88# range 0 .. 31;
      STIR   at 16#200# range 0 .. 31;
      MVFR0  at 16#240# range 0 .. 31;
      MVFR1  at 16#244# range 0 .. 31;
      MVFR2  at 16#248# range 0 .. 31;
   end record;

   --  System Control Block
   SCB_Periph : aliased SCB_Peripheral
     with Import, Address => SCB_Base;

end Interfaces.SAM.SCB;
