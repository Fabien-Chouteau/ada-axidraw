with HAL.GPIO;

package Hardware_Interface is

   procedure Initialize;
   --  Initialize the hardware drivers

   procedure Lower_Pen;
   procedure Raise_Pen;

   procedure Enable_Steppers;
   --  Enable all steppers

   procedure Disable_Steppers;
   --  Disable all steppers

   function Step_X return not null HAL.GPIO.Any_GPIO_Point;
   --  Return the GPIO point controlling steps of the X motor

   function Step_Y return not null HAL.GPIO.Any_GPIO_Point;
   --  Return the GPIO point controlling steps of the Y motor

   function Dir_X return not null HAL.GPIO.Any_GPIO_Point;
   --  Return the GPIO point controlling direction of the X motor

   function Dir_Y return not null HAL.GPIO.Any_GPIO_Point;
   --  Return the GPIO point controlling direction of the Y motor

   function Limit_X return Boolean;
   --  Return True if the tool has reached its home position on the X axis

   function Limit_Y return Boolean;
   --  Return True if the tool has reached its home position on the Y axis

   function Start_Button_Pressed return Boolean;
   --  Return True if the Start button is pressed

   procedure Get (C : out Character);
   --  Blocking call to get a character from console interface

   procedure Put (Str : String);
   --  Blocking call to print on console interface

   procedure Put_Line (Str : String);
   --  Blocking call to print on console interface

end Hardware_Interface;
