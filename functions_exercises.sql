USE employees;

SHOW TABLES;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT CONCAT(first_name, last_name) FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name;

USE employees;
SELECT CONCAT(first_name,' ', last_name) FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE DAY(birth_date)= 25 AND MONTH(birth_date)= 12;