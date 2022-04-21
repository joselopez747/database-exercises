use employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;


# this gets me the departments names
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name)
    FROM departments d
        JOIN dept_manager dm on d.dept_no = dm.dept_no
        JOIN employees e on e.emp_no = dm.emp_no
    WHERE to_date like '9%'
    ORDER BY d.dept_name;



SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name)
FROM departments d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
WHERE to_date like '9%'
    AND gender = 'F'
ORDER BY d.dept_name;

SELECT title, COUNT(title) AS Total
FROM titles
GROUP BY title;

SELECT title, COUNT(title) AS Total
FROM titles t JOIN dept_emp de on t.emp_no = de.emp_no
    WHERE dept_no = 'd009'
GROUP BY title;


SELECT title, COUNT(title) AS Total
FROM titles t JOIN dept_emp de on t.emp_no = de.emp_no
    WHERE dept_no = 'd009'
    AND t.to_date LIKE '9%'
    AND de.to_date LIKE '9%'
GROUP BY title;













