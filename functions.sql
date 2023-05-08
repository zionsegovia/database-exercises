# **FUNCTIONS**
use employees;

# concat function
SELECT CONCAT (first_name, ' ', last_name) FROM employees WHERE first_name = 'Maya';

# date and time functions
SELECT DAYOFMONTH(hire_date) FROM employees WHERE first_name = 'Maya';

SELECT DATEDIFF(NOW(), hire_date)/365 FROM employees LIMIT 50;

# nested functions
SELECT MINUTE(NOW());
SELECT SECOND(NOW());

# **GROUP BY AND AGGREGATE FUNCTIONS**
# group by will combine duplicates into one value for each group
# it will consolidate rows bassed on a common column

use employees;

SELECT last_name FROM employees GROUP BY last_name;

SELECT COUNT(first_name) FROM employees;

SELECT last_name, COUNT(first_name) FROM employees GROUP BY last_name ORDER BY last_name;

SELECT gender, COUNT(first_name) FROM employees GROUP BY gender;

SELECT MIN(DATEDIFF(hire_date, birth_date))/356 FROM employees;

SELECT MAX(DATEDIFF(HIRE_DATE,birth_date))/365 FROM employees;

SELECT AVG(DATEDIFF(hire_date,birth_date)) /365 FROM employees;





