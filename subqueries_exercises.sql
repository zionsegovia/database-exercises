USE employees;

SELECT * FROM employees WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);
#
select hire_date from employees where emp_no = 101010;

select * from employees
where hire_date IN (
    select hire_date FROM employees where emp_no = 101010
);



SELECT * FROM titles WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');
#

select title from titles where emp_no in (
    select emp_no from employees where first_name = 'Aamod') group by title;

#
USE employees;

select first_name, last_name from employees
where emp_no in (
    select emp_no from dept_manager
    where to_date like '9%'
)
  and gender = 'F';