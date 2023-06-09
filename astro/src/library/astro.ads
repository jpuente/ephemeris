-----------------------------------------------------------------------
-- Astro - Ada 2005 library for astrometry.                          --
--                                                                   --
-- This is the root package of the astro library.                    --
--                                                                   --
-----------------------------------------------------------------------
--  Copyright (C) 2007 Juan A. de la Puente  <jpuente@dit.upm.es>    --
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
with Ephemeris;
package Astro is
   pragma Pure (Astro);

   subtype Celestial_Body is Ephemeris.Celestial_Body;
   --     (Mercury, Venus,  Earth,   Mars,  Jupiter,
   --      Saturn,  Uranus, Neptune, Pluto, Moon, Sun);

   Ephemeris_Error : exception renames Ephemeris.Ephemeris_Error;
   Date_Error      : exception renames Ephemeris.Date_Error;

end Astro;
