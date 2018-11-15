declare
 v_counter number:=0;
begin
 loop
  dbms_output.put_line('  '||v_counter);
  if v_counter>10 
  then 
  exit;
  end if;
  v_counter:=v_counter +1;
  end loop;
end;
/