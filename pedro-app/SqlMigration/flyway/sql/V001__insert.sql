USE [NETCORE]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/09/2023 23:42:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Profile] [nvarchar](max) NOT NULL,
	[IsFullTime] [bit] NOT NULL,
	[HourRate] [decimal](18, 2) NOT NULL,
	[Active] [bit] NOT NULL,
	[InsertedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/09/2023 23:42:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeekPeriod]    Script Date: 12/09/2023 23:42:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeekPeriod](
	[Id] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[WorkedHours] [int] NOT NULL,
	[InsertedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [Email], [PhoneNumber], [Profile], [IsFullTime], [HourRate], [Active], [InsertedDate], [UpdatedDate]) VALUES (1, N'pedro', N'monzon', N'sol av 1', N'pedro.monzon@entropyzero.com', N'45678978', N'admin', 1, CAST(45.00 AS Decimal(18, 2)), 1, CAST(N'2023-09-09T14:35:38.3566667' AS DateTime2), CAST(N'2023-09-09T14:35:38.3566667' AS DateTime2))
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [Email], [PhoneNumber], [Profile], [IsFullTime], [HourRate], [Active], [InsertedDate], [UpdatedDate]) VALUES (2, N'Sofia', N'fernandez', N'sol av 2', N'Sofia.fernandez@entropyzero.com', N'78787878', N'manager', 0, CAST(42.00 AS Decimal(18, 2)), 1, CAST(N'2023-09-12T19:17:02.7600000' AS DateTime2), CAST(N'2023-09-12T19:17:02.7600000' AS DateTime2))
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [Email], [PhoneNumber], [Profile], [IsFullTime], [HourRate], [Active], [InsertedDate], [UpdatedDate]) VALUES (3, N'estrella', N'baca', N'sol av 3', N'estrella.baca@entropyzero.com', N'45454545', N'chief', 1, CAST(12.00 AS Decimal(18, 2)), 1, CAST(N'2023-09-09T14:55:58.1600000' AS DateTime2), CAST(N'2023-09-09T14:55:58.1600000' AS DateTime2))
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [Email], [PhoneNumber], [Profile], [IsFullTime], [HourRate], [Active], [InsertedDate], [UpdatedDate]) VALUES (4, N'erick', N'', N'sol av 4', N'erick.costa@entropyzero.com', N'', N'amdin', 0, CAST(20.00 AS Decimal(18, 2)), 1, CAST(N'2023-09-09T15:00:49.5466667' AS DateTime2), CAST(N'2023-09-09T15:00:49.5466667' AS DateTime2))
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [Email], [PhoneNumber], [Profile], [IsFullTime], [HourRate], [Active], [InsertedDate], [UpdatedDate]) VALUES (5, N'carlos', N'perez', N'', N'carlos.perez@entropyzero.com', N'45745755', N'admin', 1, CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2023-09-12T19:01:50.6733333' AS DateTime2), CAST(N'2023-09-12T19:01:50.6733333' AS DateTime2))
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [Email], [PhoneNumber], [Profile], [IsFullTime], [HourRate], [Active], [InsertedDate], [UpdatedDate]) VALUES (6, N'ernesto', N'yeloe', N'sol av 6', N'', N'33245777', N'help desk', 1, CAST(24.00 AS Decimal(18, 2)), 1, CAST(N'2023-09-12T19:18:17.7266667' AS DateTime2), CAST(N'2023-09-12T19:18:17.7266667' AS DateTime2))
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [Email], [PhoneNumber], [Profile], [IsFullTime], [HourRate], [Active], [InsertedDate], [UpdatedDate]) VALUES (7, N'andy', N'hernes', N'sol av 7', N'andy.hernes@entropyzero.com', N'79879879', N'help desk', 1, CAST(24.00 AS Decimal(18, 2)), 1, CAST(N'2023-09-09T14:11:11.9000000' AS DateTime2), CAST(N'2023-09-09T14:11:11.9000000' AS DateTime2))
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [Email], [PhoneNumber], [Profile], [IsFullTime], [HourRate], [Active], [InsertedDate], [UpdatedDate]) VALUES (8, N'luis', N'black', N'sol av 8', N'luis.black@entropyzero.com', N'', N'help desk', 0, CAST(20.00 AS Decimal(18, 2)), 1, CAST(N'2023-09-09T14:13:40.4833333' AS DateTime2), CAST(N'2023-09-09T14:13:40.4833333' AS DateTime2))
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [Email], [PhoneNumber], [Profile], [IsFullTime], [HourRate], [Active], [InsertedDate], [UpdatedDate]) VALUES (9, N'uriel', N'pereira', N'', N'', N'54545454', N'help desk', 0, CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2023-09-09T14:16:06.8600000' AS DateTime2), CAST(N'2023-09-09T14:16:06.8600000' AS DateTime2))
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [Email], [PhoneNumber], [Profile], [IsFullTime], [HourRate], [Active], [InsertedDate], [UpdatedDate]) VALUES (10, N'ilish', N'juriel', N'sol av 10', N'ilish.juriel@entropyzero.com', N'12124578', N'help desk', 1, CAST(24.00 AS Decimal(18, 2)), 1, CAST(N'2023-09-09T14:27:16.8700000' AS DateTime2), CAST(N'2023-09-09T14:27:16.8700000' AS DateTime2))
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [Email], [PhoneNumber], [Profile], [IsFullTime], [HourRate], [Active], [InsertedDate], [UpdatedDate]) VALUES (11, N'aldo', N'mendoza', N'sol av 11', N'aldo.mendoza@entropyzero.com', N'96969678', N'help desk', 0, CAST(64684.00 AS Decimal(18, 2)), 1, CAST(N'2023-09-09T14:41:02.7566667' AS DateTime2), CAST(N'2023-09-09T14:41:02.7566667' AS DateTime2))
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address], [Email], [PhoneNumber], [Profile], [IsFullTime], [HourRate], [Active], [InsertedDate], [UpdatedDate]) VALUES (12, N'paolo', N'', N'sol av 12', N'paolo.carrasco@entropyzero.com', N'65656564', N'help desk', 0, CAST(20.00 AS Decimal(18, 2)), 1, CAST(N'2023-09-09T14:48:08.5833333' AS DateTime2), CAST(N'2023-09-09T14:48:08.5833333' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([Id], [UserName], [Password]) VALUES (1, N'admin@email.com', N'$2b$08$JDqQJNLZ.SfyHlAKkbwd3uFM9vvQy4RPZkF7ZabsoOKCcE8MjKeRm')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[WeekPeriod] ([Id], [Description], [EmployeeId], [WorkedHours], [InsertedDate], [UpdatedDate]) VALUES (N'2023-7', N'Week 7 from 2023', 1, 41, CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[WeekPeriod] ([Id], [Description], [EmployeeId], [WorkedHours], [InsertedDate], [UpdatedDate]) VALUES (N'2023-7', N'Week 7 from 2023', 2, 30, CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[WeekPeriod] ([Id], [Description], [EmployeeId], [WorkedHours], [InsertedDate], [UpdatedDate]) VALUES (N'2023-8', N'Week 8 from 2023', 1, 45, CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1900-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[WeekPeriod] ([Id], [Description], [EmployeeId], [WorkedHours], [InsertedDate], [UpdatedDate]) VALUES (N'2023-8', N'Week 8 from 2023', 2, 40, CAST(N'2023-09-09T14:27:16.8700000' AS DateTime2), CAST(N'2023-09-09T14:27:16.8700000' AS DateTime2))
GO
INSERT [dbo].[WeekPeriod] ([Id], [Description], [EmployeeId], [WorkedHours], [InsertedDate], [UpdatedDate]) VALUES (N'2023-9', N'Week 9 from 2023', 1, 40, CAST(N'2023-09-09T14:27:16.8700000' AS DateTime2), CAST(N'2023-09-09T14:27:16.8700000' AS DateTime2))
GO
INSERT [dbo].[WeekPeriod] ([Id], [Description], [EmployeeId], [WorkedHours], [InsertedDate], [UpdatedDate]) VALUES (N'2023-9', N'Week 9 from 2023', 2, 40, CAST(N'2023-09-09T14:27:16.8700000' AS DateTime2), CAST(N'2023-09-09T14:27:16.8700000' AS DateTime2))
GO
