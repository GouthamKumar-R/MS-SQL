create database PraxisJuly2020;

use [PraxisJuly2020];  --Use is like chdir in py, changing directory; 

--creating table

create table emp
(
id integer,
name varchar(100),    --name is also a keyword, but sql is smart enough to identify it
age smallint,
salary bigint
);

--Viewing data

select * from emp;   --* selects all the columns

select id, name, age 
from 
	emp;  

--Inserting Records(data)
--Records are inserted row by row
insert into emp      --inserting single row
(id,name,age,salary)
values
(1,'Goutham',25,1000); --str has to be enclosed in '' single quotes not in "" double quotes

insert into emp
(id,age,name,salary)  --Column order and value order should match
values
(2,NULL,'Kumar',30000); 

insert into emp
(id,name,salary)  --Column order and value order should match
values
(2,'Nav',30000); --Null doesn't need to be specified explicitly

select * from emp;

--Instead of using Describe table...use Alt+F1 to see basic st. of Table

--Inserting more rows

insert into emp      
(id,name,age,salary)
values
(4,'A',25,1000),
(5,'B',25,1000),
(6,'C',NULL,1000),
(7, 'D',NULL,5000);

select *from emp;

/*insert into emp      
(id,name,age,salary)
values
(4,'A',,1000);  --cant leave without null,if u have specified 4 columns, u shld enter 4 values
*/

--27th Aug session 3

truncate table emp;   --deletes all entries, but table structure isn't altered

insert into emp
values                        --dont give () whole block, bcoz here were are inserting row by row
(1,'Goutham',25,1000),
(2,'Nav',25,2000),
(3,'Mass',25,5000),
(4,'Vicky',NULL,7000),
(5,'Faaru',27,500);

select * from emp;

--filters
select *
from emp
where name ='Goutham';

/* comparison Operators
=
>=
<=
>
<
<> and !=  --not equal,both works 
*/
select *
from emp
where id != 3

select * 
from emp
where name not in ('Goutham', 'Nav');  --Displays name that does'nt have goutham and nav

select * 
from emp
where name in ('Mass', 'Faaru'); --Displays only these name

/*Logical operators
AND
OR
NOT
*/
----------------------------------------------
/* 01 - sep 2020*/

--ddl alter table

alter table emp
alter column [name] varchar(10); -- reducing the size of name column

truncate table emp;

insert into emp
(id, name, age, salary)
values(2,2020, 20, 5000);  ---if it is convertible , it can convert varchar to int

alter table emp
alter column [name] int;

select *
from emp;

truncate table emp;

exec sp_help emp;  --similar to describe table or ctrl +f1

alter table emp
drop column salary;  --dropped salary col.

alter table emp 
add address varchar(50);   --for adding column, no need to speccify column (constraint)

exec sp_help emp;

alter table emp
add city varchar(20),
state  varchar(50),
country varchar(20);  ---multiple column addition

/*Assignment -
create, alter, drop all commands discussed abv
exercise create table, add values, and truncate it , add again, drop table*/

