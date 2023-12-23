-- Date Functions
-- ------------------------------------------------
select curdate(); -- 2023-12-15
select now(); -- 2023-12-15 12:13:31
select sysdate(); -- 2023-12-15 12:13:42

-- ------------------------------------------------
select last_day(curdate()); -- 2023-12-31

-- ------------------------------------------------
select datediff("2023-08-20" , "2023-08-15"); -- 5
select datediff("2023-08-15" , "2023-08-20"); -- -5
select datediff("2023-08-20" , "2023-01-15"); -- 217
select datediff(last_day(curdate()) , curdate()); -- 16

-- ------------------------------------------------
select day(curdate()); -- 15
select month(curdate()); -- 12
select year(curdate()); -- 2023

-- ------------------------------------------------
select date_format(curdate(), '%y'); -- 23
select date_format(curdate(), '%m'); -- 12
select date_format(curdate(), '%d'); -- 15

-- ------------------------------------------------
select date_format(curdate(), '%Y'); -- 2023
select date_format(curdate(), '%M'); -- December
select date_format(curdate(), '%D'); -- 15th

-- ------------------------------------------------
select date_format(curdate(), "%d %m %y"); -- 15 12 23
select date_format(curdate(), "%D / %M / %Y"); -- 15th / December / 2023
select date_format(curdate(), "%D %M, %Y"); -- 15th December, 2023

-- ------------------------------------------------
-- ------------------------------------------------
