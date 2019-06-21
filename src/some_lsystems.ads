with L_System; use L_System;
with Ada.Numerics;

package Some_Lsystems is


   Sierpinski_Triangle : constant System :=
     (Axiom        => new String'("F-G-G"),
      Rules        => ('F'    => new String'("F-G+F+G-F"),
                       'G'    => new String'("GG"),
                       others => null),
      Draw_Letters => ('F'    => True,
                       'G'    => True,
                       others => False),
      Angle        => 120.0 * Ada.Numerics.Pi / 180.0);

   Sierpinski_Triangle_Curve : constant System :=
     (Axiom        => new String'("A"),
      Rules        => ('A'    => new String'("B-A-B"),
                       'B'    => new String'("A+B+A"),
                       others => null),
      Draw_Letters => ('A'    => True,
                       'B'    => True,
                       others => False),
      Angle        => 60.0 * Ada.Numerics.Pi / 180.0);

   Hilbert_Curve : constant System :=
     (Axiom        => new String'("L"),
      Rules        => ('L'    => new String'("-RF+LFL+FR-"),
                       'R'    => new String'("+LF-RFR-FL+"),
                       others => null),
      Draw_Letters => ('F'    => True,
                       others => False),
      Angle        => 90.0 * Ada.Numerics.Pi / 180.0);

   Pleasent_Error : constant System :=
     (Axiom        => new String'("F-F-F-F-F"),
      Rules        => ('F'    => new String'("F-F++F+F-F-F"),
                       others => null),
      Draw_Letters => ('F'    => True,
                       others => False),
      Angle        => 72.0 * Ada.Numerics.Pi / 180.0);

   Snow_Flake : constant System :=
     (Axiom        => new String'("F++F++F"),
      Rules        => ('F'    => new String'("F-F++F-F"),
                       others => null),
      Draw_Letters => ('F'    => True,
                       others => False),
      Angle        => 60.0 * Ada.Numerics.Pi / 180.0);

end Some_Lsystems;
