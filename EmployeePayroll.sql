create database payroll_service16

select * from sys.databases

use payroll_service16

create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(20) not null,
salary money not null,
start date not null,
);


insert into employee_payroll values
('Ramesh',200000.0,'2019-8-14'),
('Tesrisha',150000.0,'2018-01-03'),
('Jack',50000.0,'2020-05-21');

select * from employee_payroll

insert into employee_payroll values
('Mark',100000.0,'2017-01-03')


select salary from employee_payroll where name = 'Ramesh'

alter table employee_payroll add gender char(1);
select * from employee_payroll;
update employee_payroll set gender='M' where name in ('Ramesh','Jack','Mark');
update employee_payroll set gender='F' where id in (2);

select sum(salary) from employee_payroll where gender='M' group by gender;
select sum(salary) from employee_payroll  group by gender;
select sum(salary) as 'totalSalary',gender from employee_payroll group by gender;
select avg(salary) as 'averageSalary',gender from employee_payroll group by gender;
select min(salary) as 'minimumSalary',gender from employee_payroll group by gender;
select max(salary) as 'maximumSalary',gender from employee_payroll group by gender;

select count(gender) as 'male' from employee_payroll where gender='M' 
select count(gender) as 'female' from employee_payroll where gender='F' 

alter table employee_payroll add
phone varchar(13),
department varchar(100) not null default 'CSE',
address varchar(250) not null default 'India'
select * from employee_payroll
