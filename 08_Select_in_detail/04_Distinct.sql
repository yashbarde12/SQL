-- DISTINCT
-- Removes duplicate rows from query results.
-- Syntax: SELECT DISTINCT column1, column2 FROM table_name;
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
-- DISTINCT
-- Removes duplicate rows from query results
select distinct salary from emp; -- unique salaries
select distinct leaves_nos from emp; -- unique leaves
select distinct bonus from emp; -- uniques bonuses
-- ------------------------------------------------
-- ------------------------------------------------
