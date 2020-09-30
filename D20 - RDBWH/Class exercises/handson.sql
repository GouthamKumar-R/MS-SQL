create database PraxisJuly;

use [Praxis_july];  --Use is like chdir in py, changing directory; 

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
from emp;  

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

--Instead of using Describe table...use Alt+F1(ctrl +F1 in my pc) to see basic st. of Table

--Inserting more rows

insert into emp      
(id,name,age,salary)
values
(4,'A',25,1000),
(5,'B',25,1000),
(6,'C',NULL,1000),
(7, 'D',NULL,5000);

select *from emp;

delete from emp
where 1 = 1; --deletes all records in table

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

--few classes on order by etc., 
/* 08- sep 2020*/  --from here action are performed on Praxis_july

use Praxis_july;

select * from stud;

select * from stud
order by Age_emp;

select top 5 from stud; --syntax error

select top 5 Id from stud;

select top (3)* from stud; 
--top 3 records it can give any 3 records

exec sp_rename "stud.Age", "Age_emp";  --renaming the column 

exec sp_help stud;

drop table emp;

--limit --limits only certain record for retrival of data
-- select * from stud limit 3; --here it wont work

--copy of table

select * into stud_copy from stud;

truncate table stud_copy;
drop table stud_copy;
GO

--Like,in,between

select * from stud
where age_emp between 23 and 25;  ---23 and 25 inclusive 

select * from stud
where age in (20,23,25);

select * from stud
where name like 'G%'; --displays names that start with G

--_ Pre school'_ _ _ _'
--% Grad school

select * from stud
where name like 'Jim';

select * from stud  
where name between 'A' and 'G';

select * from stud
where age between 25 and 20;  --does'nt work this way

select * from stud
where name like '%a%';
--google about careless

--calculated table --important [dbo].[FIFA19_official_data]use in DS
create table calculate2
(low int,
high int,
myavg as (low+high)/2   --we can have a column with formula
);

insert into calculate2
values 
( 10 , 20 );

select * from calculate;

select * into test2 from calculate;

insert into test
values
(10,20,50);

select * from test

select count(distinct(name))
from stud;
-------------------------------------------------------------------------
/* 15 sep 2020 */

--Import and Export

--Right click on db, tasks, export data(similar to import)

--Agg fn are applied to columns
/*sum, 
average, 
count, 
max , 
min  */

select * 
from stud;

exec sp_rename 'stud.Age_emp', 'Age';

select max(Age) as Max_age
from stud


select avg(Age) as Avg_age
from stud;

select max(Id) as max_id, min(Age) as Min_Age
from stud;


select len(Name) as lent,Name, Age
from stud;

select len(Name) as lent, Name , Age
from stud
where len(Name) >4;

--double quotes -used for aliasing which has space inbetween
select Name "Name of Emp" 
from stud;
----------------------------------------------------------
/* 22 sep 2019*/
--String functions
/*Upper
Lower
len
Ltrim - remove space from left side of string
Rtrim - remove space from right side of string  */

select upper('Goutham Kumar') as name

select lower('Goutham Kumar') as name

select len('Goutham Kumar') as name

select len('  Goutham Kumar  ') as name --2spaces on both sides --len doesn't count the spacces in the right side of the data

select datalength('  Goutham Kumar  ') as name --this calculates the crct spaces on both sides

select len(ltrim('   Goutham Kumar    ')) as name --trims the 2spaces from the left side and reduces the lenght

select len(rtrim('  Goutham Kumar   ')) as name --removes the right spaces

Insert into stud
(Name, Course,Location, Age_emp,Gender)
values
('  Goutham  ', 'ECE','Chennai',0,'M'),
('  Goutahm    ', 'MBA','Pallakad',1,'M');

exec sp_columns stud; 

--variable declaration

declare @a varchar(20) 
set @a = '   Goutham   '
select @a


select @b = 'Gouthammm'---this doesnt work
select @b;

declare @c varchar(20)
set @c = '     Xyz'
select @c
select ltrim(@c)

select getdate();

declare @d datetime
select @d = getdate()
select @d
select upper(@d)--gives month name then date thn yr

declare @e datetime
select @e = getdate()
select @e
select len(@e)

--Advanced lvl string fn
/* substring 
charindex -return charcter index
concat
reverse
replace  */

select substring(Name,1,4) as shortname 
from stud;  --subsets the strng from 1st charcter and prints 4 charcters from that
--here indexing starts with 1

--charindex(exptofind, exptosearch(optional set value)

select CHARINDEX('G', 'The king of Gotham city') as indexvalue;--index of the first occurence

select charindex('G', 'The king of Gotham city is Goutham',9) as indexvalue --now search begins from 9th charcter and first occurence after 9th charcter will be displayed

select substring('Im a monkey',(charindex('monkey','Im a monkey')),6)

select substring('Im a monkey',1,10);

----------------------------------------------------------------------------------------------
/* 29 -sep-2020 */

select * from dbo.stud;

declare @age_inc int --declaration
set @age_inc = 5  --this is new data
select @age_inc as Updated_age,* from stud;

declare @b varchar(100)
set @b = 'Goutham will solve this'
select replace(@b,'goutham','flexy') as "repalce value", @b as original_string;

/* assignment
get the file name form the entire file path
C:\Users\Goutham-ROG\Documents\DS studies\College\heelo.py

we shld get hello.py as output
*/

select * from stud;
--getting null values
select isnull(Gender, 'M'),name from stud; --now null is updated


----------------------
/*Assignmnet*/
--1st method
Declare @path varchar(1000), @find varchar(1000), @index int
set @path = 'C:\Users\Goutham-ROG\Documents\DS studies\College\1st sem\RDBMS and Data Warehousing(RDWH- 2.0)\T_SQL Joins.pdf' --user i/p here
set @find = @path
set @index = (charindex('\',reverse(@find))) --this gives the first position of '\'--to be specific the length of the filename
select reverse(substring(reverse(@find),1,@index-1))



 
