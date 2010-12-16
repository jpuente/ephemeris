-----------------------------------------------------------------------
-- Ephemeris - Ada 2005 utilities for the JPL ephemerides.           --
--                                                                   --
-- create_ephemeris source_file_name [binary_file_name]              --
--                                                                   --
-- This program creates a binary ephemeris file from a source (ASCII)--
-- ephemeris file.                                                   --
-- If no binary file name is provided, one is automatically          --
-- generated in the following way:                                   --
-- 1) If the EPHEMERIS environment variable is defined, its value is --
--    used as the binary file name.                                  --
-- 2) If the source file name is of the form 'base.ext',             --
--    then 'base' is used as the binary file name                    --
--    (e.g. 'JPL200.asc' -> JPL200'                                  --
-- 3) Otherwise, the ephemeris number (e.g. 'DE200')is used as the   --
--    binary file  name .                                            --
--                                                                   --
-- This is a generic version of the procedure.
-----------------------------------------------------------------------
--  Copyright (C) 2006 Juan A. de la Puente  <jpuente@dit.upm.es>    --
--  This unit was originally developed by Juan A. de la Puente.      --
-----------------------------------------------------------------------
-- This library is free software; you can redistribute it and/or     --
-- modify it under the terms of the GNU General Public               --
-- License as published by the Free Software Foundation; either      --
-- version 2 of the License, or (at your option) any later version.  --
--                                                                   --
-- This library is distributed in the hope that it will be useful,   --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of    --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU --
-- General Public License for more details.                          --
--                                                                   --
-- You should have received a copy of the GNU General Public         --
-- License along with this library; if not, write to the             --
-- Free Software Foundation, Inc., 59 Temple Place - Suite 330,      --
-- Boston, MA 02111-1307, USA.                                       --
-----------------------------------------------------------------------
generic
   type Real is digits <>;
   Ephemeris_Number : JPL_Ephemeris := DE200;
procedure Ephemeris.Create;
