CREATE TABLE [dbo].[PACIENTS](
	[PacientID] [int] NOT NULL,
	[PacientFirstName] [nvarchar](50) NULL,
	[PacientLastName] [nvarchar](50) NULL,
	[PacientAddress] [nvarchar](50) NULL,
	[BornDate] DATE NULL,
	[SocialSecurity] INT NULL,
    [DoctorID] INT NULL, 
    [RoomID] INT NULL
) ON [PRIMARY]