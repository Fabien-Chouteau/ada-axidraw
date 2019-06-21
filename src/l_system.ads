package L_System is

   subtype Alphabet is Character range 'A' .. 'Z';

   type String_Access is access all String;

   type Rule_Array is array (Alphabet) of String_Access;
   type Draw_Array is array (Alphabet) of Boolean;

   type Action_Kind is (Forward,
                        Draw_Forward,
                        Turn_Left,
                        Turn_Right);

   type System is record
      Axiom        : not null String_Access;
      Rules        : Rule_Array := (others => null);

      Draw_Letters : Draw_Array := (others => False);
      --  Specify if a letter is translated to a Draw_Forard action at the last
      --  depth.

      Angle        : Float;
   end record;

   type Action_Callback
   is not null access
     procedure (Action : Action_Kind;
                Angle  : Float);

   procedure Run (S     : System;
                  Depth : Natural;
                  CB    : Action_Callback);

end L_System;
