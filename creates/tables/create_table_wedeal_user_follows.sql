USE wedeal;
GO
IF OBJECT_ID(N'dbo.user_follows') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.user_follows;
END
GO
CREATE TABLE dbo.user_follows
(
	id INT NOT NULL IDENTITY(1,1),
	id_user_from INT NOT NULL,
	id_user_to INT NOT NULL,
	CONSTRAINT PK_USER_FOLLOWS_ID PRIMARY KEY(id),
	CONSTRAINT FK_USER_FOLLOWS_ID_USER_FROM FOREIGN KEY(id_user_from) REFERENCES wedeal.dbo.users(id),
	CONSTRAINT FK_USER_FOLLOWS_ID_USER_TO FOREIGN KEY(id_user_to) REFERENCES wedeal.dbo.users(id),
);
GO
