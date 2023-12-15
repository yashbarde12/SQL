-- Outer Join
/*
Types:
	a. Left outer join (left join)
	b. Right outer join (right join)
	c. Full outer join (full join)
*/
-- ------------------------------------------------
create database join_db;
drop database join_db;
use join_db;
show tables;

create table employee(
emp_id int primary key,
name varchar(10),
salary float default 0,
dept_id int);
drop table employee;

create table department(
dept_id int primary key,
dept varchar(20),
dept_head varchar(10));
drop table department;

insert into employee value
(1, "Olivia", 50000, 101),
(2, "Jackson", 35000, 102),
(3, "Sophia", 25000, 101),
(4, "Logan", 35000, 101),
(5, "William", 30000, null),
(6, "Andy", 35000, 103),
(7, "William", 30000, 102);
truncate table employee;
select * from employee;

insert into department value
(101, "Computer Engg.", "Jim"),
(102, "Mechanical Engg.", "Micheal"),
(103, "Electronics Engg.", "Pam"),
(104, "Civil Engg.", "Dwight");
truncate table department;
select * from department;
-- ------------------------------------------------
-- Left outer join (left join):
/*	Syntax: 
        SELECT column(s)
        FROM tableA
        LEFT JOIN tableB
        ON tableA.col_name = tableB.col_name; */
	
select emp_id, name, salary, dept, dept_head
from employee
left join
department
on employee.dept_id = department.dept_id;

-- ------------------------------------------------
-- Right outer join (right join):
/*	Syntax: 
        SELECT column(s)
        FROM tableA
        RIGHT JOIN tableB
        ON tableA.col_name = tableB.col_name; */
        
select emp_id, name, salary, dept, dept_head
from employee
right join
department
on employee.dept_id = department.dept_id;

-- ------------------------------------------------
-- Full outer join (full join):
-- Outer join = LEFT JOIN  UNION  RIGHT JOIN

select emp_id, name, salary, dept, dept_head
from employee
left join
department
on employee.dept_id = department.dept_id
UNION
select emp_id, name, salary, dept, dept_head
from employee
right join
department
on employee.dept_id = department.dept_id;

-- ------------------------------------------------
-- ------------------------------------------------
