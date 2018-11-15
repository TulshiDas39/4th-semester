
BEGIN
UPDATE employees
SET first_name = 'B'
WHERE first_name LIKE 'B%';
DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT);
END;
/