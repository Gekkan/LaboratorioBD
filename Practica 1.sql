USE [master]
GO
/****** Object:  Database [Practica 1]    Script Date: 07/04/2018 1:33:23 ******/
CREATE DATABASE [Practica 1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica 1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica 1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica 1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica 1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica 1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica 1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica 1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica 1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica 1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica 1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica 1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica 1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica 1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica 1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica 1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica 1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica 1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica 1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica 1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica 1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica 1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica 1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica 1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica 1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica 1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica 1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica 1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica 1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica 1] SET RECOVERY FULL 
GO
ALTER DATABASE [Practica 1] SET  MULTI_USER 
GO
ALTER DATABASE [Practica 1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica 1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica 1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica 1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica 1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Practica 1', N'ON'
GO
ALTER DATABASE [Practica 1] SET QUERY_STORE = OFF
GO
USE [Practica 1]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
ALTER DATABASE [Practica 1] SET  READ_WRITE 
GO
