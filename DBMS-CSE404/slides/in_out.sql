create or replace procedure formate_phone
 (p_phone_no in out varchar2) is
 begin
 p_phone_no := '(' || substr(p_phone_no,1,3) ||
               ')' || substr(p_phone_no,4,3) || 
                