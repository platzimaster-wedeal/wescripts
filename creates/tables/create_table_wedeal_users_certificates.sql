USE wedeal;
GO
IF OBJECT_ID(N'dbo.users_certificates') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.users_certificates;
END
GO
CREATE TABLE dbo.users_certificates
(
	id INT NOT NULL IDENTITY(1,1),
	id_user INT NOT NULL,
	id_certificate INT NOT NULL,
	CONSTRAINT PK_USERS_CERTIFICATES_ID PRIMARY KEY(id),
	CONSTRAINT FK_USERS_CERTIFICATES_ID_USERS FOREIGN KEY(id_user) REFERENCES wedeal.dbo.users(id),
	CONSTRAINT FK_USERS_CERTIFICATES_ID_CERTIFICATES FOREIGN KEY(id_certificate) REFERENCES wedeal.dbo.certificates(id),
);
GO
