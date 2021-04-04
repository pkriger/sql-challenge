/*
--Data Analysis
--Once you have a complete database, do the following:
--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select
	first_name
	, last_name
	, t1.emp_no
	, sex
	, salary
from employees t1
left join salaries	t2
	on t1.emp_no = t2.emp_no
	

--2. List first name, last name, and hire date for employees who were hired in 1986.

select
	first_name
	, last_name
	, hire_date
from employees 
where hire_date between '1/1/1986' and '12/31/1986'

*/
--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


--List the department of each employee with the following information: employee number, last name, first name, and department name.


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


--List all employees in the Sales department, including their employee number, last name, first name, and department name.


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.