create or replace function f
  ( p_parameter_5 in number default 5)
  return number
 is v_var number;
 begin
 v_var := 3.1416*p_parameter_5*p_parameter_5;
 return v_var;
 end f;
/