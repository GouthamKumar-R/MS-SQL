/*
Assignmnet-2  Date-30 sep 2020
*/
/*
Objective - From a given filepath extarct filename and extension
*/


--1st method -only class fns 
Declare @path varchar(MAX), @find varchar(MAX), @len_file int, @len_ext int
set @path = 'C:\Users\Goutham-ROG\Documents\DS studies\College\1st sem\RDBMS and Data Warehousing(RDWH- 2.0)\T_SQL Joins.pdf' --user i/p here
set @find = @path --copy of filepath
set @len_file = ltrim(charindex('\',reverse(@find))) --this gives the first position of '\'--to be specific the length of the filename
--set @len_file = (charindex('\\',reverse(@find)) --use this if user specifies filepath with \\ and hash out above line
set @len_ext = ltrim(charindex('.',reverse(@find)))--this gives the length of extension
select reverse(substring(reverse(@find),1,@len_file-1)) as "File name", reverse(substring(reverse(@find),1,@len_ext-1)) as Extension

--2nd method - using right
Declare @path2 varchar(MAX), @find2 varchar(MAX), @len_file2 int, @len_ext2 int
set @path2 = 'C:\Users\Goutham-ROG\Documents\DS studies\College\1st sem\RDBMS and Data Warehousing(RDWH- 2.0)\T_SQL Joins.pdf' --user i/p
set @find2 = @path2 --copy of filepath
set @len_file2 = charindex('\',reverse(@find2))
set @len_ext2 = ltrim(charindex('.',reverse(@find2)))
select right(@find2,@len_file2-1) as "File name", right(@find2,@len_ext2-1) as Extension

--3rd method- Filename without ext
Declare @path3 varchar(MAX), @find3 varchar(MAX), @len_file3 int, @len_ext3 int, @pos int
set @path3 = 'C:\Users\Goutham-ROG\Documents\DS studies\College\1st sem\RDBMS and Data Warehousing(RDWH- 2.0)\T_SQL Joins.pdf' --user i/p
set @find3 = @path3 --copy of filepath
set @len_file3 = ltrim(charindex('\',reverse(@find3)))
set @len_ext3 = ltrim(charindex('.',reverse(@find3)))
--set @pos = (@find3,@len_file3-1)-@len_ext3)
select left(right(@find3,@len_file3-1),(@len_file3-@len_ext3)-1) as "File name without Ext", right(@find3,@len_ext3-1) as Extension