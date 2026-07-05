-- exercise 2: index

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

create index idx_empname
on employee(empname);

select * from employee;

show indexes from employee;

drop index idx_empname on employee;
