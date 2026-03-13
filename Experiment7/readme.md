
# Experiment 7 – Design and Performance Analysis of Materialized Views (SanDisk, JTG, PayPal)

## Experiment
**Experiment 7:** Creating and analyzing simple views, complex views, and materialized views to compare execution time and performance differences. This experiment demonstrates query optimization and system performance evaluation in a database environment.

---

## Aim
To design and implement a materialized view and to compare and analyze execution time and performance differences between simple views, complex views, and materialized views, thereby understanding their impact on query optimization and system performance.

---

## Objective
- To create simple views, complex views, and materialized views.  
- To evaluate and compare execution time for different views.  
- To highlight the advantages of materialized views in enterprise-level applications.  
- To analyze the performance benefits of materialized views in data-intensive scenarios.  

---

## Software Requirements

### Database Management System:
- Oracle Database Express Edition (Oracle XE)  
- PostgreSQL Database  

### Database Administration Tool / Client Tool:
- Oracle SQL Developer (for Oracle XE)  
- pgAdmin (for PostgreSQL)  

---

## Problem Statement
In large-scale enterprise systems, frequent execution of complex queries can significantly affect performance. Organizations require optimized mechanisms to improve query response time without compromising data consistency.

---

## Practical / Experiment Steps
1. Create a simple view based on a single employee-related table.  
2. Create a complex view involving joins, filters, or aggregations.  
3. Create a materialized view storing precomputed query results.  
4. Execute queries on all three types of views.  
5. Analyze and compare execution time and performance to determine the most efficient approach for repeated query execution.  

---

## Procedure
1. Open Oracle SQL Developer or pgAdmin and connect to the database.  
2. Create the base tables (e.g., employee, department, payroll).  
3. Insert sample data into the tables.  
4. Create a **simple view** selecting a subset of columns from a single table.  
5. Create a **complex view** using JOINs, aggregations, and filters.  
6. Create a **materialized view** to store the results of a complex query.  
7. Execute `SELECT` queries on all views and record execution times.  
8. Compare performance metrics between simple, complex, and materialized views.  
9. Capture results and screenshots for documentation.  

---

## Input / Output Details

### Input
**Base tables:**  
- employee (id, name, department_id, salary)  
- department (id, name)  
- payroll (employee_id, salary, bonus)  

**Views:**  
- Simple view: SELECT columns from a single table  
- Complex view: JOIN, aggregation, filters  
- Materialized view: Precomputed query results  

---

## Step-wise Output
**Step 1 – Create Base Tables**  
<img width="1473" height="654" alt="image" src="https://github.com/user-attachments/assets/bd8b4256-ab4f-40bd-8f04-b1ab2fde164d" />

**Step 2 – Insert Sample Data**  
<img width="1591" height="1113" alt="image" src="https://github.com/user-attachments/assets/a18714f8-6aec-4aff-8130-41a1a8fdc934" />


**Step 3 – Create Simple View**  
<img width="1496" height="550" alt="image" src="https://github.com/user-attachments/assets/6dacee03-f021-4ff5-a4cb-6614522e2b9d" />

**Step 4 – Create Complex View**  
<img width="1859" height="702" alt="image" src="https://github.com/user-attachments/assets/2e40a5b4-a6df-4db2-b0fb-6dff78f28fdd" />
**Step 5 – Create Materialized View**  
<img width="1907" height="972" alt="image" src="https://github.com/user-attachments/assets/5122d98c-fc13-4168-a272-c64d799fe747" />

**Step 6 – Execute Queries on Views**  
<img width="1916" height="925" alt="image" src="https://github.com/user-attachments/assets/e5eecdb5-47a6-4c4b-9c96-a7d1a3c34813" />

**Step 7 – Compare Performance**  
<img width="1657" height="920" alt="image" src="https://github.com/user-attachments/assets/4ac44870-cd36-4a10-a6fc-b25f1414cd91" />

---

## Learning Outcome
After completing this experiment, the learner will be able to:  
- Understand the concept and working of materialized views in a database system.  
- Differentiate between simple views, complex views, and materialized views.  
- Create and refresh materialized views in PostgreSQL/Oracle.  
- Measure and compare query execution time for different types of views.  
- Analyze performance benefits of materialized views in data-intensive applications.  
- Apply materialized view concepts in real-world scenarios like SanDisk, JTG, and PayPal.x
