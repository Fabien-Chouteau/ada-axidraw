with HAL.GPIO; use HAL.GPIO;

package body SAM.PIO is

   ----------
   -- Mode --
   ----------

   overriding
   function Mode (This : GPIO_Point) return HAL.GPIO.GPIO_Mode is
      P : SAM_SVD.PIO.PIO_Peripheral renames This.Periph.all;
   begin
      if P.PIO_OSR.Arr (This.Pin) then
         return Output;
      else
         return Input;
      end if;
   end Mode;

   --------------
   -- Set_Mode --
   --------------

   overriding
   procedure Set_Mode
     (This : in out GPIO_Point; Mode : HAL.GPIO.GPIO_Config_Mode)
   is
      P : SAM_SVD.PIO.PIO_Peripheral renames This.Periph.all;
   begin
      if Mode = Output then
         P.PIO_OER.Arr (This.Pin) := True;
      elsif Mode = Input then
         null; --  Input always enabled
      else
         raise Program_Error;
      end if;
   end Set_Mode;

   -------------------
   -- Pull_Resistor --
   -------------------

   overriding
   function Pull_Resistor
     (This : GPIO_Point) return HAL.GPIO.GPIO_Pull_Resistor
   is
      P : SAM_SVD.PIO.PIO_Peripheral renames This.Periph.all;
   begin
      if P.PIO_PUSR.Arr (This.Pin) then
         return Pull_Up;
      elsif P.PIO_PPDSR.Arr (This.Pin) then
         return Pull_Up;
      else
         return Floating;
      end if;
   end Pull_Resistor;

   -----------------------
   -- Set_Pull_Resistor --
   -----------------------

   overriding
   procedure Set_Pull_Resistor
     (This : in out GPIO_Point; Pull : HAL.GPIO.GPIO_Pull_Resistor)
   is
      P : SAM_SVD.PIO.PIO_Peripheral renames This.Periph.all;
   begin
      case Pull is
         when Pull_Up =>
            P.PIO_PUER.Arr (This.Pin) := True;
         when Pull_Down =>
            P.PIO_PPDER.Arr (This.Pin) := True;
         when Floating =>
            P.PIO_PPDDR.Arr (This.Pin) := True;
            P.PIO_PUDR.Arr (This.Pin) := True;
      end case;
   end Set_Pull_Resistor;

   ---------
   -- Set --
   ---------

   overriding
   function Set (This : GPIO_Point) return Boolean is
      P : SAM_SVD.PIO.PIO_Peripheral renames This.Periph.all;
   begin
      return P.PIO_PDSR.Arr (This.Pin);
   end Set;

   ---------
   -- Set --
   ---------

   overriding
   procedure Set (This : in out GPIO_Point) is
      P : SAM_SVD.PIO.PIO_Peripheral renames This.Periph.all;
   begin
      P.PIO_SODR.Arr (This.Pin) := True;
   end Set;

   -----------
   -- Clear --
   -----------

   overriding
   procedure Clear (This : in out GPIO_Point) is
      P : SAM_SVD.PIO.PIO_Peripheral renames This.Periph.all;
   begin
      P.PIO_CODR.Arr (This.Pin) := True;
   end Clear;

   ------------
   -- Toggle --
   ------------

   overriding
   procedure Toggle (This : in out GPIO_Point) is
   begin
      if Set (This) then
         Clear (This);
      else
         Set (This);
      end if;
   end Toggle;

end SAM.PIO;
