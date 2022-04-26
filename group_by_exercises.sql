use employees;

#2
SELECT DISTINCT title from titles;

#3
SELECT last_name
from employees
where last_name like 'e%e'
GROUP BY  last_name
ORDER BY last_name;

#4
SELECT count(*)
from employees
where last_name like 'e%e'
GROUP BY  first_name, last_name;


#5
SELECT last_name
FROM employees
WHERE last_name like '%q%'
  and last_name not like '%qu%'
GROUP BY last_name;

#6
SELECT count(*), last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name not like '%qu%'
GROUP BY last_name;




