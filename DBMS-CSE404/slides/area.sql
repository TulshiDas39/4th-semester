create or replace procedure salary
(
	p_id         in employees.employee_id%type,
	p_salary     out employees.salary%type)
is begin 
	select (salary*12+nvl(commission_pct,0)) into p_salary
	from employees
	where employee_id = p_id;
end salary;
/
declare 
 v_sal employees.salary%type;
 begin
 salary(156,v_sal);
 dbms_output.put_line(to_char(v_sal,'$999,999.00'));
 end;
 /
