declare
	v_num1 number:=&num1;
	v_num2 number:=&num2;
	v_num3 number:=&num3;
	v_temp number;

begin
	v_temp :=v_num1;
	if v_temp <v_num2
	then
	v_temp:=v_num2;
	end if;
	if v_temp <v_num3
	then 
	v_temp:=v_num3;
	end if;
	dbms_output.put_line('max= '||v_temp);
end;
/