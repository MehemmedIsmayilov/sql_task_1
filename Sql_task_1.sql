create database Department

create table Employee (
   ID int primary key not null,
   Fullname nvarchar(255) not null,
   Age int check(age>=0) not null,
   Email nvarchar(100) not null,
   Salary decimal check(Salary >= 300 and Salary <=2000),
);


insert into Employee (ID,Fullname,Age,Email,Salary)
values 
(5,'Eliyev Veli',24,'academy@code.edu.az',800),
(6,'Veliyev Eli',21,'academy@code.edu.az',1300),
(7,'Cemil Hemidov',29,'academy@code.edu.az',345)

update Employee
set Salary=1400
where ID=1;

select * from Employee where Salary>500 and Salary<1500;

select Fullname,Email,Salary from Employee
order by Salary desc


select * from Employee