USE [master]
GO
/****** Object:  Database [QuotationMaintenance]    Script Date: 03/11/2022 12:02:31 PM ******/
CREATE DATABASE [QuotationMaintenance]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuotationMaintenance', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuotationMaintenance.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuotationMaintenance_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuotationMaintenance_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuotationMaintenance] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuotationMaintenance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuotationMaintenance] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuotationMaintenance] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuotationMaintenance] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuotationMaintenance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuotationMaintenance] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuotationMaintenance] SET  MULTI_USER 
GO
ALTER DATABASE [QuotationMaintenance] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuotationMaintenance] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuotationMaintenance] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuotationMaintenance] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuotationMaintenance] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuotationMaintenance] SET QUERY_STORE = OFF
GO
USE [QuotationMaintenance]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 03/11/2022 12:02:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03/11/2022 12:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [nvarchar](15) NOT NULL,
	[CompanyId] [nvarchar](10) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](35) NOT NULL,
	[Address2] [nvarchar](35) NULL,
	[Address3] [nvarchar](35) NULL,
	[Address4] [nvarchar](35) NULL,
	[City] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Telephone] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Website] [nvarchar](200) NULL,
	[CreatedUser] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Type] [nvarchar](35) NULL,
	[PayTerms] [nvarchar](35) NULL,
	[Status] [nvarchar](35) NULL,
	[ModifiedUser] [nvarchar](35) NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 03/11/2022 12:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProdId] [int] IDENTITY(1,1) NOT NULL,
	[ProdCode] [nvarchar](20) NOT NULL,
	[DivId] [nvarchar](15) NOT NULL,
	[CompanyId] [nvarchar](15) NOT NULL,
	[ProdName] [nvarchar](150) NOT NULL,
	[Price] [float] NOT NULL,
	[TestingMethod] [nvarchar](75) NULL,
	[GroupId] [nvarchar](10) NULL,
	[GroupName] [nvarchar](50) NULL,
	[Tax] [int] NOT NULL,
	[DepartmentId] [nvarchar](15) NULL,
	[Status] [nvarchar](10) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuationDetailsList]    Script Date: 03/11/2022 12:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuationDetailsList](
	[Qdid] [int] IDENTITY(1,1) NOT NULL,
	[Qhid] [int] NOT NULL,
	[ProdId] [int] NOT NULL,
	[ProdCode] [nvarchar](max) NOT NULL,
	[ProdName] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Qty] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[RowNo] [int] NOT NULL,
	[QuotationQhid] [int] NULL,
 CONSTRAINT [PK_QuationDetailsList] PRIMARY KEY CLUSTERED 
(
	[Qdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotation]    Script Date: 03/11/2022 12:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotation](
	[Qhid] [int] IDENTITY(1,1) NOT NULL,
	[QuotationNo] [nvarchar](15) NOT NULL,
	[QuotationDate] [datetime2](7) NOT NULL,
	[CustomerId] [nvarchar](15) NOT NULL,
	[Subject] [nvarchar](300) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[Status] [nvarchar](25) NOT NULL,
	[Value] [float] NOT NULL,
	[CreatedUser] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedUser] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Quotation] PRIMARY KEY CLUSTERED 
(
	[Qhid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_QuationDetailsList_ProdId]    Script Date: 03/11/2022 12:02:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_QuationDetailsList_ProdId] ON [dbo].[QuationDetailsList]
(
	[ProdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_QuationDetailsList_QuotationQhid]    Script Date: 03/11/2022 12:02:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_QuationDetailsList_QuotationQhid] ON [dbo].[QuationDetailsList]
(
	[QuotationQhid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Quotation_CustomerId]    Script Date: 03/11/2022 12:02:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_Quotation_CustomerId] ON [dbo].[Quotation]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QuationDetailsList]  WITH CHECK ADD  CONSTRAINT [FK_QuationDetailsList_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([ProdId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuationDetailsList] CHECK CONSTRAINT [FK_QuationDetailsList_Products_ProdId]
GO
ALTER TABLE [dbo].[QuationDetailsList]  WITH CHECK ADD  CONSTRAINT [FK_QuationDetailsList_Quotation_QuotationQhid] FOREIGN KEY([QuotationQhid])
REFERENCES [dbo].[Quotation] ([Qhid])
GO
ALTER TABLE [dbo].[QuationDetailsList] CHECK CONSTRAINT [FK_QuationDetailsList_Quotation_QuotationQhid]
GO
ALTER TABLE [dbo].[Quotation]  WITH CHECK ADD  CONSTRAINT [FK_Quotation_Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Quotation] CHECK CONSTRAINT [FK_Quotation_Customer_CustomerId]
GO
USE [master]
GO
ALTER DATABASE [QuotationMaintenance] SET  READ_WRITE 
GO
