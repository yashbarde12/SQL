-- ______Arithmetic_operators______
-- 	1. + (addition)
-- 	2. - (subtraction)
-- 	3. * (multiplication)
-- 	4. / (division)
-- 	5. % (modulus)
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
("Dwight",3000,500,100,0);
truncate table emp;
select * from emp;
-- ------------------------------------------------
-- addition
select 10+5;
select 10+5 as Addition;
-- Total salary of each employee after bonus
select emp_id, name, (salary + bonus) as Total_salary from emp;
-- ------------------------------------------------
-- multiplication
select 20*5 as Multiplication;
-- Per month salary of each employee
select emp_id, name, (perday * 30) as per_month_salary from emp;
-- ------------------------------------------------
-- subtraction
select 30-15 as Subtraction;
-- Per month salary of each employee after deduction of leaves
select emp_id, name, (salary - (perday * leaves_nos)) as salary_after_deduction from emp;
-- ------------------------------------------------
-- division
select 30/5 as Division;
-- Per day salary of each employee considering 30 days in month
select emp_id, name, (salary / 30) as Per_day_salary from emp;
-- ------------------------------------------------
-- modulus
select 10%5;
select 10%3 as remainder;
select 50%6 as remainder;
-- ------------------------------------------------
-- ------------------------------------------------
