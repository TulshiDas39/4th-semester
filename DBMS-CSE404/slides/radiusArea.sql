
create or replace procedure calculate_area
 (radius in number
  area in number ) is
 begin
 select 3.1416*radius*radius
 from dual;
 end calculate_area;
/