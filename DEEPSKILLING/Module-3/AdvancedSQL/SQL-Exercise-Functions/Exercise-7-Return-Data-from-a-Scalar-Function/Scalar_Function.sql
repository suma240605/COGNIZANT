-- exercise 7: return data from a scalar function

create database advancedsql;
use advancedsql;

create table employee (
    empid int primary key,
    empname varchar(50),
    salary decimal(10,2)
);

insert into employee values
(101,'Rahul',45000),
(102,'Anita',50000),
(103,'Vijay',70000),
(104,'Sneha',65000),
(105,'Kiran',60000);

delimiter $$

create function getsalary(eid int)
returns decimal(10,2)
deterministic
begin
    declare sal decimal(10,2);

    select salary
    into sal
    from employee
    where empid = eid;

    return sal;
end $$

delimiter ;

select getsalary(103) as employee_salary;
