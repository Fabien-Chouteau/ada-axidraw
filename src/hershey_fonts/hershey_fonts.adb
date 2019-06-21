with Gcode;        use Gcode;
with Gcode.Motion;
with Gcode.Parser;
with Gcode.Execution;
with Gcode.Error;

package body Hershey_Fonts is

   function Char_To_Glyph_Index (C : Character) return Glyph_Index;

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

   -------------------------
   -- Char_To_Glyph_Index --
   -------------------------

   function Char_To_Glyph_Index (C : Character) return Glyph_Index is
      Ret : constant Integer := Character'Pos (C) - 31;
   begin
      if Ret not in Glyph_Index then
         return Glyph_Index'Last;
      else
         return Glyph_Index (Ret);
      end if;
   end Char_To_Glyph_Index;

   ---------------
   -- Glyph_Box --
   ---------------

   procedure Glyph_Box (This : Hershey_Font;
                        C    : Character;
                        Width, Height, X_Advance : out Natural;
                        X_Offset, Y_Offset : out Integer)
   is
      Index : constant Glyph_Index := Char_To_Glyph_Index (C);
   begin
      if Index not in This.Glyphs'Range then
         Width := 0;
         Height := 0;
         X_Offset := 0;
         Y_Offset := 0;
         X_Advance := 0;
         return;
      end if;

      Width := Integer (This.Glyphs (Index).Width);
      Height := Integer (This.Glyphs (Index).Height);
      X_Advance := Width;
      X_Offset := 0;
      Y_Offset := Integer (This.Glyphs (Index).Y_Offset);

   end Glyph_Box;

   -------------
   -- Line_To --
   -------------

   procedure Line_To
     (Ctx  : in out GContext;
      X, Y : Float)
   is
   begin
      if Ctx.Virt_Position (Z_Axis) /= -1.0 then
         --  Lower pen
         Gcode.Motion.Move_Line (Ctx,
                                 (Ctx.Virt_Position (X_Axis),
                                  Ctx.Virt_Position (Y_Axis),
                                  -1.0),
                                 Feed_Rate => 100.0);
         --  Dwell
         Execute (Ctx, "G04 P0.4");
      end if;

      Gcode.Motion.Move_Line (Ctx,
                              (X, Y, -1.0),
                              Feed_Rate => 100.0);
   end Line_To;

   -------------
   -- Move_To --
   -------------

   procedure Move_To
     (Ctx  : in out GContext;
      X, Y : Float)
   is
   begin
      if Ctx.Virt_Position (Z_Axis) /= 1.0 then
         --  Lower pen
         Gcode.Motion.Move_Line (Ctx,
                                 (Ctx.Virt_Position (X_Axis),
                                  Ctx.Virt_Position (Y_Axis),
                                  1.0),
                                 Feed_Rate => 100.0);
         --  Dwell
         Execute (Ctx, "G04 P0.4");
      end if;

      Gcode.Motion.Move_Line (Ctx,
                              (X, Y, 1.0),
                              Feed_Rate => 100.0);
   end Move_To;

   -----------------
   -- Print_Glyph --
   -----------------

   procedure Print_Glyph
     (This : Hershey_Font;
      Ctx : in out GContext;
      C : Character;
      Scale : Float := 1.0)
   is
      Index : constant Glyph_Index := Char_To_Glyph_Index (C);
      Last : Vect := Raise_Pen;
      G : Glyph_Access := Empty_Glyph'Access;
      Org : constant Float_Position := Ctx.Virt_Position;
      Offset : Float_Position;
   begin
      if Index not in This.Glyphs'Range then
         return;
      end if;

      G := This.Glyphs (Index);

      Offset :=
        (Org (X_Axis) - Float (-G.X_Offset) * Scale,
         Org (Y_Axis),
         Org (Z_Axis));

      for Vect of G.Vects loop
         if Vect /= Raise_Pen then
            if Last /= Raise_Pen then
               Line_To (Ctx,
                        Offset (X_Axis) + Float (-Vect.X)  * Scale,
                        Offset (Y_Axis) + Float (Vect.Y)  * Scale);
            else
               Move_To (Ctx,
                        Offset (X_Axis) + Float (-Vect.X)  * Scale,
                        Offset (Y_Axis) + Float (Vect.Y)  * Scale);
            end if;
         end if;
         Last := Vect;
      end loop;
      Move_To (Ctx,
               Org (X_Axis) + Float (-G.Width) * Scale,
               Org (Y_Axis));
   end Print_Glyph;

   ------------------
   -- Print_String --
   ------------------

   procedure Print_String (This  : Hershey_Font;
                           Ctx   : in out GContext;
                           Str   : String;
                           Scale : Float := 1.0)
   is
   begin
      for C of Str loop
         Print_Glyph (This, Ctx, C, Scale);
      end loop;
   end Print_String;

   ---------------
   -- Y_Advance --
   ---------------

   function Y_Advance (This : Hershey_Font) return Integer is
   begin
      return Integer (This.Y_Advance);
   end Y_Advance;

end Hershey_Fonts;
