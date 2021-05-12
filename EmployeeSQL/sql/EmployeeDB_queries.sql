--1.) List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT
    e.emp_no AS "Employee Number"
  , e.last_name AS "Last Name"
  , e.first_name AS "First Name"
  , e.sex AS "Sex"
  , s.salary AS "Salary"
FROM employee e
  LEFT JOIN salary s ON s.emp_no = e.emp_no;

--2.) List first name, last name, and hire date for employees who were hired in 1986.
SELECT
    first_name AS "First Name"
  , last_name AS "Last Name"
  , hire_date AS "Hire Date"
FROM employee
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--3.) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT 
    a.dept_no AS "Department Number"
  , b.dept_name AS "Department Name"
  , a.emp_no AS "Manager Employee Number"
  , c.last_name AS "Manager Last Name"
  , c.first_name AS "Manager First Name"
FROM dept_manager a
  LEFT JOIN department b ON b.dept_no = a.dept_no
  LEFT JOIN employee c ON c.emp_no = a.emp_no;
