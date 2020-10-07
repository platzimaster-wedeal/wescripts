USE wedeal;
GO
IF OBJECT_ID(N'dbo.experiences') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.experiences;
END
GO
CREATE TABLE dbo.experiences
(
	id INT NOT NULL IDENTITY(1,1),
	[type] VARCHAR(15) NOT NULL DEFAULT '',
	[entity] VARCHAR(100) NOT NULL DEFAULT '',
	[degree] VARCHAR(60)  DEFAULT '',
	[file_url] VARCHAR(MAX)  DEFAULT '',
	id_employee INT NOT NULL ,
	[description] VARCHAR(150) DEFAULT '',
	CONSTRAINT PK_EXPERIENCES_ID PRIMARY KEY(id),
	CONSTRAINT FK_EXPERIENCES_ID_EMPLOYEE FOREIGN KEY (id_employee) REFERENCES dbo.employees(id)
);
GO

