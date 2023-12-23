-- Order By Clause
-- To sort in ascending (ASC) or descending order (DESC)
-- SELECT col1, col2 FROM table_name ORDER BY col_name(s) ASC;
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
-- ____________Order_By_Clause___________
-- To sort in ascending (ASC) or descending order (DESC)
select * from emp order by salary; -- Salary in ascending order
select * from emp order by salary desc; -- Salary in descending order

select * from emp order by name; -- name in ascending alphabatical order

select distinct salary from emp order by salary desc; -- unique salaries in desc order
select distinct salary, name from emp order by salary; -- unique salaries in asc order with names

select distinct salary, name from emp order by name; -- unique salaries with names in asc order

-- ------------------------------------------------
-- ------------------------------------------------
