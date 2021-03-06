USE wedeal;
GO
IF OBJECT_ID(N'dbo.comments') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.comments;
END
GO
CREATE TABLE dbo.comments
(
	id INT NOT NULL IDENTITY(1,1),
	content VARCHAR(MAX) NOT NULL DEFAULT '',
	publication_date DATETIME NOT NULL DEFAULT GETDATE(),
	status BIT NOT NULL DEFAULT 0,
	id_user INT NOT NULL,
	id_post INT NOT NULL,
	CONSTRAINT PK_COMMENTS_ID PRIMARY KEY(id),
	CONSTRAINT FK_COMMENTS_ID_USER FOREIGN KEY(id_user) REFERENCES wedeal.dbo.users(id),
	CONSTRAINT FK_COMMENTS_ID_POST FOREIGN KEY(id_post) REFERENCES wedeal.dbo.posts(id),
);
GO
