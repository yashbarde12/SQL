-- String Functions
-- ------------------------------------------------
create database employee_db;
drop database employee_db;
use employee_db;
show tables;

create table emp(
emp_id int primary key auto_increment,
fname varchar(10),
mname varchar(10),
lname varchar(10),
salary int default 0,
leaves_nos int);
drop table emp;

insert into emp (fname,mname,lname,salary,leaves_nos) values
("Olivia","James","Anderson",3000,5),
("Vivek",null,"Mitchell",6000,2),
("Sophia","Carter","Reynolds",3500,0),
("Jackson","Jackson","Bennett",2500,4),
("William",null,"Butcher",3000,5),
("Logan",null,"Foster",3000,5),
("Emma","Michael","Harrison",6000,2);
truncate table emp;
select * from emp;

-- ------------------------------------------------
select char_length("sql is easy"); -- 11
select fname, char_length(fname) as Length_of_First_Name from emp;

-- ------------------------------------------------
select find_in_set("Yash", "Yash"); -- 1
select find_in_set("William", fname) from emp; 

-- ------------------------------------------------
select insert("Important", 2, 3, "*"); -- I*rtant -- insert * from 2nd posiotion upto 3 characters
select insert(fname, 2, 1, "-") from emp; -- O-ivia

-- ------------------------------------------------
select lcase("HELlosql"); -- hellosql
select lower("HELlosql"); -- hellosql
select lcase(fname) from emp;

-- ------------------------------------------------
select ucase("HELlosql"); -- HELLOSQL
select upper("HELlosql"); -- HELLOSQL
select ucase(fname) from emp;

-- ------------------------------------------------
select concat("SQL"," is easy") as cancate_string; -- SQL is easy
select concat(fname, mname, lname) as Full_names from emp; -- OliviaJamesAnderson
select concat(fname, lname) as Emp_Names from emp; -- OliviaAnderson
select concat_ws(" ",fname, lname) as Emp_Names from emp; -- Olivia Anderson
select concat_ws(" : ",fname, salary) as Emp_salaries from emp; -- Olivia : 3000

select concat_ws(" ", ucase(fname), lcase(lname)) as Emp_Names from emp;

-- ------------------------------------------------
select repeat("*Hii", 3); -- *Hii*Hii*Hii
select repeat(fname, 2) from emp; 

-- ------------------------------------------------
select replace("hello", "h", "*"); -- *ello
select replace (fname, "a", "--") from emp; 

-- ------------------------------------------------
select ltrim("    SQL     "); -- SQL     
select rtrim("    SQL      "); --     SQL

-- ------------------------------------------------
select mid("Python", 2, 4); -- ytho
select mid(fname, 2, 3) from emp;

-- ------------------------------------------------
select reverse("Hello"); -- olleH
select reverse(fname) from emp;

-- ------------------------------------------------
-- ------------------------------------------------