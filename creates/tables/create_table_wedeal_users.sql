USE wedeal;
GO
IF OBJECT_ID(N'dbo.users') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.users;
END
GO
CREATE TABLE dbo.users
(
	id INT NOT NULL IDENTITY(1,1),
	first_name VARCHAR(40) NOT NULL DEFAULT '',
	last_name VARCHAR(40) NOT NULL DEFAULT '',
	email VARCHAR(254) NOT NULL UNIQUE DEFAULT '',
	date_of_birth DATE NOT NULL,
	telephone VARCHAR(15) NOT NULL DEFAULT '',
	id_city INT NOT NULL,
	nationality VARCHAR(20) NOT NULL,
	[description] VARCHAR(300) NOT NULL,
	id_work_area INT NOT NULL,
	education VARCHAR(300) NOT NULL DEFAULT '',
	avatar VARCHAR(MAX) NOT NULL DEFAULT 'https://imgurl.me/images/2020/09/11/profilededaultbb7053428141edf1.png',
	employee BIT NOT NULL DEFAULT 0,
	employeer BIT NOT NULL DEFAULT 0,
	CONSTRAINT PK_USERS_ID PRIMARY KEY(id),
	CONSTRAINT FK_USERS_ID_TERMS_CONDITIONS FOREIGN KEY(id_terms_conditions) REFERENCES wedeal.dbo.terms_conditions(id),
	CONSTRAINT FK_USERS_ID_WORK_AREA FOREIGN KEY(id_work_area) REFERENCES wedeal.dbo.work_areas(id),
	CONSTRAINT FK_USERS_ID_LANGUAGE FOREIGN KEY(id_language) REFERENCES wedeal.dbo.languages(id),
	CONSTRAINT FK_USERS_ID_CITY FOREIGN KEY(id_city) REFERENCES wedeal.dbo.cities(id),
	
);
GO
