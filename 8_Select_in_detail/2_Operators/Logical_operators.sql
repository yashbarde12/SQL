-- ________Logical_operators_________
-- 	1. AND
-- 	2. OR
-- 	3. NOT
-- 	4. IN
-- 	5. BETWEEN
-- 	6. ALL
-- 	7. LIKE
-- 	8. ANY
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
("Angela",2500,200,100,4);
truncate table emp;
select * from emp;
-- ------------------------------------------------
-- ----AND-----
-- Employees who are earning more than 50 perday and having more than 3 leaves
select * from emp where perday > 50 and leaves_nos > 3;
select * from emp;
-- ------------------------------------------------
-- -----OR-----
-- -- Employees who are earning less than 50 perday OR having more than 3 leaves
select * from emp where perday < 50 or leaves_nos > 3;
select * from emp;
-- ------------------------------------------------
-- -----NOT-----
-- Employees who's name not Dwight
select * from emp where not name = 'Dwight';
select * from emp;
-- ------------------------------------------------
-- -----IN-----
-- Employees who's employee ID either 2 or 3 or 4
select * from emp where emp_id = 2 or emp_id = 3 or emp_id = 4;

-- we use IN if we want multiple entries in same column
select * from emp where emp_id in (2, 3, 4);

-- Employees who's employee ID not 1 and 3
select * from emp where emp_id not in (1, 3);
select * from emp;
-- ------------------------------------------------
-- -----BETWEEN-----
-- between includes both start and end values
select * from emp where salary between 2500 and 6000; 

select * from emp where salary not between 3000 and 5000;
select * from emp;
-- ------------------------------------------------
-- -----LIKE-----
insert into emp (name,salary,bonus,perday,leaves_nos) values
("John",3000,200,100,5),
("Jonathan",3000,200,100,5),
("Andy",6000,100,200,2);
select * from emp;
-- (underscore sign) _ is only specific for one character only
-- (percent sign) % represents zero, one, or multiple characters

-- Employees who's name start with 'J'
select * from emp where name like 'J%';

-- Employees who's name contains 3 letters only and starts with 'P'
select * from emp where name like 'P__';

-- Employees who's name ends with 'n'
select * from emp where name like '%n';

--  Employees who's name starts with 'a' and ends with 'a' contain 6 letters
select * from emp where name like 'a____A'; -- SQL statements and names are case insensitive
-- ------------------------------------------------
-- ------------------------------------------------
