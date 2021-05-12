--1.) List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT
    e.emp_no AS "Employee Number"
  , e.last_name AS "Last Name"
  , e.first_name AS "First Name"
  , e.sex AS "Sex"
  , s.salary AS "Salary"
FROM employee e
  LEFT JOIN salary s ON s.emp_no = e.emp_no;

