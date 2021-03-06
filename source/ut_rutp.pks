CREATE OR REPLACE PACKAGE utrutp
IS

/************************************************************************
GNU General Public License for utPLSQL

Copyright (C) 2000-2003 
Steven Feuerstein and the utPLSQL Project
(steven@stevenfeuerstein.com)

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program (see license.txt); if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
************************************************************************
$Log$
Revision 1.2  2003/07/01 19:36:47  chrisrimmer
Added Standard Headers

************************************************************************/

   PROCEDURE TERMINATE (
      run_id_in IN utr_utp.run_id%TYPE
    , utp_id_in IN utr_utp.utp_id%TYPE
    , end_on_in IN DATE := SYSDATE
   );

   PROCEDURE initiate (
      run_id_in IN utr_utp.run_id%TYPE
    , utp_id_in IN utr_utp.utp_id%TYPE
    , start_on_in IN DATE := SYSDATE
   );

   PROCEDURE clear_results (run_id_in IN utr_utp.run_id%TYPE);

   PROCEDURE clear_results (
      owner_in IN VARCHAR2
    , program_in IN VARCHAR2
    , start_from_in IN DATE
   );

   PROCEDURE clear_all_but_last (owner_in IN VARCHAR2, program_in IN VARCHAR2);
   
   function last_run_status (
      owner_in IN VARCHAR2
    , program_in IN VARCHAR2
   )
   return utr_utp.status%type;
END utrutp;
/

