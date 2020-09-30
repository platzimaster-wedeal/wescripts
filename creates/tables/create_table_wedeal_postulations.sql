GO
IF OBJECT_ID(N'dbo.postulations') IS NOT NULL
BEGIN
	DROP TABLE dbo.postulations;
END
GO
CREATE TABLE dbo.postulations
(
	id INT NOT NULL IDENTITY(1,1),
	[id_employers_job_offer] INT NOT NULL,
	[id_employee] INT NOT NULL,
	[hired] BIT NOT NULL DEFAULT 0,
		
	CONSTRAINT PK_POSTULATIONS_ID PRIMARY KEY(id),
	CONSTRAINT FK_POSTULATIONS_ID_EMPLOYERS_JOB_OFFER FOREIGN KEY (id_employers_job_offer) REFERENCES dbo.employers_job_offers(id),
	CONSTRAINT FK_POSTULATIONS_ID_EMPLOYEE FOREIGN KEY (id_employee) REFERENCES dbo.employees(id),

);
GO

