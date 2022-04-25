use employees;

# Part One
#     Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

#     Find all employees whose last name starts with 'E' — 7,330 rows.

SELECT *
FROM employees
WHERE last_name like 'E%';


#     Find all employees with a 'q' in their last name — 1,873 rows.

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

#
# Part Two
#
# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.

      SELECT *
  FROM employees
  WHERE first_name like 'Irena'
     OR first_name like 'Vidya'
     OR first_name like 'Maya';

#     Add a condition to the previous query to find everybody with those names who is also male — 441 rows.

SELECT *
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya'
    AND gender = 'M');

#     Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE 'E%';


#     Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT *
                                       FROM employees
                                       WHERE last_name LIKE 'E%E';

#     Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%';


# order by exercises
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;


SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT * FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;


# Limit exercises

SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
    LIMIT 10 OFFSET 0;


SELECT emp_no, salary FROM salaries
ORDER BY salary DESC
    LIMIT 5;

SELECT emp_no, salary FROM salaries
ORDER BY salary DESC
    LIMIT 5 OFFSET 45;

# OFFSET = PAGES * LIMIT - LIMIT