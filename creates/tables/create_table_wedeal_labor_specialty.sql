USE wedeal;
GO
IF OBJECT_ID(N'dbo.labor_specialty
') IS NOT NULL
BEGIN
	DROP TABLE wedeal.dbo.labor_specialty
;
END
GO
CREATE TABLE dbo.labor_specialty

(
	id INT NOT NULL IDENTITY(1,1),
	
);
GO
