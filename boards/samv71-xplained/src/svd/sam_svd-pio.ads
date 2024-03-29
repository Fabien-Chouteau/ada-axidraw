pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.PIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  PIO_PIO_PER_P array
   type PIO_PIO_PER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PIO Enable Register
   type PIO_PIO_PER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_PER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_PDR_P array
   type PIO_PIO_PDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PIO Disable Register
   type PIO_PIO_PDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_PDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_PSR_P array
   type PIO_PIO_PSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PIO Status Register
   type PIO_PIO_PSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_PSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_OER_P array
   type PIO_PIO_OER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Enable Register
   type PIO_PIO_OER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_OER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_OER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_ODR_P array
   type PIO_PIO_ODR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Disable Register
   type PIO_PIO_ODR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_ODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_ODR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_OSR_P array
   type PIO_PIO_OSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Status Register
   type PIO_PIO_OSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_OSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_OSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_IFER_P array
   type PIO_PIO_IFER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Input Filter Enable Register
   type PIO_PIO_IFER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_IFER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_IFER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_IFDR_P array
   type PIO_PIO_IFDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Input Filter Disable Register
   type PIO_PIO_IFDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_IFDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_IFDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_IFSR_P array
   type PIO_PIO_IFSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Input Filter Status Register
   type PIO_PIO_IFSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_IFSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_IFSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_SODR_P array
   type PIO_PIO_SODR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Set Output Data Register
   type PIO_PIO_SODR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_SODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_SODR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_CODR_P array
   type PIO_PIO_CODR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Clear Output Data Register
   type PIO_PIO_CODR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_CODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_CODR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_ODSR_P array
   type PIO_PIO_ODSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Data Status Register
   type PIO_PIO_ODSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_ODSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_ODSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_PDSR_P array
   type PIO_PIO_PDSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pin Data Status Register
   type PIO_PIO_PDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_PDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_IER_P array
   type PIO_PIO_IER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Register
   type PIO_PIO_IER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_IER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_IER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_IDR_P array
   type PIO_PIO_IDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Disable Register
   type PIO_PIO_IDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_IDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_IDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_IMR_P array
   type PIO_PIO_IMR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Mask Register
   type PIO_PIO_IMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_IMR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_IMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_ISR_P array
   type PIO_PIO_ISR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Status Register
   type PIO_PIO_ISR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_ISR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_ISR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_MDER_P array
   type PIO_PIO_MDER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Multi-driver Enable Register
   type PIO_PIO_MDER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_MDER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_MDER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_MDDR_P array
   type PIO_PIO_MDDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Multi-driver Disable Register
   type PIO_PIO_MDDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_MDDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_MDDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_MDSR_P array
   type PIO_PIO_MDSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Multi-driver Status Register
   type PIO_PIO_MDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_MDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_MDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_PUDR_P array
   type PIO_PIO_PUDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-up Disable Register
   type PIO_PIO_PUDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_PUDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PUDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_PUER_P array
   type PIO_PIO_PUER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-up Enable Register
   type PIO_PIO_PUER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_PUER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PUER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_PUSR_P array
   type PIO_PIO_PUSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pad Pull-up Status Register
   type PIO_PIO_PUSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_PUSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PUSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_ABCDSR_P array
   type PIO_PIO_ABCDSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral ABCD Select Register 0
   type PIO_PIO_ABCDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_ABCDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_ABCDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Peripheral ABCD Select Register 0
   type PIO_PIO_ABCDSR_Registers is array (0 .. 1) of PIO_PIO_ABCDSR_Register;

   --  PIO_PIO_IFSCDR_P array
   type PIO_PIO_IFSCDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Input Filter Slow Clock Disable Register
   type PIO_PIO_IFSCDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_IFSCDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_IFSCDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_IFSCER_P array
   type PIO_PIO_IFSCER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Input Filter Slow Clock Enable Register
   type PIO_PIO_IFSCER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_IFSCER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_IFSCER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_IFSCSR_P array
   type PIO_PIO_IFSCSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Input Filter Slow Clock Status Register
   type PIO_PIO_IFSCSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_IFSCSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_IFSCSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PIO_PIO_SCDR_DIV_Field is HAL.UInt14;

   --  Slow Clock Divider Debouncing Register
   type PIO_PIO_SCDR_Register is record
      --  Slow Clock Divider Selection for Debouncing
      DIV            : PIO_PIO_SCDR_DIV_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_SCDR_Register use record
      DIV            at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  PIO_PIO_PPDDR_P array
   type PIO_PIO_PPDDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pad Pull-down Disable Register
   type PIO_PIO_PPDDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_PPDDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PPDDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_PPDER_P array
   type PIO_PIO_PPDER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pad Pull-down Enable Register
   type PIO_PIO_PPDER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_PPDER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PPDER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_PPDSR_P array
   type PIO_PIO_PPDSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pad Pull-down Status Register
   type PIO_PIO_PPDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_PPDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PPDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_OWER_P array
   type PIO_PIO_OWER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Write Enable
   type PIO_PIO_OWER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_OWER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_OWER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_OWDR_P array
   type PIO_PIO_OWDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Write Disable
   type PIO_PIO_OWDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_OWDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_OWDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_OWSR_P array
   type PIO_PIO_OWSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Write Status Register
   type PIO_PIO_OWSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_OWSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_OWSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_AIMER_P array
   type PIO_PIO_AIMER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Additional Interrupt Modes Enable Register
   type PIO_PIO_AIMER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_AIMER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_AIMER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_AIMDR_P array
   type PIO_PIO_AIMDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Additional Interrupt Modes Disable Register
   type PIO_PIO_AIMDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_AIMDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_AIMDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_AIMMR_P array
   type PIO_PIO_AIMMR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Additional Interrupt Modes Mask Register
   type PIO_PIO_AIMMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_AIMMR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_AIMMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_ESR_P array
   type PIO_PIO_ESR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Edge Select Register
   type PIO_PIO_ESR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_ESR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_ESR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_LSR_P array
   type PIO_PIO_LSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Level Select Register
   type PIO_PIO_LSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_LSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_LSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_ELSR_P array
   type PIO_PIO_ELSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Edge/Level Status Register
   type PIO_PIO_ELSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_ELSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_ELSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_FELLSR_P array
   type PIO_PIO_FELLSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Falling Edge/Low-Level Select Register
   type PIO_PIO_FELLSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_FELLSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_FELLSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_REHLSR_P array
   type PIO_PIO_REHLSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Rising Edge/High-Level Select Register
   type PIO_PIO_REHLSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_REHLSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_REHLSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_FRLHSR_P array
   type PIO_PIO_FRLHSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Fall/Rise - Low/High Status Register
   type PIO_PIO_FRLHSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_FRLHSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_FRLHSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PIO_LOCKSR_P array
   type PIO_PIO_LOCKSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Lock Status
   type PIO_PIO_LOCKSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PIO_LOCKSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_LOCKSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Write Protection Key
   type PIO_WPMR_WPKEYSelect is
     (--  Reset value for the field
      PIO_WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit.Always reads as 0.
      PASSWD)
     with Size => 24;
   for PIO_WPMR_WPKEYSelect use
     (PIO_WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5261647);

   --  Write Protection Mode Register
   type PIO_PIO_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : PIO_WPMR_WPKEYSelect := PIO_WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype PIO_PIO_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protection Status Register
   type PIO_PIO_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : PIO_PIO_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PIO_PIO_VERSION_VERSION_Field is HAL.UInt12;
   subtype PIO_PIO_VERSION_MFN_Field is HAL.UInt3;

   --  Version Register
   type PIO_PIO_VERSION_Register is record
      --  Read-only. Hardware Module Version
      VERSION        : PIO_PIO_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Metal Fix Number
      MFN            : PIO_PIO_VERSION_MFN_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MFN            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  PIO_PIO_SCHMITT_SCHMITT array
   type PIO_PIO_SCHMITT_SCHMITT_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Schmitt Trigger Register
   type PIO_PIO_SCHMITT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SCHMITT as a value
            Val : HAL.UInt32;
         when True =>
            --  SCHMITT as an array
            Arr : PIO_PIO_SCHMITT_SCHMITT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_SCHMITT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Drive of PIO Line 0
   type PIO_DRIVER_LINE0Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE0Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 1
   type PIO_DRIVER_LINE1Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE1Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 2
   type PIO_DRIVER_LINE2Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE2Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 3
   type PIO_DRIVER_LINE3Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE3Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 4
   type PIO_DRIVER_LINE4Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE4Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 5
   type PIO_DRIVER_LINE5Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE5Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 6
   type PIO_DRIVER_LINE6Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE6Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 7
   type PIO_DRIVER_LINE7Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE7Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 8
   type PIO_DRIVER_LINE8Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE8Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 9
   type PIO_DRIVER_LINE9Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE9Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 10
   type PIO_DRIVER_LINE10Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE10Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 11
   type PIO_DRIVER_LINE11Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE11Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 12
   type PIO_DRIVER_LINE12Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE12Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 13
   type PIO_DRIVER_LINE13Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE13Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 14
   type PIO_DRIVER_LINE14Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE14Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 15
   type PIO_DRIVER_LINE15Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE15Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 16
   type PIO_DRIVER_LINE16Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE16Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 17
   type PIO_DRIVER_LINE17Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE17Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 18
   type PIO_DRIVER_LINE18Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE18Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 19
   type PIO_DRIVER_LINE19Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE19Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 20
   type PIO_DRIVER_LINE20Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE20Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 21
   type PIO_DRIVER_LINE21Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE21Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 22
   type PIO_DRIVER_LINE22Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE22Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 23
   type PIO_DRIVER_LINE23Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE23Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 24
   type PIO_DRIVER_LINE24Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE24Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 25
   type PIO_DRIVER_LINE25Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE25Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 26
   type PIO_DRIVER_LINE26Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE26Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 27
   type PIO_DRIVER_LINE27Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE27Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 28
   type PIO_DRIVER_LINE28Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE28Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 29
   type PIO_DRIVER_LINE29Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE29Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 30
   type PIO_DRIVER_LINE30Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE30Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 31
   type PIO_DRIVER_LINE31Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for PIO_DRIVER_LINE31Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  I/O Drive Register
   type PIO_PIO_DRIVER_Register is record
      --  Drive of PIO Line 0
      LINE0  : PIO_DRIVER_LINE0Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 1
      LINE1  : PIO_DRIVER_LINE1Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 2
      LINE2  : PIO_DRIVER_LINE2Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 3
      LINE3  : PIO_DRIVER_LINE3Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 4
      LINE4  : PIO_DRIVER_LINE4Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 5
      LINE5  : PIO_DRIVER_LINE5Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 6
      LINE6  : PIO_DRIVER_LINE6Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 7
      LINE7  : PIO_DRIVER_LINE7Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 8
      LINE8  : PIO_DRIVER_LINE8Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 9
      LINE9  : PIO_DRIVER_LINE9Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 10
      LINE10 : PIO_DRIVER_LINE10Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 11
      LINE11 : PIO_DRIVER_LINE11Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 12
      LINE12 : PIO_DRIVER_LINE12Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 13
      LINE13 : PIO_DRIVER_LINE13Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 14
      LINE14 : PIO_DRIVER_LINE14Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 15
      LINE15 : PIO_DRIVER_LINE15Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 16
      LINE16 : PIO_DRIVER_LINE16Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 17
      LINE17 : PIO_DRIVER_LINE17Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 18
      LINE18 : PIO_DRIVER_LINE18Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 19
      LINE19 : PIO_DRIVER_LINE19Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 20
      LINE20 : PIO_DRIVER_LINE20Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 21
      LINE21 : PIO_DRIVER_LINE21Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 22
      LINE22 : PIO_DRIVER_LINE22Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 23
      LINE23 : PIO_DRIVER_LINE23Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 24
      LINE24 : PIO_DRIVER_LINE24Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 25
      LINE25 : PIO_DRIVER_LINE25Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 26
      LINE26 : PIO_DRIVER_LINE26Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 27
      LINE27 : PIO_DRIVER_LINE27Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 28
      LINE28 : PIO_DRIVER_LINE28Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 29
      LINE29 : PIO_DRIVER_LINE29Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 30
      LINE30 : PIO_DRIVER_LINE30Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 31
      LINE31 : PIO_DRIVER_LINE31Select := SAM_SVD.PIO.LOW_DRIVE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_DRIVER_Register use record
      LINE0  at 0 range 0 .. 0;
      LINE1  at 0 range 1 .. 1;
      LINE2  at 0 range 2 .. 2;
      LINE3  at 0 range 3 .. 3;
      LINE4  at 0 range 4 .. 4;
      LINE5  at 0 range 5 .. 5;
      LINE6  at 0 range 6 .. 6;
      LINE7  at 0 range 7 .. 7;
      LINE8  at 0 range 8 .. 8;
      LINE9  at 0 range 9 .. 9;
      LINE10 at 0 range 10 .. 10;
      LINE11 at 0 range 11 .. 11;
      LINE12 at 0 range 12 .. 12;
      LINE13 at 0 range 13 .. 13;
      LINE14 at 0 range 14 .. 14;
      LINE15 at 0 range 15 .. 15;
      LINE16 at 0 range 16 .. 16;
      LINE17 at 0 range 17 .. 17;
      LINE18 at 0 range 18 .. 18;
      LINE19 at 0 range 19 .. 19;
      LINE20 at 0 range 20 .. 20;
      LINE21 at 0 range 21 .. 21;
      LINE22 at 0 range 22 .. 22;
      LINE23 at 0 range 23 .. 23;
      LINE24 at 0 range 24 .. 24;
      LINE25 at 0 range 25 .. 25;
      LINE26 at 0 range 26 .. 26;
      LINE27 at 0 range 27 .. 27;
      LINE28 at 0 range 28 .. 28;
      LINE29 at 0 range 29 .. 29;
      LINE30 at 0 range 30 .. 30;
      LINE31 at 0 range 31 .. 31;
   end record;

   --  Parallel Capture Mode Data Size
   type PIO_PCMR_DSIZESelect is
     (--  The reception data in the PIO_PCRHR is a byte (8-bit)
      BYTE,
      --  The reception data in the PIO_PCRHR is a half-word (16-bit)
      HALFWORD,
      --  The reception data in the PIO_PCRHR is a word (32-bit)
      WORD)
     with Size => 2;
   for PIO_PCMR_DSIZESelect use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Parallel Capture Mode Register
   type PIO_PIO_PCMR_Register is record
      --  Parallel Capture Mode Enable
      PCEN           : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Parallel Capture Mode Data Size
      DSIZE          : PIO_PCMR_DSIZESelect := SAM_SVD.PIO.BYTE;
      --  unspecified
      Reserved_6_8   : HAL.UInt3 := 16#0#;
      --  Parallel Capture Mode Always Sampling
      ALWYS          : Boolean := False;
      --  Parallel Capture Mode Half Sampling
      HALFS          : Boolean := False;
      --  Parallel Capture Mode First Sample
      FRSTS          : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PCMR_Register use record
      PCEN           at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DSIZE          at 0 range 4 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      ALWYS          at 0 range 9 .. 9;
      HALFS          at 0 range 10 .. 10;
      FRSTS          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Parallel Capture Interrupt Enable Register
   type PIO_PIO_PCIER_Register is record
      --  Write-only. Parallel Capture Mode Data Ready Interrupt Enable
      DRDY          : Boolean := False;
      --  Write-only. Parallel Capture Mode Overrun Error Interrupt Enable
      OVRE          : Boolean := False;
      --  Write-only. End of Reception Transfer Interrupt Enable
      ENDRX         : Boolean := False;
      --  Write-only. Reception Buffer Full Interrupt Enable
      RXBUFF        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PCIER_Register use record
      DRDY          at 0 range 0 .. 0;
      OVRE          at 0 range 1 .. 1;
      ENDRX         at 0 range 2 .. 2;
      RXBUFF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Parallel Capture Interrupt Disable Register
   type PIO_PIO_PCIDR_Register is record
      --  Write-only. Parallel Capture Mode Data Ready Interrupt Disable
      DRDY          : Boolean := False;
      --  Write-only. Parallel Capture Mode Overrun Error Interrupt Disable
      OVRE          : Boolean := False;
      --  Write-only. End of Reception Transfer Interrupt Disable
      ENDRX         : Boolean := False;
      --  Write-only. Reception Buffer Full Interrupt Disable
      RXBUFF        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PCIDR_Register use record
      DRDY          at 0 range 0 .. 0;
      OVRE          at 0 range 1 .. 1;
      ENDRX         at 0 range 2 .. 2;
      RXBUFF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Parallel Capture Interrupt Mask Register
   type PIO_PIO_PCIMR_Register is record
      --  Read-only. Parallel Capture Mode Data Ready Interrupt Mask
      DRDY          : Boolean;
      --  Read-only. Parallel Capture Mode Overrun Error Interrupt Mask
      OVRE          : Boolean;
      --  Read-only. End of Reception Transfer Interrupt Mask
      ENDRX         : Boolean;
      --  Read-only. Reception Buffer Full Interrupt Mask
      RXBUFF        : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PCIMR_Register use record
      DRDY          at 0 range 0 .. 0;
      OVRE          at 0 range 1 .. 1;
      ENDRX         at 0 range 2 .. 2;
      RXBUFF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Parallel Capture Interrupt Status Register
   type PIO_PIO_PCISR_Register is record
      --  Read-only. Parallel Capture Mode Data Ready
      DRDY          : Boolean;
      --  Read-only. Parallel Capture Mode Overrun Error
      OVRE          : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PIO_PCISR_Register use record
      DRDY          at 0 range 0 .. 0;
      OVRE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Parallel Input/Output Controller
   type PIO_Peripheral is record
      --  PIO Enable Register
      PIO_PER     : aliased PIO_PIO_PER_Register;
      --  PIO Disable Register
      PIO_PDR     : aliased PIO_PIO_PDR_Register;
      --  PIO Status Register
      PIO_PSR     : aliased PIO_PIO_PSR_Register;
      --  Output Enable Register
      PIO_OER     : aliased PIO_PIO_OER_Register;
      --  Output Disable Register
      PIO_ODR     : aliased PIO_PIO_ODR_Register;
      --  Output Status Register
      PIO_OSR     : aliased PIO_PIO_OSR_Register;
      --  Glitch Input Filter Enable Register
      PIO_IFER    : aliased PIO_PIO_IFER_Register;
      --  Glitch Input Filter Disable Register
      PIO_IFDR    : aliased PIO_PIO_IFDR_Register;
      --  Glitch Input Filter Status Register
      PIO_IFSR    : aliased PIO_PIO_IFSR_Register;
      --  Set Output Data Register
      PIO_SODR    : aliased PIO_PIO_SODR_Register;
      --  Clear Output Data Register
      PIO_CODR    : aliased PIO_PIO_CODR_Register;
      --  Output Data Status Register
      PIO_ODSR    : aliased PIO_PIO_ODSR_Register;
      --  Pin Data Status Register
      PIO_PDSR    : aliased PIO_PIO_PDSR_Register;
      --  Interrupt Enable Register
      PIO_IER     : aliased PIO_PIO_IER_Register;
      --  Interrupt Disable Register
      PIO_IDR     : aliased PIO_PIO_IDR_Register;
      --  Interrupt Mask Register
      PIO_IMR     : aliased PIO_PIO_IMR_Register;
      --  Interrupt Status Register
      PIO_ISR     : aliased PIO_PIO_ISR_Register;
      --  Multi-driver Enable Register
      PIO_MDER    : aliased PIO_PIO_MDER_Register;
      --  Multi-driver Disable Register
      PIO_MDDR    : aliased PIO_PIO_MDDR_Register;
      --  Multi-driver Status Register
      PIO_MDSR    : aliased PIO_PIO_MDSR_Register;
      --  Pull-up Disable Register
      PIO_PUDR    : aliased PIO_PIO_PUDR_Register;
      --  Pull-up Enable Register
      PIO_PUER    : aliased PIO_PIO_PUER_Register;
      --  Pad Pull-up Status Register
      PIO_PUSR    : aliased PIO_PIO_PUSR_Register;
      --  Peripheral ABCD Select Register 0
      PIO_ABCDSR  : aliased PIO_PIO_ABCDSR_Registers;
      --  Input Filter Slow Clock Disable Register
      PIO_IFSCDR  : aliased PIO_PIO_IFSCDR_Register;
      --  Input Filter Slow Clock Enable Register
      PIO_IFSCER  : aliased PIO_PIO_IFSCER_Register;
      --  Input Filter Slow Clock Status Register
      PIO_IFSCSR  : aliased PIO_PIO_IFSCSR_Register;
      --  Slow Clock Divider Debouncing Register
      PIO_SCDR    : aliased PIO_PIO_SCDR_Register;
      --  Pad Pull-down Disable Register
      PIO_PPDDR   : aliased PIO_PIO_PPDDR_Register;
      --  Pad Pull-down Enable Register
      PIO_PPDER   : aliased PIO_PIO_PPDER_Register;
      --  Pad Pull-down Status Register
      PIO_PPDSR   : aliased PIO_PIO_PPDSR_Register;
      --  Output Write Enable
      PIO_OWER    : aliased PIO_PIO_OWER_Register;
      --  Output Write Disable
      PIO_OWDR    : aliased PIO_PIO_OWDR_Register;
      --  Output Write Status Register
      PIO_OWSR    : aliased PIO_PIO_OWSR_Register;
      --  Additional Interrupt Modes Enable Register
      PIO_AIMER   : aliased PIO_PIO_AIMER_Register;
      --  Additional Interrupt Modes Disable Register
      PIO_AIMDR   : aliased PIO_PIO_AIMDR_Register;
      --  Additional Interrupt Modes Mask Register
      PIO_AIMMR   : aliased PIO_PIO_AIMMR_Register;
      --  Edge Select Register
      PIO_ESR     : aliased PIO_PIO_ESR_Register;
      --  Level Select Register
      PIO_LSR     : aliased PIO_PIO_LSR_Register;
      --  Edge/Level Status Register
      PIO_ELSR    : aliased PIO_PIO_ELSR_Register;
      --  Falling Edge/Low-Level Select Register
      PIO_FELLSR  : aliased PIO_PIO_FELLSR_Register;
      --  Rising Edge/High-Level Select Register
      PIO_REHLSR  : aliased PIO_PIO_REHLSR_Register;
      --  Fall/Rise - Low/High Status Register
      PIO_FRLHSR  : aliased PIO_PIO_FRLHSR_Register;
      --  Lock Status
      PIO_LOCKSR  : aliased PIO_PIO_LOCKSR_Register;
      --  Write Protection Mode Register
      PIO_WPMR    : aliased PIO_PIO_WPMR_Register;
      --  Write Protection Status Register
      PIO_WPSR    : aliased PIO_PIO_WPSR_Register;
      --  Version Register
      PIO_VERSION : aliased PIO_PIO_VERSION_Register;
      --  Schmitt Trigger Register
      PIO_SCHMITT : aliased PIO_PIO_SCHMITT_Register;
      --  I/O Drive Register
      PIO_DRIVER  : aliased PIO_PIO_DRIVER_Register;
      --  Parallel Capture Mode Register
      PIO_PCMR    : aliased PIO_PIO_PCMR_Register;
      --  Parallel Capture Interrupt Enable Register
      PIO_PCIER   : aliased PIO_PIO_PCIER_Register;
      --  Parallel Capture Interrupt Disable Register
      PIO_PCIDR   : aliased PIO_PIO_PCIDR_Register;
      --  Parallel Capture Interrupt Mask Register
      PIO_PCIMR   : aliased PIO_PIO_PCIMR_Register;
      --  Parallel Capture Interrupt Status Register
      PIO_PCISR   : aliased PIO_PIO_PCISR_Register;
      --  Parallel Capture Reception Holding Register
      PIO_PCRHR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for PIO_Peripheral use record
      PIO_PER     at 16#0# range 0 .. 31;
      PIO_PDR     at 16#4# range 0 .. 31;
      PIO_PSR     at 16#8# range 0 .. 31;
      PIO_OER     at 16#10# range 0 .. 31;
      PIO_ODR     at 16#14# range 0 .. 31;
      PIO_OSR     at 16#18# range 0 .. 31;
      PIO_IFER    at 16#20# range 0 .. 31;
      PIO_IFDR    at 16#24# range 0 .. 31;
      PIO_IFSR    at 16#28# range 0 .. 31;
      PIO_SODR    at 16#30# range 0 .. 31;
      PIO_CODR    at 16#34# range 0 .. 31;
      PIO_ODSR    at 16#38# range 0 .. 31;
      PIO_PDSR    at 16#3C# range 0 .. 31;
      PIO_IER     at 16#40# range 0 .. 31;
      PIO_IDR     at 16#44# range 0 .. 31;
      PIO_IMR     at 16#48# range 0 .. 31;
      PIO_ISR     at 16#4C# range 0 .. 31;
      PIO_MDER    at 16#50# range 0 .. 31;
      PIO_MDDR    at 16#54# range 0 .. 31;
      PIO_MDSR    at 16#58# range 0 .. 31;
      PIO_PUDR    at 16#60# range 0 .. 31;
      PIO_PUER    at 16#64# range 0 .. 31;
      PIO_PUSR    at 16#68# range 0 .. 31;
      PIO_ABCDSR  at 16#70# range 0 .. 63;
      PIO_IFSCDR  at 16#80# range 0 .. 31;
      PIO_IFSCER  at 16#84# range 0 .. 31;
      PIO_IFSCSR  at 16#88# range 0 .. 31;
      PIO_SCDR    at 16#8C# range 0 .. 31;
      PIO_PPDDR   at 16#90# range 0 .. 31;
      PIO_PPDER   at 16#94# range 0 .. 31;
      PIO_PPDSR   at 16#98# range 0 .. 31;
      PIO_OWER    at 16#A0# range 0 .. 31;
      PIO_OWDR    at 16#A4# range 0 .. 31;
      PIO_OWSR    at 16#A8# range 0 .. 31;
      PIO_AIMER   at 16#B0# range 0 .. 31;
      PIO_AIMDR   at 16#B4# range 0 .. 31;
      PIO_AIMMR   at 16#B8# range 0 .. 31;
      PIO_ESR     at 16#C0# range 0 .. 31;
      PIO_LSR     at 16#C4# range 0 .. 31;
      PIO_ELSR    at 16#C8# range 0 .. 31;
      PIO_FELLSR  at 16#D0# range 0 .. 31;
      PIO_REHLSR  at 16#D4# range 0 .. 31;
      PIO_FRLHSR  at 16#D8# range 0 .. 31;
      PIO_LOCKSR  at 16#E0# range 0 .. 31;
      PIO_WPMR    at 16#E4# range 0 .. 31;
      PIO_WPSR    at 16#E8# range 0 .. 31;
      PIO_VERSION at 16#FC# range 0 .. 31;
      PIO_SCHMITT at 16#100# range 0 .. 31;
      PIO_DRIVER  at 16#118# range 0 .. 31;
      PIO_PCMR    at 16#150# range 0 .. 31;
      PIO_PCIER   at 16#154# range 0 .. 31;
      PIO_PCIDR   at 16#158# range 0 .. 31;
      PIO_PCIMR   at 16#15C# range 0 .. 31;
      PIO_PCISR   at 16#160# range 0 .. 31;
      PIO_PCRHR   at 16#164# range 0 .. 31;
   end record;

   --  Parallel Input/Output Controller
   PIOA_Periph : aliased PIO_Peripheral
     with Import, Address => PIOA_Base;

   --  Parallel Input/Output Controller
   PIOB_Periph : aliased PIO_Peripheral
     with Import, Address => PIOB_Base;

   --  Parallel Input/Output Controller
   PIOC_Periph : aliased PIO_Peripheral
     with Import, Address => PIOC_Base;

   --  Parallel Input/Output Controller
   PIOD_Periph : aliased PIO_Peripheral
     with Import, Address => PIOD_Base;

   --  Parallel Input/Output Controller
   PIOE_Periph : aliased PIO_Peripheral
     with Import, Address => PIOE_Base;

end SAM_SVD.PIO;
