with Gcode.Motion;
with Gcode.Execution;
with Gcode.Parser;
with Gcode.Error;

with Hershey_Fonts;
with Hershey_Fonts.Futural;

package body Sudoku is

   type Position is record
      X, Y : Float_Value;
   end record;

   -------------
   -- Execute --
   -------------

   procedure Execute (Ctx : in out GContext; Str : String) is
   begin
      if not Gcode.Parser.Parse (Str, Ctx) then
         Ctx.Put_Line ("Gcode parsing failed");
         return;
      end if;

      if not Gcode.Execution.Execute (Str, Ctx) then
         Ctx.Put_Line ("Gcode execution failed");
      end if;
   exception
      when Gcode.Error.Gcode_Exception =>
         Ctx.Put_Line ("Gcode exception");
      when others =>
         Ctx.Put_Line ("other exception");
   end Execute;

   ----------
   -- Draw --
   ----------

   procedure Draw (Ctx   : in out GContext;
                   X, Y  : Float;
                   G     : Grid;
                   Size  : Float;
                   Title : String)
   is
      ---------------
      -- Draw_Line --
      ---------------

      procedure Draw_Line (From, To : Position) is
      begin
         --  Go to start position
         Gcode.Motion.Move_Line (Ctx, (From.X, From.Y, 1.0),
                                 Feed_Rate => 100.0);

         --  Lower pen
         Gcode.Motion.Move_Line (Ctx, (From.X, From.Y, -1.0),
                                 Feed_Rate => 100.0);

         --  Dwell
         Execute (Ctx, "G04 P0.4");

         --  Draw the line
         Gcode.Motion.Move_Line (Ctx, (To.X, To.Y, -1.0),
                                 Feed_Rate => 100.0);

         --  Raise pen
         Gcode.Motion.Move_Line (Ctx, (To.X, To.Y, 1.0),
                                 Feed_Rate => 100.0);

         --  Dwell
         Execute (Ctx, "G04 P0.4");
      end Draw_Line;
   begin

      Execute (Ctx, "M17");

      --  Draw the lines
      for Cnt in 0 .. 9 loop
         declare
            Step : constant Float_Value := Float_Value (Cnt) * (Size / 9.0);
         begin
            Draw_Line ((X, Y + Step),
                       (X + Size, Y + Step));
            Draw_Line ((X + Step, Y),
                       (X + Step, Y + Size));

            if Cnt in 0 | 3 | 6 | 9 then
               Draw_Line ((X, Y + Step + 0.5),
                          (X + Size, Y + Step + 0.5));
               Draw_Line ((X + Step + 0.5, Y),
                          (X + Step + 0.5, Y + Size));
            end if;
         end;
      end loop;

      --  Draw the numbers
      for A in Coord loop
         for B in Coord loop
            if G (A, B) /= 0 then
               Gcode.Motion.Move_Line
                 (Ctx,
                  (X + Float_Value (Coord'Last - B) * (Size / 9.0) + 13.5,
                   Y + Float_Value (A) * (Size / 9.0) + 6.5,
                   1.0),
                  Feed_Rate => 100.0);

               Hershey_Fonts.Print_String
                 (Hershey_Fonts.Futural.Font,
                  GContext (Ctx),
                  G (A, B)'Img,
                  Scale => 0.3);
            end if;
         end loop;
      end loop;

      Gcode.Motion.Move_Line (Ctx,
                              (X + Size,
                               Y + Size + 5.0,
                               1.0),
                              Feed_Rate => 100.0);

      Hershey_Fonts.Print_String (Hershey_Fonts.Futural.Font,
                                  GContext (Ctx),
                                  Title,
                                  Scale => 0.2);


      Execute (Ctx, "M18");
   end Draw;

   ----------
   -- Draw --
   ----------

   procedure Draw (Ctx    : in out GContext;
                   X, Y   : Float;
                   G_Type : Grid_Level;
                   Size   : Float)
   is
   begin
      case G_Type is
         when Easy => Draw (Ctx, X, Y, Easy_Grid, Size, "Easy");
         when Medium => Draw (Ctx, X, Y, Medium_Grid, Size, "Medium");
         when Hard => Draw (Ctx, X, Y, Hard_Grid, Size, "Hard");
         when Evil => Draw (Ctx, X, Y, Evil_Grid, Size, "Evil");
      end case;
   end Draw;



end Sudoku;
