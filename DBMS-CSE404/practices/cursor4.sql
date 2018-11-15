		DECLARE
			CURSOR c_zip IS
			SELECT *
			FROM employees;
			vr_zip c_zip%ROWTYPE;
		BEGIN
			OPEN c_zip;
			LOOP
			FETCH c_zip INTO vr_zip;
			if vr_zip.salary*12 >10000
			then
			insert into new_table(last_name,ann_salary) values(vr_zip.last_name,vr_zip.salary*12);
			end if;
			EXIT WHEN c_zip%NOTFOUND;
			END LOOP;
		END;
/
