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


