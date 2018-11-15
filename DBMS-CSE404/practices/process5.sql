declare
 v_counter number:=0;
begin
 while ( v_counter<10)
 loop
  dbms_output.put_line('  '||v_counter);
  v_counter:=v_counter +1;
  end loop;
end;
/