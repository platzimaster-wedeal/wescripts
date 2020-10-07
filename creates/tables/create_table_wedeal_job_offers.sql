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
	id_search INT ,
	employer_name VARCHAR(20) NOT NULL DEFAULT '',
	requeriments VARCHAR(200) DEFAULT '',
	modality VARCHAR(15) NOT NULL DEFAULT '',
	salary_range1 BIGINT NOT NULL DEFAULT 0,
	salary_range2 BIGINT NOT NULL DEFAULT 0,
	short_description VARCHAR(150),
	long_description VARCHAR(MAX) DEFAULT '',
	schedule DATE,
	[guid] uniqueidentifier NOT NULL,
	created_at DATETIME NOT NULL DEFAULT getdate(),
	file_url VARCHAR(MAX) DEFAULT '',
	title VARCHAR(100) NOT NULL,
	category VARCHAR(100) NOT NULL DEFAULT '',
	CONSTRAINT PK_JOB_OFFERS_ID PRIMARY KEY(id)
);
GO
