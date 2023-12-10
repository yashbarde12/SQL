-- Limit Clause
-- Sets an upper limit on number of (tuples)rows to be returned
-- syntax: SELECT col1, col2 FROM table_name LIMIT number;
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
("Angela",2500,200,100,3),
("John",3000,200,100,5),
("Jonathan",3000,200,100,5),
("Andy",6000,100,200,2);
truncate table emp;
select * from emp;
-- ------------------------------------------------
-- _____________LIMIT____________
select * from emp limit 3; -- top 3 entries based on primary key
select * from emp where salary >= 3000;
select * from emp where salary >= 3000 limit 2; -- top 2 entries with salary >= 3000

-- top 3 higher salaries less than 5000
select * from emp where salary <= 5000 order by salary desc limit 3;

-- ------------------------------------------------
-- ------------------------------------------------