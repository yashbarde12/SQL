-- Having Clause
/*
Similar to Where i.e. applies some condition on rows.
Used when we want to apply any condition after grouping.
The HAVING clause is used with GROUP BY to filter groups 
based on aggregate function results.
It's similar to the WHERE clause but operates on grouped data.
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
-- _______________Having_Clause_________________
-- city wise avg salary
select city, avg(salary) from emp group by city;

-- city wise employee count having average salary >= 2500 
select city, avg(salary) , count(*) 
from emp 
group by city
having avg(salary) >= 2500;

-- city wise employee count having average salary >= 2500 in asc order of emp count
select city, avg(salary) , count(*) as employees
from emp 
group by city
having avg(salary) >= 2500
order by employees;

-- ------------------------------------------------
-- ------------------------------------------------