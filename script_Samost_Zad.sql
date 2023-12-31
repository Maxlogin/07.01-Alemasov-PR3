USE [master]
GO
/****** Object:  Database [SabirovDB_Samost]    Script Date: 16.11.2023 23:27:33 ******/
CREATE DATABASE [SabirovDB_Samost]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SabirovDB_Samost', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SabirovDB_Samost.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SabirovDB_Samost_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SabirovDB_Samost_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SabirovDB_Samost] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SabirovDB_Samost].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SabirovDB_Samost] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET ARITHABORT OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SabirovDB_Samost] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SabirovDB_Samost] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SabirovDB_Samost] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SabirovDB_Samost] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET RECOVERY FULL 
GO
ALTER DATABASE [SabirovDB_Samost] SET  MULTI_USER 
GO
ALTER DATABASE [SabirovDB_Samost] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SabirovDB_Samost] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SabirovDB_Samost] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SabirovDB_Samost] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SabirovDB_Samost] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SabirovDB_Samost] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SabirovDB_Samost', N'ON'
GO
ALTER DATABASE [SabirovDB_Samost] SET QUERY_STORE = OFF
GO
USE [SabirovDB_Samost]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 16.11.2023 23:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryName] [nvarchar](50) NOT NULL,
	[Continent] [nvarchar](50) NOT NULL,
	[Currency] [nvarchar](20) NULL,
 CONSTRAINT [PK_Country_1] PRIMARY KEY CLUSTERED 
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 16.11.2023 23:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DeptName] [nvarchar](50) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DeptName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 16.11.2023 23:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpName] [nvarchar](50) NOT NULL,
	[DeptName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmpName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Folder]    Script Date: 16.11.2023 23:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Folder](
	[FolderName] [nchar](10) NOT NULL,
	[EmpName] [nvarchar](50) NOT NULL,
	[AccessType] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Country] ([CountryName], [Continent], [Currency]) VALUES (N'China', N'ASIA', N'UAN')
INSERT [dbo].[Country] ([CountryName], [Continent], [Currency]) VALUES (N'GERMANY', N'EURPORE', N'EURO')
INSERT [dbo].[Country] ([CountryName], [Continent], [Currency]) VALUES (N'RUSSIA', N'EUROPRE', N'RUB')
INSERT [dbo].[Country] ([CountryName], [Continent], [Currency]) VALUES (N'USA', N'SOUTH_AMERIKA', N'DOLLAR')
GO
INSERT [dbo].[Department] ([DeptName], [CountryName]) VALUES (N'FinGers', N'USA')
INSERT [dbo].[Department] ([DeptName], [CountryName]) VALUES (N'FREE', N'China')
INSERT [dbo].[Department] ([DeptName], [CountryName]) VALUES (N'Pistols', N'GERMANY')
GO
INSERT [dbo].[Employee] ([EmpName], [DeptName]) VALUES (N'DANUIY', N'Pistols')
INSERT [dbo].[Employee] ([EmpName], [DeptName]) VALUES (N'PIDMax', N'FinGers')
GO
INSERT [dbo].[Folder] ([FolderName], [EmpName], [AccessType]) VALUES (N'EGOR      ', N'DANUIY', N'FFF       ')
INSERT [dbo].[Folder] ([FolderName], [EmpName], [AccessType]) VALUES (N'ANTON     ', N'PIDMax', N'RRR       ')
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_CountryName]  DEFAULT ((0)) FOR [CountryName]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_Deptid]  DEFAULT ((0)) FOR [DeptName]
GO
ALTER TABLE [dbo].[Folder] ADD  CONSTRAINT [DF_Folder_Emp_id]  DEFAULT ((0)) FOR [EmpName]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Country] FOREIGN KEY([CountryName])
REFERENCES [dbo].[Country] ([CountryName])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Country]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DeptName])
REFERENCES [dbo].[Department] ([DeptName])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_Employee] FOREIGN KEY([EmpName])
REFERENCES [dbo].[Employee] ([EmpName])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_Employee]
GO
USE [master]
GO
ALTER DATABASE [SabirovDB_Samost] SET  READ_WRITE 
GO
