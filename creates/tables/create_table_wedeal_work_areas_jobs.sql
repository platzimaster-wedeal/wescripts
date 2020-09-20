USE wedeal;
GO
IF OBJECT_ID(N'dbo.work_area_jobs') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.work_area_jobs;
END
GO
CREATE TABLE dbo.work_area_jobs
(
	id INT NOT NULL IDENTITY(1,1),
	id_work_area INT NOT NULL,
	id_job_offer INT NOT NULL,
	CONSTRAINT PK_WORK_AREA_JOBS_ID PRIMARY KEY(id),
	CONSTRAINT FK_WORK_AREA_JOBS_ID_WORK_AREA FOREIGN KEY(id_work_area) REFERENCES wedeal.dbo.work_areas(id),
	CONSTRAINT FK_WORK_AREA_JOBS_ID_JOB_OFFER FOREIGN KEY(id_job_offer) REFERENCES wedeal.dbo.job_offers(id),
);
GO
