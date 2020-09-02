/*Assignment_1
Name: Goutham Kumar R
submittedd on 01-sep-2020*/

/*Use all these queries:
1)CREATE
2)INSERT
3)SELECT,
4)ALTER,
5)DELETE,
6)TRUNCATE,
7)DROP.*/

CREATE DATABASE Assignment;   --Creating database

USE Assignment;  --seleccting A1 db

CREATE TABLE A1_stud  --creating a table with these fields.
(
Roll_no int identity(1,1) primary key NOT NULL,
F_name varchar(20),
L_name varchar(15),
Age tinyint,
Gender char(1),
Course varchar(10)
);

exec sp_help A1_stud;  --describing table, to check datatypes

INSERT INTO A1_stud
(F_name,L_name,Age,Gender,Course)  ---Inserting data into these fields
VALUES
('Goutham','Kumar',25,'M','PGPDS'),  ---Row by row data is recorded
('Sourab','Gupta',27,'M','PGPDS'),
('Arvind','Raj',25,'M','PGPDS'),
('Rekha','M',23,'F','PGPDS');

SELECT * FROM A1_stud;  ---Retrieving the all the data

SELECT * FROM A1_stud
WHERE F_name = 'Goutham';

ALTER TABLE A1_stud   --adding new column
ADD Location varchar(10);

ALTER TABLE A1_stud
DROP COLUMN Location; ---removing the unwanted fields.

TRUNCATE TABLE A1_stud;   ---clears all records but retains the pk, and structure/ verified it with exec sp_help

DROP TABLE A1_stud;  ---entire table with its structure is deleted.

---------------------------------------------

