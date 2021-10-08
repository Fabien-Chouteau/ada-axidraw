with HAL; use HAL;

with SAM_SVD.PIO; use SAM_SVD.PIO;
with HAL.GPIO; use HAL.GPIO;

package body SAM.PIO is

   ----------------
   -- Select_Pin --
   ----------------

   procedure Select_Pin (G : GPIO_Group_Index; P : GPIO_Pin_Index) is
      MSKR : UInt32 with Address => PIO_Periph.PIO_PIO_GROUP (G).MSKR'Address;
   begin
      MSKR := 2**P;
   end Select_Pin;

   ----------
   -- Mode --
   ----------

   overriding
   function Mode (This : GPIO_Point) return HAL.GPIO.GPIO_Mode is
      P : SAM_SVD.PIO.PIO_PIO_GROUP_Cluster
        renames PIO_Periph.PIO_PIO_GROUP (This.Group);
   begin
      Select_Pin (This.Group, This.Pin);
      if P.CFGR.DIR = OUTPUT then
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
      P : SAM_SVD.PIO.PIO_PIO_GROUP_Cluster
        renames PIO_Periph.PIO_PIO_GROUP (This.Group);
   begin
      Select_Pin (This.Group, This.Pin);
      if Mode = Output then
         P.CFGR.DIR := OUTPUT;
      elsif Mode = Input then
         P.CFGR.DIR := INPUT;
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
      P : SAM_SVD.PIO.PIO_PIO_GROUP_Cluster
        renames PIO_Periph.PIO_PIO_GROUP (This.Group);
   begin
      Select_Pin (This.Group, This.Pin);
      if P.CFGR.PUEN = ENABLED then
         return Pull_Up;
      elsif P.CFGR.PDEN = ENABLED then
         return Pull_Down;
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
      P : SAM_SVD.PIO.PIO_PIO_GROUP_Cluster
        renames PIO_Periph.PIO_PIO_GROUP (This.Group);
   begin
      Select_Pin (This.Group, This.Pin);
      case Pull is
         when Pull_Up =>
            P.CFGR.PUEN := ENABLED;
            P.CFGR.PDEN := DISABLED;
         when Pull_Down =>
            P.CFGR.PUEN := DISABLED;
            P.CFGR.PDEN := ENABLED;
         when Floating =>
            P.CFGR.PUEN := DISABLED;
            P.CFGR.PDEN := DISABLED;
      end case;
   end Set_Pull_Resistor;

   ---------
   -- Set --
   ---------

   overriding
   function Set (This : GPIO_Point) return Boolean is
      P : SAM_SVD.PIO.PIO_PIO_GROUP_Cluster
        renames PIO_Periph.PIO_PIO_GROUP (This.Group);
   begin
      return p.PDSR.Arr (This.Pin);
   end Set;

   ---------
   -- Set --
   ---------

   overriding
   procedure Set (This : in out GPIO_Point) is
      P : SAM_SVD.PIO.PIO_PIO_GROUP_Cluster
        renames PIO_Periph.PIO_PIO_GROUP (This.Group);
   begin
      P.SODR.Arr (This.Pin) := True;
   end Set;

   -----------
   -- Clear --
   -----------

   overriding
   procedure Clear (This : in out GPIO_Point) is
      P : SAM_SVD.PIO.PIO_PIO_GROUP_Cluster
        renames PIO_Periph.PIO_PIO_GROUP (This.Group);
   begin
      P.CODR.Arr (This.Pin) := True;
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
