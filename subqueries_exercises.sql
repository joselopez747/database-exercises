USE employees;

# 1 Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

SELECT hire_date
FROM employees
WHERE emp_no = 101010;

SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );
# 2 Find all the titles held by all employees with the first name Aamod.  314 total titles, 6 unique titles.

SELECT first_name, emp_no FROM employees WHERE first_name = 'Aamod';

SELECT title, COUNT(title)
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name ='Aamod'
    )
GROUP BY title;


# 3 Find all the current department managers that are female.
# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+

SELECT first_name, last_name AS employee_name
FROM employees WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
    WHERE YEAR(to_date) = 9999 AND gender = 'F'
    );


# BONUS
# 1 Find all the department names that currently have female managers.
# +-----------------+
# | dept_name       |
# +-----------------+
# | Development     |
# | Finance         |
# | Human Resources |
# | Research        |
# +-----------------+


# 2 Find the first and last name of the employee with the highest salary.
#+------------+-----------+
# | first_name | last_name |
# +------------+-----------+
# | Tokuyasu   | Pesch     |
# +------------+-----------+

SELECT CONCAT(first_name, ' ',last_name) AS full_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE to_date LIKE '9%' AND salary IN (
        SELECT MAX(salary) FROM salaries
        )
    );

