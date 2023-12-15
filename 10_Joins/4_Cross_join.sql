-- Cross Join
/*
A cross join, also known as a Cartesian product (cross product).
It generates a result set that contains all possible combinations of rows from both tables.
Syntax: 
	SELECT columns
	FROM table1
	CROSS JOIN table2;
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
-- Cross Join
select emp_id, name, salary, dept, dept_head
from employee
cross join
department;

-- ------------------------------------------------
-- ------------------------------------------------
