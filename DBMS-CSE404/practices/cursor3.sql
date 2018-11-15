		DECLARE
			CURSOR c_zip IS
			SELECT *
			FROM employees;
			vr_zip c_zip%ROWTYPE;
		BEGIN
			OPEN c_zip;
			LOOP
			FETCH c_zip INTO vr_zip;
			EXIT WHEN c_zip%NOTFOUND;
			if vr_zip.salary*12 >10000
			then
			DBMS_OUTPUT.PUT_LINE(vr_zip.first_name||' '||vr_zip.salary*12);
			end if;
			END LOOP;
		END;
/
