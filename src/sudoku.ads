with Gcode; use Gcode;
with Gcode.Context; use Gcode.Context;

package Sudoku is

   type Digit is range 0 .. 9;
   type Coord is range 0 .. 8;

   type Grid is array (Coord, Coord) of Digit;

   procedure Draw (Ctx   : in out GContext;
                   X, Y  : Float;
                   G     : Grid;
                   Size  : Float;
                   Title : String);

   type Grid_Level is (Easy, Medium, Hard, Evil);

   procedure Draw (Ctx    : in out GContext;
                   X, Y   : Float;
                   G_Type : Grid_Level;
                   Size   : Float);

   Easy_Grid : constant Grid :=
     ((0, 5, 4, 8, 9, 0, 0, 0, 0),
      (9, 1, 0, 7, 0, 2, 0, 0, 8),
      (0, 3, 7, 0, 0, 0, 5, 0, 0),
      (3, 0, 0, 0, 0, 0, 7, 8, 0),
      (0, 0, 0, 2, 4, 6, 0, 0, 0),
      (0, 6, 9, 0, 0, 0, 0, 0, 4),
      (0, 0, 1, 0, 0, 0, 6, 9, 0),
      (4, 0, 0, 6, 0, 1, 0, 7, 3),
      (0, 0, 0, 0, 8, 7, 4, 1, 0));

   Medium_Grid : constant Grid :=
     ((0, 6, 4, 3, 0, 8, 0, 0, 7),
      (0, 0, 7, 9, 0, 5, 0, 0, 2),
      (1, 0, 0, 0, 0, 4, 6, 0, 0),
      (0, 0, 0, 8, 9, 0, 2, 0, 0),
      (0, 0, 0, 0, 5, 0, 0, 0, 0),
      (0, 0, 9, 0, 3, 6, 0, 0, 0),
      (0, 0, 8, 1, 0, 0, 0, 0, 6),
      (4, 0, 0, 6, 0, 9, 8, 0, 0),
      (6, 0, 0, 5, 0, 7, 9, 1, 0));

   Hard_Grid : constant Grid :=
     ((0, 0, 0, 2, 0, 0, 8, 0, 5),
      (0, 1, 2, 0, 0, 0, 0, 0, 0),
      (0, 4, 0, 0, 3, 0, 0, 1, 7),
      (1, 0, 0, 0, 0, 0, 0, 0, 0),
      (0, 0, 5, 7, 8, 3, 4, 0, 0),
      (0, 0, 0, 0, 0, 0, 0, 0, 6),
      (6, 2, 0, 0, 5, 0, 0, 8, 0),
      (0, 0, 0, 0, 0, 0, 3, 6, 0),
      (8, 0, 3, 0, 0, 4, 0, 0, 0));

   Evil_Grid : constant Grid :=
     ((0, 0, 3, 0, 0, 7, 8, 9, 0),
      (8, 0, 0, 0, 0, 0, 4, 0, 0),
      (0, 7, 0, 0, 1, 0, 0, 0, 0),
      (0, 0, 0, 1, 0, 3, 0, 2, 0),
      (7, 0, 0, 0, 0, 0, 0, 0, 9),
      (0, 4, 0, 5, 0, 2, 0, 0, 0),
      (0, 0, 0, 0, 2, 0, 0, 4, 0),
      (0, 0, 9, 0, 0, 0, 0, 0, 5),
      (0, 8, 1, 3, 0, 0, 2, 0, 0));


end Sudoku;
