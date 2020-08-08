create table departments(
dept_number varchar,
dept_name varchar,
	PRIMARY KEY (dept_number)
);

create table dept_employee(
	dept_employee_ID int,
	emp_number varchar,
	dept_number varchar,
	PRIMARY KEY (dept_employee_ID),
	FOREIGN KEY (dept_number) references departments(dept_number)
);

create table dept_manager(
	manager_ID int,
	dept_number varchar,
	emp_number varchar,
	PRIMARY KEY (manager_ID),
	FOREIGN KEY (dept_number) references departments(dept_number),
	FOREIGN KEY (emp_number) references employees(emp_number)
);

create table titles(
title_ID varchar,
title varchar,
	PRIMARY KEY (title_ID)
);


create table employees(
	emp_number varchar,
	title_ID varchar,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar,
		PRIMARY KEY (emp_number),
		FOREIGN KEY (Title_ID) references titles(Title_ID)
);

create table salaries(
	emp_number varchar,
	salaries int,
		PRIMARY KEY (emp_number),
		FOREIGN KEY (emp_number) references employees(emp_number)
);







