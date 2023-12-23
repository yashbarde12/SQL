-- DQL : Data Query Language
-- Retrieve data from the database using SQL queries.
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

insert into emp (name,salary,bonus,perday,leaves_nos)
values ("Jim",3000,200,100,5),
 ("Pam",6000,100,200,2),
 ("Dwight",3000,500,100,0);
truncate table emp;
-- ------------------------------------------------
-- ________________select_command__________________
select * from emp;

select emp_id, name, (perday * 30) as per_month from emp;

select emp_id, name, (salary - (perday * leaves_nos)) as sal_after_deduction from emp;
-- ------------------------------------------------
select 10+5;
select 10+5 as Addition;
select (20*3)-30 as Result;
select 10 as A, 20 as B;
-- ------------------------------------------------
-- ------------------------------------------------


