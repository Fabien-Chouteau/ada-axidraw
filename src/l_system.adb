package body L_System is

   procedure Run (S     : System;
                  Depth : Natural;
                  CB    : Action_Callback)
   is

      procedure Recursive (Axiom : String; Level : Natural) is
      begin
         for C of Axiom loop
            if Level < Depth
              and then
               C in Alphabet
              and then
               S.Rules (C) /= null
            then
               Recursive (S.Rules (C).all, Level + 1);
            else
               case C is
                  when '+'    => CB (Turn_Left, S.Angle);
                  when '-'    => CB (Turn_Right, S.Angle);
                  when 'f'    => CB (Forward, S.Angle);
                  when others =>
                     if C in Alphabet and then S.Draw_Letters (C) then
                        CB (Draw_Forward, S.Angle);
                     end if;
               end case;
            end if;
         end loop;
      end Recursive;
   begin
      Recursive (S.Axiom.all, 0);
   end Run;

end L_System;
