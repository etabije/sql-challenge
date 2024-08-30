CREATE TABLE departments (
Dept_id_pkey SERIAL PRIMARY KEY,
dept_no VARCHAR(50) NOT NULL,
dept_name VARCHAR (50) NOT NULL	
);



SELECT * FROM departments


CREATE TABLE dept_emp (
Dept_emp_pkey SERIAL PRIMARY KEY,
emp_no VARCHAR(50) NOT NULL,
dept_no VARCHAR (50) NOT NULL	
);

SELECT * FROM dept_emp



CREATE TABLE dept_manager (
Dept_manager_pkey SERIAL PRIMARY KEY,
dept_no VARCHAR(50) NOT NULL,
emp_no VARCHAR (50) NOT NULL	
);


SELECT * FROM dept_manager


CREATE TABLE employees (
employees_pkey SERIAL PRIMARY KEY,
emp_no VARCHAR(50) NOT NULL,
emp_title_id VARCHAR(50) NOT NULL,
birth_date VARCHAR (20) NOT NULL,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
sex VARCHAR (10) NOT NUll,
hire_date VARCHAR (30) NOT NULL
);



SELECT * FROM employees


CREATE TABLE salaries (
salaries_pkey SERIAL PRIMARY KEY,
emp_no VARCHAR(50) NOT NULL,
salary VARCHAR (50) NOT NULL	
);


SELECT * FROM salaries


CREATE TABLE titles (
titles_pkey SERIAL PRIMARY KEY,
title_id VARCHAR(50) NOT NULL,
title VARCHAR (50) NOT NULL	
);


SELECT * FROM titles