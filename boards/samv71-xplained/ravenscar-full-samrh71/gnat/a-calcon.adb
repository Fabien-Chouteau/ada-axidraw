------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                  A D A . C A L E N D A R . C O N T R O L                 --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                       Copyright (C) 2020-2021, AdaCore                   --
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

package body Ada.Calendar.Control is

   function As_Duration
     (Hour   : Hour_Number;
      Minute : Minute_Number;
      Second : Second_Number)
   return Duration;
   --  a convenience function

   ---------------
   -- Set_Clock --
   ---------------

   procedure Set_Clock (Value : Time) is
   begin
      Radix_Time := Value;
   end Set_Clock;

   ---------------
   -- Set_Clock --
   ---------------

   procedure Set_Clock
     (Year     : Year_Number;
      Month    : Month_Number;
      Day      : Day_Number;
      Hour     : Hour_Number;
      Minute   : Minute_Number;
      Second   : Second_Number;
      Fraction : Fractional_Seconds := 0.0)
   is
   begin
      Radix_Time := Time_Of (Year,
                             Month,
                             Day,
                             As_Duration (Hour, Minute, Second) + Fraction);
   end Set_Clock;

   -----------------
   -- As_Duration --
   -----------------

   function As_Duration
     (Hour   : Hour_Number;
      Minute : Minute_Number;
      Second : Second_Number)
   return Duration
   is
     (Duration ((Hour * 3600) + (Minute * 60) + Second));

end Ada.Calendar.Control;
