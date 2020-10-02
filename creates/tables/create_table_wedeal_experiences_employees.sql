USE wedeal;
GO
IF OBJECT_ID(N'dbo.experiences_employees') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.experiences_employees;
END
GO
CREATE TABLE dbo.experiences_employees
(
	id INT NOT NULL IDENTITY(1,1),
	id_experience INT NOT NULL,
	id_employee INT NOT NULL,
	CONSTRAINT PK_EXPERIENCES_EMPLOYEES_ID PRIMARY KEY(id),
	CONSTRAINT FK_EXPERIENCES_EMPLOYEES_ID_EXPERIENCE FOREIGN KEY (id_experience) REFERENCES dbo.experiences(id),
	CONSTRAINT FK_EXPERIENCES_EMPLOYEES_ID_EMPLOYEE FOREIGN KEY (id_employee) REFERENCES dbo.employees(id)
);
GO

