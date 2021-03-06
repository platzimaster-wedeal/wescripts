USE wedeal;
GO
IF OBJECT_ID(N'dbo.cities') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.cities;
END
GO
CREATE TABLE dbo.cities
(
	id INT NOT NULL IDENTITY(1,1),
	name VARCHAR(15) NOT NULL DEFAULT '',
	id_state INT NOT NULL,
	CONSTRAINT PK_CITIES_ID PRIMARY KEY(id),
	CONSTRAINT FK_CITIES_ID_STATE FOREIGN KEY(id_state) REFERENCES wedeal.dbo.states(id),
);
GO
