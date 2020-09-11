CREATE DATABASE FIFA;
GO

USE FIFA;
GO

/* Imported FIFA 17 -20 DATA*/

/*Fifa 17*/
select * from [dbo].[FIFA17];

select count(*) from [dbo].[FIFA17]; --rows of fifa17 is 17560

--changing datatypes
alter table fifa17
alter column [ID] int not null;
go
alter table fifa17
alter column [Age] tinyint;
go
alter table fifa17
alter column [Overall] int;
go
alter table fifa17
alter column [Potential] int;
go
alter table fifa17
alter column [International Reputation] int;
go
alter table fifa17
alter column [Weak Foot] int;
go
alter table fifa17
alter column [Skill Moves] int;
go
alter table fifa17
alter column [Best Overall Rating] int;
go
--verifying
exec sp_columns [FIFA17];

/*Fifa 18*/--------------------------------------------------------------------------------------------

select * from [dbo].[FIFA18];

select count(*) from [FIFA18]; --17927 rows

--changing datatypes
alter table fifa18
alter column [ID] int not null;
go
alter table fifa18
alter column [Age] tinyint;
go
alter table fifa18
alter column [Overall] int;
go
alter table fifa18
alter column [Potential] int;
go
alter table fifa18
alter column [International Reputation] int;
go
alter table fifa18
alter column [Weak Foot] int;
go
alter table fifa18
alter column [Skill Moves] int;
go
alter table fifa18
alter column [Best Overall Rating] int;
go
--verifying
exec sp_columns [FIFA18];

/*Fifa 19*/---------------------------------------------------------------------------------------------

select *from [dbo].[FIFA19];

select count(*) from fifa19; -- 17943 rows

--changing datatypes
alter table fifa19
alter column [ID] int not null;
go
alter table fifa19
alter column [Age] tinyint;
go
alter table fifa19
alter column [Overall] int;
go
alter table fifa19
alter column [Potential] int;
go
alter table fifa19
alter column [International Reputation] int;
go
alter table fifa19
alter column [Weak Foot] int;
go
alter table fifa19
alter column [Skill Moves] int;
go
alter table fifa19
alter column [Best Overall Rating] int;
go
--verifying
exec sp_columns [FIFA19];

/*Fifa 20*/------------------------------------------------------------------------------------------------
select * from [dbo].[FIFA20];

select count(*) from fifa20;--17104 rows

--changing datatypes
alter table fifa20
alter column [ID] int not null;
go
alter table fifa20
alter column [Age] tinyint;
go
alter table fifa20
alter column [Overall] int;
go
alter table fifa20
alter column [Potential] int;
go
alter table fifa20
alter column [International Reputation] int;
go
alter table fifa20
alter column [Weak Foot] int;
go
alter table fifa20
alter column [Skill Moves] int;
go
alter table fifa20
alter column [Best Overall Rating] int;
go
--verifying
exec sp_columns [FIFA20];
--------------------------------------------------------------------
/*dropping unnecessary columns*/
--Fifa17 - 20

select [ID],[Name],[Age],[Club],[Nationality],[Overall],[Potential],[Weak Foot],[Skill Moves],[International Reputation],[Height],[Weight],[Best Position],[Best Overall Rating]
from fifa17;

select [ID],[Name],[Age],[Club],[Nationality],[Overall],[Potential],[Weak Foot],[Skill Moves],[International Reputation],[Height],[Weight],[Best Position],[Best Overall Rating]
from fifa18;

select [ID],[Name],[Age],[Club],[Nationality],[Overall],[Potential],[Weak Foot],[Skill Moves],[International Reputation],[Height],[Weight],[Best Position],[Best Overall Rating]
from fifa19;

select [ID],[Name],[Age],[Club],[Nationality],[Overall],[Potential],[Weak Foot],[Skill Moves],[International Reputation],[Height],[Weight],[Best Position],[Best Overall Rating]
from fifa20;

---------------------------------------------------------------------
