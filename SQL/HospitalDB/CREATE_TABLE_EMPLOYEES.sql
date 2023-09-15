CREATE TABLE [dbo].[EMPLOYEES](
	[EmployeeID] [int] NOT NULL,
	[EmployeeLastName] [nvarchar](50) NULL,
	[Job] [nvarchar](50) NULL,
	[Address] NVARCHAR(50) NULL,
	[FirstDay] [smalldatetime] NULL,
	[EmployeeSalary] MONEY NULL,
	[Bonus] MONEY NULL,
	[DeptID] [int] NULL,
 CONSTRAINT [PK_EMP] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]