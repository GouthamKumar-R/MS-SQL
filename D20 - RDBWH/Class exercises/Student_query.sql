CREATE DATABASE Praxis_july;

use [Praxis_july];

CREATE TABLE stud
( Id int identity(1,1),
Name varchar(20),
Course varchar(10),
Location varchar(20),
Age tinyint,
Gender char(1) );

Insert into stud
(Name, Course,Location, Age_emp,Gender)
values
('Akash', 'ECE','Chennai',25,'M'),
('Akshay', 'MBA','Pallakad',24,'M'),
('Anisha', 'ECE','Chennai',20,'F'),
('Algates', 'ECE','Coimbatore',10,'M'),
('Balaji', 'DSP','Pondy',25,'M'),
('GokulDheep', 'ECE','Coimbatore',20,'M'),
('Jim', 'ECE','Coimbatore',45,'M'),
('Goutham', 'PGPDS','Chennai',25,'M'),
('Pranesh', 'MBA','Coimbatore',25,'M'),
('Rekha', 'PGDM','Chennai',20,'F'),
('Aparna', 'BSC','Thrissur',25,'F') ;



Insert into stud
(Name, Course,Location, Age_emp)
values
('ZZZZ', 'ECE','Chennai',25);  --NULL values is stored

select *
from stud;
