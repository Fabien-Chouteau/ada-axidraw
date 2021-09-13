with SAM_SVD.PIO;
with HAL.GPIO;

package SAM.PIO is

   subtype GPIO_Pin_Index is Integer range 0 .. 31;

   type GPIO_Point (Periph : not null access SAM_SVD.PIO.PIO_Peripheral;
                    Pin        : GPIO_Pin_Index)
   is new HAL.GPIO.GPIO_Point
     with
     private;

   ---------------
   --  HAL.GPIO --
   ---------------

   overriding
   function Support (This   : GPIO_Point;
                     Unused : HAL.GPIO.Capability)
                     return Boolean
   is (True);

   overriding
   function Mode (This : GPIO_Point) return HAL.GPIO.GPIO_Mode;

   overriding
   procedure Set_Mode (This : in out GPIO_Point;
                       Mode : HAL.GPIO.GPIO_Config_Mode);

   overriding
   function Pull_Resistor (This : GPIO_Point)
                           return HAL.GPIO.GPIO_Pull_Resistor;

   overriding
   procedure Set_Pull_Resistor (This : in out GPIO_Point;
                                Pull : HAL.GPIO.GPIO_Pull_Resistor);

   overriding
   function Set (This : GPIO_Point) return Boolean;

   overriding
   procedure Set (This : in out GPIO_Point);

   overriding
   procedure Clear (This : in out GPIO_Point);

   overriding
   procedure Toggle (This : in out GPIO_Point);

private

   type GPIO_Point (Periph : not null access SAM_SVD.PIO.PIO_Peripheral;
                    Pin        : GPIO_Pin_Index)
   is new HAL.GPIO.GPIO_Point
     with null record;

end SAM.PIO;
