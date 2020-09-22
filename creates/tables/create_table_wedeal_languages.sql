USE wedeal;
GO
IF OBJECT_ID(N'dbo.languages') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.languages;
END
GO
CREATE TABLE dbo.languages
(
	id INT NOT NULL ,
	acronym VARCHAR(7) NOT NULL,
	[language] VARCHAR(20) NOT NULL,
	CONSTRAINT PK_LANGUAGES_ID PRIMARY KEY(id),
);
