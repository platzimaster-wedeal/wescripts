USE wedeal;
GO
IF OBJECT_ID(N'dbo.employers_job_offers') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.employers_job_offers;
END
GO
CREATE TABLE dbo.employers_job_offers
(
	id INT NOT NULL ,
	id_employer INT NOT NULL,
	id_job_offer INT NOT NULL,
	status BIT NOT NULL DEFAULT 1,
	CONSTRAINT PK_EMPLOYERS_JOB_OFFERS_ID PRIMARY KEY(id),
	CONSTRAINT FK_EMPLOYERS_JOB_OFFERS_ID_EMPLOYERS FOREIGN KEY(id_employer) REFERENCES wedeal.dbo.employers(id),
	CONSTRAINT FK_EMPLOYERS_JOB_OFFERS_ID_JOB_OFFERS FOREIGN KEY(id_job_offer) REFERENCES wedeal.dbo.job_offers(id),
);
GO
