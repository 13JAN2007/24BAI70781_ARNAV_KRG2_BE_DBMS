# SQL SELECT Queries – Practical Implementation

##  Aim

To understand and implement SQL SELECT queries using various clauses such as `WHERE`, `ORDER BY`, `GROUP BY`, and `HAVING` to retrieve and manipulate data efficiently from relational database tables.

---

##  Software Requirements

| Component | Tool |
|---|---|
| Database Management System | PostgreSQL |
| Database Administration Tool | pgAdmin |

---

##  Objectives

- Practice writing SQL `SELECT` statements.
- Apply filtering conditions using the `WHERE` clause.
- Sort query results using the `ORDER BY` clause.
- Group records using the `GROUP BY` clause.
- Filter grouped data using the `HAVING` clause.
- Analyze data using aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.

---

##  Table Setup

A table named **`Students`** was created to store student information with the following fields:

| Column | Description |
|---|---|
| `id` | Unique Student ID (Primary Key) |
| `name` | Student Name |
| `city` | City of the Student |
| `marks` | Marks Obtained |

---

##  Implementation Details

### 1. Data Insertion
Multiple student records were inserted into the `Students` table, each containing values for `id`, `name`, `city`, and `marks`.

### 2. City-wise Student Count
- Counted the number of students per city using the `COUNT()` function.
- Grouped results using `GROUP BY city`.
- Both `COUNT(*)` (total rows) and `COUNT(id)` (non-null IDs) were used — producing identical results since `id` is always present.

### 3. Sorting Based on Count
- Sorted cities by number of students using `ORDER BY` in ascending order.

### 4. Filtering Cities with Minimum Students
- Identified cities with **at least 3 students**.
- Used the `HAVING` clause (applied after grouping) instead of `WHERE`.

### 5. Average Marks per City
- Calculated average marks per city using `AVG(marks)`.
- Grouped results using `GROUP BY city`.
- Results displayed with precision up to **2 decimal places**.

---

## Step-by-Step Procedure

1. Open PostgreSQL and connect to the required database.
2. Create the `Students` table with columns `id`, `name`, `city`, and `marks`. Set `id` as the **Primary Key**.
3. Insert the student records into the `Students` table.
4. Execute a query using `COUNT()` with `GROUP BY city` to count students per city.
5. Sort the city-wise count results using `ORDER BY` (ascending).
6. Use `HAVING COUNT(*) >= 3` to filter cities with at least 3 students.
7. Use `AVG(marks)` with `GROUP BY city` to calculate average marks per city.

---

## 📚 Learning Outcomes

-  Filter records using the `WHERE` clause.
-  Group records using `GROUP BY`.
-  Apply post-grouping conditions using `HAVING`.
   Sort query results using `ORDER BY`.
-  Use aggregate functions (`COUNT`, `AVG`, `SUM`, `MIN`, `MAX`) for data analysis.
