-- Exercise 1: ranking and window functions

create database advancedsql;
use advancedsql;

create table employee (
    empid int primary key,
    empname varchar(50),
    department varchar(30),
    salary decimal(10,2)
);

insert into employee values
(101, 'Rahul', 'HR', 45000),
(102, 'Anita', 'HR', 50000),
(103, 'Vijay', 'IT', 70000),
(104, 'Sneha', 'IT', 65000),
(105, 'Kiran', 'Finance', 60000),
(106, 'Pooja', 'Finance', 60000),
(107, 'Ravi', 'IT', 80000);

select empid,
       empname,
       department,
       salary,
       row_number() over(order by salary desc) as row_number
from employee;

select empid,
       empname,
       department,
       salary,
       rank() over(order by salary desc) as rank_number
from employee;

select empid,
       empname,
       department,
       salary,
       dense_rank() over(order by salary desc) as dense_rank
from employee;

select empid,
       empname,
       department,
       salary,
       row_number() over(partition by department order by salary desc) as dept_row
from employee;

select empid,
       empname,
       department,
       salary,
       rank() over(partition by department order by salary desc) as dept_rank
from employee;

select empid,
       empname,
       salary,
       lead(salary) over(order by salary) as next_salary
from employee;

select empid,
       empname,
       salary,
       lag(salary) over(order by salary) as previous_salary
from employee;

select empid,
       empname,
       salary,
       first_value(salary) over(order by salary desc) as highest_salary
from employee;

select empid,
       empname,
       salary,
       last_value(salary) over(
           order by salary
           rows between unbounded preceding
           and unbounded following
       ) as lowest_salary
from employee;
