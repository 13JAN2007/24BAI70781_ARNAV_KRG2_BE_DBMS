-- STEP 1: CREATE TABLE
-- Creating employee table with basic details
CREATE TABLE employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    emp_gender VARCHAR2(10),
    emp_salary NUMBER
);

-- STEP 2: INSERT SAMPLE DATA
-- Inserting updated employee records
INSERT INTO employee VALUES (1, 'Arjun', 'Male', 52000);
INSERT INTO employee VALUES (2, 'Sneha', 'Female', 61000);
INSERT INTO employee VALUES (3, 'Vikram', 'Male', 58000);
INSERT INTO employee VALUES (4, 'Kavya', 'Female', 67000);

COMMIT;

-- STEP 3: PACKAGE SPECIFICATION
CREATE OR REPLACE PACKAGE emp_package AS
    PROCEDURE show_employees;
END emp_package;
/

-- STEP 4: PACKAGE BODY
CREATE OR REPLACE PACKAGE BODY emp_package AS

    CURSOR cur_emp IS
        SELECT emp_id, emp_name, emp_gender, emp_salary FROM employee;

    PROCEDURE show_employees IS
        v_emp_id employee.emp_id%TYPE;
        v_emp_name employee.emp_name%TYPE;
        v_emp_gender employee.emp_gender%TYPE;
        v_emp_salary employee.emp_salary%TYPE;

    BEGIN
        OPEN cur_emp;

        LOOP
            FETCH cur_emp INTO v_emp_id, v_emp_name, v_emp_gender, v_emp_salary;
            EXIT WHEN cur_emp%NOTFOUND;

            DBMS_OUTPUT.PUT_LINE(
                'ID: ' || v_emp_id ||
                ' | Name: ' || v_emp_name ||
                ' | Gender: ' || v_emp_gender ||
                ' | Salary: ' || v_emp_salary
            );
        END LOOP;

        CLOSE cur_emp;

    END show_employees;

END emp_package;
/

-- STEP 5: EXECUTE PROCEDURE
BEGIN
    emp_package.show_employees;
END;
/