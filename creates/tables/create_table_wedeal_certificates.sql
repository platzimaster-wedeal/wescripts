USE wedeal;
GO
IF OBJECT_ID(N'dbo.certificates') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.certificates;
END
GO
CREATE TABLE dbo.certificates
(
	id INT NOT NULL ,
	[url] VARCHAR(MAX) NOT NULL DEFAULT '',
	image_certificate VARCHAR(MAX) NOT NULL DEFAULT '',
	CONSTRAINT PK_CERTIFICATES_ID PRIMARY KEY(id),

);
GO
