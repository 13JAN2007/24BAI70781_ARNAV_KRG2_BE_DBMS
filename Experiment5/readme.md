# Experiment 5 – SQL Conditional Logic (Odd & Even Values)

---

## Experiment

Experiment 5: SQL Conditional Logic using the `MOD (%)` operator to classify employee salary values as **Odd** or **Even**. This experiment demonstrates numerical analysis and conditional evaluation using SQL queries in Oracle and PostgreSQL.

---

## Aim

To understand and apply conditional logic in SQL by using the modulus operator (`MOD / %`) to analyze numerical data and classify employee salaries as odd or even, thereby improving data analysis and decision-making skills in SQL.

---

## Objective

- To write and execute SQL queries using the `MOD (%)` operator.
- To retrieve salary details from an employee table.
- To classify salaries into **Odd** and **Even** categories.
- To display odd and even salary values separately.

---

## Software Requirements

### Database Management System
- Oracle Database Express Edition (Oracle XE)
- PostgreSQL Database

### Database Administration Tool / Client Tool
- Oracle SQL Developer (for Oracle XE)
- pgAdmin (for PostgreSQL)

---

## Practical / Experiment Steps

1. Create an employee table with columns:
   - `id`
   - `name`
   - `department`
   - `salary`
2. Insert sample employee salary records into the table.
3. Write a SQL query to retrieve employee salary details.
4. Use the `MOD(salary, 2)` function (Oracle) or `salary % 2` (PostgreSQL) to check whether the salary is odd or even.
5. Use a `CASE` statement to classify salaries as:
   - `'Odd Salary'`
   - `'Even Salary'`
6. Execute separate queries to:
   - Display only employees with **Odd** salaries.
   - Display only employees with **Even** salaries.
7. Observe and record the output results.

---

## Procedure

1. Open **Oracle SQL Developer** or **pgAdmin**.
2. Connect to the database.
3. Create the employee table using `CREATE TABLE`.
4. Insert sample records using `INSERT INTO`.
5. Execute `SELECT` queries with the `MOD` operator.
6. Apply `CASE` statement for conditional classification.
7. Display results and capture screenshots.

---

## Input / Output Details

### Input

| Property      | Details                          |
|---------------|----------------------------------|
| Table Name    | `employee`                       |
| Columns       | `id` (Number), `name` (Varchar), `department` (Varchar), `salary` (Number) |
| Logic Used    | `MOD(salary, 2)`, `CASE` statement |

---

## Step-wise Output

### Step 1 – Create `employee` Table

```sql
CREATE TABLE employee (
    id         NUMBER PRIMARY KEY,
    name       VARCHAR2(50),
    department VARCHAR2(50),
    salary     NUMBER
);
```

> **Step 1:** Create Table

---

### Step 2 – Insert Data into `employee` Table

```sql
INSERT INTO employee VALUES (1, 'Alice',   'HR',        55000);
INSERT INTO employee VALUES (2, 'Bob',     'Finance',   62000);
INSERT INTO employee VALUES (3, 'Charlie', 'IT',        47001);
INSERT INTO employee VALUES (4, 'Diana',   'Marketing', 38500);
INSERT INTO employee VALUES (5, 'Edward',  'IT',        73001);
```

> **Step 2:** Insert Data

---

### Step 3 – Display Employee Salary Records

```sql
SELECT id, name, department, salary
FROM employee;
```

> **Step 3:** Employee Salaries
<img width="646" height="279" alt="Screenshot 2026-03-02 095342" src="https://github.com/user-attachments/assets/1c256f8e-9b86-4368-8839-e8ef63aad8ba" />

---

### Step 4 – Classify Salaries as Odd or Even

**Oracle:**
```sql
SELECT id, name, salary,
    CASE
        WHEN MOD(salary, 2) = 0 THEN 'Even Salary'
        ELSE 'Odd Salary'
    END AS salary_type
FROM employee;
```

**PostgreSQL:**
```sql
SELECT id, name, salary,
    CASE
        WHEN salary % 2 = 0 THEN 'Even Salary'
        ELSE 'Odd Salary'
    END AS salary_type
FROM employee;
```

> **Step 4:** Classify Salaries
<img width="573" height="281" alt="Screenshot 2026-03-02 095351" src="https://github.com/user-attachments/assets/8db90f39-fa49-46ce-afc6-6249faca7c97" />

---

### Step 5 – Display Only Odd Salaries

**Oracle:**
```sql
SELECT id, name, department, salary
FROM employee
WHERE MOD(salary, 2) <> 0;
```

**PostgreSQL:**
```sql
SELECT id, name, department, salary
FROM employee
WHERE salary % 2 <> 0;
```

> **Step 5:** Odd Salaries
<img width="484" height="214" alt="Screenshot 2026-03-02 095402" src="https://github.com/user-attachments/assets/1228a780-9b78-42b6-b95e-8bfc5dcb9a84" />

---

### Step 6 – Display Only Even Salaries

**Oracle:**
```sql
SELECT id, name, department, salary
FROM employee
WHERE MOD(salary, 2) = 0;
```

**PostgreSQL:**
```sql
SELECT id, name, department, salary
FROM employee
WHERE salary % 2 = 0;
```

> **Step 6:** Even Salaries
<img width="441" height="249" alt="Screenshot 2026-03-02 095413" src="https://github.com/user-attachments/assets/5801a6a5-92c7-4456-b5f3-10847890de09" />

---

## Learning Outcome

After completing this experiment, the learner will be able to:

- Understand conditional logic in SQL queries.
- Use the `MOD (%)` operator for numerical analysis.
- Classify numeric values into odd and even categories.
- Write efficient SQL queries for payroll data analysis.
- Apply SQL logic in real-world enterprise environments.
