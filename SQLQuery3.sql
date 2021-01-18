CREATE DATABASE DATABASE_NAME
[ ON
[ PRIMARY ] [ <filespec> [ ,...n ]
[ , <filegroup> [ ,...n ] ]
[ LOG ON { <filespec> [ ,...n ] } ]
]
[ COLLATE collation_name ]
]
[;]

ALTER DATABASE database_name
{
<add_or_modify_files>
| <add_or_modify_filegroups>
| <set_database_options>
| MODIFY NAME = new_database_name
| COLLATE collation_name
}
[;]

ALTER DATABASE database_name
{
<add_or_modify_files>
| <add_or_modify_filegroups>
| <set_database_options>
| MODIFY NAME = new_database_name
| COLLATE collation_name
}
[;]

ALTER DATABASE database_name
{
<add_or_modify_files>
| <add_or_modify_filegroups>
| <set_database_options>
| MODIFY NAME = new_database_name
| COLLATE collation_name
}
[;]

ALTER DATABASE database_name
{
<add_or_modify_files>
| <add_or_modify_filegroups>
| <set_database_options>
| MODIFY NAME = new_database_name
| COLLATE collation_name
}
[;]

ALTER DATABASE database_name
{
<add_or_modify_files>
| <add_or_modify_filegroups>
| <set_database_options>
| MODIFY NAME = new_database_name
| COLLATE collation_name
}
[;]

ALTER DATABASE database_name
{
<add_or_modify_files>
| <add_or_modify_filegroups>
| <set_database_options>
| MODIFY NAME = new_database_name
| COLLATE collation_name
}
[;]

ALTER DATABASE database_name
{
<add_or_modify_files>
| <add_or_modify_filegroups>
| <set_database_options>
| MODIFY NAME = new_database_name
| COLLATE collation_name
}
[;]

ALTER DATABASE database_name
{
<add_or_modify_files>
| <add_or_modify_filegroups>
| <set_database_options>
| MODIFY NAME = new_database_name
| COLLATE collation_name
}
[;]

ALTER DATABASE database_name
{
<add_or_modify_files>
| <add_or_modify_filegroups>
| <set_database_options>
| MODIFY NAME = new_database_name
| COLLATE collation_name
}
[;]

ALTER DATABASE database_name
{
<add_or_modify_files>
| <add_or_modify_filegroups>
| <set_database_options>
| MODIFY NAME = new_database_name
| COLLATE collation_name
}
[;]

ALTER DATABASE database_name
{
<add_or_modify_files>
| <add_or_modify_filegroups>
| <set_database_options>
| MODIFY NAME = new_database_name
| COLLATE collation_name
}
[;]

ALTER DATABASE database_name
{
<add_or_modify_files>
| <add_or_modify_filegroups>
| <set_database_options>
| MODIFY NAME = new_database_name
| COLLATE collation_name
}
[;]

CREATE TABLE <table_name1>([ column_list,] <column_name> <datatype> FOREIGN KEY
REFERENCES <table_name> (pk_column_name> [, column_list])

USE [CUST_DB]
GO
CREATE TABLE EMP_PhoneExpenses ( Expense_ID int PRIMARY KEY, MobileNumber bigint
FOREIGN KEY REFERENCES EMP_ContactPhone (MobileNumber), Amount bigint)

INSERT INTO dbo.EMP_PhoneExpenses values(101, 993026654, 500)
SELECT * FROM dbo.EMP_PhoneExpenses

USE [CUST_DB]
CREATE TABLE EMP_PhoneExpenses ( Expense_ID int PRIMARY KEY, MobileNumber bigint
FOREIGN KEY REFERENCES EMP_ContactPhone (MobileNumber), Amount bigint CHECK
(Amount >10))
GO

USE [CUST_DB]
INSERT INTO HRContactPhone (MobileNumber) VALUES(983452201)
INSERT INTO HRContactPhone (MobileNumber) VALUES(993026654)
GO

USE [CUST_DB]
CREATE TABLE EMP_CellularPhone( Person_ID uniqueidentifier DEFAULT NEWID() NOT
NULL, PersonName varchar(60) NOT NULL)
GO

USE [CUST_DB]
INSERT INTO EMP_CellularPhone(PersonName) VALUES ('William Smith')
SELECT * FROM EMP_CellularPhone
GO

CREATE TABLE <table_name> ( Column_name datatype PRIMARY KEY [
column_list] )

CREATE TABLE <table_name> (<column_name> <datatype> [, column_list] CONSTRAINT
constraint_name PRIMARY KEY)

USE [CUST_DB]
INSERT INTO dbo.EMPContactPhone values (101, 983345674,'Hutch', NULL)
INSERT INTO dbo.EMPContactPhone values (102, 989010002,'Airtel', NULL)
GO

CREATE TABLE <table_name> ([column_list
] <column_name> <data_type> UNIQUE [
column_list])

USE [CUST_DB]
GO
CREATE TABLE EMP_ContactPhone(Person_ID int PRIMARY KEY, MobileNumber bigint
UNIQUE,ServiceProvider varchar(30),LandlineNumber bigint UNIQUE)

USE [CUST_DB]
INSERT INTO EMP_ContactPhone values (111, 983345674, 'Hutch', NULL)
INSERT INTO EMP_ContactPhone values (112, 983345674, 'Airtel', NULL)
GO

CREATE TABLE <table_name1>([ column_list,] <column_name> <datatype> FOREIGN KEY
REFERENCES <table_name> (pk_column_name> [, column_list])

USE [CUST_DB]
GO
CREATE TABLE EMP_PhoneExpenses ( Expense_ID int PRIMARY KEY, MobileNumber bigint
FOREIGN KEY REFERENCES EMP_ContactPhone (MobileNumber), Amount bigint)

INSERT INTO dbo.EMP_PhoneExpenses values(101, 993026654, 500)
SELECT * FROM dbo.EMP_PhoneExpenses

USE [CUST_DB]
CREATE TABLE EMP_PhoneExpenses ( Expense_ID int PRIMARY KEY, MobileNumber bigint
FOREIGN KEY REFERENCES EMP_ContactPhone (MobileNumber), Amount bigint CHECK
(Amount >10))
GO