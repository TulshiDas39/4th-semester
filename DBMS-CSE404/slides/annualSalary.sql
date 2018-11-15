set serveroutput on;
create or replace procedure annual_salary
 (e_id in employees.employee_id%Type,
  ann_salary out employees.salary%Type) is
 begin
  select (salary + salary*commission_pct/100)*12 from employees where employee_id = e_id;
 
 end query_emp;
/