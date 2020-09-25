USE wedeal;
GO
IF OBJECT_ID(N'dbo.terms_conditions') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.terms_conditions;
END
GO
CREATE TABLE dbo.terms_conditions
(
	id INT NOT NULL IDENTITY(1,1),
	[description] VARCHAR(MAX) NOT NULL,
	[status] BIT NOT NULL,
	CONSTRAINT PK_TERMS_CONDITIOS_ID PRIMARY KEY(id),
);
GO
