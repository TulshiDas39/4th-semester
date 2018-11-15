DECLARE
	vr_employe employees%ROWTYPE;
BEGIN
	SELECT *
	INTO vr_employe
	FROM employees
	WHERE  employee_id = 156;
	DBMS_OUTPUT.PUT_LINE (vr_employe.first_name ||vr_employe.last_name|| ' has an ID of 156');
EXCEPTION
	WHEN no_data_found
	THEN
	RAISE_APPLICATION_ERROR(-2001,'The Student' || 'is not in the database');
END;
/