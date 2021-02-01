-- Only one that requires a sort is #8, I added my own sorts in for my amusement

-- 1. Employee number, Last Name, first name, sex, salary, sorted by employee number 

select  emp.empNo, emp.NameL, emp.NameF, emp.sex, sal.salary  
from Employees as emp
left join salaries as sal
on emp.empNo = sal.empNo
order by empNo ASC

-- 2. First Name, Last Name, hire date for anyone hired in 1986
-- select * from employees; <-- used this to see my schema

select NameF, NameL, hiredate from employees
where hiredate >= '1986-01-01'and hiredate <='1986-12-31'
order by hiredate, nameL, nameF asc;

-- 3. Manager of each department
-- department #, department name, manager employee number, Last name, first name

select dep.deptNo, dep.deptName, man.empNo, emp.NameL, emp.nameF
from Departments as dep
left join manager as man
on dep.deptNo = man.deptNo
left join employees as emp
on emp.empNo = man.empNo
order by deptno ASC;

--4.  employee number, last name, first name, department name

select emp.empno, emp.nameL, emp.nameF, dep.deptName
from deptemp as de
left join departments as dep
on de.deptno = dep.deptno
left join employees as emp
on de.empno = emp.empno
order by namel asc;

-- 5. FIrst name, last name, sex where FN = hercules and last name starts with B

select namef, nameL, sex from employees 
where nameF = 'Hercules' and nameL like 'B%';

-- 6. All employees in sales
-- employee number, last name, first name, department name
-- this is #4 + where deptname = 'Sales'

select emp.empno, emp.nameL, emp.nameF, dep.deptName
from deptemp as de
left join departments as dep
on de.deptno = dep.deptno
left join employees as emp
on de.empno = emp.empno
where deptname = 'Sales'
order by empno asc;

-- 7.  All employes in sales and Developent
-- employee number, last name, first name, dept name
-- Builds on #4 and 6 with an "or" to get both departments

select emp.empno, emp.nameL, emp.nameF, dep.deptName
from deptemp as de
left join departments as dep
on de.deptno = dep.deptno
left join employees as emp
on de.empno = emp.empno
--where upper(deptname) = 'SALES' or lower(deptname) = 'development'  -- 755 msec 678 msec
where deptname = 'Sales' or deptname = 'Development'  --769 msec 690msec
order by empno asc;

-- 8.  Freqency count of employee last names, descending order.

select nameL, count(nameL)
from employees
group by nameL
order by nameL desc;