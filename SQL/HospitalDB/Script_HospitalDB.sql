USE [HospitalDB]
GO
/****** Object:  Table [dbo].[DEPARTMENTS]    Script Date: 11/09/2023 08:05:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENTS](
	[DeptID] [int] NOT NULL,
	[DeptName] [nvarchar](50) NOT NULL,
	[DeptLocation] [nvarchar](50) NULL,
 CONSTRAINT [PK_DEPT] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DISTRICTS]    Script Date: 11/09/2023 08:05:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISTRICTS](
	[DistrictID] [int] NOT NULL,
	[DistrictName] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
 CONSTRAINT [PK_PLANTILLA] PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DOCTORS]    Script Date: 11/09/2023 08:05:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCTORS](
	[DoctorID] [int] NOT NULL,
	[DoctorLastName] [nvarchar](50) NULL,
	[Speciality] [nvarchar](50) NULL,
	[DoctorSalary] [money] NULL,
	[HospitalID] [int] NULL,
 CONSTRAINT [PK_DOCTOR] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPLOYEES]    Script Date: 11/09/2023 08:05:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEES](
	[EmployeeID] [int] NOT NULL,
	[EmployeeLastName] [nvarchar](50) NULL,
	[Job] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[FirstDay] [smalldatetime] NULL,
	[EmployeeSalary] [money] NULL,
	[Bonus] [money] NULL,
	[DeptID] [int] NULL,
 CONSTRAINT [PK_EMP] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOSPITALS]    Script Date: 11/09/2023 08:05:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[PACIENTS]    Script Date: 11/09/2023 08:05:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PACIENTS](
	[PacientID] [int] NOT NULL,
	[PacientFirstName] [nvarchar](50) NULL,
	[PacientLastName] [nvarchar](50) NULL,
	[PacientAddress] [nvarchar](50) NULL,
	[BornDate] [date] NULL,
	[SocialSecurity] [int] NULL,
	[DoctorID] [int] NULL,
	[RoomID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROOMS]    Script Date: 11/09/2023 08:05:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROOMS](
	[RoomID] [int] NOT NULL,
	[RoomNumber] [int] NULL,
	[HospitalID] [int] NULL,
	[DoctorID] [int] NULL,
	[PacientID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USERS]    Script Date: 11/09/2023 08:05:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[UserID] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[EmployeeID] [int] NULL,
	[user_ID] [int] NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
