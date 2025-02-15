--1.List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees as e
JOIN salaries as s ON e.emp_no = s.emp_no


--2.List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM TO_DATE(hire_date, 'MM/DD/YYYY')) = 1986;


--3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT d.dept_manager_pkey, d.dept_no, d.emp_no, de.dept_name, e.last_name, e.first_name
FROM dept_manager as d
JOIN departments AS de ON d.dept_no = de.dept_no
JOIN employees AS e ON d.emp_no = e.emp_no;


--(4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT d.dept_no, d.emp_no, e.last_name, e.first_name,  de.dept_name
FROM dept_manager as d
JOIN departments AS de ON d.dept_no = de.dept_no
JOIN employees AS e ON d.emp_no = e.emp_no;




--5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';


--6.List each employee in the Sales department, including their employee number, last name, and first name.
SELECT de.dept_name, d.emp_no,e.last_name, e.first_name
FROM dept_manager as d
JOIN departments AS de ON d.dept_no = de.dept_no
JOIN employees AS e ON d.emp_no = e.emp_no
WHERE dept_name = 'Sales';


--7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT d.emp_no,e.last_name, e.first_name, de.dept_name
FROM dept_manager as d
JOIN departments AS de ON d.dept_no = de.dept_no
JOIN employees AS e ON d.emp_no = e.emp_no
WHERE dept_name IN('Sales','Development');


--8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, 
COUNT (*) AS frequency
FROM employees as e
GROUP BY last_name
ORDER BY last_name DESC;



