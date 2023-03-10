USE [master]
GO
/****** Object:  Database [AirlineDB]    Script Date: 2022-11-27 5:30:23 PM ******/
CREATE DATABASE [AirlineDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AirlineDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVEREXPRESS\MSSQL\DATA\AirlineDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AirlineDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVEREXPRESS\MSSQL\DATA\AirlineDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AirlineDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AirlineDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AirlineDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AirlineDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AirlineDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AirlineDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AirlineDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AirlineDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AirlineDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AirlineDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AirlineDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AirlineDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AirlineDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AirlineDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AirlineDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AirlineDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AirlineDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AirlineDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AirlineDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AirlineDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AirlineDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AirlineDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AirlineDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AirlineDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AirlineDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AirlineDB] SET  MULTI_USER 
GO
ALTER DATABASE [AirlineDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AirlineDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AirlineDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AirlineDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AirlineDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AirlineDB] SET QUERY_STORE = OFF
GO
USE [AirlineDB]
GO
/****** Object:  Table [dbo].[Flight]    Script Date: 2022-11-27 5:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flight](
	[FId] [nvarchar](50) NOT NULL,
	[DepCity] [nvarchar](50) NOT NULL,
	[ArrCity] [nvarchar](50) NOT NULL,
	[DepTime] [nvarchar](50) NOT NULL,
	[ArrTime] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Flight] PRIMARY KEY CLUSTERED 
(
	[FId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightSchedule]    Script Date: 2022-11-27 5:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightSchedule](
	[FlightDate] [date] NOT NULL,
	[SFId] [int] NOT NULL,
	[FId] [nvarchar](50) NOT NULL,
	[Seats] [int] NOT NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_FlightSchedule] PRIMARY KEY CLUSTERED 
(
	[SFId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFlight]    Script Date: 2022-11-27 5:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFlight](
	[UId] [int] NULL,
	[SFId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserR]    Script Date: 2022-11-27 5:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserR](
	[UserEmail] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Flight] ([FId], [DepCity], [ArrCity], [DepTime], [ArrTime], [Price]) VALUES (N'CAA001', N'Montreal', N'Toronto', N'08:00', N'09:15', 125)
INSERT [dbo].[Flight] ([FId], [DepCity], [ArrCity], [DepTime], [ArrTime], [Price]) VALUES (N'CAA002', N'Montreal', N'Paris', N'12:00', N'13:15', 650)
INSERT [dbo].[Flight] ([FId], [DepCity], [ArrCity], [DepTime], [ArrTime], [Price]) VALUES (N'CAA003', N'Montreal', N'Vancouver', N'11:00', N'13:30', 250)
INSERT [dbo].[Flight] ([FId], [DepCity], [ArrCity], [DepTime], [ArrTime], [Price]) VALUES (N'CAA004', N'Vancouver', N'Toronto', N'13:00', N'15:00', 280)
INSERT [dbo].[Flight] ([FId], [DepCity], [ArrCity], [DepTime], [ArrTime], [Price]) VALUES (N'CAA111', N'Toronto', N'Montreal', N'13:15', N'14:15', 125)
INSERT [dbo].[Flight] ([FId], [DepCity], [ArrCity], [DepTime], [ArrTime], [Price]) VALUES (N'CAA112', N'Paris', N'Montreal', N'15:00', N'08:00', 700)
INSERT [dbo].[Flight] ([FId], [DepCity], [ArrCity], [DepTime], [ArrTime], [Price]) VALUES (N'CAA113', N'Vancouver', N'Montreal', N'23:15', N'06:00', 300)
INSERT [dbo].[Flight] ([FId], [DepCity], [ArrCity], [DepTime], [ArrTime], [Price]) VALUES (N'CAA114', N'Toronto', N'Vancouver', N'22:00', N'04:50', 320)
GO
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-01' AS Date), 120101, N'CAA001', 100, 125)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-01' AS Date), 120102, N'CAA002', 100, 625)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-01' AS Date), 120103, N'CAA003', 100, 250)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-01' AS Date), 120104, N'CAA004', 100, 280)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-01' AS Date), 120111, N'CAA111', 100, 125)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-01' AS Date), 120112, N'CAA112', 100, 700)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-01' AS Date), 120113, N'CAA113', 100, 300)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-01' AS Date), 120114, N'CAA114', 100, 320)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-02' AS Date), 120201, N'CAA001', 100, 125)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-02' AS Date), 120202, N'CAA002', 100, 625)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-02' AS Date), 120203, N'CAA003', 100, 250)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-02' AS Date), 120204, N'CAA004', 100, 280)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-02' AS Date), 120211, N'CAA111', 100, 125)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-02' AS Date), 120212, N'CAA112', 100, 700)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-02' AS Date), 120213, N'CAA113', 100, 300)
INSERT [dbo].[FlightSchedule] ([FlightDate], [SFId], [FId], [Seats], [Price]) VALUES (CAST(N'2022-12-02' AS Date), 120214, N'CAA114', 100, 320)
GO
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (0, 120101)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (0, 120111)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (0, 120103)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (0, 120113)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (1, 120103)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (1, 120113)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (1, 120101)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (1, 120111)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (1, 120102)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (1, 120112)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (0, 120102)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (0, 120212)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (11, 120102)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (11, 120211)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (1, 120211)
INSERT [dbo].[UserFlight] ([UId], [SFId]) VALUES (1, 120213)
GO
SET IDENTITY_INSERT [dbo].[UserR] ON 

INSERT [dbo].[UserR] ([UserEmail], [Password], [UId], [FirstName], [LastName]) VALUES (N'Mingyao@gmail.com', N'user1', 1, N'Mingyao', N'Li')
INSERT [dbo].[UserR] ([UserEmail], [Password], [UId], [FirstName], [LastName]) VALUES (N'', N'', 17, N'', N'')
INSERT [dbo].[UserR] ([UserEmail], [Password], [UId], [FirstName], [LastName]) VALUES (N'', N'', 18, N'', N'')
INSERT [dbo].[UserR] ([UserEmail], [Password], [UId], [FirstName], [LastName]) VALUES (N'MingyaoLee520@gmail.com', N'', 19, N'a', N'Li')
INSERT [dbo].[UserR] ([UserEmail], [Password], [UId], [FirstName], [LastName]) VALUES (N'', N'', 20, N's', N's')
INSERT [dbo].[UserR] ([UserEmail], [Password], [UId], [FirstName], [LastName]) VALUES (N'ss@gmail.com', N'ss', 1006, N's', N's')
INSERT [dbo].[UserR] ([UserEmail], [Password], [UId], [FirstName], [LastName]) VALUES (N'ab@gmail.com', N'userab', 9, N'a', N'b')
INSERT [dbo].[UserR] ([UserEmail], [Password], [UId], [FirstName], [LastName]) VALUES (N'saas@gmail.com', N'usersaas', 10, N'sa', N'as')
INSERT [dbo].[UserR] ([UserEmail], [Password], [UId], [FirstName], [LastName]) VALUES (N'777@gmail.com', N'777', 11, N'Boeing', N'777')
INSERT [dbo].[UserR] ([UserEmail], [Password], [UId], [FirstName], [LastName]) VALUES (N'MingyaoLee520@gmail.com', N'Mary_11111', 21, N'Mingyao', N'Li')
SET IDENTITY_INSERT [dbo].[UserR] OFF
GO
ALTER TABLE [dbo].[FlightSchedule]  WITH CHECK ADD  CONSTRAINT [FK_FlightSchedule_Flight] FOREIGN KEY([FId])
REFERENCES [dbo].[Flight] ([FId])
GO
ALTER TABLE [dbo].[FlightSchedule] CHECK CONSTRAINT [FK_FlightSchedule_Flight]
GO
USE [master]
GO
ALTER DATABASE [AirlineDB] SET  READ_WRITE 
GO
