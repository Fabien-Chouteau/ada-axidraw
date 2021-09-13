-------------------------------------------------------------------------------
--                                                                           --
--                                   ACNC                                    --
--                                                                           --
--      Copyright (C) 2016-2017 Fabien Chouteau (chouteau@adacore.com)       --
--                                                                           --
--                                                                           --
--    ACNC is free software: you can redistribute it and/or modify it        --
--    under the terms of the GNU General Public License as published by      --
--    the Free Software Foundation, either version 3 of the License, or      --
--    (at your option) any later version.                                    --
--                                                                           --
--    ACNC is distributed in the hope that it will be useful, but WITHOUT    --
--    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY     --
--    or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public        --
--    License for more details.                                              --
--                                                                           --
--    You should have received a copy of the GNU General Public License      --
--    along with ACNC. If not, see <http://www.gnu.org/licenses/>.           --
--                                                                           --
-------------------------------------------------------------------------------

package body Coms is

   ---------------
   -- Initalize --
   ---------------

   procedure Initalize is
   begin
      null;
   end Initalize;

   ----------------------------
   -- UART_Get_Data_Blocking --
   ----------------------------

   procedure UART_Get_Data_Blocking (C : out Character) is
   begin
      C := ASCII.NUL;
   end UART_Get_Data_Blocking;

   ---------------------------------
   -- UART_Send_DMA_Data_Blocking --
   ---------------------------------

   procedure UART_Send_DMA_Data_Blocking
     (Data      : String)
   is
   begin
      null;
   end UART_Send_DMA_Data_Blocking;

end Coms;
