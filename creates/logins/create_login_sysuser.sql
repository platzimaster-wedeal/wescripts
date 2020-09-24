USE [wedeal];
GO
IF NOT EXISTS(SELECT name FROM [wedeal].sys.database_principals WHERE name = 'sysuser')
BEGIN
	CREATE USER [sysuser] FOR LOGIN [sysuser] WITH DEFAULT_SCHEMA = [dbo];
	EXECUTE sp_addrolemember N'db_datareader', N'sysuser';
	EXECUTE sp_addrolemember N'db_datawriter', N'sysuser';
END
GO
