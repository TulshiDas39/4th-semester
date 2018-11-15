declare
	v_num1 char(1):='&num1';
	

begin

	if v_num1 = upper(v_num1)
	then
	dbms_output.put_line('this is upper ');
	else
	dbms_output.put_line('this is small letter ');
	end if;
	
end;
/