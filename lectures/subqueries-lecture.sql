USE employees;

SELECT emp_no FROM dept_manager;


#birthdates of anybody thats ever been manager
SELECT birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
    );


USE codeup_test_db;

SELECT * FROM preferences;


# subquery in an insert statement
INSERT INTO preferences (person_id, album_id) VALUES ((SELECT id FROM persons WHERE first_name = 'Tareg'), (SELECT id FROM albums WHERE name = 'Rumours'));

# subquery in a select statement
SELECT first_name, name From persons JOIN preferences p on persons.id = p.person_id JOIN albums a ON p.album_id = a.id WHERE first_name = 'Tareg';