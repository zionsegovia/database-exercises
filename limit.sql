USE employees;

SHOW TABLES;

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC;

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 10;

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 45;