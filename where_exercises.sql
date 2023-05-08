
USE employees;

SHOW TABLES;

# # Wild card anything before % or after %
# SELECT first_name FROM employees WHERE first_name LIKE 'sus%';
# # BETWEEN shows > START and < END, OR < START and > END
# # SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;
# SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10082 AND 10026;
# # Instead of using OR clause use in to select multipl cases
# SELECT emp_no, first_name, last_name FROM employees WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');
#
# SELECT emp_no, first_name, last_name FROM employees WHERE emp_no < 20000
#                                      AND last_name IN ('Herber', 'Baek')
#                                      OR first_name = 'Shridhar' AND emp_no < 20000;
#
# SELECT * FROM salaries WHERE salary BETWEEN 50000 AND 100000;
# SELECT * FROM salaries WHERE salary NOT BETWEEN 50000 AND 100000;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';


SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT *
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M';


SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';


SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

