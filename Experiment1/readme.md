# Library Management System

## Aim
To design and implement a Library Management System database using appropriate 
tables, primary keys, foreign keys, and constraints, and to perform DML operations 
along with DCL commands such as role creation, privilege granting, and revoking 
to ensure database security.

---

## Software Requirements

| Component                    | Tool       |
|------------------------------|------------|
| Database Management System   | MySQL |
| Database Administration Tool | MySQL Workbench    |

---

## Objective
To gain practical experience in implementing:
- **DDL** - Data Definition Language
- **DML** - Data Manipulation Language
- **DCL** - Data Control Language

This will also include implementing role-based privileges to secure data.

---

## Problem Statement

### 1. Database Design
A Library wants to develop a Library Management System database to manage 
information about **books**, **members**, and **book issue records** efficiently. 
The database should be designed using appropriate tables, primary keys, foreign 
keys, and constraints to ensure data integrity.

### 2. Database Operations
The system must support basic database operations such as:
- Inserting records
- Updating existing data
- Deleting obsolete entries

### 3. Database Security
To ensure database security:
- A database role named **Librarian** must be created
- This role should be **password protected**
- Granted **SELECT**, **INSERT**, and **DELETE** permissions on required tables
- The system administrator **(pgAdmin)** should have the ability to **revoke** 
  these permissions when required using role-based access control
