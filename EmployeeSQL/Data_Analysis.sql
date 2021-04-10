
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
	on t1.emp_no = t2.emp_no;
	

--2. List first name, last name, and hire date for employees who were hired in 1986.

select
	first_name
	, last_name
	, hire_date
from employees 
where hire_date between '1/1/1986' and '12/31/1986';


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select
	t1.dept_no
	,t2.dept_name
	,t1.emp_no
	,t3.last_name
	,t3.first_name
from dept_manager t1
left join departments t2
	on t1.dept_no = t2.dept_no
left join employees t3
	on t1.emp_no = t3.emp_no;


--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select
	t1.emp_no
	,t1.last_name
	,t1.first_name
	,t3.dept_name
from employees t1
left join dept_emp t2
	on t1.emp_no = t2.emp_no
left join departments t3
	on t2.dept_no = t3.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select
	last_name
	,first_name
	,sex
from employees
where first_name = 'Hercules'
	and last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select
	t1.emp_no
	,t1.last_name
	,t1.first_name
	,t3.dept_name
from employees t1
left join dept_emp t2
	on t1.emp_no = t2.emp_no
left join departments t3
	on t2.dept_no = t3.dept_no
where dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select
	t1.emp_no
	,t1.last_name
	,t1.first_name
	,t3.dept_name
from employees t1
left join dept_emp t2
	on t1.emp_no = t2.emp_no
left join departments t3
	on t2.dept_no = t3.dept_no
where dept_name in ('Sales','Development');

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select distinct last_name, count(*)
from employees
group by last_name
order by count desc;