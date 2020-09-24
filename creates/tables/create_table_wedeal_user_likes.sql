USE wedeal;
GO
IF OBJECT_ID(N'dbo.user_likes') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.user_likes;
END
GO
CREATE TABLE dbo.user_likes
(
	id INT NOT NULL IDENTITY(1,1),
	id_user INT NOT NULL,
	id_post INT NOT NULL,
	CONSTRAINT PK_USER_LIKES_ID PRIMARY KEY(id),
	CONSTRAINT FK_USER_LIKES_ID_USER FOREIGN KEY(id_user) REFERENCES wedeal.dbo.users(id),
	CONSTRAINT FK_USER_LIKES_ID_POST FOREIGN KEY(id_post) REFERENCES wedeal.dbo.posts(id),
);
GO
