CREATE TABLE Departments(
	dept_no VARCHAR NOT NULL PRIMARY KEY
	,dept_name VARCHAR NOT NULL
);

CREATE TABLE titles(
	title_id VARCHAR NOT NULL PRIMARY KEY
	,title VARCHAR NOT NULL
);

CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY
	,emp_title VARCHAR NOT NULL
	,FOREIGN KEY (emp_title) REFERENCES titles(title_id)
	,birth_date VARCHAR NOT NULL
	,first_name VARCHAR NOT NULL
	,last_name VARCHAR NOT NULL
	,sex VARCHAR NOT NULL
	,hire_date VARCHAR NOT NULL
);

CREATE TABLE dept_emp(
	dept_no VARCHAR NOT NULL
	,FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
	,emp_no INT NOT NULL
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	,PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL
	,FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
	,emp_no INT NOT NULL
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	,PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	,salary INT NOT NULL
	,PRIMARY KEY (emp_no, salary)
);