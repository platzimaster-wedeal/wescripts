USE wedeal;
GO
IF OBJECT_ID(N'dbo.job_offers') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.job_offers;
END
GO
CREATE TABLE dbo.job_offers
(
	id INT NOT NULL IDENTITY(1,1),
	id_search INT NOT NULL,
	position VARCHAR(20) NOT NULL DEFAULT '',
	employer_name VARCHAR(20) NOT NULL DEFAULT '',
	description VARCHAR(MAX) NOT NULL DEFAULT '',
	requeriments VARCHAR(200) NOT NULL DEFAULT '',
	modality VARCHAR(15) NOT NULL DEFAULT '',
	salary_range1 BIGINT NOT NULL DEFAULT 0,
	salary_range2 BIGINT NOT NULL DEFAULT 0,
	short_description VARCHAR(150) NOT NULL,
	long_description VARCHAR(MAX) NOT NULL DEFAULT '',
	[comment] VARCHAR(30) NOT NULL DEFAULT '',
	schedule DATE NOT NULL;
	CONSTRAINT PK_JOB_OFFERS_ID PRIMARY KEY(id),
);
GO
