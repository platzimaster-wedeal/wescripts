SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[employers](
	[id] [int] NOT NULL,
	[id_user] [int] NOT NULL,
 CONSTRAINT [PK_EMPLOYERS_ID] PRIMARY KEY CLUSTERED
 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[employers]  WITH CHECK ADD  CONSTRAINT [FK_USERS_TYPE] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO

ALTER TABLE [dbo].[employers] CHECK CONSTRAINT [FK_USERS_TYPE]
GO
