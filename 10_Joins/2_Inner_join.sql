-- Inner Join
/*
Returns records that have matching values in both tables.
Rejects unmatching rows.
Syntax: 
	SELECT column(s)
	FROM tableA
	INNER JOIN tableB
	ON tableA.col_name = tableB.col_name;
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
-- Inner Join
select emp_id, name, salary, dept, dept_head
from employee
inner join
department
on employee.dept_id = department.dept_id;

select emp_id, name, salary, dept, dept_head
from employee
inner join
department
on employee.dept_id = department.dept_id
where salary >= 30000;

select emp_id, name, salary, dept, dept_head
from employee
inner join
department
on employee.dept_id = department.dept_id
where salary >= 30000
order by salary;

-- ------------------------------------------------
-- ------------------------------------------------