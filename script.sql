USE [master]
GO
/****** Object:  Database [HDDServer]    Script Date: 12-06-2020 15:10:36 ******/
CREATE DATABASE [HDDServer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HDDServer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HDDServer.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HDDServer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HDDServer_log.ldf' , SIZE = 139264KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HDDServer] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HDDServer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HDDServer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HDDServer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HDDServer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HDDServer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HDDServer] SET ARITHABORT OFF 
GO
ALTER DATABASE [HDDServer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HDDServer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HDDServer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HDDServer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HDDServer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HDDServer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HDDServer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HDDServer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HDDServer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HDDServer] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HDDServer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HDDServer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HDDServer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HDDServer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HDDServer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HDDServer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HDDServer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HDDServer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HDDServer] SET  MULTI_USER 
GO
ALTER DATABASE [HDDServer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HDDServer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HDDServer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HDDServer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HDDServer] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HDDServer', N'ON'
GO
ALTER DATABASE [HDDServer] SET QUERY_STORE = OFF
GO
USE [HDDServer]
GO
/****** Object:  User [Usr1]    Script Date: 12-06-2020 15:10:37 ******/
CREATE USER [Usr1] FOR LOGIN [Usr1] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Usr1]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Usr1]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Usr1]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Usr1]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Usr1]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Usr1]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Usr1]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Usr1]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Usr1]
GO
/****** Object:  Table [dbo].[LT079861GraphData]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LT079861GraphData](
	[ServerName] [varchar](300) NULL,
	[TStamp] [datetime] NULL,
	[ServerSize] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Info]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Info](
	[ServerName] [varchar](300) NOT NULL,
	[IP] [varchar](max) NULL,
	[Size] [bigint] NULL,
 CONSTRAINT [PK_Server_Info] PRIMARY KEY CLUSTERED 
(
	[ServerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Log]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Log](
	[ServerName] [varchar](300) NOT NULL,
	[IP] [varchar](max) NULL,
	[Size] [bigint] NULL,
	[TableName] [varchar](max) NULL,
	[Iterations] [int] NULL,
 CONSTRAINT [PK_Server_Log] PRIMARY KEY CLUSTERED 
(
	[ServerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_GJGJ]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_GJGJ](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[FilePath] [varchar](900) NOT NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifier] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL,
 CONSTRAINT [PK_Table_KEY] PRIMARY KEY CLUSTERED 
(
	[FilePath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_LT079861]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_LT079861](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[File Path] [varchar](max) NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifieer] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_LT079861_1]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_LT079861_1](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[File Path] [varchar](max) NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifieer] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_LT079861_1_BK_0_20200501]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_LT079861_1_BK_0_20200501](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[File Path] [varchar](max) NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifieer] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_LT079861_1_BK_0_20200527]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_LT079861_1_BK_0_20200527](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[File Path] [varchar](max) NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifieer] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_LT079861_2]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_LT079861_2](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[File Path] [varchar](max) NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifieer] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_LT079861_3]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_LT079861_3](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[File Path] [varchar](max) NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifieer] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_LT079861_4]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_LT079861_4](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[File Path] [varchar](max) NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifieer] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_LT079861_5]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_LT079861_5](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[File Path] [varchar](max) NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifieer] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_LT079861_6]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_LT079861_6](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[File Path] [varchar](max) NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifieer] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_LT079861_BK_0_20200501]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_LT079861_BK_0_20200501](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[File Path] [varchar](max) NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifieer] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_LT079861_BK_0_20200505]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_LT079861_BK_0_20200505](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[File Path] [varchar](max) NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifieer] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Table_LT079861_BK_0_20200601]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Table_LT079861_BK_0_20200601](
	[TBINDEX] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[File Path] [varchar](max) NULL,
	[File Mode] [bigint] NULL,
	[File Index] [bigint] NULL,
	[Device Identifieer] [bigint] NULL,
	[Number of hard Links] [bigint] NULL,
	[User Identifier] [bigint] NULL,
	[Group Identifier] [bigint] NULL,
	[Size In Bytes] [bigint] NULL,
	[Most recent access] [datetime] NULL,
	[Most recent modification] [datetime] NULL,
	[Creation Time] [datetime] NULL,
	[Type] [varchar](max) NULL,
	[Scan Stamp] [datetime] NULL,
	[Server Name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp](
	[Name] [varchar](60) NULL,
	[FilePath] [varchar](max) NULL,
	[SizeInBytes] [int] NULL,
	[Perc] [decimal](38, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [ix_Server_Table_LT079861_TBINDEX]    Script Date: 12-06-2020 15:10:37 ******/
CREATE NONCLUSTERED INDEX [ix_Server_Table_LT079861_TBINDEX] ON [dbo].[Server_Table_LT079861]
(
	[TBINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [ix_Server_Table_LT079861_TBINDEX]    Script Date: 12-06-2020 15:10:37 ******/
CREATE NONCLUSTERED INDEX [ix_Server_Table_LT079861_TBINDEX] ON [dbo].[Server_Table_LT079861_1]
(
	[TBINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [ix_Server_Table_LT079861_TBINDEX]    Script Date: 12-06-2020 15:10:37 ******/
CREATE NONCLUSTERED INDEX [ix_Server_Table_LT079861_TBINDEX] ON [dbo].[Server_Table_LT079861_2]
(
	[TBINDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Server_Log] ADD  CONSTRAINT [DF_Server_Log_Iterations]  DEFAULT ((1)) FOR [Iterations]
GO
/****** Object:  StoredProcedure [dbo].[Check_Table]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Check_Table]
	-- Add the parameters for the stored procedure here
	@IPAddr nvarchar(100),
	@MachineName nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @IP nvarchar(100) = @IPAddr ,
			@MacNme nvarchar(100) = @MachineName,
			@Table_Name nvarchar(100) = 'Server_Table_' + @MachineName,
			@Table_Count int,
			@SL_Table_Name nvarchar(100),
			@count int,
			@tempcount int,
			@Curr_Date date= GetDate(),
			@Tempdate nvarchar(100)
	SET @Tempdate = REPLACE(CAST(@Curr_Date AS VARCHAR(30)), '-','')
    -- Insert statements for procedure here
	
	SELECT @Table_Count = count(*)
	FROM dbo.Server_Log
	WHERE dbo.Server_Log.ServerName = @MacNme AND dbo.Server_Log.IP = @IP
	
	/*
	IF( @count%60 >= 2)
	BEGIN
	print 'HELLO'
	SET @tempcount = (@count%60) * @tempcount
	DECLARE @SQL2 VARCHAR(1000) = 'UPDATE dbo.Server_Log SET dbo.Server_Log.BackupTableLimit=' +
	CAST(@tempcount AS VARCHAR(MAX)) + 
	' WHERE dbo.Server_Log.ServerName ='+@MacNme + ' AND '+ 'dbo.Server_Log.IP ='+ @IP
	print(@SQL2)
	END
	*/


	If(@Table_Count = 0)
	BEGIN
	print 'creating table'
	/*
	DECLARE @SQL VARCHAR(1000) = 'CREATE TABLE dbo.' + @Table_Name  + '( ' + 
	'[TBINDEX] [bigint] NULL,'+
	'[Name] [varchar](max) NULL,'+
	'[File Path] [varchar](900) NULL,'+
	'[File Mode] [bigint] NULL,'+
	'[File Index] [bigint] NULL,'+
	'[Device Identifier] [bigint] NULL,'+
	'[Number of hard Links] [bigint] NULL,'+
	'[User Identifier] [bigint] NULL,'+
	'[Group Identifier] [bigint] NULL,'+
	'[Size In Bytes] [bigint] NULL,'+
	'[Most recent access] [datetime] NULL,'+
	'[Most recent modification] [datetime] NULL, '+
	'[Creation Time] [datetime] NULL,'+
	'[Type] [varchar](max) NULL,'+
	'[Scan Stamp] [datetime] NULL,'+
	'[Server Name] [varchar](max) NULL'+
	') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]'
	*/
	DECLARE @SQL VARCHAR(1000) = 'CREATE TABLE dbo.' + @Table_Name  + '( ' + 
	'[TBINDEX] [bigint] NULL,'+
	'[Name] [varchar](max) NULL,'+
	'[FilePath] [varchar](900) NOT NULL,'+
	'[File Mode] [bigint] NULL,'+
	'[File Index] [bigint] NULL,'+
	'[Device Identifier] [bigint] NULL,'+
	'[Number of hard Links] [bigint] NULL,'+
	'[User Identifier] [bigint] NULL,'+
	'[Group Identifier] [bigint] NULL,'+
	'[Size In Bytes] [bigint] NULL,'+
	'[Most recent access] [datetime] NULL,'+
	'[Most recent modification] [datetime] NULL, '+
	'[Creation Time] [datetime] NULL,'+
	'[Type] [varchar](max) NULL,'+
	'[Scan Stamp] [datetime] NULL,'+
	'[Server Name] [varchar](max) NULL'+
	' CONSTRAINT [PK_Table_KEY] PRIMARY KEY CLUSTERED 
	(
		[FilePath] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]'

	EXEC (@SQL)
	RETURN 1
	END

	Else
	BEGIN
	print 'hello'

	SELECT @SL_Table_Name = dbo.Server_Log.TableName,
		   @count = dbo.Server_Log.Iterations
	FROM dbo.Server_Log
	WHERE dbo.Server_Log.ServerName = @MacNme AND dbo.Server_Log.IP = @IP

	
	DECLARE @SQL1 VARCHAR(1000) = 'SELECT * INTO dbo.' +  @SL_Table_Name + 
	'_BK_' + CAST(@count AS VARCHAR(30))+'_'+@TempDate+' FROM ' +  @SL_Table_Name 
	--PRINT(@SQL1)
	EXEC (@SQL1)
	

	/*
	DECLARE @SQL1 VARCHAR(1000) = 'SELECT * INTO dbo.' +  @SL_Table_Name + 
	'_BK_'+@TempDate+' FROM ' +  @SL_Table_Name 
	--PRINT(@SQL1)
	EXEC (@SQL1)
	*/

	DECLARE @SQL2 VARCHAR(1000)= 'TRUNCATE TABLE dbo.'+@SL_Table_Name
	--PRINT(@SQL2)
	EXEC (@SQL2)

	UPDATE dbo.Server_Log SET dbo.Server_Log.Iterations = dbo.Server_Log.Iterations +1
	WHERE dbo.Server_Log.ServerName = @MacNme AND dbo.Server_Log.IP = @IP

	END

END

--exec dbo.Check_Table '10.155.63.59','LT079861'




GO
/****** Object:  StoredProcedure [dbo].[Compare_Tables]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ============================================= 

-- Author: <Author,,Name> 

-- Create date: <Create Date,,> 

-- Description: <Description,,> 

-- ============================================= 

CREATE PROCEDURE [dbo].[Compare_Tables] 

-- Add the parameters for the stored procedure here 

@Table1 nvarchar(100), 

@Table2 nvarchar(100) 

AS 

BEGIN 

-- SET NOCOUNT ON added to prevent extra result sets from 

-- interfering with SELECT statements. 

SET NOCOUNT ON; 

-- Insert statements for procedure here 

DECLARE @TB1 nvarchar(100) = @Table1, 

@TB2 nvarchar(100) = @Table2 

DECLARE @SQL1 VARCHAR(1000) = 'SELECT A.[Name], A.[File Path],A.[Size in Bytes],B.[Size in Bytes],A.[Scan Stamp],B.[Scan Stamp],A.[Creation Time] FROM ' 

+ '[dbo].'+@TB1 + ' as A' + ' INNER JOIN ' + '[dbo].'+ @TB2 + ' as B' 

+ ' ON '+ 'A.[File Path] ' + ' = ' + 'B.[File Path]' 

+ ' WHERE ' + 'A.[Size in Bytes]' + ' != ' + 'B.[Size in Bytes]' 

--print (@SQL1) 

EXEC (@SQL1) 

END 

 

 

 



 

 

 

 

 


 

 

 

 

 

 
GO
/****** Object:  StoredProcedure [dbo].[Drive_Pie_Chart]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ============================================= 

-- Author: <Author,,Name> 

-- Create date: <Create Date,,> 

-- Description: <Description,,> 

-- ============================================= 

CREATE PROCEDURE [dbo].[Drive_Pie_Chart] 

-- Add the parameters for the stored procedure here 

@MachineName nvarchar(100), 

@Date nvarchar(100) 

AS 

BEGIN 

-- SET NOCOUNT ON added to prevent extra result sets from 

-- interfering with SELECT statements. 

SET NOCOUNT ON; 

-- Insert statements for procedure here 

DECLARE @MacName nvarchar(100) = @MachineName, 

@Dte nvarchar(100) = @Date, 

@count nvarchar(20), 

@TBName nvarchar(200), 

@BKTBName nvarchar(200), 

@ServerDte nvarchar(100) = replace(convert(varchar, getdate(),102),'.',''), 

@TempDte nvarchar(100)=replace(convert(varchar, getdate()-1,102),'.',''); 

SET @ServerDte = CAST(@ServerDte AS VARCHAR(100)) 

SET @TempDte=CAST(@TempDte AS VARCHAR(100)) 

SELECT @count = dbo.Server_Log.Iterations-1 

FROM dbo.Server_Log 

WHERE dbo.Server_Log.ServerName = @MacName 

IF(@ServerDte = @Dte) 

BEGIN 

PRINT('HELLO') 

SET @TBName = 'Server_Table_'+@MacName 

DECLARE @SQL1 VARCHAR(1000) = 'SELECT [Name],CAST(A.[Size in Bytes] AS DEC(38,5))/CAST(B.[Size] AS DEC(38,5)) AS Perc' 

+ ' FROM [dbo].'+ @TBName + ' AS A INNER JOIN [dbo].[Server_Info] AS B' 

+ ' ON A.[Server Name] = B.[ServerName]' 

+ ' WHERE A.[Type] = ' + '''drive''' 

+ ' UNION ALL ' 

+ 'SELECT ''Empty_Space'' As Name,CAST(B.[Size]-SUM([Size in Bytes]) AS DEC(38,5))/CAST(B.[Size] AS DEC(38,5)) As [Size in Bytes]' 

+ ' FROM [dbo].'+ @TBName + ' AS A INNER JOIN [dbo].[Server_Info] AS B' 

+ ' ON A.[Server Name] = B.[ServerName]' 

+ ' WHERE A.[Type] = ' + '''drive''' 

+ ' GROUP BY B.[Size]' 

--PRINT (@SQL1) 

EXEC (@SQL1) 

END 

ELSE 

BEGIN 

PRINT('HELLO1') 

SET @BKTBName = 'Server_Table_'+@MacName + '_BK_'+ @count + '_' + @Dte 

DECLARE @SQL2 VARCHAR(1000) = 'SELECT [Name],CAST(A.[Size in Bytes] AS DEC(38,5))/CAST(B.[Size] AS DEC(38,5))' 

+ ' FROM [dbo].'+ @BKTBName + ' AS A INNER JOIN [dbo].[Server_Info] AS B' 

+ ' ON A.[Server Name] = B.[ServerName]' 

+ ' WHERE A.[Type] = ' + '''drive''' 

+ ' UNION ALL ' 

+ 'SELECT ''Empty_Space'' As Name,CAST(B.[Size]-SUM([Size in Bytes]) AS DEC(38,5))/CAST(B.[Size] AS DEC(38,5)) As [Size in Bytes]' 

+ ' FROM [dbo].'+ @BKTBName + ' AS A INNER JOIN [dbo].[Server_Info] AS B' 

+ ' ON A.[Server Name] = B.[ServerName]' 

+ ' WHERE A.[Type] = ' + '''drive''' 

+ ' GROUP BY B.[Size]' 

--PRINT (@SQL2) 

EXEC (@SQL2) 

END 

END 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
GO
/****** Object:  StoredProcedure [dbo].[Folder_Pie_Chart]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        <Author,,Name>
-- Create date: <Create Date,,>
-- Description:    <Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Folder_Pie_Chart]
    -- Add the parameters for the stored procedure here
    @MachineName nvarchar(100),
    @Date nvarchar(100)
AS    
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;


    CREATE table #temp (
            Name varchar(60),
			ServerName varchar(60),
            FilePath varchar(max),
            SizeInBytes bigint,
            Perc decimal(38,2)
                )
	
    CREATE table #temp1 (
            Name varchar(60),
			ServerName varchar(60),
            FilePath varchar(max),
            SizeInBytes bigint
                )

    DECLARE @usedperc decimal(38,2),
            @freeperc decimal(38,2),
            @totalsize bigint,
            @freespace bigint,
            @Drive bigint,
			@Folder bigint,
			@diff bigint,
            @MacName nvarchar(100) = @MachineName,
            @Dte nvarchar(100) = @Date,
            @count int,
            @chcount nvarchar(20),
            @TBName nvarchar(200),
            @BKTBName nvarchar(200),
            @ServerDte nvarchar(100) = replace(convert(varchar, getdate(),102),'.',''),
            @TempDte nvarchar(100)=replace(convert(varchar, getdate()-1,102),'.','');
    SET @ServerDte = CAST(@ServerDte AS VARCHAR(100))
    SET @TempDte=CAST(@TempDte AS VARCHAR(100))

 
SELECT @count = dbo.Server_Log.Iterations-1 FROM dbo.Server_Log
WHERE dbo.Server_Log.ServerName = @MacName
print @count

 
SET @TBName = 'Server_Table_'+ @MacName
SET @chcount = CAST(@count AS VARCHAR(20))
SET @BKTBName = 'Server_Table_'+@MacName+'_BK_'+@chcount+'_'+@Dte+''
if(@Dte=@ServerDte)
BEGIN 
PRINT('HELLO1')
DECLARE @SQL1 VARCHAR(1000) = 'Insert into #temp  Select top (100)' 
	 + ' st.[Name],'
     + 'st.[Server Name],'
     + 'st.[File Path],'
     + 'st.[Size In Bytes],'
     + '(cast(st.[Size In Bytes] as dec(30,2))/cast(t.[Size] as dec(30,2)))*100'
     + 'from [dbo].'+ @TBName +' as st inner join Server_Info as t' 
     + ' on st.[Server Name] = t.[ServerName] and st.type !='+ '''drive''' 
	 + ' and st.type !='+ '''file'''
     + ' order by st.[Size In Bytes] desc'

DECLARE @SQL3 VARCHAR(500) = 'Insert Into #temp1 Select [Name],[Server Name],[File Path],[Size In Bytes] from ' +  @TBName + ' where Name = ' + '''C:\'''
DECLARE @SQL4 VARCHAR(500) = 'Insert Into #temp1 Select [Name],[Server Name],[File Path],[Size In Bytes] from ' + @TBName + ' where Name = ' + '''D:\'''

      --PRINT (@SQL1)
      --PRINT (@SQL3)
      --PRINT (@SQL4)
EXEC (@SQL1)
EXEC (@SQL3)
EXEC (@SQL4)


END
ELSE 
BEGIN
DECLARE @SQL2 VARCHAR(1000) = 'Insert into #temp  Select top (100)' 
	 + ' st.[Name],'
     + 'st.[Server Name],'
     + 'st.[File Path],'
     + 'st.[Size In Bytes],'
     + '(cast(st.[Size In Bytes] as dec(30,15))/cast(t.[Size] as dec(30,15)))*100'
     + ' from [dbo].'+ @BKTBName +' as st inner join Server_Info as t' 
     + ' on st.[Server Name] = t.[ServerName] and st.type !='+ '''drive'''+ 
	 + ' and st.type !='+ '''file'''
     + ' order by st.[Size In Bytes] desc'

DECLARE @SQL5 VARCHAR(500) = 'Insert Into #temp1 Select [Name],[Server Name],[File Path],[Size In Bytes] from ' +  @BKTBName + ' where Name = ' + '''C:\'''
DECLARE @SQL6 VARCHAR(500) = 'Insert Into #temp1 Select [Name],[Server Name],[File Path],[Size In Bytes] from ' + @BKTBName + ' where Name = ' + '''D:\'''

--     --PRINT (@SQL2)
     EXEC (@SQL2)
     EXEC (@SQL5)
     EXEC (@SQL6)

END

PRINT('HELLO')
SELECT @totalsize = [Size] from [dbo].[Server_Info] where [ServerName] =  @MacName
print @totalsize
SELECT @Drive = sum([SizeInBytes]) from #temp1
print @Drive
SELECT @Folder = sum([SizeInBytes]) from #temp
print @Folder
SET @diff = @Drive- @Folder
print @diff
SELECT @freespace = @totalsize - sum([SizeInBytes]) from #temp1
SELECT @usedperc = (cast(@diff as dec(38,2))/cast(@totalsize as dec(38,2)))*100 
SELECT @freeperc = (cast(@freespace as dec(38,2))/cast(@totalsize as dec(38,2)))*100

Insert into #temp values('Others',@MacName,' ',@diff,@usedperc)
Insert into #temp values('Free Space',@MacName,' ',@freespace,@freeperc)


select * from #temp
--select * from #temp1

END

GO
/****** Object:  StoredProcedure [dbo].[Graph_Compare]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ============================================= 

-- Author: <Author,,Name> 

-- Create date: <Create Date,,> 

-- Description: <Description,,> 

-- ============================================= 

CREATE PROCEDURE [dbo].[Graph_Compare] 

-- Add the parameters for the stored procedure here 

@MachineName nvarchar(100), 

@Date nvarchar(100) 

AS 

BEGIN 

-- SET NOCOUNT ON added to prevent extra result sets from 

-- interfering with SELECT statements. 

SET NOCOUNT ON; 

-- Insert statements for procedure here 

DECLARE @MacName nvarchar(100) = @MachineName, 

@Dte nvarchar(100) = @Date, 

@count nvarchar(20), 

@TBName nvarchar(200), 

@BKTBName nvarchar(200), 

@ServerDte nvarchar(100) = replace(convert(varchar, getdate(),102),'.',''), 

@TempDte nvarchar(100)=replace(convert(varchar, getdate()-1,102),'.',''); 

declare @date1 nvarchar(100)
set @date1=convert(varchar,'2020.05.28',102)
print @date1
SET @ServerDte = CAST(@ServerDte AS VARCHAR(100)) 

SET @TempDte=CAST(@TempDte AS VARCHAR(100)) 
print @ServerDte
print @TempDte
SELECT @count = dbo.Server_Log.Iterations-1 

FROM dbo.Server_Log 

WHERE dbo.Server_Log.ServerName = @MacName 

IF(@ServerDte = @Dte) 

BEGIN 

PRINT('HELLO') 

SET @TBName = 'Server_Table_'+@MacName 

SET @BKTBName = 'Server_Table_'+@MacName + '_BK_'+ @count + '_' + @TempDte 

DECLARE @SQL1 VARCHAR(1000) = 'SELECT TOP (100) A.[Name], A.[File Path],A.[Size in Bytes],B.[Size in Bytes],A.[Scan Stamp],B.[Scan Stamp],A.[Creation Time] FROM ' 

+ '[dbo].'+@TBName + ' as A' + ' INNER JOIN ' + '[dbo].'+ @BKTBName + ' as B' 

+ ' ON '+ 'A.[File Path] ' + ' = ' + 'B.[File Path]' 

+ ' WHERE ' + 'A.[Size in Bytes]' + ' != ' + 'B.[Size in Bytes]' 

--PRINT (@SQL) 

EXEC (@SQL1) 

END 

ELSE 

BEGIN 

PRINT('HELLO1') 

SET @TBName = 'Server_Table_'+@MacName 

SET @BKTBName = 'Server_Table_'+@MacName + '_BK_'+ @count + '_' + @Dte 

DECLARE @SQL VARCHAR(1000) = 'SELECT TOP(100) A.[Name], A.[File Path],A.[Size in Bytes],B.[Size in Bytes],A.[Scan Stamp],B.[Scan Stamp],A.[Creation Time] FROM ' 

+ '[dbo].'+@TBName + ' as A' + ' INNER JOIN ' + '[dbo].'+ @BKTBName + ' as B' 

+ ' ON '+ 'A.[File Path] ' + ' = ' + 'B.[File Path]' 

+ ' WHERE ' + 'A.[Size in Bytes]' + ' != ' + 'B.[Size in Bytes]' 

--PRINT (@SQL) 

EXEC (@SQL) 

END 

END 
GO
/****** Object:  StoredProcedure [dbo].[Graph_Data_Update]    Script Date: 12-06-2020 15:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ============================================= 

-- Author: <Author,,Name> 

-- Create date: <Create Date,,> 

-- Description: <Description,,> 

-- ============================================= 
CREATE PROCEDURE [dbo].[Graph_Data_Update] 

-- Add the parameters for the stored procedure here 

@MachineName nvarchar(100) 

AS 

BEGIN 

-- SET NOCOUNT ON added to prevent extra result sets from 

-- interfering with SELECT statements. 

SET NOCOUNT ON; 

-- Insert statements for procedure here 

DECLARE @MacNme nvarchar(100) = @MachineName 

IF (EXISTS (SELECT * 

FROM INFORMATION_SCHEMA.TABLES 

WHERE TABLE_NAME = @MacNme + 'GraphData')) 

BEGIN 

DECLARE @SQL VARCHAR(1000) = 'INSERT INTO dbo.' + @MacNme + 'GraphData' + 

' SELECT [dbo].[Server_Log].ServerName,getdate(),[dbo].[Server_Log].Size 

from [dbo].[Server_Log] WHERE [dbo].[Server_Log].ServerName ='''+ @MacNme + '''' 

--PRINT(@SQL) 

EXEC (@SQL) 

END 

ELSE 

BEGIN 

DECLARE @SQL1 VARCHAR(1000) = 'CREATE TABLE dbo.' + @MacNme + 'GraphData' + '(' + 

'ServerName varchar(300),'+ 

'TStamp datetime,'+ 

'ServerSize bigint)' 

EXEC (@SQL1) 

DECLARE @SQL2 VARCHAR(1000) = 'INSERT INTO dbo.' + @MacNme + 'GraphData' + 

' SELECT [dbo].[Server_Log].ServerName,getdate(),[dbo].[Server_Log].Size 

from [dbo].[Server_Log] WHERE [dbo].[Server_Log].ServerName ='''+ @MacNme + '''' 

--PRINT(@SQL) 

EXEC (@SQL2) 

END 

END 

 
GO
USE [master]
GO
ALTER DATABASE [HDDServer] SET  READ_WRITE 
GO
