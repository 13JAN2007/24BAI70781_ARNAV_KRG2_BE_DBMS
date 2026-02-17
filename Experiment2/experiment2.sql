CREATE TABLE employee (
    emp_id       INT PRIMARY KEY,
    emp_name     VARCHAR(50),
    department   VARCHAR(50),
    salary       NUMERIC(10,2),
    joining_date DATE
);

INSERT INTO employee (emp_id, emp_name, department, salary, joining_date) VALUES
(201, 'Amit Sharma',   'IT',        52000, '2022-01-10'),
(202, 'Neha Verma',    'HR',        26000, '2021-03-15'),
(203, 'Rahul Singh',   'IT',        34000, '2020-06-20'),
(204, 'Priya Mehta',   'Finance',   61000, '2019-09-05'),
(205, 'Karan Gupta',   'HR',        21000, '2023-02-12'),
(206, 'Sneha Kapoor',  'Finance',   32000, '2020-11-25'),
(207, 'Rohit Jain',    'Sales',     39000, '2021-07-30'),
(208, 'Ananya Joshi',  'Sales',     19000, '2022-12-01'),
(209, 'Vikram Rao',    'IT',        28000, '2022-04-18');

SELECT * FROM employee;

SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employee
WHERE salary > 25000
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employee
WHERE salary > 25000
GROUP BY department
HAVING AVG(salary) > 35000;

SELECT department, AVG(salary) AS avg_salary
FROM employee
WHERE salary > 25000
GROUP BY department
HAVING AVG(salary) > 35000
ORDER BY avg_salary DESC;
