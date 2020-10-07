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
	[description] VARCHAR(300) NOT NULL,
	id_work_area INT NOT NULL,
	avatar VARCHAR(MAX) NOT NULL DEFAULT 'https://imgurl.me/images/2020/09/11/profilededaultbb7053428141edf1.png',
	employee BIT NOT NULL DEFAULT 0,
	employeer BIT NOT NULL DEFAULT 0,
	latitude DECIMAL(10,7) NOT NULL DEFAULT 0,
	longitude DECIMAL(10,7) NOT NULL DEFAULT 0,
	CONSTRAINT PK_USERS_ID PRIMARY KEY(id),
	CONSTRAINT FK_USERS_ID_WORK_AREA FOREIGN KEY(id_work_area) REFERENCES wedeal.dbo.work_areas(id),
	CONSTRAINT FK_USERS_ID_CITY FOREIGN KEY(id_city) REFERENCES wedeal.dbo.cities(id),
	
);
GO
