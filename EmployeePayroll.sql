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