-- SQL Sub Queries
/*
- A Subquery or Inner query or a Nested query is a query within another SQL query.
- It involves 2 select statements.

- Subqueries can be used with:
    1. Subquery in Select
    2. Subquery in Where
    3. Subquery in From
    4. with Partition By
*/
-- ------------------------------------------------
create database employee_db;
drop database employee_db;
use employee_db;
show tables;

create table emp(
emp_id int primary key auto_increment,
name varchar(50) not null,
salary int default 0,
bonus int,
leaves_nos int,
perday int
);
drop table emp;

insert into emp (name,salary,bonus,perday,leaves_nos) values
("Jim",3000,200,100,5),
("Pam",6000,100,200,2),
("Dwight",3500,500,100,0),
("Angela",2500,200,100,4),
("John",3000,200,100,5),
("Jonathan",3000,200,100,5),
("Andy",6000,100,200,2);
truncate table emp;
select * from emp;
-- ------------------------------------------------
-- __________Subquery_in_Where____________
-- Employees getting more than average salary
select avg(salary) from emp;

select * from emp 
where salary >= (select avg(salary) from emp);

-- ------------------------------------------------
-- __________Subquery_in_Select____________
select avg(salary) from emp;

select emp_id, salary, (select avg(salary) from emp) as All_avg_salary
from emp;

-- ------------------------------------------------
-- __________Subquery_in_From____________
select * from emp  where salary <= 3500;

select a.emp_id, a.name, a.salary
from
(select * from emp 
where salary <= 3500) as a;

-- ------------------------------------------------
-- ------------------------------------------------

