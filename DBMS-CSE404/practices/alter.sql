create or replace function insert_tax
 (p_id employees.employee_id%type) return number is
    v_sal employees.salary%type :=0;

begin
  select salary*12 
  into v_sal
  from employees
where employee_id = p_id;
insert into annual_salary1 values(p_id,v_sal,v_sal*0.01);
return v_sal;

end insert_tax; 
/