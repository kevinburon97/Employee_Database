-- 1)
create view employee_salary as
	select employees.emp_number,employees.first_name,employees.last_name,employees.sex,salaries.salaries from employees
	inner join salaries on employees.emp_number = salaries.emp_number
;
select * from employee_salary 

-- 2)
create view employees1986 as
	select employees.first_name,employees.last_name, employees.hire_date from employees
	where SUBSTR(employees.hire_date, LENGTH(employees.hire_date) - 3, 4) like '1986'
;
select * from employees1986

-- 3)
create view managers as 
	select dept_manager.dept_number, departments.dept_name, employees.emp_number, employees.first_name, employees.last_name from employees
	right join dept_manager on employees.emp_number = dept_manager.emp_number
	right join departments on dept_manager.dept_number = departments.dept_number
;
select * from managers

-- 4)

create view department_name as 
	select employees.emp_number, employees.last_name,  employees.first_name, departments.dept_number from employees
	left join dept_employee on employees.emp_number = dept_employee.emp_number
	left join departments on dept_employee.dept_number = departments.dept_number
;
select * from department_name

-- 5)

create view Hercules_B as 
	select employees.first_name,employees.last_name, employees.sex from employees
	where first_name like 'Hercules' and SUBSTR(last_name,1,1) like 'B'

select * from dept_employee

-- 6) d007

create view SalesTeam as 
	select  employees.emp_number,employees.last_name, employees.first_name, departments.dept_name from employees
	left join dept_employee on employees.emp_number = dept_employee.emp_number
	left join departments on dept_employee.dept_number = departments.dept_number
	where departments.dept_number like 'd007'

select * from SalesTeam

-- 7)

create view SalesandDevelop as 
	select  employees.emp_number,employees.last_name, employees.first_name, departments.dept_name from employees
	left join dept_employee on employees.emp_number = dept_employee.emp_number
	left join departments on dept_employee.dept_number = departments.dept_number
	where departments.dept_number like 'd007' or departments.dept_number like 'd005'

select * from SalesandDevelop

-- 8)

create view LNfrequency as 
	SELECT last_name, COUNT(last_name) AS "frequency"
	FROM employees
	GROUP BY last_name
	ORDER BY "frequency" DESC;

select * from LNfrequency