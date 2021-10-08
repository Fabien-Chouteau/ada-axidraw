------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                  A D A . C A L E N D A R . C O N T R O L                 --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                       Copyright (C) 2020-2021, AdaCore                   --
--                                                                          --
-- This specification is derived from the Ada Reference Manual for use with --
-- GNAT. The copyright notice above, and the license provisions that follow --
-- apply solely to the  contents of the part following the private keyword. --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  This package allows clients to set the current time and date.

package Ada.Calendar.Control is

   procedure Set_Clock (Value : Time);

   subtype Hour_Number   is Integer range 0 .. 23;
   subtype Minute_Number is Integer range 0 .. 59;
   subtype Second_Number is Integer range 0 .. 59;

   subtype Fractional_Seconds is Duration range 0.0 .. 1.0 - Duration'Small;

   procedure Set_Clock
     (Year     : Year_Number;
      Month    : Month_Number;
      Day      : Day_Number;
      Hour     : Hour_Number;
      Minute   : Minute_Number;
      Second   : Second_Number;
      Fraction : Fractional_Seconds := 0.0);

end Ada.Calendar.Control;
