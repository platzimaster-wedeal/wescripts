SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[employees](
	id INT NOT NULL IDENTITY(1,1),
	[id_user] [int] NOT NULL,
	company_name VARCHAR(30) NOT NULL DEFAULT '',
	university VARCHAR(200) NOT NULL DEFAULT '',
	id_work_area INT NOT NULL,
	work_experience VARCHAR(300) NOT NULL DEFAULT '',
	last_job_title VARCHAR(30) NOT NULL DEFAULT '',
	
 CONSTRAINT [PK_EMPLOYEES_ID] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_USERS_ID] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO

ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_USERS_ID]
GO