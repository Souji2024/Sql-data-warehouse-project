--- SQL Data WareHouse Project ---
/*
======================================================
Creating Database and Schemas
======================================================
Script purpose:
	This script sets up new databse named 'Datawarehouse' and checks if the there is an existing database with that name,
	if exists, Drops the database and creates a new database, along with that it creates 3 Schemas 'Bronze' 'Silver' 'Gold'.
Warning:
	Running this script will drop the whole 'Datawarehouse' data if exist.
	All the data in the database will be permanently deleted. Proceed with caution
	and ensure that you have proper backups before running this script.
*/
USE master;
GO
-- drop existing database and recreate new datawarehouse
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')  
BEGIN 
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
	END;
	GO
	-- create a databse
	CREATE DATABSE Datawarehouse;
	GO
	--use the created databse
	Use Datawarehouse;
	--create schems
CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
GO
