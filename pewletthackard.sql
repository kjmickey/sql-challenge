-- drop table Titles;

CREATE TABLE Titles(
    titleID varchar(40) PRIMARY KEY NOT NULL,
    title varchar(40)   NOT NULL
     );

select * from Titles;

-- drop table Departments;

CREATE TABLE Departments (
    deptNo varchar(20) PRIMARY KEY NOT NULL,
    deptName varchar(40)   NOT NULL
     );
	 
select * from Departments;

-- drop table Employees;

CREATE TABLE Employees (
    empNo int  PRIMARY KEY NOT NULL,
    titleID varchar(40)   NOT NULL,
    birthDate date   NOT NULL,
    NameF varchar(40)   NOT NULL,
    NameL varchar(40)   NOT NULL,
    sex varchar(10)   NOT NULL,
    hireDate date   NOT NULL,
	foreign key (titleID) references Titles(titleID)
    );
select * from Employees;

-- select  emp.empNo, emp.NameL, emp.NameF, emp.sex, sal.salary  
-- from Employees as emp
-- left join salaries as sal
-- on emp.empNo = sal.empNo
-- order by empNo ASC;

-- drop table DeptEmp;
	 
CREATE TABLE DeptEmp (
    empNo int NOT NULL,
    deptNo varchar(20)   NOT NULL,
	foreign key (empNo) references Employees(empNo),
	foreign key (deptNo) references Departments(deptNo)
);
select * from DeptEmp;

-- drop table Salaries;

CREATE TABLE Salaries (
    empNo int   NOT NULL,
    salary int   NOT NULL,
    foreign key (empNo) references employees(empNo)
     );

select * from Salaries;

-- drop table Manager;

CREATE TABLE Manager (
    deptNo varchar(20)   NOT NULL,
    empNo int   NOT NULL,
	foreign key (deptNo) references departments(deptNo),
	foreign key (empNo) references employees(empNo)
);

select * from Manager;


-- ALTER TABLE "Dept_Employee" ADD CONSTRAINT "fk_Dept_Employee_deptNo" FOREIGN KEY("deptNo")
-- REFERENCES "Departments" ("deptNo");

-- ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_empNo" FOREIGN KEY("empNo")
-- REFERENCES "Dept_Employee" ("empNo");

-- ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_empNo" FOREIGN KEY("empNo")
-- REFERENCES "Dept_Employee" ("empNo");

-- ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_titleID" FOREIGN KEY("titleID")
-- REFERENCES "Titles" ("titleId");

-- ALTER TABLE "Manager" ADD CONSTRAINT "fk_Manager_deptNo_empNo" FOREIGN KEY("deptNo", "empNo")
-- REFERENCES "Dept_Employee" ("deptNo", "empNo");

