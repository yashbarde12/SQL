-- Aggregate Functions
/*
Aggregate functions perform a calculation on a set of values, and return a single value.
Generally we use group by with some aggregation function.

Common Aggregate Functions:
	- COUNT(): Counts the number of rows in a group or result set.
	- SUM(): Calculates the sum of numeric values in a group or result set.
	- AVG(): Computes the average of numeric values in a group or result set.
	- MAX(): Finds the maximum value in a group or result set.
	- MIN(): Retrieves the minimum value in a group or result set.
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
select least(10, 5, 20); -- 5
select min(salary) from emp; 

-- ------------------------------------------------
select greatest(15, 27, 30); -- 30
select max(salary) from emp;

-- ------------------------------------------------
select sum(salary) from emp;

-- ------------------------------------------------
select avg(perday) from emp;

-- ------------------------------------------------
select count(*) from emp;

-- ------------------------------------------------
select name, if(salary>3000, 'Yes', 'No') from emp;

-- ------------------------------------------------
select bonus as Emp_with_bonus, sum(leaves_nos) as Leaves_by_them
from emp 
group by bonus; 

-- ------------------------------------------------
select salary, count(name)  
from emp
group by salary
having salary >= 3000; 
-- ------------------------------------------------
-- ------------------------------------------------


