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
	first_name VARCHAR(20) NOT NULL DEFAULT '',
	second_name VARCHAR(20) NOT NULL DEFAULT '',
	first_surname VARCHAR(20) NOT NULL DEFAULT '',
	second_surname VARCHAR(20) NOT NULL DEFAULT '',
	email VARCHAR(254) NOT NULL DEFAULT '',
	date_of_birth DATE NOT NULL,
	password VARCHAR(64) NOT NULL DEFAULT 'E7568F431A357EC0FD4DC7734C54D4EE179F1EBFC387F7F68A6A7E15052A7572',
	telephone VARCHAR(15) NOT NULL DEFAULT '',
	id_city INT NOT NULL,
	[username] VARCHAR(20) NOT NULL,
	nationality VARCHAR(20) NOT NULL,
	id_language VARCHAR(20) NOT NULL,
	[description] VARCHAR(300) NOT NULL,
	id_work_area INT NOT NULL,
	education VARCHAR(300) NOT NULL DEFAULT '',
	avatar VARCHAR(MAX) NOT NULL DEFAULT 'https://imgurl.me/images/2020/09/11/profilededaultbb7053428141edf1.png'
	CONSTRAINT PK_USERS_ID PRIMARY KEY(id),
	CONSTRAINT FK_USERS_ID_CITY FOREIGN KEY(id_city) REFERENCES wedeal.dbo.cities(id),
	CONSTRAINT FK_USERS_ID_WORK_AREA FOREIGN KEY(id_work_area) REFERENCES wedeal.dbo.work_areas(id),
	CONSTRAINT FK_USERS_ID_WORK_AREA FOREIGN KEY(id_language) REFERENCES wedeal.dbo.id_languages(id),
	
);
GO
