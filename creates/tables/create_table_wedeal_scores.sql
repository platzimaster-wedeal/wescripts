USE wedeal;
GO
IF OBJECT_ID(N'dbo.scores') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.scores;
END
GO
CREATE TABLE dbo.scores
(
	id INT NOT NULL IDENTITY(1,1),
	id_employer INT NOT NULL,
	id_empoyee INT NOT NULL,
	[qualification] INT NOT NULL DEFAULT 0;
	[comment] VARCHAR(250) NOT NULL DEFAULT '';

	CONSTRAINT PK_SCORE_ID PRIMARY KEY(id),
	CONSTRAINT FK_SCORE_ID_EMPLOYER FOREIGN KEY(id_employer) REFERENCES wedeal.dbo.employers(id),
	CONSTRAINT FK_SCORE_ID_EMPLOYEES FOREIGN KEY(id_empoyee) REFERENCES wedeal.dbo.empoyees(id),
);
GO
