pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMRH71F20C.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.MATRIX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Undefined Length Burst Type
   type MCFG_ULBTSelect is
     (--  Unlimited Length Burst-No predicted end of burst is generated, therefore
--  INCR bursts coming from this master can only be broken if the Slave Slot
--  Cycle Limit is reached. If the Slot Cycle Limit is not reached, the burst
--  is normally completed by the master, at the latest, on the next AHB 1 Kbyte
--  address boundary, allowing up to 256-beat word bursts or 128-beat
--  double-word bursts.This value should not be used in the very particular
--  case of a master capable of performing back-to-back undefined length bursts
--  on a single slave, since this could indefinitely freeze the slave
--  arbitration and thus prevent another master from accessing this slave.
      UNLIMITED,
      --  Single Access-The undefined length burst is treated as a succession of
--  single accesses, allowing re-arbitration at each beat of the INCR burst or
--  bursts sequence.
      SINGLE,
      --  4-beat Burst-The undefined length burst or bursts sequence is split into
--  4-beat bursts or less, allowing re-arbitration every 4 beats.
      Val_4_BEAT,
      --  8-beat Burst-The undefined length burst or bursts sequence is split into
--  8-beat bursts or less, allowing re-arbitration every 8 beats.
      Val_8_BEAT,
      --  16-beat Burst-The undefined length burst or bursts sequence is split into
--  16-beat bursts or less, allowing re-arbitration every 16 beats.
      Val_16_BEAT,
      --  32-beat Burst-The undefined length burst or bursts sequence is split into
--  32-beat bursts or less, allowing re-arbitration every 32 beats.
      Val_32_BEAT,
      --  64-beat Burst-The undefined length burst or bursts sequence is split into
--  64-beat bursts or less, allowing re-arbitration every 64 beats.
      Val_64_BEAT,
      --  128-beat Burst-The undefined length burst or bursts sequence is split into
--  128-beat bursts or less, allowing re-arbitration every 128 beats.Unless
--  duly needed, the ULBT should be left at its default 0 value for power
--  saving.
      Val_128_BEAT)
     with Size => 3;
   for MCFG_ULBTSelect use
     (UNLIMITED => 0,
      SINGLE => 1,
      Val_4_BEAT => 2,
      Val_8_BEAT => 3,
      Val_16_BEAT => 4,
      Val_32_BEAT => 5,
      Val_64_BEAT => 6,
      Val_128_BEAT => 7);

   --  Master Configuration Register
   type MATRIX_MCFG_Register is record
      --  Undefined Length Burst Type
      ULBT          : MCFG_ULBTSelect := SAM_SVD.MATRIX.UNLIMITED;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MCFG_Register use record
      ULBT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Master Configuration Register
   type MATRIX_MCFG_Registers is array (0 .. 15) of MATRIX_MCFG_Register;

   subtype MATRIX_SCFG_SLOT_CYCLE_Field is HAL.UInt9;

   --  Default Master Type
   type SCFG_DEFMSTR_TYPESelect is
     (--  No Default Master-At the end of the current slave access, if no other
--  master request is pending, the slave is disconnected from all masters.This
--  results in a one clock cycle latency for the first access of a burst
--  transfer or for a single access.
      NONE,
      --  Last Default Master-At the end of the current slave access, if no other
--  master request is pending, the slave stays connected to the last master
--  having accessed it.This results in not having one clock cycle latency when
--  the last master tries to access the slave again.
      LAST,
      --  Fixed Default Master-At the end of the current slave access, if no other
--  master request is pending, the slave connects to the fixed master the
--  number that has been written in the FIXED_DEFMSTR field.This results in not
--  having one clock cycle latency when the fixed master tries to access the
--  slave again.
      FIXED)
     with Size => 2;
   for SCFG_DEFMSTR_TYPESelect use
     (NONE => 0,
      LAST => 1,
      FIXED => 2);

   subtype MATRIX_SCFG_FIXED_DEFMSTR_Field is HAL.UInt4;

   --  Slave Configuration Register
   type MATRIX_SCFG_Register is record
      --  Maximum Bus Grant Duration for Masters
      SLOT_CYCLE     : MATRIX_SCFG_SLOT_CYCLE_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Default Master Type
      DEFMSTR_TYPE   : SCFG_DEFMSTR_TYPESelect := SAM_SVD.MATRIX.NONE;
      --  Fixed Default Master
      FIXED_DEFMSTR  : MATRIX_SCFG_FIXED_DEFMSTR_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_SCFG_Register use record
      SLOT_CYCLE     at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DEFMSTR_TYPE   at 0 range 16 .. 17;
      FIXED_DEFMSTR  at 0 range 18 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Slave Configuration Register
   type MATRIX_SCFG_Registers is array (0 .. 15) of MATRIX_SCFG_Register;

   ------------------------------------------
   -- MATRIX_MATRIX_PR cluster's Registers --
   ------------------------------------------

   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M0PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M1PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M2PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M3PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M4PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M5PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M6PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M7PR_Field is HAL.UInt2;

   --  Priority Register A for Slave
   type MATRIX_PRAS_MATRIX_MATRIX_PR_Register is record
      --  Master 0 Priority
      M0PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M0PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 0
      LQOSEN0        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Master 1 Priority
      M1PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M1PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 1
      LQOSEN1        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Master 2 Priority
      M2PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M2PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 2
      LQOSEN2        : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Master 3 Priority
      M3PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M3PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 3
      LQOSEN3        : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Master 4 Priority
      M4PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M4PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 4
      LQOSEN4        : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Master 5 Priority
      M5PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M5PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 5
      LQOSEN5        : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Master 6 Priority
      M6PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M6PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 6
      LQOSEN6        : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Master 7 Priority
      M7PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M7PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 7
      LQOSEN7        : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_PRAS_MATRIX_MATRIX_PR_Register use record
      M0PR           at 0 range 0 .. 1;
      LQOSEN0        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      M1PR           at 0 range 4 .. 5;
      LQOSEN1        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      M2PR           at 0 range 8 .. 9;
      LQOSEN2        at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      M3PR           at 0 range 12 .. 13;
      LQOSEN3        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      M4PR           at 0 range 16 .. 17;
      LQOSEN4        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      M5PR           at 0 range 20 .. 21;
      LQOSEN5        at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      M6PR           at 0 range 24 .. 25;
      LQOSEN6        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      M7PR           at 0 range 28 .. 29;
      LQOSEN7        at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M8PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M9PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M10PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M11PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M12PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M13PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M14PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M15PR_Field is HAL.UInt2;

   --  Priority Register B for Slave
   type MATRIX_PRBS_MATRIX_MATRIX_PR_Register is record
      --  Master 8 Priority
      M8PR           : MATRIX_PRBS_MATRIX_MATRIX_PR_M8PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 8
      LQOSEN8        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Master 9 Priority
      M9PR           : MATRIX_PRBS_MATRIX_MATRIX_PR_M9PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 9
      LQOSEN9        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Master 10 Priority
      M10PR          : MATRIX_PRBS_MATRIX_MATRIX_PR_M10PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 10
      LQOSEN10       : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Master 11 Priority
      M11PR          : MATRIX_PRBS_MATRIX_MATRIX_PR_M11PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 11
      LQOSEN11       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Master 12 Priority
      M12PR          : MATRIX_PRBS_MATRIX_MATRIX_PR_M12PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 12
      LQOSEN12       : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Master 13 Priority
      M13PR          : MATRIX_PRBS_MATRIX_MATRIX_PR_M13PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 13
      LQOSEN13       : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Master 14 Priority
      M14PR          : MATRIX_PRBS_MATRIX_MATRIX_PR_M14PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 14
      LQOSEN14       : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Master 15 Priority
      M15PR          : MATRIX_PRBS_MATRIX_MATRIX_PR_M15PR_Field := 16#0#;
      --  Latency Quality of Service Enable for Master 15
      LQOSEN15       : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_PRBS_MATRIX_MATRIX_PR_Register use record
      M8PR           at 0 range 0 .. 1;
      LQOSEN8        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      M9PR           at 0 range 4 .. 5;
      LQOSEN9        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      M10PR          at 0 range 8 .. 9;
      LQOSEN10       at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      M11PR          at 0 range 12 .. 13;
      LQOSEN11       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      M12PR          at 0 range 16 .. 17;
      LQOSEN12       at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      M13PR          at 0 range 20 .. 21;
      LQOSEN13       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      M14PR          at 0 range 24 .. 25;
      LQOSEN14       at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      M15PR          at 0 range 28 .. 29;
      LQOSEN15       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type MATRIX_MATRIX_PR_Cluster is record
      --  Priority Register A for Slave
      PRAS : aliased MATRIX_PRAS_MATRIX_MATRIX_PR_Register;
      --  Priority Register B for Slave
      PRBS : aliased MATRIX_PRBS_MATRIX_MATRIX_PR_Register;
   end record
     with Size => 64;

   for MATRIX_MATRIX_PR_Cluster use record
      PRAS at 16#0# range 0 .. 31;
      PRBS at 16#4# range 0 .. 31;
   end record;

   type MATRIX_MATRIX_PR_Clusters is array (0 .. 15)
     of MATRIX_MATRIX_PR_Cluster;

   --  MATRIX_MRCR_RCB array
   type MATRIX_MRCR_RCB_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for MATRIX_MRCR_RCB
   type MATRIX_MRCR_RCB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RCB as a value
            Val : HAL.UInt16;
         when True =>
            --  RCB as an array
            Arr : MATRIX_MRCR_RCB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for MATRIX_MRCR_RCB_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Master Remap Control Register
   type MATRIX_MRCR_Register is record
      --  Remap Command Bit for Master 0
      RCB            : MATRIX_MRCR_RCB_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MRCR_Register use record
      RCB            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MATRIX_MEIER_MERR array
   type MATRIX_MEIER_MERR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for MATRIX_MEIER_MERR
   type MATRIX_MEIER_MERR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MERR as a value
            Val : HAL.UInt16;
         when True =>
            --  MERR as an array
            Arr : MATRIX_MEIER_MERR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for MATRIX_MEIER_MERR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Master Error Interrupt Enable Register
   type MATRIX_MEIER_Register is record
      --  Write-only. Master 0 Access Error
      MERR           : MATRIX_MEIER_MERR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MEIER_Register use record
      MERR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MATRIX_MEIDR_MERR array
   type MATRIX_MEIDR_MERR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for MATRIX_MEIDR_MERR
   type MATRIX_MEIDR_MERR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MERR as a value
            Val : HAL.UInt16;
         when True =>
            --  MERR as an array
            Arr : MATRIX_MEIDR_MERR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for MATRIX_MEIDR_MERR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Master Error Interrupt Disable Register
   type MATRIX_MEIDR_Register is record
      --  Write-only. Master 0 Access Error
      MERR           : MATRIX_MEIDR_MERR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MEIDR_Register use record
      MERR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MATRIX_MEIMR_MERR array
   type MATRIX_MEIMR_MERR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for MATRIX_MEIMR_MERR
   type MATRIX_MEIMR_MERR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MERR as a value
            Val : HAL.UInt16;
         when True =>
            --  MERR as an array
            Arr : MATRIX_MEIMR_MERR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for MATRIX_MEIMR_MERR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Master Error Interrupt Mask Register
   type MATRIX_MEIMR_Register is record
      --  Read-only. Master 0 Access Error
      MERR           : MATRIX_MEIMR_MERR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MEIMR_Register use record
      MERR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MATRIX_MESR_MERR array
   type MATRIX_MESR_MERR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for MATRIX_MESR_MERR
   type MATRIX_MESR_MERR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MERR as a value
            Val : HAL.UInt16;
         when True =>
            --  MERR as an array
            Arr : MATRIX_MESR_MERR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for MATRIX_MESR_MERR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Master Error Status Register
   type MATRIX_MESR_Register is record
      --  Read-only. Master 0 Access Error
      MERR           : MATRIX_MESR_MERR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MESR_Register use record
      MERR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Master 0 Error Address Register

   --  Master 0 Error Address Register
   type MATRIX_MEAR_Registers is array (0 .. 15) of HAL.UInt32;

   --  Write Protection Key
   type WPMR_WPKEYSelect is
     (--  Reset value for the field
      WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN and CFGFRZ bits. Always reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEYSelect use
     (WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5062996);

   --  Write Protect Mode Register
   type MATRIX_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_6 : HAL.UInt6 := 16#0#;
      CFGFRZ       : Boolean := False;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_6 at 0 range 1 .. 6;
      CFGFRZ       at 0 range 7 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype MATRIX_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protect Status Register
   type MATRIX_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : MATRIX_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  MATRIX_PSR_LAUSERH array
   type MATRIX_PSR_LAUSERH_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for MATRIX_PSR_LAUSERH
   type MATRIX_PSR_LAUSERH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LAUSERH as a value
            Val : HAL.UInt8;
         when True =>
            --  LAUSERH as an array
            Arr : MATRIX_PSR_LAUSERH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for MATRIX_PSR_LAUSERH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  MATRIX_PSR_RDUSERH array
   type MATRIX_PSR_RDUSERH_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for MATRIX_PSR_RDUSERH
   type MATRIX_PSR_RDUSERH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDUSERH as a value
            Val : HAL.UInt8;
         when True =>
            --  RDUSERH as an array
            Arr : MATRIX_PSR_RDUSERH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for MATRIX_PSR_RDUSERH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  MATRIX_PSR_WRUSERH array
   type MATRIX_PSR_WRUSERH_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for MATRIX_PSR_WRUSERH
   type MATRIX_PSR_WRUSERH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WRUSERH as a value
            Val : HAL.UInt8;
         when True =>
            --  WRUSERH as an array
            Arr : MATRIX_PSR_WRUSERH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for MATRIX_PSR_WRUSERH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  MATRIX_PSR_DPSOA array
   type MATRIX_PSR_DPSOA_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for MATRIX_PSR_DPSOA
   type MATRIX_PSR_DPSOA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DPSOA as a value
            Val : HAL.UInt8;
         when True =>
            --  DPSOA as an array
            Arr : MATRIX_PSR_DPSOA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for MATRIX_PSR_DPSOA_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Protection Slave Register
   type MATRIX_PSR_Register is record
      --  Low Area USER in HSELx Protected Region
      LAUSERH : MATRIX_PSR_LAUSERH_Field := (As_Array => False, Val => 16#0#);
      --  Read USER for HSELx Protected Region
      RDUSERH : MATRIX_PSR_RDUSERH_Field := (As_Array => False, Val => 16#0#);
      --  Write USER for HSELx Protected Region
      WRUSERH : MATRIX_PSR_WRUSERH_Field := (As_Array => False, Val => 16#0#);
      --  Downward Protection Split Address for HSELx Protected Region
      DPSOA   : MATRIX_PSR_DPSOA_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_PSR_Register use record
      LAUSERH at 0 range 0 .. 7;
      RDUSERH at 0 range 8 .. 15;
      WRUSERH at 0 range 16 .. 23;
      DPSOA   at 0 range 24 .. 31;
   end record;

   --  Protection Slave Register
   type MATRIX_PSR_Registers is array (0 .. 15) of MATRIX_PSR_Register;

   --  MATRIX_PASSR_PASPLIT array element
   subtype MATRIX_PASSR_PASPLIT_Element is HAL.UInt4;

   --  MATRIX_PASSR_PASPLIT array
   type MATRIX_PASSR_PASPLIT_Field_Array is array (0 .. 7)
     of MATRIX_PASSR_PASPLIT_Element
     with Component_Size => 4, Size => 32;

   --  Protected Areas Split Slave Register
   type MATRIX_PASSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PASPLIT as a value
            Val : HAL.UInt32;
         when True =>
            --  PASPLIT as an array
            Arr : MATRIX_PASSR_PASPLIT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_PASSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Protected Areas Split Slave Register
   type MATRIX_PASSR_Registers is array (0 .. 15) of MATRIX_PASSR_Register;

   --  MATRIX_PRTSR_PRTOP array element
   subtype MATRIX_PRTSR_PRTOP_Element is HAL.UInt4;

   --  MATRIX_PRTSR_PRTOP array
   type MATRIX_PRTSR_PRTOP_Field_Array is array (0 .. 7)
     of MATRIX_PRTSR_PRTOP_Element
     with Component_Size => 4, Size => 32;

   --  Protected Region Top Slave Register
   type MATRIX_PRTSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRTOP as a value
            Val : HAL.UInt32;
         when True =>
            --  PRTOP as an array
            Arr : MATRIX_PRTSR_PRTOP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_PRTSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Protected Region Top Slave Register
   type MATRIX_PRTSR_Registers is array (0 .. 15) of MATRIX_PRTSR_Register;

   --  MATRIX_PPSELR_USERP array
   type MATRIX_PPSELR_USERP_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Protected Peripheral Select Register
   type MATRIX_PPSELR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USERP as a value
            Val : HAL.UInt32;
         when True =>
            --  USERP as an array
            Arr : MATRIX_PPSELR_USERP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_PPSELR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Protected Peripheral Select Register
   type MATRIX_PPSELR_Registers is array (0 .. 2) of MATRIX_PPSELR_Register;

   -----------------
   -- Peripherals --
   -----------------

   --  AHB Bus Matrix
   type MATRIX0_Peripheral is record
      --  Master Configuration Register
      MCFG             : aliased MATRIX_MCFG_Registers;
      --  Slave Configuration Register
      SCFG             : aliased MATRIX_SCFG_Registers;
      MATRIX_MATRIX_PR : aliased MATRIX_MATRIX_PR_Clusters;
      --  Master Remap Control Register
      MRCR             : aliased MATRIX_MRCR_Register;
      --  Master Error Interrupt Enable Register
      MEIER            : aliased MATRIX_MEIER_Register;
      --  Master Error Interrupt Disable Register
      MEIDR            : aliased MATRIX_MEIDR_Register;
      --  Master Error Interrupt Mask Register
      MEIMR            : aliased MATRIX_MEIMR_Register;
      --  Master Error Status Register
      MESR             : aliased MATRIX_MESR_Register;
      --  Master 0 Error Address Register
      MEAR             : aliased MATRIX_MEAR_Registers;
      --  Write Protect Mode Register
      WPMR             : aliased MATRIX_WPMR_Register;
      --  Write Protect Status Register
      WPSR             : aliased MATRIX_WPSR_Register;
      --  Protection Slave Register
      PSR              : aliased MATRIX_PSR_Registers;
      --  Protected Areas Split Slave Register
      PASSR            : aliased MATRIX_PASSR_Registers;
      --  Protected Region Top Slave Register
      PRTSR            : aliased MATRIX_PRTSR_Registers;
      --  Protected Peripheral Select Register
      PPSELR           : aliased MATRIX_PPSELR_Registers;
   end record
     with Volatile;

   for MATRIX0_Peripheral use record
      MCFG             at 16#0# range 0 .. 511;
      SCFG             at 16#40# range 0 .. 511;
      MATRIX_MATRIX_PR at 16#80# range 0 .. 1023;
      MRCR             at 16#100# range 0 .. 31;
      MEIER            at 16#150# range 0 .. 31;
      MEIDR            at 16#154# range 0 .. 31;
      MEIMR            at 16#158# range 0 .. 31;
      MESR             at 16#15C# range 0 .. 31;
      MEAR             at 16#160# range 0 .. 511;
      WPMR             at 16#1E4# range 0 .. 31;
      WPSR             at 16#1E8# range 0 .. 31;
      PSR              at 16#200# range 0 .. 511;
      PASSR            at 16#240# range 0 .. 511;
      PRTSR            at 16#280# range 0 .. 511;
      PPSELR           at 16#2C0# range 0 .. 95;
   end record;

   --  AHB Bus Matrix
   MATRIX0_Periph : aliased MATRIX0_Peripheral
     with Import, Address => MATRIX0_Base;

end SAM_SVD.MATRIX;
