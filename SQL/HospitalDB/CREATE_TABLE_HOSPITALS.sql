CREATE TABLE [dbo].[HOSPITALS](
	[HospitalID] [int] NOT NULL,
	[HospitalName] [nvarchar](50) NULL,
	[HospitalAddress] [nvarchar](50) NULL,
	[HospitalPhone] [nvarchar](50) NULL,
	[DistrictID] [int] NULL,
 CONSTRAINT [PK_HOSPITAL] PRIMARY KEY CLUSTERED 
(
	[HospitalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]