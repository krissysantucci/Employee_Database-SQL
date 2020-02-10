SELECT employees.Emp_no, last_name, first_name, gender, salary
FROM employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no

SELECT *
FROM employees
WHERE hire_date > '1/1/1986' AND hire_date < '1/1/1987'

SELECT departments.dept_no, dept_name, employees.emp_no, last_name, first_name, from_date, to_date
FROM employees
INNER JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE to_date = '1/1/9999'

SELECT employees.Emp_no, last_name, first_name, dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no

SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

SELECT employees.Emp_no, last_name, first_name, dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales'

SELECT employees.Emp_no, last_name, first_name, dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

SELECT last_name, Count(last_name) AS "Name Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Name Frequency" DESC



