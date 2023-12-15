-- Self Join:
/*
It is a regular join but the table is joined with itself.
Syntax:
	SELECT columns
	FROM table1 AS alias1
	JOIN table1 AS alias2 ON alias1.column = alias2.column;
*/
-- ------------------------------------------------
create database join_db;
drop database join_db;
use join_db;
show tables;

create table employee(
emp_id int primary key,
name varchar(10),
manager_id int);
drop table employee;

insert into employee value
(101, "Pam", 103),
(102, "Dwight", 104),
(103, "Micheal", null),
(104, "Jim", 103);
truncate table employee;
select * from employee;

-- ------------------------------------------------
-- Self Join:

select a.name as Employee, b.name as Manager_Name
from employee a
join
employee b
on a.emp_id = b.manager_id;

select a.emp_id, a.name as Employee, b.name as Manager_Name
from employee as a
join
employee as b
on a.emp_id = b.manager_id;

-- ------------------------------------------------
-- ------------------------------------------------

