-- exercise 1: create a stored procedure

create database advancedsql;
use advancedsql;

create table employee (
    empid int primary key,
    empname varchar(50),
    department varchar(30),
    salary decimal(10,2)
);

insert into employee values
(101,'Rahul','HR',45000),
(102,'Anita','HR',50000),
(103,'Vijay','IT',70000),
(104,'Sneha','IT',65000),
(105,'Kiran','Finance',60000);

delimiter $$

create procedure getemployees()
begin
    select * from employee;
end $$

delimiter ;

call getemployees();
