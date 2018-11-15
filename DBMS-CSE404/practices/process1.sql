declare
	v_student_id number :=&sv_student_id;
	v_first_name varchar2(20);
	v_last_name varchar2(25);
	
begin
	select first_name,last_name
	into v_first_name,v_last_name from employees
	where employee_id = v_student_id;
	dbms_output.put_line
			('Student name:'||v_first_name||''||v_last_name);
	
exception
	when no_data_found then
	dbms_output.put_line('There is no such student');
end;
/