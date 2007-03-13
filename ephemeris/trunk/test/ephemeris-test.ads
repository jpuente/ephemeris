-----------------------------------------------------------------------
-- Ephemeris - Ada 2005 utilities for the JPL ephemerides.           --
--                                                                   --
-- test_ephemeris test_file [ephemeris_file]                         --
--                                                                   --
-- This program tests a binary ephemeris file using a test data file --
-- provided by JPL.                                                  --
-- If no ephemeris file name is provided, one is automatically       --
-- generated in the following way:                                   --
-- 1) If the EPHEMERIS environment variable is defined, its value is --
--    used as the binary file name.                                  --
-- 2) Otherwise, the ephemeris number (e.g. 'DE200')is used as the   --
--    binary file  name .                                            --
--                                                                   --
--  See http://ssd.jpl.nasa.gov/eph_info.html for more information   --
--  on JPL ephemeris files.                                          --
--  This is a generic version of the test procedure.                 --
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
procedure Ephemeris.Test;