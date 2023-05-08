USE employees;

SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager' FROM dept_manager mgr
                                                                                                           JOIN dept_emp de
                                                                                                                ON de.emp_no = mgr.emp_no
                                                                                                           JOIN departments d
                                                                                                                ON d.dept_no = de.dept_no
                                                                                                           JOIN employees e
                                                                                                                ON mgr.emp_no = e.emp_no
WHERE mgr.to_date > NOW()
ORDER BY dept_name ASC;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager' FROM dept_manager mgr
                                                                                                           JOIN dept_emp de
                                                                                                                ON de.emp_no = mgr.emp_no
                                                                                                           JOIN departments d
                                                                                                                ON d.dept_no = de.dept_no
                                                                                                           JOIN employees e
                                                                                                                ON mgr.emp_no = e.emp_no
WHERE mgr.to_date > NOW()
  AND e.gender = 'F'
ORDER BY dept_name ASC;

SELECT title AS 'title', COUNT(role.emp_no) AS 'Total' FROM titles role
                                                                JOIN employees e
                                                                     ON e.emp_no = role.emp_no
                                                                JOIN dept_emp de
                                                                     ON de.emp_no = role.emp_no
WHERE role.to_date > NOW()
  AND  de.dept_no = 'd009'
GROUP BY title;

SELECT dept_name AS 'Department Name',
       CONCAT(first_name, ' ', last_name) AS 'Department Manager',
       salary AS 'Salary'
FROM dept_manager mgr
         JOIN dept_emp de
              ON de.emp_no = mgr.emp_no
         JOIN departments d
              ON d.dept_no = de.dept_no
         JOIN employees e
              ON mgr.emp_no = e.emp_no
         JOIN salaries s
              ON s.emp_no = e.emp_no
WHERE mgr.to_date > NOW() AND s.to_date > NOW()
ORDER BY dept_name ASC;

