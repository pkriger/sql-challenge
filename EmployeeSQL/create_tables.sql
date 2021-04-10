
CREATE TABLE public.titles
(
    title_id varchar(10),
    title varchar(50),
    PRIMARY KEY (title_id)
);

CREATE TABLE public.departments
(
    dept_no varchar(5) NOT NULL,
    dept_name varchar(50) NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE public.employees
(
    emp_no integer NOT NULL,
    emp_title_id varchar(10) NOT NULL,
    birth_date date NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    sex varchar(1) NOT NULL,
    hire_date date NOT NULL,
    PRIMARY KEY (emp_no),
	foreign key (emp_title_id) references titles (title_id)
);


CREATE TABLE public.dept_manager
(
    dept_no varchar(5) NOT NULL,
    emp_no integer NOT NULL,
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no),
	PRIMARY KEY (emp_no)
);

--select* from dept_emp
--drop table dept_emp;
CREATE TABLE public.dept_emp
(
    emp_no integer NOT NULL,
    dept_no varchar(5) NOT NULL,
   foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);
--drop table dept_emp;
CREATE TABLE public.salaries
(
    emp_no integer NOT NULL,
    salary money NOT NULL,
    foreign key (emp_no) references employees (emp_no),
	PRIMARY KEY (emp_no)
);
