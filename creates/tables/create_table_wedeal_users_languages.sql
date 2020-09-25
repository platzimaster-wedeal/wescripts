USE wedeal;
GO
IF OBJECT_ID(N'dbo.users_languages') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.users_languages;
END
GO
CREATE TABLE dbo.users_languages
(
	id INT NOT NULL ,
	id_user INT NOT NULL,
	id_language INT NOT NULL,
	CONSTRAINT PK_USERS_LANGUAGES_ID PRIMARY KEY(id),
	CONSTRAINT FK_USERS_LANGUAGES_ID_USERS FOREIGN KEY(id_user) REFERENCES wedeal.dbo.users(id),
	CONSTRAINT FK_USERS_LANGUAGES_ID_LANGUAGES FOREIGN KEY(id_language) REFERENCES wedeal.dbo.languages(id),
);
GO
