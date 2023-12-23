-- ________Comparison_operators_________
-- 	1. equal to (=) 
-- 	2. not equal to (!= or <>) 
-- 	3. greater than (>) 
-- 	4. less than (<) 
-- 	5. greater than equal to (>=) 
-- 	6. less than equal to (<=)
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
("Angela",2500,200,100,3);
truncate table emp;
select * from emp;
-- ------------------------------------------------
select * from emp where salary = 3000;

select * from emp where salary != 3000;
select * from emp where salary <> 3000;

select * from emp where salary < 3000;
select * from emp where salary > 3000;

select * from emp where salary <= 3000;
select * from emp where salary >= 3000;
-- ------------------------------------------------
-- ------------------------------------------------
