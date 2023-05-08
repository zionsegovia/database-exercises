USE employees;

SHOW TABLES;

SELECT last_name FROM employees GROUP BY last_name;

SELECT COUNT(first_name) FROM employees;

SELECT last_name, COUNT(first_name) FROM employees GROUP BY last_name;

SELECT gender, COUNT(first_name) FROM employees GROUP BY gender;

SELECT MIN(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;


SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name;

SELECT DISTINCT (CONCAT(first_name, ' ', last_name)) FROM employees
WHERE (last_name LIKE 'E%' AND last_name LIKE '%E')

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT last_name, COUNT(first_name) FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT gender, COUNT(gender) FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
GROUP BY gender;