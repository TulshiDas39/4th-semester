 set serveroutput on;
 declare 
 v_emp_name employees.last_name%Type;
 v_emp_sal employees.salary%Type;
begin
 query_emp(171,v_emp_name, v_emp_sal);
 DBMS_OUTPUT.PUT_LINE(v_emp_name || ' earns' || to_char(v_emp_sal, '$999,999.00'));
 end;
/