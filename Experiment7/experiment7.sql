-- =========================================================
-- EXPERIMENT 7: Design and Performance Analysis of Materialized Views
-- Aim: Compare simple, complex, and materialized views
-- Software: Oracle XE / PostgreSQL
-- =========================================================

-- =======================
-- Step 1 – Create Base Tables
-- =======================
-- Employee Table
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    Salary NUMBER(10,2)
);

-- Department Table
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

-- Payroll Table
CREATE TABLE Payroll (
    EmpID INT,
    PayDate DATE,
    PayAmount NUMBER(10,2),
    PRIMARY KEY (EmpID, PayDate),
    FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
);

-- =======================
-- Step 2 – Insert Sample Data
-- =======================
-- Departments
-- Departments
INSERT INTO Department VALUES (1, 'Data Analytics');
INSERT INTO Department VALUES (2, 'Finance & Accounts');
INSERT INTO Department VALUES (3, 'Human Resources');

-- Employees
INSERT INTO Employee VALUES (201, 'Arnav Sharma', 1, 950000);
INSERT INTO Employee VALUES (202, 'Riya Mehta', 2, 880000);
INSERT INTO Employee VALUES (203, 'Kunal Verma', 1, 720000);
INSERT INTO Employee VALUES (204, 'Sneha Iyer', 3, 650000);

-- Payroll Records
INSERT INTO Payroll VALUES (201, TO_DATE('2026-03-01','YYYY-MM-DD'), 79167);
INSERT INTO Payroll VALUES (202, TO_DATE('2026-03-01','YYYY-MM-DD'), 73333);
INSERT INTO Payroll VALUES (203, TO_DATE('2026-03-01','YYYY-MM-DD'), 60000);
INSERT INTO Payroll VALUES (204, TO_DATE('2026-03-01','YYYY-MM-DD'), 54167);

-- =======================
-- Step 3 – Create Simple View
-- =======================
CREATE VIEW SimpleEmployeeView AS
SELECT EmpID, EmpName, Salary
FROM Employee;

-- =======================
-- Step 4 – Create Complex View
-- =======================
CREATE VIEW ComplexEmployeePayroll AS
SELECT e.EmpID, e.EmpName, d.DeptName, SUM(p.PayAmount) AS TotalPaid
FROM Employee e
JOIN Department d ON e.DeptID = d.DeptID
JOIN Payroll p ON e.EmpID = p.EmpID
GROUP BY e.EmpID, e.EmpName, d.DeptName;

-- =======================
-- Step 5 – Create Materialized View
-- =======================
-- Oracle
CREATE MATERIALIZED VIEW MaterializedEmployeePayroll
BUILD IMMEDIATE
REFRESH COMPLETE ON DEMAND
AS
SELECT e.EMPID, e.EMPNAME, d.DEPTNAME, SUM(p.PAYAMOUNT) AS TOTALPAID
FROM Employee e
JOIN Department d ON e.DEPTID = d.DEPTID
JOIN Payroll p ON e.EMPID = p.EMPID
GROUP BY e.EMPID, e.EMPNAME, d.DEPTNAME;

-- PostgreSQL alternative
-- CREATE MATERIALIZED VIEW MaterializedEmployeePayroll AS
-- SELECT e.EmpID, e.EmpName, d.DeptName, SUM(p.PayAmount) AS TotalPaid
-- FROM Employee e
-- JOIN Department d ON e.DeptID = d.DeptID
-- JOIN Payroll p ON e.EmpID = p.EmpID
-- GROUP BY e.EmpID, e.EmpName, d.DeptName
-- WITH NO DATA;
-- REFRESH MATERIALIZED VIEW MaterializedEmployeePayroll;

-- =======================
-- Step 6 – Execute Queries on Views
-- =======================
-- Simple View Query
SELECT * FROM SimpleEmployeeView;

-- Complex View Query
SELECT * FROM ComplexEmployeePayroll;

-- Materialized View Query
SELECT * FROM MaterializedEmployeePayroll;

-- =======================
-- Step 7 – Compare Performance
-- =======================
-- Oracle: measure timing
SET TIMING ON;

SELECT * FROM SimpleEmployeeView;
SELECT * FROM ComplexEmployeePayroll;
SELECT * FROM MaterializedEmployeePayroll;

SET TIMING OFF;

-- PostgreSQL: measure timing
-- \timing
-- SELECT * FROM SimpleEmployeeView;
-- SELECT * FROM ComplexEmployeePayroll;
-- SELECT * FROM MaterializedEmployeePayroll;

-- Observation:
-- Simple view: Fast for single table queries.
-- Complex view: Slower due to joins and aggregation.
-- Materialized view: Fastest for repeated queries; precomputed results improve performance.

DELETE FROM EMPLOYEE
WHERE
        ID = :ID
    AND NAME = :NAME
    AND DEPARTMENT = :DEPARTMENT
    AND SALARY = :SALARY;