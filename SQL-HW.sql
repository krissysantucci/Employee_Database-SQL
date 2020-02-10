DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE departments (
	dept_no VARCHAR (20)UNIQUE,
	dept_name VARCHAR (20),
	PRIMARY KEY (dept_no,dept_name)
);

CREATE TABLE employees (
	emp_no INT UNIQUE,
	birth_date timestamp without time zone NOT NULL,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	gender VARCHAR(2) NOT NULL,
	hire_date timestamp without time zone NOT NULL,
	PRIMARY KEY (emp_no,first_name,last_name)
);
	
CREATE TABLE salaries (
	emp_no INT,
	salary INT NOT NULL,
	from_date timestamp without time zone NOT NULL,
	to_date timestamp without time zone NOT NULL,
	PRIMARY KEY (emp_no,from_date)
);

CREATE TABLE titles (
	emp_no INT,
	title VARCHAR(45),
	from_date timestamp without time zone NOT NULL,
	to_date timestamp without time zone NOT NULL,
	PRIMARY KEY (emp_no,title,from_date)
);

CREATE TABLE dept_manager (
	emp_no INT,
	dept_no VARCHAR,
	from_date timestamp without time zone NOT NULL,
	to_date timestamp without time zone NOT NULL,
	PRIMARY KEY (dept_no,emp_no,from_date),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR (20),
	from_date timestamp without time zone NOT NULL,
	to_date timestamp without time zone NOT NULL,
	PRIMARY KEY (emp_no,dept_no,from_date),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);