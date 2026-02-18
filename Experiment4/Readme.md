# Experiment 4 – Conditional Control Statements in PL/SQL

| Field | Details |
|---|---|
| Student Name | Arnav Sharma |
| UID | 24BAI70781 |
| Branch | AIT-CSE-AIML |
| Section/Group | 24AIT_KRG-G2 |
| Semester | 4 |
| Subject | Database Management System (DBMS) |

---

## Aim

To design and implement PL/SQL programs using conditional control statements such as IF–ELSE, IF–ELSIF–ELSE, ELSIF ladder, and CASE constructs to control execution flow based on logical conditions and analyze decision-making capabilities in PL/SQL blocks.

---

## Software Requirements

| Component | Tool |
|---|---|
| Database Management System | MySQL |
| Database Administration Tool | MySQL Workbench |

---

## Objectives

- Understand and implement conditional control statements in PL/SQL.
- Analyze decision-making using IF–ELSE, ELSIF ladder, and CASE statements.
- Enhance logical thinking using PL/SQL blocks.

---

## Problem Statements & Programs

### 1. IF–ELSE Statement

**Problem:** Check whether a given number is positive or non-positive.
```sql
DECLARE
  num NUMBER := -5;
BEGIN
  IF num > 0 THEN
    DBMS_OUTPUT.PUT_LINE('The number is Positive');
  ELSE
    DBMS_OUTPUT.PUT_LINE('The number is Non-Positive');
  END IF;
END;
```

---

### 2. IF–ELSIF–ELSE Statement

**Problem:** Evaluate the grade of a student based on marks.
```sql
DECLARE
  marks NUMBER := 78;
BEGIN
  IF marks >= 90 THEN
    DBMS_OUTPUT.PUT_LINE('Grade: A');
  ELSIF marks >= 75 THEN
    DBMS_OUTPUT.PUT_LINE('Grade: B');
  ELSIF marks >= 60 THEN
    DBMS_OUTPUT.PUT_LINE('Grade: C');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Grade: Fail');
  END IF;
END;
```

---

### 3. ELSIF Ladder

**Problem:** Determine student performance status based on marks.
```sql
DECLARE
  marks NUMBER := 82;
BEGIN
  IF marks >= 85 THEN
    DBMS_OUTPUT.PUT_LINE('Performance: Excellent');
  ELSIF marks >= 70 THEN
    DBMS_OUTPUT.PUT_LINE('Performance: Very Good');
  ELSIF marks >= 55 THEN
    DBMS_OUTPUT.PUT_LINE('Performance: Good');
  ELSIF marks >= 40 THEN
    DBMS_OUTPUT.PUT_LINE('Performance: Average');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Performance: Poor');
  END IF;
END;
```

---

### 4. CASE Statement

**Problem:** Display day name based on day number.
```sql
DECLARE
  day_num  NUMBER := 3;
  day_name VARCHAR2(20);
BEGIN
  CASE day_num
    WHEN 1 THEN day_name := 'Sunday';
    WHEN 2 THEN day_name := 'Monday';
    WHEN 3 THEN day_name := 'Tuesday';
    WHEN 4 THEN day_name := 'Wednesday';
    WHEN 5 THEN day_name := 'Thursday';
    WHEN 6 THEN day_name := 'Friday';
    WHEN 7 THEN day_name := 'Saturday';
    ELSE day_name := 'Invalid Day Number';
  END CASE;

  DBMS_OUTPUT.PUT_LINE('Day is: ' || day_name);
END;
```

---

## Learning Outcomes

1. Understood conditional control statements in PL/SQL.
2. Applied IF–ELSE and IF–ELSIF–ELSE for decision-making.
3. Implemented ELSIF ladder for handling multiple conditions.
4. Used CASE statements for simplified branching logic.
5. Improved logical reasoning and procedural programming skills.

---

## Conclusion

This experiment provided hands-on experience with conditional control statements in PL/SQL. The use of IF–ELSE, ELSIF ladder, and CASE statements improved understanding of decision-making mechanisms and control flow within PL/SQL programs.

---

## Screenshots

> Screenshots of program outputs are attached below.
> <img width="692" height="396" alt="image" src="https://github.com/user-attachments/assets/79ee5874-7211-4b08-9821-2acae8b0fabc" />
<img width="692" height="396" alt="image" src="https://github.com/user-attachments/assets/258a3f62-c08a-40f0-ba16-b844e71e7a72" />
<img width="692" height="396" alt="image" src="https://github.com/user-attachments/assets/80c11331-6864-4071-b58d-5e1d066f38d5" />
<img width="692" height="396" alt="image" src="https://github.com/user-attachments/assets/b4be205a-cedf-4e65-93d0-f92b0e5e6a1e" />



