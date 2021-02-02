create table departments(
	deptNo varchar primary key not null,
	deptName varchar not null
);

-- select * from departments;

create table dept_employees(
	empNo int,
	deptNo varchar not null,
	foreign key (deptNo) references departments(deptNo),
	foreign key (empNo) references employees(empNo)
);

-- select * from dept_employees;

create table manager(
	deptNo varchar not null,
	empNo int,
	foreign key (deptNo) references departments(deptNo),
	foreign key (empNo) references employees(empNo)
);

-- select * from manager;

create table employees(
	empNo int primary key not null,
	titleID varchar not null,
	birthdate date not null,
	nameF varchar not null,
	nameL varchar not null,
	sex varchar not null,
	hiredate date not null,
	foreign key (titleID) references titles(titleID)
);

-- select * from employees;

create table salaries(
	empNo int not null,
	salary int,
	foreign key (empNo) references employees(empNo)
);

-- select * from salaries;

create table titles(
	titleID varchar primary key not null,
	title varchar not null
);

-- select * from titles;
-- Thought I needed this to find my DB for bonus section
-- show data_directory;
