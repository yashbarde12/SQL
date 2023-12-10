-- Group By Clause
/*
Groups rows that have the same values into summary rows.
It collects data from multiple records and groups the result by one or more column.
Generally we use group by with some aggregation function.
Syntax: 
SELECT column1, aggregate_function(column2) 
FROM table_name
GROUP BY column1; 
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
city varchar(10)
);
drop table emp;

insert into emp (name,salary,city) values
("Jim",3000,"Mumbai"),
("Pam",6000,"London"),
("Dwight",3500,"Delhi"),
("Angela",2500,"Mumbai"),
("John",3000,"New York"),
("Jonathan",3000,"Mumbai"),
("Andy",6000,"London");
truncate table emp;
select * from emp;
-- ------------------------------------------------
-- _______________Group_By_Clause_________________
select city, salary from emp;

select city, sum(salary) from emp group by city; -- city wise total salary

select city, count(*) from emp group by city; -- city wise total employees

select city, count(*) as employees 
from emp 
group by city 
order by employees desc; -- city wise total employees in desc order of count

-- ------------------------------------------------
-- ------------------------------------------------
