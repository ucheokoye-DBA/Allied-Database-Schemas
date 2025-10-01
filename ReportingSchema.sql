USE [master]
GO
/****** Object:  Database [Reporting]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE DATABASE [Reporting]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Reporting_Data', FILENAME = N'E:\DATA\Reporting.mdf' , SIZE = 3285GB , MAXSIZE = UNLIMITED, FILEGROWTH = 2097152KB )
 LOG ON 
( NAME = N'Reporting_Log', FILENAME = N'G:\logs\Reporting.ldf' , SIZE = 8398848KB , MAXSIZE = UNLIMITED, FILEGROWTH = 2097152KB )
GO
ALTER DATABASE [Reporting] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Reporting].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [Reporting] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Reporting] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Reporting] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Reporting] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Reporting] SET ARITHABORT OFF 
GO
ALTER DATABASE [Reporting] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Reporting] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Reporting] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Reporting] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Reporting] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Reporting] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Reporting] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Reporting] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Reporting] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Reporting] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Reporting] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Reporting] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Reporting] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Reporting] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [Reporting] SET PARAMETERIZATION FORCED 
GO
ALTER DATABASE [Reporting] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Reporting] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Reporting] SET RECOVERY FULL 
GO
ALTER DATABASE [Reporting] SET  MULTI_USER 
GO
ALTER DATABASE [Reporting] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Reporting] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Reporting] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Reporting] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Reporting] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Reporting', N'ON'
GO
ALTER DATABASE [Reporting] SET ENCRYPTION ON
GO
ALTER DATABASE [Reporting] SET QUERY_STORE = ON
GO
ALTER DATABASE [Reporting] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 3000, INTERVAL_LENGTH_MINUTES = 15, MAX_STORAGE_SIZE_MB = 500, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 1000)
GO
USE [Reporting]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Reporting]
GO
/****** Object:  User [zwelch]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [zwelch] FOR LOGIN [zwelch] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [WhalerETL]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [WhalerETL] FOR LOGIN [WhalerETL] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [WebReports]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [WebReports] FOR LOGIN [WebReports] WITH DEFAULT_SCHEMA=[WebReports]
GO
/****** Object:  User [VCommAnalyzerUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [VCommAnalyzerUser] FOR LOGIN [VCommAnalyzerUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [TestUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [TestUser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [tdunaj]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [tdunaj] FOR LOGIN [tdunaj] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [skuznetsov]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [skuznetsov] FOR LOGIN [skuznetsov] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SendCodeuser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [SendCodeuser] FOR LOGIN [SendCodeuser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SdcMgrUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [SdcMgrUser] FOR LOGIN [SdcMgrUser] WITH DEFAULT_SCHEMA=[SdcMgrUser]
GO
/****** Object:  User [sdcApiUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [sdcApiUser] FOR LOGIN [sdcApiUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [sCupstid_dba]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [sCupstid_dba] FOR LOGIN [sCupstid_dba] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SCupstid]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [SCupstid] FOR LOGIN [scupstid] WITH DEFAULT_SCHEMA=[Developer_Schema]
GO
/****** Object:  User [ReportClientUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [ReportClientUser] FOR LOGIN [ReportClientUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RBuffington]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [RBuffington] FOR LOGIN [RBuffington] WITH DEFAULT_SCHEMA=[developer_Schema]
GO
/****** Object:  User [QAAutomationUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [QAAutomationUser] FOR LOGIN [QAAutomationUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [PTMUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [PTMUser] FOR LOGIN [PTMUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [psablan]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [psablan] FOR LOGIN [psablan] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ProdStats]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [ProdStats] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [PHickman]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [PHickman] FOR LOGIN [PHickman] WITH DEFAULT_SCHEMA=[developer_Schema]
GO
/****** Object:  User [PCEUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [PCEUser] FOR LOGIN [PCEUser] WITH DEFAULT_SCHEMA=[PCEUser]
GO
/****** Object:  User [osomuyiwa]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [osomuyiwa] FOR LOGIN [osomuyiwa] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nkent]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [nkent] FOR LOGIN [nkent] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NagiosUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [NagiosUser] FOR LOGIN [NagiosUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mnguyen]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [mnguyen] FOR LOGIN [mnguyen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mgendrau]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [mgendrau] FOR LOGIN [mgendrau] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LowTouchUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [LowTouchUser] FOR LOGIN [LowTouchUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [kpullamsetti]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [kpullamsetti] FOR LOGIN [kpullamsetti] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [kkulikova]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [kkulikova] FOR LOGIN [kkulikova] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [jmerritt]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [jmerritt] FOR LOGIN [jmerritt] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [jgazsi]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [jgazsi] FOR LOGIN [jgazsi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [HwAdminUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [HwAdminUser] FOR LOGIN [HwAdminUser] WITH DEFAULT_SCHEMA=[HwAdminUser]
GO
/****** Object:  User [HardwareAdminUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [HardwareAdminUser] FOR LOGIN [HardwareAdminUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [GUkarande]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [GUkarande] FOR LOGIN [GUkarande] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EYoung]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [EYoung] FOR LOGIN [EYoung] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ExportUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [ExportUser] FOR LOGIN [ExportUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EventProcessorUser ]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [EventProcessorUser ] FOR LOGIN [EventProcessorUser ] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EMMAPIUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [EMMAPIUser] FOR LOGIN [EMMAPIUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DVSRUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [DVSRUser] FOR LOGIN [DVSRUser] WITH DEFAULT_SCHEMA=[DVSRUser]
GO
/****** Object:  User [DEllingsworth]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [DEllingsworth] FOR LOGIN [DEllingsworth] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DCCUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [DCCUser] FOR LOGIN [DCCUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DBoyd]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [DBoyd] FOR LOGIN [dboyd] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DBLoadInfoUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [DBLoadInfoUser] FOR LOGIN [DBLoadInfoUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DataDeleteUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [DataDeleteUser] FOR LOGIN [DataDeleteUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DataCenter]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [DataCenter] FOR LOGIN [DataCenter] WITH DEFAULT_SCHEMA=[DataCenter]
GO
/****** Object:  User [ContractMgrUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [ContractMgrUser] FOR LOGIN [ContractMgrUser] WITH DEFAULT_SCHEMA=[ContractMgrUser]
GO
/****** Object:  User [CGibson]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [CGibson] FOR LOGIN [CGibson] WITH DEFAULT_SCHEMA=[developer_Schema]
GO
/****** Object:  User [CAMUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [CAMUser] FOR LOGIN [CAMUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BillingAppUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [BillingAppUser] FOR LOGIN [BillingAppUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [aTomasi_dba]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [aTomasi_dba] FOR LOGIN [aTomasi_dba] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ATomasi]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [ATomasi] FOR LOGIN [ATomasi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ashah]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [ashah] FOR LOGIN [ashah] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AlarmSvrUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [AlarmSvrUser] FOR LOGIN [AlarmSvrUser] WITH DEFAULT_SCHEMA=[AlarmSvrUser]
GO
/****** Object:  User [AInostroza]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [AInostroza] FOR LOGIN [ainostroza] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [agrace]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [agrace] FOR LOGIN [agrace] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AGibson]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [AGibson] FOR LOGIN [AGibson] WITH DEFAULT_SCHEMA=[developer_Schema]
GO
/****** Object:  User [ActionTestUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE USER [ActionTestUser] FOR LOGIN [ActionTestUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [SalesReadOnly]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE ROLE [SalesReadOnly]
GO
/****** Object:  DatabaseRole [Read_Only]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE ROLE [Read_Only]
GO
/****** Object:  DatabaseRole [Developer_Role]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE ROLE [Developer_Role]
GO
/****** Object:  DatabaseRole [dba]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE ROLE [dba]
GO
ALTER ROLE [db_datareader] ADD MEMBER [zwelch]
GO
ALTER ROLE [db_datareader] ADD MEMBER [WhalerETL]
GO
ALTER ROLE [db_datareader] ADD MEMBER [WebReports]
GO
ALTER ROLE [db_datareader] ADD MEMBER [VCommAnalyzerUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [TestUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [tdunaj]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [tdunaj]
GO
ALTER ROLE [db_datareader] ADD MEMBER [skuznetsov]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SdcMgrUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SdcMgrUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [sdcApiUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [sdcApiUser]
GO
ALTER ROLE [dba] ADD MEMBER [sCupstid_dba]
GO
ALTER ROLE [db_owner] ADD MEMBER [sCupstid_dba]
GO
ALTER ROLE [Developer_Role] ADD MEMBER [SCupstid]
GO
ALTER ROLE [Read_Only] ADD MEMBER [SCupstid]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SCupstid]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ReportClientUser]
GO
ALTER ROLE [Developer_Role] ADD MEMBER [RBuffington]
GO
ALTER ROLE [db_datareader] ADD MEMBER [QAAutomationUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [QAAutomationUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [PTMUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [PTMUser]
GO
ALTER ROLE [Read_Only] ADD MEMBER [psablan]
GO
ALTER ROLE [db_datareader] ADD MEMBER [psablan]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ProdStats]
GO
ALTER ROLE [Developer_Role] ADD MEMBER [PHickman]
GO
ALTER ROLE [db_datareader] ADD MEMBER [PCEUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [PCEUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [osomuyiwa]
GO
ALTER ROLE [db_datareader] ADD MEMBER [nkent]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mnguyen]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mgendrau]
GO
ALTER ROLE [db_datareader] ADD MEMBER [kpullamsetti]
GO
ALTER ROLE [db_datareader] ADD MEMBER [kkulikova]
GO
ALTER ROLE [db_datareader] ADD MEMBER [jmerritt]
GO
ALTER ROLE [db_datareader] ADD MEMBER [jgazsi]
GO
ALTER ROLE [db_datareader] ADD MEMBER [HwAdminUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [HwAdminUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [HardwareAdminUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [GUkarande]
GO
ALTER ROLE [Developer_Role] ADD MEMBER [EYoung]
GO
ALTER ROLE [db_datareader] ADD MEMBER [EYoung]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ExportUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [EventProcessorUser ]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [EventProcessorUser ]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DVSRUser]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [DVSRUser]
GO
ALTER ROLE [Developer_Role] ADD MEMBER [DEllingsworth]
GO
ALTER ROLE [Read_Only] ADD MEMBER [DEllingsworth]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DEllingsworth]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCCUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [DCCUser]
GO
ALTER ROLE [Read_Only] ADD MEMBER [DBoyd]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DBoyd]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DataCenter]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ContractMgrUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ContractMgrUser]
GO
ALTER ROLE [Developer_Role] ADD MEMBER [CGibson]
GO
ALTER ROLE [Read_Only] ADD MEMBER [CGibson]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CGibson]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CAMUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [BillingAppUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [BillingAppUser]
GO
ALTER ROLE [dba] ADD MEMBER [aTomasi_dba]
GO
ALTER ROLE [db_owner] ADD MEMBER [aTomasi_dba]
GO
ALTER ROLE [dba] ADD MEMBER [ATomasi]
GO
ALTER ROLE [Read_Only] ADD MEMBER [ATomasi]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ATomasi]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ashah]
GO
ALTER ROLE [db_datareader] ADD MEMBER [AlarmSvrUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [AlarmSvrUser]
GO
ALTER ROLE [Read_Only] ADD MEMBER [AInostroza]
GO
ALTER ROLE [db_datareader] ADD MEMBER [AInostroza]
GO
ALTER ROLE [db_datareader] ADD MEMBER [agrace]
GO
ALTER ROLE [Developer_Role] ADD MEMBER [AGibson]
GO
/****** Object:  Schema [AlarmSvrUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE SCHEMA [AlarmSvrUser]
GO
/****** Object:  Schema [ContractMgrUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE SCHEMA [ContractMgrUser]
GO
/****** Object:  Schema [DataCenter]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE SCHEMA [DataCenter]
GO
/****** Object:  Schema [Developer_Schema]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE SCHEMA [Developer_Schema]
GO
/****** Object:  Schema [DVSRUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE SCHEMA [DVSRUser]
GO
/****** Object:  Schema [HwAdminUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE SCHEMA [HwAdminUser]
GO
/****** Object:  Schema [PCEUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE SCHEMA [PCEUser]
GO
/****** Object:  Schema [SalesReadOnly]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE SCHEMA [SalesReadOnly]
GO
/****** Object:  Schema [SdcMgrUser]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE SCHEMA [SdcMgrUser]
GO
/****** Object:  Schema [WebReports]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE SCHEMA [WebReports]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetExtraTxDetectedOffender]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Michael McGowan
-- Create date: 01/14/2014
-- Description:	Given an rf device that detects Tx's
--				build a string for reports that shows the offender detected
-- =============================================
CREATE FUNCTION [dbo].[fn_GetExtraTxDetectedOffender]
(
	@EventRecID			int
)
RETURNS  VARCHAR(MAX)
AS
BEGIN

DECLARE @Return VARCHAR(MAX)
	--
	--	Help prevent parameter sniffing bug since an unknown number of records will be returned
	--
	DECLARE @ParamameterRecID int	

	SET @ParamameterRecID = @EventRecID	

SELECT @Return = 
	--Either the detecting device is same contract or detected contract allows access
	CASE WHEN 
	ISNULL((select top 1 ContractOptionID from Protech.dbo.fn_ContractOptionAssignments_GetByCustomerID(d.customerid) where contractoptionid = 48),0) > 0
	OR c.ContractID = cd.ContractID THEN
	'Extra Tx Detected: ' + d.LastName + ', ' + d.FirstName + ' ('+ v.SerialNumber + ')'
	ELSE 
	'Extra Tx Detected: Undisclosed' 
	END
 FROM dbo.Report_EventParams ep
	join dbo.Report_EM_Positions em WITH (NOLOCK) on ep.EventTableRecID = em.RecID and ep.EventTableLookupValue = 2 and ep.ParameterTypeLookupValue = 1 		
	left join Protech..offenderdevices od on od.deviceid = ep.parametervalue
	and od.assignmentdate <= em.timestamp 
	and (od.unassignmentdate is null or od.unassignmentdate >= em.timestamp)
	join Protech..Demographics D with (nolock) on od.DemographicID = D.DemographicID
	left join Protech.dbo.View_AllDevices v with (nolock) on v.deviceid = ep.parametervalue
	left join Protech..Customers c with (nolock) on d.customerid = c.customerid	
	left join Protech..Demographics dd with (nolock) on em.demographicid = dd.demographicid --Detecting Device Demo
	left join Protech..Customers cd with (nolock) on dd.customerid = cd.customerid --Detecting Device Demo
WHERE  ep.EventTableRecID = @ParamameterRecID
	


RETURN @Return

END





GO
/****** Object:  UserDefinedFunction [dbo].[ParseMultipleParametersInt]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--=============================================================================
-- Function Name: ParseMultipleParametersInt
-- Description..: Takes a comma-delimited list and returns a table of INT values.
-- Author.......: Various
-- Date Created.: Unknown
--=============================================================================
CREATE FUNCTION [dbo].[ParseMultipleParametersInt] (@in_List VARCHAR(MAX))
RETURNS @ResultTable TABLE (ID INT)
AS
BEGIN
	
   DECLARE @Start		INT
   DECLARE @End			INT
   DECLARE @strValue	VARCHAR(100)
   DECLARE @tempList	VARCHAR(MAX)
   
   SET @tempList = @in_List
   SET @End = CHARINDEX(',', @tempList)

   WHILE (CHARINDEX(',', @tempList) > 0)
      BEGIN
      INSERT INTO @ResultTable (ID) VALUES (CONVERT(INT,SUBSTRING(@tempList, 1, CHARINDEX(',', @tempList)-1)))
      SET @tempList = SUBSTRING(@tempList, CHARINDEX(',', @tempList)+1, LEN(@tempList) - CHARINDEX(',', @tempList)+1)
      END -- While

   -- insert the last one (or only one), the <> '' prevents an empty string if no parameter was passed in
   IF (@tempList <> '') INSERT INTO @ResultTable (ID) VALUES (CONVERT(VARCHAR(500),@tempList))
	
   RETURN 
END
GO
/****** Object:  UserDefinedFunction [dbo].[Split]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Split]
	(
		@List nvarchar(2000),
		@SplitOn nvarchar(5)
	)  
	RETURNS @RtnValue table 
	(
		
		Id int identity(1,1),
		Value nvarchar(100)
	) 
	AS  
	BEGIN 
		While (Charindex(@SplitOn,@List)>0)
		Begin

			Insert Into @RtnValue (value)
			Select 
				Value = ltrim(rtrim(Substring(@List,1,Charindex(@SplitOn,@List)-1)))

			Set @List = Substring(@List,Charindex(@SplitOn,@List)+len(@SplitOn),len(@List))
		End

		Insert Into @RtnValue (Value)
		Select Value = ltrim(rtrim(@List))
	
		Return
	END



GO
/****** Object:  View [dbo].[ReportContractLevels]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE VIEW [dbo].[ReportContractLevels]
AS


SELECT
1 AS ContractLevel,1 AS ReportContractLevel,1 AS ReportLevelType

UNION ALL

SELECT
2,	2,	1

UNION ALL

SELECT
3,	3,	2

UNION ALL

SELECT
4,	4,	2

UNION ALL

SELECT
5,	5,	2

UNION ALL

SELECT
6,	6,	3

UNION ALL

SELECT
7,	7,	1

UNION ALL

SELECT
8,	8,	4

UNION ALL

SELECT
9,	9,	1

UNION ALL

SELECT
10,	10,	2

UNION ALL

SELECT
11,	11,	3

UNION ALL

SELECT
12,	12,	1

UNION ALL

SELECT
13,	13,	2

UNION ALL

SELECT
14,	14,	3

UNION ALL

SELECT
15,	15,	1

UNION ALL

SELECT
16,	16,	2

UNION ALL

SELECT
17,	17,	3

UNION ALL

SELECT
18,	18,	4

UNION ALL

SELECT
19,	19,	4

UNION ALL

SELECT
20,	20,	1

UNION ALL

SELECT
21,	21,	2

UNION ALL

SELECT
22,	22,	3

UNION ALL

SELECT
23,	23,	4

UNION ALL

SELECT

26,	26,	5

UNION ALL

SELECT
27,	27,	5

UNION ALL

SELECT
28, 28, 5

UNION ALL

SELECT
29, 29, 5

UNION ALL

SELECT
24, 24, 4

UNION ALL

SELECT
25, 25, 4

UNION ALL

SELECT
30, 9, 1

UNION ALL

SELECT
30,	26,	5

UNION ALL

SELECT
31,	10,	2

UNION ALL

SELECT
31,	26,	5

UNION ALL

SELECT
32,	11,	3

UNION ALL

SELECT
32,	26,	5

UNION ALL

SELECT
33,	12,	1

UNION ALL

SELECT
33,	26,	5

UNION ALL

SELECT
34,	13,	2

UNION ALL

SELECT
34,	26,	5

UNION ALL

SELECT
35,	14,	3

UNION ALL

SELECT
35,	26,	5

UNION ALL

SELECT
36,	15,	1

UNION ALL

SELECT
36,	26,	5

UNION ALL

SELECT
37,	16,	2

UNION ALL

SELECT
37,	26,	5

UNION ALL

SELECT
38,	17,	3

UNION ALL

SELECT
38,	26,	5

UNION ALL

SELECT
39,	20,	1

UNION ALL

SELECT
39,	26,	5

UNION ALL

SELECT
40,	21,	2

UNION ALL

SELECT
40,	26,	5

UNION ALL

SELECT
41,	22,	3

UNION ALL

SELECT
41,	26,	5

UNION ALL

SELECT
42,	9,	1

UNION ALL

SELECT
42,	27,	5

UNION ALL

SELECT
43,	10,	2

UNION ALL

SELECT
43,	27,	5

UNION ALL

SELECT
44,	11,	3

UNION ALL

SELECT
44,	27, 5

UNION ALL

SELECT
45,	12,	1

UNION ALL

SELECT
45,	27,	5

UNION ALL

SELECT
46,	13,	2

UNION ALL

SELECT
46,	27,	5

UNION ALL

SELECT
47,	14,	3

UNION ALL

SELECT
47,	27,	5

UNION ALL

SELECT
48,	15,	1

UNION ALL

SELECT
48,	27,	5

UNION ALL

SELECT
49,	16,	2

UNION ALL

SELECT
49,	27,	5

UNION ALL

SELECT
50,	17,	3

UNION ALL

SELECT
50,	27,	5

UNION ALL

SELECT
51,	20,	1

UNION ALL

SELECT
51,	27,	5

UNION ALL

SELECT
52,	21,	2

UNION ALL

SELECT
52,	27,	5

UNION ALL

SELECT
53,	22,	3

UNION ALL

SELECT
53,	27,	5

UNION ALL

SELECT
54,	24,	4

UNION ALL

SELECT
55,	25,	4

UNION ALL

SELECT
56, 56, 4

UNION ALL

SELECT
57, 58, 4

UNION ALL

SELECT
58, 58, 4

UNION ALL

SELECT
59, 56, 4

--UNION ALL

--SELECT
--60, 58, 4

UNION ALL

SELECT
61, 58, 4

UNION ALL

SELECT
62, 9, 1

UNION ALL

SELECT
63, 10, 2

UNION ALL

SELECT
64, 11, 3

UNION ALL

SELECT
65, 9, 1

UNION ALL

SELECT
65, 26, 5

UNION ALL

SELECT
66, 10, 2

UNION ALL

SELECT
66, 26, 5

UNION ALL

SELECT
67, 11, 3

UNION ALL

SELECT
67, 26, 5

UNION ALL

SELECT
68, 9, 1

UNION ALL

SELECT
68, 27, 5

UNION ALL

SELECT
69, 10, 2

UNION ALL

SELECT
69, 27, 5

UNION ALL

SELECT
70, 11, 3

UNION ALL

SELECT
70, 27, 5

UNION ALL

SELECT
71, 12, 1

UNION ALL

SELECT
72, 13, 2

UNION ALL

SELECT
73, 14, 3

UNION ALL

SELECT
74, 12, 1

UNION ALL

SELECT
74, 26, 5

UNION ALL

SELECT
77, 12, 1

UNION ALL

SELECT
77, 27, 5

UNION ALL

SELECT
78, 13, 2

UNION ALL

SELECT
78, 27, 5


GO
/****** Object:  Table [dbo].[Bigint]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bigint](
	[daysleft] [float] NULL,
	[bigintNumber] [numeric](38, 0) NULL,
	[currentMaxRecId] [bigint] NULL,
	[rowsLeft] [numeric](38, 0) NULL,
	[rowsAday] [float] NULL,
	[daysback] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseMgmtAutoRecallSettings]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseMgmtAutoRecallSettings](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[DeviceType] [int] NOT NULL,
	[HwRule] [int] NOT NULL,
	[HwRuleBitIndex] [smallint] NOT NULL,
	[RecallType] [int] NOT NULL,
	[ReasonRecID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[SendEmailOnRecall] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseMgmtEventLocks]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseMgmtEventLocks](
	[EventTableName] [varchar](50) NOT NULL,
	[EventTableRecID] [bigint] NOT NULL,
	[LockTimestamp] [datetime] NOT NULL,
	[UpdateTimestamp] [datetime] NOT NULL,
	[UserRecID] [int] NOT NULL,
	[LocalUserName] [varchar](50) NOT NULL,
	[LocalWorkstationName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CaseMgmtEventLocks] PRIMARY KEY CLUSTERED 
(
	[EventTableName] ASC,
	[EventTableRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseMgmtNotes]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseMgmtNotes](
	[NoteRecID] [int] IDENTITY(1,1) NOT NULL,
	[EventTableName] [varchar](50) NOT NULL,
	[EventTableRecID] [bigint] NOT NULL,
	[NoteTimestamp] [datetime] NOT NULL,
	[UserRecID] [int] NOT NULL,
	[NoteStatus] [int] NOT NULL,
	[SuspendTimestamp] [datetime] NULL,
	[Note] [varchar](2000) NOT NULL,
	[IsPinned] [bit] NOT NULL,
 CONSTRAINT [PK_CaseMgmtNotes] PRIMARY KEY CLUSTERED 
(
	[NoteRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseNoteEmailNotes]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseNoteEmailNotes](
	[CaseNoteEmailNoteID] [int] IDENTITY(1,1) NOT NULL,
	[CaseNoteEmailID] [int] NOT NULL,
	[NoteRecID] [int] NOT NULL,
 CONSTRAINT [PK_CaseNoteEmailNotes] PRIMARY KEY CLUSTERED 
(
	[CaseNoteEmailNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseNoteEmails]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseNoteEmails](
	[CaseNoteEmailID] [int] IDENTITY(1,1) NOT NULL,
	[CaseNoteEmailType] [smallint] NOT NULL,
	[UserRecID] [int] NOT NULL,
	[ContactDemographicID] [int] NOT NULL,
	[ContactEmailAddress] [varchar](50) NOT NULL,
	[UTCTimeSent] [datetime] NOT NULL,
	[MessageID] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CaseNoteEmails] PRIMARY KEY CLUSTERED 
(
	[CaseNoteEmailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseNoteStatusDescriptions]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseNoteStatusDescriptions](
	[NoteStatusID] [int] NOT NULL,
	[Description] [varchar](80) NOT NULL,
	[DisplayFlags] [smallint] NOT NULL,
 CONSTRAINT [PK_CaseNoteStatusDescriptions] PRIMARY KEY CLUSTERED 
(
	[NoteStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventLabels]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventLabels](
	[EventLabelID] [int] NOT NULL,
	[LevelNumber] [int] NOT NULL,
	[ReportLabel] [varchar](100) NOT NULL,
	[Abbreviation] [varchar](6) NOT NULL,
	[ReportLevelType] [int] NULL,
	[RuleName] [varchar](100) NULL,
	[HwRule] [int] NULL,
	[HwRuleBitIndex] [int] NULL,
	[RuleType] [char](1) NULL,
	[isDeleted] [bit] NULL,
	[DeviceType] [int] NULL,
	[NonViolationStatus] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FollowUpReminders]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FollowUpReminders](
	[FollowUpReminderID] [int] IDENTITY(1,1) NOT NULL,
	[DeviceID] [int] NOT NULL,
	[PositionRecID] [int] NOT NULL,
	[FollowUpType] [varchar](50) NULL,
	[FollowUpDate] [datetime] NOT NULL,
	[HwRule] [int] NOT NULL,
	[HwRuleBitIndex] [int] NOT NULL,
	[IsProcessed] [bit] NOT NULL,
	[DeviceType] [int] NOT NULL,
	[DaysToReminder] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[FollowUpReminderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FollowUpReminders_temp_11_1]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FollowUpReminders_temp_11_1](
	[FollowUpReminderID] [int] IDENTITY(1,1) NOT NULL,
	[DeviceID] [int] NOT NULL,
	[PositionRecID] [int] NOT NULL,
	[FollowUpType] [varchar](50) NULL,
	[FollowUpDate] [datetime] NOT NULL,
	[HwRule] [int] NOT NULL,
	[HwRuleBitIndex] [int] NOT NULL,
	[IsProcessed] [bit] NOT NULL,
	[DeviceType] [int] NOT NULL,
	[DaysToReminder] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FollowUpReminders_temp_11_11]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FollowUpReminders_temp_11_11](
	[FollowUpReminderID] [int] IDENTITY(1,1) NOT NULL,
	[DeviceID] [int] NOT NULL,
	[PositionRecID] [int] NOT NULL,
	[FollowUpType] [varchar](50) NULL,
	[FollowUpDate] [datetime] NOT NULL,
	[HwRule] [int] NOT NULL,
	[HwRuleBitIndex] [int] NOT NULL,
	[IsProcessed] [bit] NOT NULL,
	[DeviceType] [int] NOT NULL,
	[DaysToReminder] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OffenderEventMetaData]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OffenderEventMetaData](
	[OffenderEventMetaDataID] [int] IDENTITY(1,1) NOT NULL,
	[OffenderEventID] [int] NOT NULL,
	[OffenderEventFieldID] [int] NOT NULL,
	[OffenderEventFieldValue] [nvarchar](1000) NULL,
	[LastModifiedUserRecID] [int] NULL,
	[LastModifiedTimeStamp] [datetime] NULL,
 CONSTRAINT [PK_OffenderEventMetaData] PRIMARY KEY CLUSTERED 
(
	[OffenderEventMetaDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OffenderEvents]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OffenderEvents](
	[OffenderEventID] [int] IDENTITY(1,1) NOT NULL,
	[DemographicID] [int] NOT NULL,
	[CreatedByUserRecID] [int] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[UtcTimestamp] [datetime] NOT NULL,
	[StoredTimestamp] [datetime] NOT NULL,
	[UtcStoredTimestamp] [datetime] NOT NULL,
	[RuleID] [int] NOT NULL,
	[OffenderEventTypeID] [int] NOT NULL,
	[LastModifiedUserRecID] [int] NULL,
	[LastModifiedTimeStamp] [datetime] NULL,
 CONSTRAINT [PK_OffenderEvents] PRIMARY KEY CLUSTERED 
(
	[OffenderEventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OffenderServiceEvents]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OffenderServiceEvents](
	[ServiceEventID] [int] IDENTITY(1,1) NOT NULL,
	[DemographicID] [int] NOT NULL,
	[RuleID] [int] NOT NULL,
	[ServiceEventTypeID] [int] NOT NULL,
	[ServiceCheckinResponseID] [int] NOT NULL,
	[CallServiceID] [varchar](50) NULL,
	[UtcEventTimeStamp] [datetime] NOT NULL,
	[StoredTimestamp] [datetime] NOT NULL,
	[UtcStoredTimestamp] [datetime] NOT NULL,
	[IsProcessed] [bit] NOT NULL,
	[EventStatus] [tinyint] NULL,
 CONSTRAINT [PK_OffenderServiceEvents] PRIMARY KEY CLUSTERED 
(
	[ServiceEventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Old_Report_EventParams]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Old_Report_EventParams](
	[EventParamRecID] [int] IDENTITY(1,1) NOT NULL,
	[EventTableLookupValue] [int] NOT NULL,
	[EventTableRecID] [int] NOT NULL,
	[ParameterTypeLookupValue] [int] NOT NULL,
	[ParameterValue] [varchar](50) NOT NULL,
	[EventTimestamp] [datetime] NULL,
 CONSTRAINT [PK_Report_EventParams] PRIMARY KEY CLUSTERED 
(
	[EventParamRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_AlcoholTests]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_AlcoholTests](
	[Report_AlcoholTestsID] [int] IDENTITY(1,1) NOT NULL,
	[DemographicID] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[StoredTimeStamp] [datetime] NOT NULL,
	[RuleStatus] [int] NOT NULL,
	[RuleID] [int] NOT NULL,
	[HwRuleBitIndex] [int] NOT NULL,
	[StandardTimeOffset] [smallint] NOT NULL,
	[DaylightTimeOffset] [smallint] NOT NULL,
	[EventStatus] [tinyint] NOT NULL,
	[OneTimeSchedID] [int] NULL,
	[AlcoholTestID] [int] NOT NULL,
	[PictureMatchHistoryID] [int] NULL,
	[MTDCallsRecID] [bigint] NULL,
 CONSTRAINT [PK_Report_AlcoholTests] PRIMARY KEY CLUSTERED 
(
	[Report_AlcoholTestsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_CAMAlerts]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_CAMAlerts](
	[Report_CAMAlertID] [int] IDENTITY(1,1) NOT NULL,
	[DemographicID] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[StoredTimeStamp] [datetime] NOT NULL,
	[RuleStatus] [int] NOT NULL,
	[RuleID] [int] NOT NULL,
	[HwRuleBitIndex] [int] NOT NULL,
	[StandardTimeOffset] [smallint] NOT NULL,
	[DaylightTimeOffset] [smallint] NOT NULL,
	[EventStatus] [tinyint] NOT NULL,
	[OneTimeSchedID] [int] NULL,
	[AlertID] [int] NOT NULL,
	[MTDCallsRecID] [bigint] NULL,
 CONSTRAINT [PK_Report_CAMAlert] PRIMARY KEY CLUSTERED 
(
	[Report_CAMAlertID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_EM_Positions]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_EM_Positions](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[DemographicID] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[StoredTimeStamp] [datetime] NOT NULL,
	[DeviceStatus] [int] NOT NULL,
	[CallRecID] [bigint] NOT NULL,
	[RuleStatus] [int] NOT NULL,
	[RuleID] [int] NOT NULL,
	[HwRule] [int] NOT NULL,
	[Processed] [char](1) NOT NULL,
	[StandardTimeOffset] [smallint] NOT NULL,
	[DaylightTimeOffset] [smallint] NOT NULL,
	[HardwareType] [smallint] NOT NULL,
	[OneTimeSchedID] [int] NULL,
	[EventStatus] [tinyint] NOT NULL,
	[HWRuleBitIndex] [int] NULL,
	[DeviceStatus2] [int] NULL,
	[PositionRecID] [bigint] NULL,
 CONSTRAINT [PK_Report_EM_Positions] PRIMARY KEY CLUSTERED 
(
	[RecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_EM_SummaryData]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_EM_SummaryData](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[StartRptRecID] [int] NOT NULL,
	[EndRptRecID] [int] NOT NULL,
 CONSTRAINT [PK_Report_EM_SummaryData] PRIMARY KEY CLUSTERED 
(
	[RecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_EventParams]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_EventParams](
	[EventParamRecID] [int] IDENTITY(1,1) NOT NULL,
	[EventTableLookupValue] [int] NOT NULL,
	[EventTableRecID] [bigint] NOT NULL,
	[ParameterTypeLookupValue] [int] NOT NULL,
	[ParameterValue] [varchar](50) NOT NULL,
	[EventTimestamp] [datetime] NULL,
 CONSTRAINT [PK_Report_EventParams_Hold] PRIMARY KEY CLUSTERED 
(
	[EventParamRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_Events]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_Events](
	[EventID] [bigint] IDENTITY(1,1) NOT NULL,
	[DeviceID] [int] NOT NULL,
	[HardwareTypeRecID] [int] NOT NULL,
	[DemographicID] [int] NOT NULL,
	[MTDCallsRecID] [bigint] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[HWRuleBitIndex] [int] NOT NULL,
	[StoredTimestamp] [datetime] NOT NULL,
 CONSTRAINT [PK__Events__7944C87039ECDAB9] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_MTD_SummaryData]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_MTD_SummaryData](
	[RecID] [bigint] IDENTITY(1,1) NOT NULL,
	[StartRptRecID] [bigint] NOT NULL,
	[EndRptRecID] [bigint] NOT NULL,
 CONSTRAINT [PK_Report_MTD_SummaryData] PRIMARY KEY CLUSTERED 
(
	[RecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_MTDPositions]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_MTDPositions](
	[RecID] [bigint] IDENTITY(1,1) NOT NULL,
	[DemographicID] [int] NOT NULL,
	[StoredTimeStamp] [datetime] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[RuleStatus] [int] NOT NULL,
	[RuleID] [int] NOT NULL,
	[StandardTimeOffset] [int] NOT NULL,
	[DaylightTimeOffset] [int] NOT NULL,
	[HardwareType] [int] NOT NULL,
	[MTDCallsRecID] [bigint] NULL,
	[OneTimeSchedID] [int] NULL,
	[DeviceStatus] [int] NULL,
	[HwRule] [int] NULL,
	[Processed] [char](1) NULL,
	[DeviceId] [int] NULL,
	[EventStatus] [tinyint] NULL,
	[ZoneRecID] [int] NULL,
	[HWRuleBitIndex] [int] NULL,
	[DeviceStatus2] [int] NULL,
	[PositionRecID] [bigint] NULL,
 CONSTRAINT [PK_Report_MTDPositions_1] PRIMARY KEY NONCLUSTERED 
(
	[RecID] ASC,
	[DemographicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_MTDPositions]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE CLUSTERED INDEX [IX_Report_MTDPositions] ON [dbo].[Report_MTDPositions]
(
	[DemographicID] ASC,
	[TimeStamp] ASC,
	[StandardTimeOffset] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_Positions]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_Positions](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[DemographicID] [int] NOT NULL,
	[StoredTimeStamp] [datetime] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[PointStatus] [int] NULL,
	[RuleStatus] [int] NULL,
	[RuleID] [int] NOT NULL,
	[StandardTimeOffset] [int] NOT NULL,
	[DaylightTimeOffset] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[OneTimeSchedID] [int] NULL,
	[DeviceStatus] [int] NULL,
	[HwRule] [int] NULL,
	[Processed] [char](1) NULL,
	[PTDId] [int] NULL,
	[EventStatus] [tinyint] NOT NULL,
 CONSTRAINT [PK_Report_Positions] PRIMARY KEY NONCLUSTERED 
(
	[RecID] ASC,
	[DemographicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_Positions]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE CLUSTERED INDEX [IX_Report_Positions] ON [dbo].[Report_Positions]
(
	[DemographicID] ASC,
	[TimeStamp] ASC,
	[StandardTimeOffset] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_SummaryData]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_SummaryData](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[StartRptRecID] [int] NOT NULL,
	[EndRptRecID] [int] NOT NULL,
 CONSTRAINT [PK_Report_SummaryData] PRIMARY KEY CLUSTERED 
(
	[RecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportEventLabels]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportEventLabels](
	[LevelNumber] [int] NOT NULL,
	[ReportLabel] [varchar](255) NOT NULL,
	[Abbreviation] [varchar](6) NOT NULL,
	[ReportLevelType] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reporting]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reporting](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[PoDemoID] [int] NULL,
	[DemographicID] [int] NULL,
	[TimeStamp] [datetime] NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[Speed] [smallint] NULL,
	[Heading] [smallint] NULL,
	[ValidGPS] [char](1) NULL,
	[MotionNoGPS] [char](1) NULL,
	[BraceletGone] [char](1) NULL,
	[BraceletStrap] [char](1) NULL,
	[InCharger] [char](1) NULL,
	[DeviceAtRest] [char](1) NULL,
	[PositionRecID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportList]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportList](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[ReportType] [varchar](20) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[ReportEnabled] [char](1) NOT NULL,
	[TimeZone] [int] NULL,
	[RunTime] [char](8) NOT NULL,
	[RunDays] [varchar](20) NULL,
	[LastRunTimestamp] [datetime] NULL,
 CONSTRAINT [PK_ReportList] PRIMARY KEY CLUSTERED 
(
	[RecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportOptions]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportOptions](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[OptionType] [int] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[DisplayText] [varchar](100) NOT NULL,
	[Value] [int] NOT NULL,
	[UserCreated] [varchar](500) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[UserUpdated] [varchar](500) NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[UserDeleted] [varchar](500) NULL,
	[DateDeleted] [datetime] NULL,
	[RowVersion] [timestamp] NOT NULL,
	[ReportLevelType] [int] NULL,
 CONSTRAINT [PK_ReportOptions] PRIMARY KEY NONCLUSTERED 
(
	[RecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportRecipients]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportRecipients](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerIDs] [varchar](120) NULL,
	[ContactID] [int] NULL,
	[ContactDemoId] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[PtdDvsr] [char](1) NOT NULL,
	[MtdDvsr] [char](1) NOT NULL,
	[EmDvsr] [char](1) NOT NULL,
	[ActiveMtdDvsr] [char](1) NOT NULL,
	[TimeZone] [int] NOT NULL,
	[Enabled] [char](1) NOT NULL,
	[ReportOptions] [int] NOT NULL,
	[UserCreated] [varchar](100) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[UserDeleted] [varchar](100) NULL,
	[DateDeleted] [datetime] NULL,
	[UserUpdated] [varchar](100) NOT NULL,
	[DateUpdated] [datetime] NULL,
	[RowVersion] [timestamp] NOT NULL,
	[TimeZoneId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportRequests]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportRequests](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[ReportScheduleRecID] [int] NOT NULL,
	[ReportDate] [datetime] NOT NULL,
	[ReportCount] [int] NOT NULL,
	[ReportsComplete] [int] NOT NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK_ReportRequests] PRIMARY KEY CLUSTERED 
(
	[RecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportSchedules]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportSchedules](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[ReportFile] [varchar](500) NOT NULL,
	[ReportType] [varchar](20) NOT NULL,
	[ReportLevelType] [int] NOT NULL,
	[ExportFormat] [varchar](10) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Internal] [bit] NOT NULL,
	[Recipients] [varchar](500) NOT NULL,
	[TimeZone] [int] NOT NULL,
	[ProTechOnly] [char](1) NOT NULL,
	[RunTime] [char](8) NOT NULL,
	[Interval] [char](1) NOT NULL,
	[LastRunTimestamp] [datetime] NULL,
	[ReportProcedure] [varchar](250) NULL,
	[OutputFilePrefix] [varchar](25) NOT NULL,
	[ReportTitle] [varchar](25) NOT NULL,
 CONSTRAINT [PK_ReportSchedules] PRIMARY KEY CLUSTERED 
(
	[RecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[RecID] [int] NOT NULL,
	[DemographicID] [int] NOT NULL,
	[StoredTimeStamp] [datetime] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[PointStatus] [int] NOT NULL,
	[RuleID] [int] NOT NULL,
	[StandardTimeOffset] [int] NOT NULL,
	[DaylightTimeOffset] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMARTReports]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMARTReports](
	[Column 0] [text] NULL,
	[Column 1] [varchar](50) NULL,
	[Column 2] [varchar](50) NULL,
	[Column 3] [varchar](50) NULL,
	[Column 4] [varchar](50) NULL,
	[Column 5] [varchar](50) NULL,
	[Column 6] [varchar](50) NULL,
	[Column 7] [varchar](50) NULL,
	[Column 8] [varchar](50) NULL,
	[Column 9] [varchar](50) NULL,
	[Column 10] [varchar](50) NULL,
	[Column 11] [varchar](50) NULL,
	[Column 12] [varchar](50) NULL,
	[Column 13] [varchar](50) NULL,
	[Column 14] [varchar](50) NULL,
	[Column 15] [varchar](50) NULL,
	[Column 16] [varchar](50) NULL,
	[Column 17] [varchar](50) NULL,
	[Column 18] [varchar](50) NULL,
	[Column 19] [varchar](50) NULL,
	[Column 20] [varchar](50) NULL,
	[Column 21] [varchar](50) NULL,
	[Column 22] [varchar](50) NULL,
	[Column 23] [varchar](50) NULL,
	[Column 24] [varchar](50) NULL,
	[Column 25] [varchar](50) NULL,
	[Column 26] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TmpAttachments]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmpAttachments](
	[ReportRequestId] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[Attachment] [varchar](max) NOT NULL,
	[ContactType] [char](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_TmpAttachments]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE CLUSTERED INDEX [IX_TmpAttachments] ON [dbo].[TmpAttachments]
(
	[ReportRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TmpStore]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmpStore](
	[RecID] [int] IDENTITY(1,1) NOT NULL,
	[CustID] [int] NULL,
	[Organization] [char](100) NULL,
	[DemoID] [int] NULL,
	[Offender] [char](50) NULL,
	[GmtStart] [datetime] NULL,
	[GmtEnd] [datetime] NULL,
	[Duration] [char](10) NULL,
	[UnitType] [char](1) NOT NULL,
 CONSTRAINT [PK_TmpStore_1] PRIMARY KEY NONCLUSTERED 
(
	[RecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[version_info]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[version_info](
	[Key] [int] IDENTITY(1,1) NOT NULL,
	[ProductVersion] [varchar](50) NOT NULL,
	[SchemaVersion] [varchar](25) NOT NULL,
	[SubSystem] [varchar](50) NOT NULL,
	[User] [varchar](512) NOT NULL,
	[InstallDate] [datetime] NOT NULL,
	[BuildDate] [datetime] NOT NULL,
	[Description] [varchar](512) NOT NULL,
	[UtilityInfo] [varchar](512) NOT NULL,
 CONSTRAINT [PK_version_info] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_version_info] UNIQUE NONCLUSTERED 
(
	[SchemaVersion] ASC,
	[SubSystem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViolationByType]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViolationByType](
	[DateSent] [datetime] NULL,
	[OrganizationName] [nvarchar](255) NULL,
	[OffenderLastName] [nvarchar](255) NULL,
	[OffenderFirstName] [nvarchar](255) NULL,
	[RuleName] [nvarchar](255) NULL,
	[RuleType] [nvarchar](255) NULL,
	[HWRule] [float] NULL,
	[RuleStatus] [float] NULL,
	[HardwareType] [float] NULL,
	[DemographicID] [float] NULL,
	[DeviceStatus] [float] NULL,
	[ID1] [nvarchar](255) NULL,
	[ID2] [nvarchar](255) NULL,
	[CustomID1Label] [nvarchar](255) NULL,
	[CustomID2Label] [nvarchar](255) NULL,
	[StandardTimeOffset] [float] NULL,
	[DaylightTimeOffset] [float] NULL,
	[RuleOptions] [float] NULL,
	[OfficerFirstName] [nvarchar](255) NULL,
	[OfficerLastName] [nvarchar](255) NULL,
	[Timestamp] [datetime] NULL,
	[DeviceID] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_UserRecID]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IDX_UserRecID] ON [dbo].[CaseMgmtEventLocks]
(
	[UserRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CaseMgmtNotes_EvenTableName_Include]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_CaseMgmtNotes_EvenTableName_Include] ON [dbo].[CaseMgmtNotes]
(
	[EventTableName] ASC
)
INCLUDE([NoteRecID],[EventTableRecID],[NoteTimestamp],[NoteStatus],[Note]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CaseMgmtNotes_EventTableRecId]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_CaseMgmtNotes_EventTableRecId] ON [dbo].[CaseMgmtNotes]
(
	[EventTableRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 15) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CaseMgmtNotes_EventTableRecId_EventTableName]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_CaseMgmtNotes_EventTableRecId_EventTableName] ON [dbo].[CaseMgmtNotes]
(
	[EventTableRecID] ASC,
	[EventTableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CaseMgmtNotes_EventTableRecId_EventTableName_NoteStatus]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_CaseMgmtNotes_EventTableRecId_EventTableName_NoteStatus] ON [dbo].[CaseMgmtNotes]
(
	[EventTableRecID] ASC,
	[EventTableName] ASC,
	[NoteStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CaseMgmtNotes_UserRecId_Includes]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_CaseMgmtNotes_UserRecId_Includes] ON [dbo].[CaseMgmtNotes]
(
	[UserRecID] ASC
)
INCLUDE([EventTableName],[EventTableRecID],[NoteTimestamp]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 15) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EventTblName_NoteTimeStamp]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_EventTblName_NoteTimeStamp] ON [dbo].[CaseMgmtNotes]
(
	[EventTableName] ASC,
	[NoteTimestamp] ASC
)
INCLUDE([NoteRecID],[EventTableRecID],[UserRecID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
GO
/****** Object:  Index [IX_CaseNoteEmailNotes_NoteRecID]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_CaseNoteEmailNotes_NoteRecID] ON [dbo].[CaseNoteEmailNotes]
(
	[NoteRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RuleID_Utc_Incl]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_RuleID_Utc_Incl] ON [dbo].[OffenderServiceEvents]
(
	[RuleID] ASC,
	[UtcEventTimeStamp] ASC
)
INCLUDE([ServiceEventID],[DemographicID],[ServiceCheckinResponseID],[EventStatus]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UtcEventTimeStamp_All]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_UtcEventTimeStamp_All] ON [dbo].[OffenderServiceEvents]
(
	[UtcEventTimeStamp] ASC
)
INCLUDE([ServiceEventID],[DemographicID],[RuleID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_EventParams_EventTableLookupValue_EventTableRecID]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_EventParams_EventTableLookupValue_EventTableRecID] ON [dbo].[Old_Report_EventParams]
(
	[EventTableLookupValue] ASC,
	[EventTableRecID] ASC
)
INCLUDE([ParameterTypeLookupValue],[ParameterValue]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_EventParams_EventTableLookupValue_EventTableRecID_Hold]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_EventParams_EventTableLookupValue_EventTableRecID_Hold] ON [dbo].[Old_Report_EventParams]
(
	[EventTableLookupValue] ASC,
	[EventTableRecID] ASC
)
INCLUDE([ParameterTypeLookupValue],[ParameterValue]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NCIDX_Report_EventParams_EventTableLookupValue_ParameterTypeLookupValue]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [NCIDX_Report_EventParams_EventTableLookupValue_ParameterTypeLookupValue] ON [dbo].[Old_Report_EventParams]
(
	[EventTableLookupValue] ASC,
	[ParameterTypeLookupValue] ASC
)
INCLUDE([EventTableRecID],[ParameterValue]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NCIDX_Report_EventParams_EventTableLookupValue_ParameterTypeLookupValue_Hold]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [NCIDX_Report_EventParams_EventTableLookupValue_ParameterTypeLookupValue_Hold] ON [dbo].[Old_Report_EventParams]
(
	[EventTableLookupValue] ASC,
	[ParameterTypeLookupValue] ASC
)
INCLUDE([EventTableRecID],[ParameterValue]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_AlcoholTests_DemographicID_TimeStamp_INCLUDE]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_AlcoholTests_DemographicID_TimeStamp_INCLUDE] ON [dbo].[Report_AlcoholTests]
(
	[DemographicID] ASC,
	[TimeStamp] ASC
)
INCLUDE([Report_AlcoholTestsID],[DeviceID],[StoredTimeStamp],[RuleStatus],[RuleID],[HwRuleBitIndex],[EventStatus],[AlcoholTestID],[PictureMatchHistoryID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_AlcoholTests_Include]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_AlcoholTests_Include] ON [dbo].[Report_AlcoholTests]
(
	[TimeStamp] ASC
)
INCLUDE([Report_AlcoholTestsID],[DemographicID],[DeviceID],[StoredTimeStamp],[RuleStatus],[RuleID],[HwRuleBitIndex],[EventStatus],[AlcoholTestID],[PictureMatchHistoryID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_ReportEmPositions_Processed]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IDX_ReportEmPositions_Processed] ON [dbo].[Report_EM_Positions]
(
	[Processed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_ReportEmPositions_StoredTimeStamp]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IDX_ReportEmPositions_StoredTimeStamp] ON [dbo].[Report_EM_Positions]
(
	[StoredTimeStamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecIDRuleIDDemoIDTimeStamp]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_RecIDRuleIDDemoIDTimeStamp] ON [dbo].[Report_EM_Positions]
(
	[RecID] ASC,
	[RuleID] ASC,
	[DemographicID] ASC,
	[TimeStamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_EM_Positions_DemographicId_Timestamp]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_EM_Positions_DemographicId_Timestamp] ON [dbo].[Report_EM_Positions]
(
	[DemographicID] ASC,
	[TimeStamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 15) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_EM_Positions_HwRuleBitIndex_Include]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_EM_Positions_HwRuleBitIndex_Include] ON [dbo].[Report_EM_Positions]
(
	[HWRuleBitIndex] ASC
)
INCLUDE([RecID],[DemographicID],[DeviceID],[TimeStamp],[StoredTimeStamp],[DeviceStatus],[RuleStatus],[RuleID],[HwRule],[HardwareType]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_EM_Positions_HwRuleTimeStamp]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_EM_Positions_HwRuleTimeStamp] ON [dbo].[Report_EM_Positions]
(
	[HwRule] ASC,
	[TimeStamp] ASC
)
INCLUDE([DemographicID],[RuleStatus],[RuleID],[StandardTimeOffset],[DaylightTimeOffset]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TimeStamp_Include]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_TimeStamp_Include] ON [dbo].[Report_EM_Positions]
(
	[TimeStamp] ASC
)
INCLUDE([RecID],[DemographicID],[DeviceID],[StoredTimeStamp],[DeviceStatus],[RuleStatus],[RuleID],[HardwareType]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_EM_SummaryData_EndRptRecID]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_EM_SummaryData_EndRptRecID] ON [dbo].[Report_EM_SummaryData]
(
	[EndRptRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_EM_SummaryData_StartRptRecID]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_EM_SummaryData_StartRptRecID] ON [dbo].[Report_EM_SummaryData]
(
	[StartRptRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_EventParams_EventTableLookupValue_EventTableRecID]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_EventParams_EventTableLookupValue_EventTableRecID] ON [dbo].[Report_EventParams]
(
	[EventTableLookupValue] ASC,
	[EventTableRecID] ASC
)
INCLUDE([ParameterTypeLookupValue],[ParameterValue]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NCIDX_Report_EventParams_EventTableLookupValue_ParameterTypeLookupValue]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [NCIDX_Report_EventParams_EventTableLookupValue_ParameterTypeLookupValue] ON [dbo].[Report_EventParams]
(
	[EventTableLookupValue] ASC,
	[ParameterTypeLookupValue] ASC
)
INCLUDE([EventTableRecID],[ParameterValue]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_MTD_SummaryData_EndRptRecID]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_MTD_SummaryData_EndRptRecID] ON [dbo].[Report_MTD_SummaryData]
(
	[EndRptRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_MTD_SummaryData_StartRptRecID]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_MTD_SummaryData_StartRptRecID] ON [dbo].[Report_MTD_SummaryData]
(
	[StartRptRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Start_EndRecID]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [Start_EndRecID] ON [dbo].[Report_MTD_SummaryData]
(
	[StartRptRecID] ASC,
	[EndRptRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_MTD_Positions_HardwareType_DeviceId_HWRule]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [idx_MTD_Positions_HardwareType_DeviceId_HWRule] ON [dbo].[Report_MTDPositions]
(
	[HardwareType] ASC,
	[HwRule] ASC,
	[DeviceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_Report_MTDPositions_RRDIDs]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IDX_Report_MTDPositions_RRDIDs] ON [dbo].[Report_MTDPositions]
(
	[RuleID] ASC,
	[RecID] ASC,
	[DemographicID] ASC
)
INCLUDE([TimeStamp],[RuleStatus],[HardwareType],[DeviceStatus],[DeviceId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_Report_MTDPositions_StoredTimeStamp]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IDX_Report_MTDPositions_StoredTimeStamp] ON [dbo].[Report_MTDPositions]
(
	[StoredTimeStamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_Report_MTDPositions_TimeStampDemoIDRuleID]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IDX_Report_MTDPositions_TimeStampDemoIDRuleID] ON [dbo].[Report_MTDPositions]
(
	[TimeStamp] ASC,
	[DemographicID] ASC,
	[RuleID] ASC
)
INCLUDE([RuleStatus],[HardwareType],[DeviceStatus]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_MTDPositions_1]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_MTDPositions_1] ON [dbo].[Report_MTDPositions]
(
	[TimeStamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_MTDPositions_3]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_MTDPositions_3] ON [dbo].[Report_MTDPositions]
(
	[TimeStamp] ASC,
	[RuleStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_MTDPositions_4]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_MTDPositions_4] ON [dbo].[Report_MTDPositions]
(
	[DemographicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Report_MTDPositions_Processed]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_MTDPositions_Processed] ON [dbo].[Report_MTDPositions]
(
	[Processed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 85) ON [PRIMARY]
GO
/****** Object:  Index [PK_Report_MTDPositions]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PK_Report_MTDPositions] ON [dbo].[Report_MTDPositions]
(
	[RecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_Positions_2]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_Positions_2] ON [dbo].[Report_Positions]
(
	[TimeStamp] ASC,
	[RuleStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TimeStamp]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_TimeStamp] ON [dbo].[Report_Positions]
(
	[TimeStamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_SummaryData_EndRptRecID]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_SummaryData_EndRptRecID] ON [dbo].[Report_SummaryData]
(
	[EndRptRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_SummaryData_StartRptRecID]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_SummaryData_StartRptRecID] ON [dbo].[Report_SummaryData]
(
	[StartRptRecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reporting]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Reporting] ON [dbo].[Reporting]
(
	[TimeStamp] ASC,
	[Longitude] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reporting_1]    Script Date: 9/3/2025 6:46:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Reporting_1] ON [dbo].[Reporting]
(
	[TimeStamp] ASC,
	[Latitude] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CaseMgmtAutoRecallSettings] ADD  CONSTRAINT [DF_CaseMgmtAutoRecallSettings_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[CaseMgmtNotes] ADD  CONSTRAINT [DF_CaseMgmtNotes_IsPinned]  DEFAULT ((0)) FOR [IsPinned]
GO
ALTER TABLE [dbo].[CaseNoteStatusDescriptions] ADD  CONSTRAINT [DF_CaseNoteStatusDescriptions_DisplayFlags]  DEFAULT ((0)) FOR [DisplayFlags]
GO
ALTER TABLE [dbo].[FollowUpReminders] ADD  DEFAULT ((0)) FOR [HwRule]
GO
ALTER TABLE [dbo].[FollowUpReminders] ADD  DEFAULT ((0)) FOR [HwRuleBitIndex]
GO
ALTER TABLE [dbo].[FollowUpReminders] ADD  DEFAULT ((0)) FOR [IsProcessed]
GO
ALTER TABLE [dbo].[FollowUpReminders] ADD  DEFAULT ((0)) FOR [DeviceType]
GO
ALTER TABLE [dbo].[OffenderEventMetaData] ADD  CONSTRAINT [DF_OffenderEventMetaData_LastModifiedTimeStamp]  DEFAULT (getdate()) FOR [LastModifiedTimeStamp]
GO
ALTER TABLE [dbo].[OffenderEvents] ADD  CONSTRAINT [DF_OffenderEvents_StoredTimestamp]  DEFAULT (getdate()) FOR [StoredTimestamp]
GO
ALTER TABLE [dbo].[OffenderEvents] ADD  CONSTRAINT [DF_OffenderEvents_UtcStoredTimestamp]  DEFAULT (getutcdate()) FOR [UtcStoredTimestamp]
GO
ALTER TABLE [dbo].[OffenderEvents] ADD  CONSTRAINT [DF_OffenderEvents_LastModifiedTimeStamp]  DEFAULT (getdate()) FOR [LastModifiedTimeStamp]
GO
ALTER TABLE [dbo].[OffenderServiceEvents] ADD  CONSTRAINT [DF_OffenderServiceEvents_UTCEventTimeStamp]  DEFAULT (getutcdate()) FOR [UtcEventTimeStamp]
GO
ALTER TABLE [dbo].[OffenderServiceEvents] ADD  CONSTRAINT [DF_OffenderServiceEvents_IsProcessed]  DEFAULT ((0)) FOR [IsProcessed]
GO
ALTER TABLE [dbo].[Report_AlcoholTests] ADD  CONSTRAINT [DF_Report_AlcoholTests_StoredTimeStamp]  DEFAULT (getdate()) FOR [StoredTimeStamp]
GO
ALTER TABLE [dbo].[Report_AlcoholTests] ADD  CONSTRAINT [DF_Report_AlcoholTests_EventStatus]  DEFAULT ((0)) FOR [EventStatus]
GO
ALTER TABLE [dbo].[Report_EM_Positions] ADD  CONSTRAINT [DF_Report_EM_Positions_StoredTimeStamp]  DEFAULT (getdate()) FOR [StoredTimeStamp]
GO
ALTER TABLE [dbo].[Report_EM_Positions] ADD  CONSTRAINT [DF_Report_EM_Positions_DeviceStatus]  DEFAULT ((0)) FOR [DeviceStatus]
GO
ALTER TABLE [dbo].[Report_EM_Positions] ADD  CONSTRAINT [DF_Report_EM_Positions_HwRule]  DEFAULT ((0)) FOR [HwRule]
GO
ALTER TABLE [dbo].[Report_EM_Positions] ADD  CONSTRAINT [DF_Report_EM_Positions_Processed]  DEFAULT ('N') FOR [Processed]
GO
ALTER TABLE [dbo].[Report_EM_Positions] ADD  CONSTRAINT [DF_Report_EM_Positions_StandardTimeOffset]  DEFAULT ((0)) FOR [StandardTimeOffset]
GO
ALTER TABLE [dbo].[Report_EM_Positions] ADD  CONSTRAINT [DF_Report_EM_Positions_DaylightTimeOffset]  DEFAULT ((0)) FOR [DaylightTimeOffset]
GO
ALTER TABLE [dbo].[Report_EM_Positions] ADD  CONSTRAINT [DF_Report_EM_Positions_HardwareType]  DEFAULT ((30)) FOR [HardwareType]
GO
ALTER TABLE [dbo].[Report_EM_Positions] ADD  CONSTRAINT [DF_Report_EM_Positions_EventStatus]  DEFAULT ((0)) FOR [EventStatus]
GO
ALTER TABLE [dbo].[Report_Events] ADD  CONSTRAINT [DF__Events__StoredTi__5CF6C6BC]  DEFAULT (getdate()) FOR [StoredTimestamp]
GO
ALTER TABLE [dbo].[Report_MTDPositions] ADD  CONSTRAINT [DF_Report_MTDPositions_StoredTimeStamp]  DEFAULT (getdate()) FOR [StoredTimeStamp]
GO
ALTER TABLE [dbo].[Report_MTDPositions] ADD  CONSTRAINT [DF_Report_MTDPositions_StandardTimeOffset]  DEFAULT ((-300)) FOR [StandardTimeOffset]
GO
ALTER TABLE [dbo].[Report_MTDPositions] ADD  CONSTRAINT [DF_Report_MTDPositions_DaylightTimeOffset]  DEFAULT ((-240)) FOR [DaylightTimeOffset]
GO
ALTER TABLE [dbo].[Report_MTDPositions] ADD  CONSTRAINT [DF_Report_MTDPositions_MTDCallsRecID]  DEFAULT ((0)) FOR [MTDCallsRecID]
GO
ALTER TABLE [dbo].[Report_MTDPositions] ADD  CONSTRAINT [DF_Report_MTDPositions_OneTimeSchedID]  DEFAULT ((0)) FOR [OneTimeSchedID]
GO
ALTER TABLE [dbo].[Report_MTDPositions] ADD  CONSTRAINT [DF_Report_MTDPositions_DeviceStatus]  DEFAULT ((0)) FOR [DeviceStatus]
GO
ALTER TABLE [dbo].[Report_MTDPositions] ADD  CONSTRAINT [DF_Report_MTDPositions_HwRule]  DEFAULT ((0)) FOR [HwRule]
GO
ALTER TABLE [dbo].[Report_MTDPositions] ADD  CONSTRAINT [DF_Report_MTDPositions_Processed]  DEFAULT ('N') FOR [Processed]
GO
ALTER TABLE [dbo].[Report_MTDPositions] ADD  CONSTRAINT [DF_Report_MTDPositions_DeviceId]  DEFAULT ((0)) FOR [DeviceId]
GO
ALTER TABLE [dbo].[Report_MTDPositions] ADD  CONSTRAINT [DF_Report_MTDPositions_EventStatus]  DEFAULT ((0)) FOR [EventStatus]
GO
ALTER TABLE [dbo].[Report_Positions] ADD  CONSTRAINT [DF_Report_Positions_StoredTimeStamp]  DEFAULT (getdate()) FOR [StoredTimeStamp]
GO
ALTER TABLE [dbo].[Report_Positions] ADD  CONSTRAINT [DF_Report_Positions_RuleID]  DEFAULT (0) FOR [RuleID]
GO
ALTER TABLE [dbo].[Report_Positions] ADD  CONSTRAINT [DF_Report_Positions_StandardTimeOffset]  DEFAULT ((-300)) FOR [StandardTimeOffset]
GO
ALTER TABLE [dbo].[Report_Positions] ADD  CONSTRAINT [DF_Report_Positions_DaylightTimeOffset]  DEFAULT ((-240)) FOR [DaylightTimeOffset]
GO
ALTER TABLE [dbo].[Report_Positions] ADD  CONSTRAINT [DF_Report_Positions_Processed]  DEFAULT ('N') FOR [Processed]
GO
ALTER TABLE [dbo].[Report_Positions] ADD  CONSTRAINT [DF_Report_Positions_EventStatus]  DEFAULT ((0)) FOR [EventStatus]
GO
ALTER TABLE [dbo].[ReportList] ADD  CONSTRAINT [DF_ReportList_ReportEnabled_1]  DEFAULT ('Y') FOR [ReportEnabled]
GO
ALTER TABLE [dbo].[ReportOptions] ADD  DEFAULT (suser_sname()) FOR [UserCreated]
GO
ALTER TABLE [dbo].[ReportOptions] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[ReportOptions] ADD  DEFAULT (suser_sname()) FOR [UserUpdated]
GO
ALTER TABLE [dbo].[ReportOptions] ADD  DEFAULT (getdate()) FOR [DateUpdated]
GO
ALTER TABLE [dbo].[ReportOptions] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ReportRecipients] ADD  CONSTRAINT [DF_ReportRecipients_PtdDvsr]  DEFAULT ('N') FOR [PtdDvsr]
GO
ALTER TABLE [dbo].[ReportRecipients] ADD  CONSTRAINT [DF_ReportRecipients_MtdDvsr]  DEFAULT ('N') FOR [MtdDvsr]
GO
ALTER TABLE [dbo].[ReportRecipients] ADD  CONSTRAINT [DF_ReportRecipients_EmDvsr]  DEFAULT ('N') FOR [EmDvsr]
GO
ALTER TABLE [dbo].[ReportRecipients] ADD  CONSTRAINT [DF_ReportRecipients_ActiveMtdDvsr]  DEFAULT ('N') FOR [ActiveMtdDvsr]
GO
ALTER TABLE [dbo].[ReportRecipients] ADD  CONSTRAINT [DF_ReportRecipients_Enabled]  DEFAULT ('Y') FOR [Enabled]
GO
ALTER TABLE [dbo].[ReportRecipients] ADD  CONSTRAINT [DF_ReportRecipients_ReportOptions]  DEFAULT ((0)) FOR [ReportOptions]
GO
ALTER TABLE [dbo].[ReportRecipients] ADD  DEFAULT ('CBMSUser') FOR [UserCreated]
GO
ALTER TABLE [dbo].[ReportRecipients] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[ReportRecipients] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ReportRecipients] ADD  DEFAULT ('CBMSUSER') FOR [UserUpdated]
GO
ALTER TABLE [dbo].[ReportRecipients] ADD  DEFAULT (getdate()) FOR [DateUpdated]
GO
ALTER TABLE [dbo].[ReportRequests] ADD  DEFAULT ((0)) FOR [ReportsComplete]
GO
ALTER TABLE [dbo].[ReportRequests] ADD  DEFAULT ((0)) FOR [CustomerID]
GO
ALTER TABLE [dbo].[OffenderEventMetaData]  WITH CHECK ADD  CONSTRAINT [FK_OffenderEventMetaData_OffenderEvents] FOREIGN KEY([OffenderEventID])
REFERENCES [dbo].[OffenderEvents] ([OffenderEventID])
GO
ALTER TABLE [dbo].[OffenderEventMetaData] CHECK CONSTRAINT [FK_OffenderEventMetaData_OffenderEvents]
GO
/****** Object:  StoredProcedure [dbo].[asp_Violations_ByDemographicId_StartDate_EndDate]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[asp_Violations_ByDemographicId_StartDate_EndDate]
@DemographicId int,
@StartDate datetime,
@EndDate datetime,
@TimeZone int,
@DateRun datetime
AS

--DECLARE @EndRunDate datetime
--SET @EndRunDate = DateAdd(hh, 24 + ((-300 * -1) / 60) + 1, @DateRun)

SELECT C.CustomerID, 'BlankRecord' = 'N', PoName=RTRIM(PO.LastName)+', '+RTRIM(PO.FirstName), 
	OffenderName=RTRIM(D.Lastname)+', '+RTRIM(D.FirstName),
           	C.OrganizationName, D.StandardTimeOffset, D.DaylightTimeOffset, O.PtdID, O.BraceletID, O.ChargingStandID1,
           	R.RuleName, R.RuleID, R.RuleType, R.TimeGrid, DeviceID=O.PtdID, P.RuleID, P.HwRule, P.HardwareType, 
	VioTimestamp=CONVERT(Datetime, P.VioTimestamp), ClrTimestamp=CONVERT(Datetime, P.ClrTimestamp), 
	VioRuleStatus=CONVERT(Int, P.VioRuleStatus), ClrRuleStatus=CONVERT(Int, P.ClrRuleStatus), P.RecID, P.EndRptRecID,
	P.VioStoredTimestamp, P.ClrStoredTimestamp, 
	'CustomID1Label' = NULL, 'CustomID1String' = NULL, 'CustomID2Label' = NULL, 'CustomID2String' = NULL, 
	'OffenderAddress' = NULL, 'OffenderCity' = NULL, 'OffenderState' = NULL, 'OffenderZipCode' = NULL, 'OffenderPhone' = NULL
FROM (SELECT V.RecID, V.DemographicID, V.RuleID, V.HwRule, 'HardwareType' = 1, S.EndRptRecID, 
		'VioTimestamp' = V.TimeStamp, 'VioRuleStatus' = V.RuleStatus, 'VioStoredTimestamp' = V.StoredTimeStamp, 
		'ClrTimestamp' = NULL, 'ClrRuleStatus' = NULL, 'ClrStoredTimeStamp' = NULL
		FROM Report_SummaryData As S WITH(INDEX(IX_Report_SummaryData_EndRptRecID), NOLOCK)
		JOIN Report_Positions As V WITH(INDEX(PK_Report_Positions), NOLOCK) ON V.RecID = S.StartRptRecID
		WHERE S.EndRptRecID = 0

		UNION ALL

 		SELECT V.RecID, V.DemographicID, V.RuleID, V.HwRule, 'HardwareType' = 1, S.EndRptRecID, 
		'VioTimestamp' = V.TimeStamp, 'VioRuleStatus' = V.RuleStatus, 'VioStoredTimestamp' = V.StoredTimeStamp, 
		'ClrTimestamp' = C.TimeStamp, 'ClrRuleStatus' = C.RuleStatus, 'ClrStoredTimeStamp' = C.StoredTimeStamp
		FROM Report_Positions As C WITH(INDEX(IDX_Report_Positions_StoredTimeStamp), NOLOCK)
		JOIN Report_SummaryData As S WITH(INDEX(IX_Report_SummaryData_EndRptRecID), NOLOCK) ON S.EndRptRecID = C.RecID
 		JOIN Report_Positions As V WITH(INDEX(PK_Report_Positions), NOLOCK) ON V.RecID = S.StartRptRecID
 		WHERE C.StoredTimeStamp >= @DateRun 
	    ) AS P 
	    
LEFT OUTER JOIN Protech..Rules AS R (NOLOCK) ON R.RuleID = P.RuleID, 
        Protech..Demographics AS D, 
        Protech..Customers AS C, 
        Protech..Offenders AS O 
LEFT OUTER JOIN Protech..Demographics AS PO (NOLOCK) ON PO.DemographicID = O.PoDemoID 
    WHERE P.RuleID > 0 
    AND D.DemographicID = P.DemographicID 
    --AND D.StandardTimeOffset = @TimeZone
    AND O.DemographicID = D.DemographicID 
    --AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
    AND C.CustomerID = D.CustomerID 
    AND D.DemographicId=@DemographicId
    --AND ((@List <> '' AND C.CustomerID IN (SELECT Results FROM #PTD_SplitResults)) OR (@List = ''))
and P.VioStoredTimeStamp Between @StartDate and @EndDate
--ORDER BY C.CustomerID, OffenderName, VioTimestamp, RecID
Order By VioTimeStamp
GO
/****** Object:  StoredProcedure [dbo].[cbms_CaseNoteStatusDescriptions_GetListing]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[cbms_CaseNoteStatusDescriptions_GetListing]
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT
		NoteStatusID, [Description], DisplayFlags
	FROM CaseNoteStatusDescriptions WITH(NOLOCK)
	WHERE (DisplayFlags & 1) = 0
END
GO
/****** Object:  StoredProcedure [dbo].[cbms_ReportOptions_GetListing]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--=============================================================================
-- Procedure Name: [cbms_ReportOptions_GetListing]
-- Description...: 
-- Author........: Carla Gibson
-- Date Created..: 2016-07-20
-------------------------------------------------------------------------------
-- Revisions
--	2016-07-20 - CG - Initial procedure created.
--=============================================================================

CREATE PROCEDURE [dbo].[cbms_ReportOptions_GetListing]
	
AS

SELECT *
FROM ReportOptions WITH(NOLOCK)


GO
/****** Object:  StoredProcedure [dbo].[cbms_ReportRecipients_Delete]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--=============================================================================
-- Procedure Name: cbms_ReportRecipients_Delete
-- Description...: Logically deletes the specified ReportRecipients record.
-- Author........: Phillip R. Hickman
-- Date Created..: 2016-08-22
-------------------------------------------------------------------------------
-- Revisions
--	2016-08-22 - PRH - Initial script created.
--=============================================================================
CREATE PROC [dbo].[cbms_ReportRecipients_Delete]
	@RecID		INT,
	@UserName	VARCHAR(100)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE	ReportRecipients
	SET		[Enabled] = 'N',
			IsDeleted = 1,
			UserDeleted = @UserName,
			DateDeleted = GETDATE()
	WHERE	RecID = @RecID
END
GO
/****** Object:  StoredProcedure [dbo].[cbms_ReportRecipients_InsertUpdate]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--=============================================================================
-- Procedure Name: cbms_ReportRecipients_InsertUpdate
-- Description...: Inserts/updates a new/existing ReportRecipients record.
-- Author........: Phillip R. Hickman
-- Date Created..: 2016-08-22
-------------------------------------------------------------------------------
-- Revisions
--	2016-08-22 - PRH - Initial procedure created.
--=============================================================================
CREATE PROC [dbo].[cbms_ReportRecipients_InsertUpdate]
	@RecID			INT OUT,
	@ContactDemoId	INT,
	@CustomerID		INT,
	@TimeZone		INT,
	@Enabled		CHAR(1),	
	@ReportOptions	INT,
	@TimeZoneID		INT,
	@UserName		VARCHAR(100),
	@DateUpdatedOUT	DATETIME OUT,
	@RowVersion		TIMESTAMP = NULL OUT,
	@ForceUpdate	BIT = 0
AS
BEGIN
	DECLARE @TheDate DATETIME = GETDATE()

	SET @DateUpdatedOUT = @TheDate

	SET NOCOUNT ON

	IF EXISTS(SELECT RecID FROM ReportRecipients (NOLOCK) WHERE RecID = @RecID)
	BEGIN
		UPDATE	ReportRecipients
		SET		
				--ContactDemoId	= @ContactDemoId,  -- These fields cannot be updated
				--CustomerID	= @CustomerID,
				--TimeZone		= @TimeZone,
				[Enabled]		= @Enabled,
				ReportOptions	= @ReportOptions,
				UserUpdated		= @UserName,
				DateUpdated		= @TheDate
		WHERE	RecID = @RecID
		AND		([RowVersion] = @RowVersion OR @ForceUpdate = 1)

		IF @@ROWCOUNT <> 0
		BEGIN
			SET @RowVersion = (SELECT [RowVersion] FROM ReportRecipients (NOLOCK) WHERE RecID = @RecID)
		END
		ELSE
		BEGIN
			DECLARE @OtherDateUpdated	VARCHAR(20)
			DECLARE @OtherUserUpdated	VARCHAR(100)
			DECLARE @XMLStuff			VARCHAR(1000)

			--
			--	Get the information about the user that committed changes first.
			--	If the record has since been deleted, these values are still null.
			--
			SELECT	@OtherDateUpdated = ISNULL(CAST([DateUpdated] AS VARCHAR(20)), ''),
					@OtherUserUpdated = ISNULL(CAST([UserUpdated] AS VARCHAR(100)), '')
			FROM	ReportRecipients (NOLOCK)
			WHERE	RecID = @RecID

			SET @XMLStuff = '<ConcurrencyError><DateUpdated>' + @OtherDateUpdated + '</DateUpdated><UserUpdated>' + @OtherUserUpdated + '</UserUpdated></ConcurrencyError>'

			RAISERROR('%s', 18, 1, @XMLStuff)
		END
	END
	ELSE
	BEGIN
		
		SET @TimeZone = (SELECT StandardTimeOffset FROM Protech..TimeZones (NOLOCK) WHERE TimeZoneId = @TimeZoneID)

		INSERT INTO ReportRecipients
		(
			ContactDemoId,
			CustomerID,
			TimeZone,
			[Enabled],
			ReportOptions,
			TimeZoneId,

			UserCreated,
			DateCreated,
			UserUpdated,
			DateUpdated
		)
		VALUES
		(
			@ContactDemoId,
			@CustomerID,
			@TimeZone,
			@Enabled,
			@ReportOptions,
			@TimeZoneId,

			@UserName,
			@TheDate,
			@UserName,
			@TheDate
		)

		SET @RecID = SCOPE_IDENTITY()

		--
		--	Send back the updated RowVersion.
		--
		SET @RowVersion = (SELECT [RowVersion] FROM ReportRecipients (NOLOCK) WHERE RecID = @RecID)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[cbms_ReportRecipients_Select]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--=============================================================================
-- Procedure Name: cbms_ReportRecipients_Select
-- Description...: Selects the specified ReportRecipient record.
-- Author........: Phillip R. Hickman
-- Date Created..: 2016-08-23
-------------------------------------------------------------------------------
-- Revisions
--	2016-08-23 - PRH - Initial procedure created.
--=============================================================================
CREATE PROC [dbo].[cbms_ReportRecipients_Select]
	@RecID	INT
AS
BEGIN
	SET NOCOUNT ON

	SELECT	RR.RecID,
			RR.ContactDemoId,
			RR.CustomerID,
			RR.TimeZone,
			RR.[Enabled],
			RR.ReportOptions,
			RR.TimeZoneID,
			RR.UserCreated,
			RR.DateCreated,
			RR.UserDeleted,
			RR.DateDeleted,
			RR.UserUpdated,
			RR.DateUpdated,
			RR.[RowVersion],
			C.RegionID,
			C.ContractID
	FROM	dbo.ReportRecipients RR (NOLOCK)
	JOIN	Protech.dbo.Customers C (NOLOCK) ON C.CustomerID = RR.CustomerID
	JOIN	Protech.dbo.Regions R (NOLOCK) ON C.RegionID = R.RegionID
	JOIN	Protech.dbo.Contracts Con (NOLOCK) ON C.ContractID = Con.ContractID
	WHERE	RecID = @RecID
	AND		C.[Enabled] = 'Y'
	AND		R.[Enabled] = 'Y'
	AND		Con.[Enabled] = 'Y'
	AND		RR.[Enabled] = 'Y'
	AND		RR.IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[cds_FollowUpReminders_Insert]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--=============================================================================
-- Procedure Name: cds_FollowUpReminders_Insert
-- Description...: Inserts 1 record into the FollowUpReminders table:
--					7 days prior to the actual calibration date.
-- Author........: Phillip R. Hickman
-- Date Created..: 2018-02-15
-------------------------------------------------------------------------------
-- Revisions
--	2018-02-15 - PRH - Initial script created.
--	2018-09-06 - PRH - Updated procedure to add the 90, 15 and 7 day reminders.
--  2019-08-27 - PRH - Removed 90, 30 and 15 day reminders since we only use
--                     the 7-day reminder.
--	2019-10-31 - PRH - Updated the stored procedure to set any previous 
--					   reminders if they already exist.
--	2019-11-01 - FB  - updated to include 30 and 7 day reminder
--=============================================================================
CREATE PROC [dbo].[cds_FollowUpReminders_Insert]
	@DeviceID		INT,
	@FollowUpDate	DATETIME,
	@HwRule			INT,
	@HwRuleBitIndex	INT
AS
BEGIN

	--
	--	If the device and 30 days already exists, update the old record.
	--
	IF EXISTS (SELECT 1 FROM dbo.FollowUpReminders (NOLOCK) WHERE DaysToReminder = 30 AND DeviceID = @DeviceID)
	BEGIN
		UPDATE	dbo.FollowUpReminders
		SET		FollowUpDate = DATEADD(d, -30, @FollowUpDate),
				IsProcessed = 0
		WHERE	DaysToReminder = 30
		AND		DeviceID = @DeviceID
	END
	ELSE
	BEGIN
		INSERT INTO dbo.FollowUpReminders
		(
			DeviceID,
			PositionRecID,
			FollowUpType,
			FollowUpDate,
			HwRule,
			HwRuleBitIndex,
			DeviceType,
			DaysToReminder
		)
		VALUES
		(
			@DeviceID,
			0,
			'CALIBRATION',
			DATEADD(d, -30, @FollowUpDate),
			1,
			204,
			244,
			30
		)
	END

	--
	--	If the device and 7 days already exists, update the old record.
	--
	IF EXISTS (SELECT 1 FROM dbo.FollowUpReminders (NOLOCK) WHERE DaysToReminder = 7 AND DeviceID = @DeviceID)
	BEGIN
		UPDATE	dbo.FollowUpReminders
		SET		FollowUpDate = DATEADD(d, -7, @FollowUpDate),
				IsProcessed = 0
		WHERE	DaysToReminder = 7
		AND		DeviceID = @DeviceID
	END
	ELSE
	BEGIN
		INSERT INTO dbo.FollowUpReminders
		(
			DeviceID,
			PositionRecID,
			FollowUpType,
			FollowUpDate,
			HwRule,
			HwRuleBitIndex,
			DeviceType,
			DaysToReminder
		)
		VALUES
		(
			@DeviceID,
			0,
			'CALIBRATION',
			DATEADD(d, -7, @FollowUpDate),
			1,
			204,
			244,
			7
		)
	END

	IF (@@ROWCOUNT > 0)
		SELECT 1
	ELSE
		SELECT 0
END
GO
/****** Object:  StoredProcedure [dbo].[cmar_Report_GetBySupervisionLevel]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ===========================================================================================================
-- Author		: ??
-- Create date	: ??
-- Revisions	: 10/12/21 - CG - Rewrote Stored Procedure for efficiency and to accommodate the Hoppers below:
--							 Hopper 74073	aCheck DESR phase 2
--							 Hopper 70938	No events showing for Passive 2 Piece GPS (Data Only) Alcohol VB (MEMS Cellular) level of supervision
--							 Hopper 67741	Offender appears on the new supervision level report after a supervision level change
--			: 02/01/23 - CG - Hopper 88358 - Update for bigint conversion (Report_MTDPositions.RecID, Report_MTD_SummaryData.RecID, Report_MTD_SummaryData.StartRptRecID, Report_MTD_SummaryData.EndRptRecID
--			: 04/27/23 - CG - Hopper 90178 - Allied Universal Rebranding - Replaced harcoded 'Attenti User' with @InternalUser, which pulls from the ApplicationParameters table
--			: 09/10/2024 - KP/CG - Hopper 93795 - Added support for One Offender Per Page and updated Report Render to work for CMAR
--
--
--	   *** NOTE ***  This stored procedure was updated to support passing in Contract, Region, Customer, or Offender.  Leave @ReportID = 0 to query for everything.
--
-- ===========================================================================================================


CREATE   PROCEDURE [dbo].[cmar_Report_GetBySupervisionLevel]
@ReportDate datetime,
@TimeZone int,
@ProTechOnly char(1),
@ReportLevelType int,
@ReportType varchar(25) = '',
@ReportID int = 0
AS

DECLARE @lReportDate datetime = @ReportDate,
@lTimeZone int = @TimeZone,
@lProTechOnly char(1) = @ProTechOnly,
@lReportLevelType int = @ReportLevelType,
@lReportType varchar(25) = @ReportType,
@lReportID int = @ReportID


--DECLARE @lReportDate datetime = '09/21/2021',
--	   @lTimeZone int = -300,
--	   @lProTechOnly char(1) = 'N',
--	   @lReportLevelType int = 4,
--	   @lReportType varchar(25) = '',
--	   @lReportID int = 0


SET NOCOUNT ON

DECLARE @InternalUserName varchar(50) = 'Internal User'

SET @InternalUserName = (SELECT TOP 1 ParamValue FROM Protech.dbo.ApplicationParameters WHERE AppName = 'AllApplications' AND ParamName = 'InternalUserName')
IF @InternalUserName IS NULL SET @InternalUserName = 'Internal User'


-- There is no need to have an almost identical stored procedure here.
--	   Call the DESR stored procedure, store the data in a temp table, and add the CaseMgmt notes to the results

IF OBJECT_ID('tempdb.dbo.#DESRData', 'U') IS NOT NULL DROP TABLE #DESRData;
CREATE TABLE #DESRData
(
DemographicID int,
OffenderName varchar(75),
ViolationLabel varchar(150),
NonViolationStatus int,
RuleName varchar(100),
LevelRecID int,
SupervisionLevel varchar(100),
LevelNumber int,
UseReportLevelType int,
RuleType char(1),
TimeGrid varchar(336),
RuleID int,
HwRule int,
HardwareType int,
DeviceStatus int,
RuleOptions int,
IsClearable int,
HWRuleBitIndex int,
DetectedOffender varchar(100),
ShowSchedule int,
ShowEndTimeColumn int,
ReportLevelType int,
ReportLevelTypeValue int,
ViolationDevice int,
SerialNumber varchar(50),
VioTimestamp datetime,
ClrTimestamp datetime,
VioRuleStatus int,
RecID bigint,
EndRptRecID bigint,
VioStoredTimestamp datetime,
TrackingDeviceID varchar(50),
TrackingDeviceName varchar(50),
BraceletID varchar(50),
BraceletDeviceName varchar(50),
ChgID varchar(50),
ChargingDeviceName varchar(50),
AlcoholDeviceID varchar(50),
AlcoholDeviceName varchar(50),
OrganizationName varchar(50),
StandardTimeOffset int,
DaylightTimeOffset int,
OfficerID int,
CustomerID int,
BlankRecord char(1),
OfficerName varchar(100),
CustomID1Label varchar(25),
CustomID1String varchar(25),
CustomID2Label varchar(25),
CustomID2String varchar(25),
ContractOptions int,
OffenderLabel varchar(25),
ReportRenderFormat varchar(20),
OffenderAddress varchar(50),
OffenderCity varchar(50),
OffenderState char(2),
OffenderZipCode varchar(9),
OffenderPhone varchar(10),
TableName varchar(100),		-- Needed for CMAR
ReportRenderFormatCMAR varchar(10),
OneOffenderPerPage int,
OneOffenderPerPageCMAR int
)



INSERT INTO #DESRData
EXEC Reporting.dbo.dvsr_Report_GetBySupervisionLevel @lReportDate, @lTimeZone, @lProTechOnly, @lReportLevelType, @lReportType, @lReportID


SET NOCOUNT OFF



SELECT OffenderID = DESR.DemographicID,
DESR.OfficerID,
DESR.CustomerID,
BlankRecord = 'N',
DESR.OfficerName,
DESR.OffenderName,
DESR.OrganizationName,
DESR.StandardTimeOffset,
DESR.DaylightTimeOffset,

DESR.TrackingDeviceID,
DESR.TrackingDeviceName,
DESR.BraceletID,
DESR.BraceletDeviceName,
DESR.ChgID,
DESR.ChargingDeviceName,
DESR.AlcoholDeviceID,
DESR.AlcoholDeviceName,

DESR.RuleName,
DESR.RuleID,
DESR.RuleType,
DESR.TimeGrid,
DESR.ViolationDevice,
DESR.RuleID,
DESR.HwRule,
DESR.HardwareType,
DESR.DeviceStatus,
DESR.VioTimestamp,
DESR.ClrTimestamp,
DESR.VioRuleStatus,

DESR.RecID,
DESR.EndRptRecID,
DESR.VioStoredTimestamp,

DESR.CustomID1Label,
DESR.CustomID1String,
DESR.CustomID2Label,
DESR.CustomID2String,
DESR.OffenderAddress,
DESR.OffenderCity,
DESR.OffenderState,
DESR.OffenderZipCode,
DESR.OffenderPhone,

CM.NoteRecID,
CM.NoteTimestamp,
CM.NoteStatus,
CM.SuspendTimestamp,
CM.Note,
UserName = CASE WHEN SUBSTRING(U.PcePermissions, 5, 1) = 'Y' THEN @InternalUserName ELSE  U.LastName + ', ' + U.FirstName  END,
ProtechUser = SUBSTRING(U.PcePermissions, 5, 1),

DESR.ContractOptions,
Con.CaseMgmtSettings,
DESR.RuleOptions,
DESR.IsClearable,
DESR.HWRuleBitIndex,
DESR.OffenderLabel,
DESR.SerialNumber,
ReportRenderFormat = DESR.ReportRenderFormatCMAR,
DESR.ViolationLabel,
ReportLevelType = @lReportLevelType,
DESR.ShowEndTimeColumn,
OneOffenderPerPage = DESR.OneOffenderPerPageCMAR
FROM #DESRData AS DESR
INNER JOIN Protech.dbo.Customers AS C WITH (NOLOCK) ON C.CustomerID = DESR.CustomerID
INNER JOIN Protech.dbo.Contracts As Con  WITH (NOLOCK) ON Con.ContractID = C.ContractID
LEFT JOIN Reporting.dbo.CaseMgmtNotes As CM  WITH (NOLOCK) On CM.EventTableRecID = DESR.RecID AND CM.EventTableName = DESR.TableName
LEFT JOIN Protech.dbo.Users As U  WITH (NOLOCK) On CM.UserRecID = U.UserRecID


IF OBJECT_ID('tempdb.dbo.#DESRData', 'U') IS NOT NULL DROP TABLE #DESRData;


GO
/****** Object:  StoredProcedure [dbo].[cmsvc_CaseMgmtAutoRecallSettings_QueryAll]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 4/1/2022 - Derived from almsvr_Renotifications_QueryRules stored proc
-- Description:	Returns contacts and rules that support renotification
-- Revisions:
-- mm/dd/yy (xxx) - Revision here
-- =============================================
CREATE   PROC [dbo].[cmsvc_CaseMgmtAutoRecallSettings_QueryAll]
AS
BEGIN
SET NOCOUNT ON;

SELECT CMARS.DeviceType
, CMARS.HwRule
, CMARS.HwRuleBitIndex
, CMARS.RecallType
, CMARS.ReasonRecID
, RR.Reason
, CMARS.SendEmailOnRecall
FROM [dbo].[CaseMgmtAutoRecallSettings] CMARS(NOLOCK)
INNER JOIN [Protech].[dbo].[RecallReasons] RR(NOLOCK) ON RR.RecID = CMARS.ReasonRecID
WHERE CMARS.IsDeleted = 0

END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_GetLastAssignedBracelet]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 8/20/2010
-- Description:	Finds the last bracelet assigned to a specific offender
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_GetLastAssignedBracelet]
@DemographicID int
AS
BEGIN
SELECT TOP 1 DemographicID=H.OwnerRecID, BraceletID=H.HardwareID, H.AssignmentDate
FROM Protech.dbo.HardwareAssignmentHistory AS H
WHERE H.OwnerRecID = @DemographicID
AND H.OwnerType = 'O'
AND H.HardwareType = 'B'
AND H.AssignmentType = 'A'
ORDER BY H.AssignmentDate DESC
END

GO
/****** Object:  StoredProcedure [dbo].[cmsvc_GetRecallEmailDetails]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Alfredo Inostroza
-- Create date: 2023-08-22
-- Description:	Get email details for recalls
-- Revisions:
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_GetRecallEmailDetails]
@RecId BigInt
,@TableName VARCHAR(MAX)
AS
BEGIN

SELECT RecID
, d.LastName OffenderLast
, d.FirstName OffenderFirst
, co.CustomID1Label AS IdLabel
, d.ID1 AS IdValue
, d.Address + ' ' + d.address2 AS StreetAddress
, d.City + ', ' + d.[State] + ' ' + d.Zip + ' ' AS CityStateZip
, d.PhoneNumber AS HomePhone
, d.CellNumber AS CellPhone
, r.RuleName AS Violation
, protech.dbo.fn_GetLocalTime(remp.[TimeStamp], remp.StandardTimeOffset, remp.DaylightTimeOffset) AS TIMESTAMP
, remp.[TimeStamp] at TIME zone 'utc' at TIME zone 'eastern standard time' AS estTimeStamp
, cu.OrganizationName AS CustomerName
, po.FirstName + ' ' + po.LastName AS OfficerName
, po.PhoneNumber + ' ' + po.PhoneExtension AS OfficerPhone
, po.FaxNumber AS OfficerFax
, po.Email AS OfficerEmail
FROM reporting.dbo.Report_EM_Positions AS remp WITH (NOLOCK)
INNER JOIN protech.dbo.rules AS r WITH (NOLOCK) ON remp.RuleID = r.RuleID
INNER JOIN protech.dbo.Demographics AS d WITH (NOLOCK) ON remp.DemographicID = d.DemographicID
INNER JOIN protech.dbo.offenders AS o WITH (NOLOCK) ON d.DemographicID = o.DemographicID
INNER JOIN protech.dbo.Demographics AS po WITH (NOLOCK) ON o.PoDemoID = po.DemographicID
INNER JOIN protech.dbo.Customers AS cu WITH (NOLOCK) ON d.CustomerID = cu.CustomerID
INNER JOIN protech.dbo.Contracts AS co WITH (NOLOCK) ON cu.ContractID = co.ContractID
WHERE 1 = 1
AND @TableName = 'Report_EM_Positions'
AND remp.recid = @RecId

UNION ALL

SELECT RecID
, d.LastName OffenderLast
, d.FirstName OffenderFirst
, co.CustomID1Label AS IdLabel
, d.ID1 AS IdValue
, d.Address + ' ' + d.address2 AS StreetAddress
, d.City + ', ' + d.[State] + ' ' + d.Zip + ' ' AS CityStateZip
, d.PhoneNumber AS HomePhone
, d.CellNumber AS CellPhone
, r.RuleName AS Violation
, protech.dbo.fn_GetLocalTime(rmtdp.[TimeStamp], rmtdp.StandardTimeOffset, rmtdp.DaylightTimeOffset) AS TIMESTAMP
, rmtdp.[TimeStamp] at TIME zone 'utc' at TIME zone 'eastern standard time' AS estTimeStamp
, cu.OrganizationName AS CustomerName
, po.FirstName + ' ' + po.LastName AS OfficerName
, po.PhoneNumber + ' ' + po.PhoneExtension AS OfficerPhone
, po.FaxNumber AS OfficerFax
, po.Email AS OfficerEmail
FROM reporting.dbo.Report_MTDPositions AS rmtdp WITH (NOLOCK)
INNER JOIN protech.dbo.rules AS r WITH (NOLOCK) ON rmtdp.RuleID = r.RuleID
INNER JOIN protech.dbo.Demographics AS d WITH (NOLOCK) ON rmtdp.DemographicID = d.DemographicID
INNER JOIN protech.dbo.offenders AS o WITH (NOLOCK) ON d.DemographicID = o.DemographicID
INNER JOIN protech.dbo.Demographics AS po WITH (NOLOCK) ON o.PoDemoID = po.DemographicID
INNER JOIN protech.dbo.Customers AS cu WITH (NOLOCK) ON d.CustomerID = cu.CustomerID
INNER JOIN protech.dbo.Contracts AS co WITH (NOLOCK) ON cu.ContractID = co.ContractID
WHERE 1 = 1
AND @TableName = 'Report_MTDPositions'
AND rmtdp.recid = @RecId

END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_ModificationHistory_Insert]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from Protech.ptm_ModificationHistory_Insert
-- Description:	Inserts a record in Protech.ModificationHistory
-- Revisions:
-- mm/dd/yy (xxx) - Revision here
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_ModificationHistory_Insert]
@UserRecID int,
@AppName varchar(10),
@TableName varchar(30),
@EventType varchar(30),
@TableRecID bigint,
@Message varchar(80) = NULL,

@NewRecID int OUTPUT
AS
BEGIN

INSERT INTO Protech.dbo.ModificationHistory
( UserRecID, TimeStamp, AppName, TableName, EventType, TableRecID, [Message] )
VALUES
( @UserRecID, GetDate(), @AppName, @TableName, @EventType, @TableRecID, @Message )

SET @NewRecID = SCOPE_IDENTITY()
SELECT @NewRecID
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_RecalledHardware_Insert]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from Protech.hw_RecalledHardware_Insert
-- Description:	Inserts a record in Protech.RecalledHardware
-- Revisions:
-- mm/dd/yy (xxx) - Revision here
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_RecalledHardware_Insert]
@DeviceType int,
@DeviceID int,
@RecallType int,
@ReasonRecID int,
@Reason varchar(50),
@UserRecID int = NULL,

@NewRecID int OUTPUT
AS
BEGIN
DECLARE @CustomerID int

SET @CustomerID = (SELECT CustomerRecID FROM Protech.dbo.View_AllDevices WHERE DeviceType = @DeviceType AND DeviceID = @DeviceID)

INSERT INTO Protech.dbo.RecalledHardware
( HwType, HwRecID, DateRecalled, Reason, CustomerIDWhenRecalled, ReasonRecID, RecallType, UserRecIDRecalled, NoteRecID )
VALUES
( @DeviceType, @DeviceID, GetDate(), @Reason, @CustomerID, @ReasonRecID, @RecallType, @UserRecID, 0 )

SET @NewRecID = SCOPE_IDENTITY()
SELECT @NewRecID
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_RecalledHardware_QueryRecallStatus]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from cmsvr_IsDeviceRecalled
-- Description:	Scans the recall table to see if a device already has an outstanding recall record.
-- Revisions:
-- mm/dd/yy (xxx) - Revision here
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_RecalledHardware_QueryRecallStatus]
@DeviceType int,
@DeviceID int,
@RecallType int,
@IsProtechRecallAllowed bit = 0
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pDeviceType int = @DeviceType,
@pDeviceID int = @DeviceID,
@pRecallType int = @RecallType,
@pIsProtechRecallAllowed bit = @IsProtechRecallAllowed

SELECT DeviceType=@pDeviceType,
DeviceID=@pDeviceID,
-- Auto-recall is only supported for non-Attenti customers.
CONVERT(bit, CASE WHEN A.CustomerRecID <> 1 OR @pIsProtechRecallAllowed = 1 THEN 1 ELSE 0 END) AS AutoRecallEnabled,
CONVERT(bit, CASE WHEN (
SELECT COUNT(RecID)
FROM Protech.dbo.RecalledHardware AS R
WHERE R.HwType = @pDeviceType
AND R.HwRecID = @pDeviceID
AND R.RecallType = @pRecallType
AND R.DateAddressed IS NULL
) > 0 THEN 1 ELSE 0 END) AS Recalled
FROM Protech.dbo.View_AllDevices A
WHERE A.DeviceType = @pDeviceType
AND A.DeviceID = @pDeviceID
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_Report_EM_Positions_QueryPendingFirstViolationsByEvent]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from cmsvr_Report_RF_SummaryData_GetUnclearedFirstViolations
-- Description:	Gets all uncleared first violations that match the specificed event type.
--              For Extra TX events there must be an additional EventParams match on the detected transmitter.
-- Revisions:
-- mm/dd/yy (xxx) - Revision here
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_Report_EM_Positions_QueryPendingFirstViolationsByEvent]
@DemographicID int,
@DeviceID int,
@RuleID int,
@HwRule int,
@HwRuleBitIndex int,
@ClearTimestamp datetime,
@ClearRecID bigint
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pDemographicID int = @DemographicID,
@pDeviceID int = @DeviceID,
@pRuleID int = @RuleID,
@pHwRule int = @HwRule,
@pHwRuleBitIndex int = @HwRuleBitIndex,
@pClearTimestamp datetime = @ClearTimestamp,
@pClearRecID bigint = @ClearRecID

-- Define local constants
DECLARE @HWRULEBITINDEX_EXTRATX int = 206

SELECT	S.RecID,
S.StartRptRecID,
S.EndRptRecID
FROM	Report_EM_SummaryData AS S WITH (NOLOCK)
JOIN	Report_EM_Positions AS P WITH (NOLOCK) ON P.RecID = S.StartRptRecID

LEFT JOIN Report_EventParams	   SP WITH(NOLOCK) ON SP.EventTableRecID = S.StartRptRecID
AND SP.EventTableLookupValue = 2
AND SP.ParameterTypeLookupValue IN (1, 7)
LEFT JOIN	Report_EventParams	   EP WITH(NOLOCK) ON EP.EventTableRecID = @pClearRecID
AND EP.EventTableLookupValue = 2
AND EP.ParameterTypeLookupValue IN (1, 7)
AND	EP.ParameterTypeLookupValue = SP.ParameterTypeLookupValue
AND EP.ParameterValue = SP.ParameterValue

WHERE	S.EndRptRecID = 0
AND		P.DemographicID = @pDemographicID
AND		P.DeviceID = @pDeviceID
AND		((@pHwRule = 0 AND P.RuleID = @pRuleID )
OR ( @pHwRule > 0 AND P.HwRule = @pHwRule))
AND		((ISNULL(@pHwRuleBitIndex, 0) = 0 AND ISNULL(P.HWRuleBitIndex, 0) = 0)
OR ( P.HWRuleBitIndex = @pHwRuleBitIndex))
AND		((P.TimeStamp < @pClearTimestamp)
OR (P.TimeStamp = @pClearTimestamp AND P.RecID < @pClearRecID))
-- If this is an Extra TX event there needs to be matching event param records
AND		( @pHwRuleBitIndex <> @HWRULEBITINDEX_EXTRATX OR
( @pHwRuleBitIndex = @HWRULEBITINDEX_EXTRATX AND
SP.EventParamRecID IS NOT NULL AND
EP.EventParamRecID IS NOT NULL
))
OPTION (RECOMPILE)

END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_Report_EM_Positions_QueryPendingFirstViolationsByOffender]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from cmsvr_Report_RF_SummaryData_GetUnClearedFirstViolationsByDemoId
-- Description:	Gets all uncleared first violations that match the specificed offender and device type.
-- Revisions:
-- 09/11/23 AI - Fix Report_EM_SummaryData query
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_Report_EM_Positions_QueryPendingFirstViolationsByOffender]
	@DemographicId int,
	@DeviceType int,
	@ClearTimeStamp datetime,
	@ClearRecID bigint
AS
BEGIN
	--Redeclare parameters to prevent parameter sniffing
	DECLARE @pDemographicID int = @DemographicID,
		@pDeviceType int = @DeviceType,
		@pClearTimestamp datetime = @ClearTimestamp,
		@pClearRecID bigint = @ClearRecID

	SELECT	S.RecID,
			S.StartRptRecID,
			S.EndRptRecID
	FROM	Report_EM_SummaryData AS S WITH (NOLOCK)
	JOIN	Report_EM_Positions AS P WITH (NOLOCK) ON S.StartRptRecID = P.RecID
	WHERE	S.EndRptRecID = 0
	AND		P.DemographicID = @DemographicId
	AND		P.HardwareType = @pDeviceType
	AND		((P.TimeStamp < @pClearTimestamp)
	     OR (P.TimeStamp = @pClearTimestamp AND P.RecID < @pClearRecID))
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_Report_EM_Positions_UpdateProcessed]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from cmsvr_Report_RF_Positions_UpdateProcessed
-- Description:	Updates reporting record setting the specified process status.
-- Revisions:
-- mm/dd/yy (xxx) - Revision here
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_Report_EM_Positions_UpdateProcessed]
@RecID int,
@Processed char
AS
BEGIN
UPDATE Report_EM_Positions
SET Processed = @Processed
WHERE RecID = @RecID
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_Report_EM_SummaryData_Insert]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from cmsvr_Report_RF_SummaryData_InsertCleared
-- Description:	Inserts a report summary data record
-- Revisions:
-- mm/dd/yy (xxx) - Revision here
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_Report_EM_SummaryData_Insert]
@StartRptRecId int,
@EndRptRecId int,

@NewRecID int OUTPUT
AS
BEGIN
INSERT Report_EM_SummaryData
(StartRptRecID, EndRptRecID)
VALUES
(@StartRptRecId, @EndRptRecId)

SET @NewRecID = SCOPE_IDENTITY()

SELECT @NewRecID
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_Report_EM_SummaryData_Update]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from cmsvr_Report_RF_SummaryData_UpdateCleared
-- Description:	Updates a report summary data record setting StartRptRecID and EndRptRecID
-- Revisions:
-- mm/dd/yy (xxx) - Revision here
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_Report_EM_SummaryData_Update]
@RecId int,
@StartRptRecID int,
@EndRptRecID int
AS
BEGIN
UPDATE Report_EM_SummaryData
SET StartRptRecID = @StartRptRecID,
EndRptRecID = @EndRptRecID
WHERE RecID = @RecId

SELECT @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_Report_MTD_SummaryData_Insert]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from cmsvr_Report_MTD_SummaryData_InsertCleared
-- Description:	Inserts a report summary data record
-- Revisions:
-- 2023-08-17 (AI) - BigInt
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_Report_MTD_SummaryData_Insert]
@StartRptRecId bigint,
@EndRptRecId bigint,

@NewRecID bigint OUTPUT
AS
BEGIN
INSERT Report_MTD_SummaryData
(StartRptRecID, EndRptRecID)
VALUES
(@StartRptRecId, @EndRptRecId)

SET @NewRecID = SCOPE_IDENTITY()

SELECT @NewRecID
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_Report_MTD_SummaryData_Update]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from cmsvr_Report_MTD_SummaryData_UpdateCleared
-- Description:	Updates a report summary data record setting StartRptRecID and EndRptRecID
-- Revisions:
-- mm/dd/yy (xxx) - Revision here
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_Report_MTD_SummaryData_Update]
@RecId bigint,
@StartRptRecID bigint,
@EndRptRecID bigint
AS
BEGIN
UPDATE Report_MTD_SummaryData
SET StartRptRecID = @StartRptRecID,
EndRptRecID = @EndRptRecID
WHERE RecID = @RecId

SELECT @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_Report_MTDPositions_QueryPendingFirstViolationsByEvent]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from cmsvr_Report_MTD_SummaryData_GetUnclearedFirstViolations
-- Description:	Gets all uncleared first violations that match the specificed event type.
-- Revisions:
-- mm/dd/yy (xxx) - Revision here
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_Report_MTDPositions_QueryPendingFirstViolationsByEvent]
@DemographicID int,
@DeviceID int,
@RuleID int,
@HwRule int,
@HwRuleBitIndex int,
@ZoneRecID bigint = 0,
@ClearTimestamp datetime,
@ClearRecID bigint
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pDemographicID int = @DemographicID,
@pDeviceID int = @DeviceID,
@pRuleID int = @RuleID,
@pHwRule int = @HwRule,
@pHwRuleBitIndex int = @HwRuleBitIndex,
@pZoneRecID bigint = @ZoneRecID,
@pClearTimestamp datetime = @ClearTimestamp,
@pClearRecID bigint = @ClearRecID

SELECT	S.RecID,
S.StartRptRecID,
S.EndRptRecID
FROM	Report_MTD_SummaryData AS S WITH (NOLOCK,INDEX (Start_EndRecID))
JOIN	Report_MTDPositions AS P WITH (NOLOCK) ON P.RecID = S.StartRptRecID
WHERE	S.EndRptRecID = 0
AND		P.DemographicID = @pDemographicID
AND		P.DeviceID = @pDeviceID
AND		((@pHwRule = 0 AND P.RuleID = @pRuleID )
OR ( @pHwRule > 0 AND P.HwRule = @pHwRule))
AND		((ISNULL(@pHwRuleBitIndex, 0) = 0 AND ISNULL(P.HWRuleBitIndex, 0) = 0)
OR ( P.HWRuleBitIndex = @pHwRuleBitIndex))
AND		((P.TimeStamp < @pClearTimestamp)
OR (P.TimeStamp = @pClearTimestamp AND P.RecID < @pClearRecID))
AND		((@pZoneRecID = 0 AND ISNULL(P.ZoneRecID, 0) = 0)
OR  (P.ZoneRecID = @pZoneRecID))
OPTION (RECOMPILE)

END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_Report_MTDPositions_QueryPendingFirstViolationsByOffender]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from cmsvr_Report_MTD_SummaryData_GetUnClearedFirstViolationsByDemoId
-- Description:	Gets all uncleared first violations that match the specificed offender and device type.
-- Revisions:
-- mm/dd/yy (xxx) - Revision here
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_Report_MTDPositions_QueryPendingFirstViolationsByOffender]
@DemographicId int,
@DeviceType int,
@ClearTimeStamp datetime,
@ClearRecID bigint
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pDemographicID int = @DemographicID,
@pDeviceType int = @DeviceType,
@pClearTimestamp datetime = @ClearTimestamp,
@pClearRecID bigint = @ClearRecID

SELECT S.RecID,
S.StartRptRecID,
S.EndRptRecID
FROM   Report_MTD_SummaryData AS S WITH (NOLOCK)
JOIN   Report_MTDPositions AS P WITH (NOLOCK) ON S.StartRptRecID = P.RecID
WHERE  S.EndRptRecID = 0
AND	   P.DemographicID = @DemographicId
AND    P.HardwareType = @pDeviceType
AND	   ((P.TimeStamp < @pClearTimestamp)
OR (P.TimeStamp = @pClearTimestamp AND P.RecID < @pClearRecID))
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_Report_MTDPositions_UpdateProcessed]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/2023 - Derived from cmsvr_Report_MTD_Positions_UpdateProcessed
-- Description:	Updates reporting record setting the specified process status.
-- Revisions:
-- mm/dd/yy (xxx) - Revision here
-- =============================================
CREATE   PROCEDURE [dbo].[cmsvc_Report_MTDPositions_UpdateProcessed]
@RecID bigint,
@Processed char
AS
BEGIN
UPDATE Report_MTDPositions
SET Processed = @Processed
WHERE RecID = @RecID
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_ReportPositions_QueryUnprocessed]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/7/23 - Derived from cmsvr_RptPositions_GetNonProcessed
-- Description:	Queries unprocessed report position records.
-- Revisions:
-- 03/11/25 (SLM) - Added ContractID and RuleType to results
-- =============================================
CREATE PROCEDURE [dbo].[cmsvc_ReportPositions_QueryUnprocessed]
@ProtechOnly bit
--@IncludeContracts varchar(MAX) = NULL,
--@ExcludeContracts varchar(MAX) = NULL
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pProtechOnly bit = @ProtechOnly;
/*
-- Build table variables containing the list of contracts to include/exclude
DECLARE @IncludedContracts TABLE ( ContractID INT )
DECLARE @ExcludedContracts TABLE ( ContractID INT )
DECLARE @DoInclude bit = 0, @DoExclude bit = 0

IF LEN(ISNULL(@IncludeContracts, '')) > 0
BEGIN
SET @DoInclude = 1
INSERT @IncludedContracts
SELECT Value FROM dbo.Split(@IncludeContracts, ',')
END
IF LEN(ISNULL(@ExcludeContracts, '')) > 0
BEGIN
SET @DoExclude = 1
INSERT @ExcludedContracts
SELECT Value FROM dbo.Split(@ExcludeContracts, ',')
END

IF @DoInclude = 1 AND @DoExclude = 1
BEGIN
RAISERROR (N'ERROR: Cannot specify parameter values for both @IncludeContracts and @ExcludeContracts!', 10, 1);
RETURN
END;
*/
-- The following CTE was added to collect key values using the NOLOCK option.
-- The hints that force the use of the IX_Report_MTDPositions_Processed
-- and IDX_ReportEmPositions_Processed indexes seem to have a positive impacts
-- on performance when retrieving the key values.  These have been retained
-- from the original stored procedure.
WITH PositionKeys (TableName, RecId, ProtechOnly, ContractID ) AS (
SELECT
TableName='Report_MTDPositions',
P.RecID,
Cu.ProtechOnly,
Cu.ContractID
FROM
Report_MTDPositions As P WITH (INDEX = IX_Report_MTDPositions_Processed, NOLOCK)
INNER JOIN Protech..Demographics D WITH(NOLOCK)
ON P.DemographicID = D.DemographicID
INNER JOIN Protech..Customers Cu WITH (NOLOCK)
ON D.CustomerID = Cu.CustomerID
--LEFT JOIN @IncludedContracts IC ON Cu.ContractID = IC.ContractID
--LEFT JOIN @ExcludedContracts EC ON Cu.ContractID = EC.ContractID
WHERE ( P.Processed = 'N' )
AND ((@pProtechOnly = 0) OR (@pProtechOnly = 1 AND Cu.ProtechOnly = 'Y'))
--AND ( ( @DoInclude = 0 AND @DoExclude = 0 )
--	OR ( @DoInclude = 1 AND IC.ContractID IS NOT NULL )
--	OR ( @DoExclude = 1 AND EC.ContractID IS NULL )
--  )
UNION ALL
SELECT
TableName='Report_EM_Positions',
P.RecID,
Cu.ProtechOnly,
Cu.ContractID
FROM
Report_EM_Positions As P WITH (INDEX = IDX_ReportEmPositions_Processed, NOLOCK)
INNER JOIN Protech..Demographics D WITH(NOLOCK)
ON P.DemographicID = D.DemographicID
INNER JOIN Protech..Customers Cu WITH(NOLOCK)
ON D.CustomerID = Cu.CustomerID
--LEFT JOIN @IncludedContracts IC
--	ON Cu.ContractID = IC.ContractID
--LEFT JOIN @ExcludedContracts EC
--	ON Cu.ContractID = EC.ContractID
WHERE ( P.Processed = 'N' )
AND ((@pProtechOnly = 0) OR (@pProtechOnly = 1 AND Cu.ProtechOnly = 'Y'))
--AND ( ( @DoInclude = 0 AND @DoExclude = 0 )
--	OR ( @DoInclude = 1 AND IC.ContractID IS NOT NULL )
--	OR ( @DoExclude = 1 AND EC.ContractID IS NULL )
--	)
)

-- The following SELECT statements have hints added to ensure that the only
-- read only committed data.  READCOMMITTED is the default for SQL, so the
-- hints may not have any added value.  It is important to note that the
-- hints to enforce the use of the IX_Report_MTDPositions_Processed
-- and IDX_ReportEmPositions_Processed indexes have been removed from
-- these SELECT statements because when reading committed data, the
-- use of the index has a negative impact on performance of the query.
-- The clustered index on the primary key performs much better in this
-- case as all of the filtering logic was applied when collecting the
-- key values.
SELECT
k.TableName,
mtdp.RecID,
mtdp.DemographicID,
mtdp.DeviceID,
mtdp.TimeStamp,
mtdp.StoredTimeStamp,
--mtdp.DeviceStatus,
--CallRecID = mtdp.MTDCallsRecID,
mtdp.RuleStatus,
mtdp.RuleID,
mtdp.HwRule,
mtdp.Processed,
mtdp.HardwareType,
mtdp.ZoneRecID,
ISNULL(mtdp.HWRuleBitIndex, 0) AS [HwRuleBitIndex],
k.ProtechOnly,
k.ContractID,
R.RuleType
FROM
PositionKeys k
INNER JOIN Report_MTDPositions mtdp WITH(READCOMMITTED)
ON k.RecId = mtdp.RecID AND k.TableName = 'Report_MTDPositions'
LEFT JOIN Protech.dbo.Rules R (NOLOCK) ON R.RuleID = mtdp.RuleID
--LEFT JOIN Report_EventParams REP WITH(READCOMMITTED)
--	ON REP.EventTableRecID = mtdp.RecID
--		AND REP.EventTableLookupValue = 1
--		AND REP.ParameterTypeLookupValue = 2
UNION ALL
SELECT
k.TableName,
emp.RecID,
emp.DemographicID,
emp.DeviceID,
emp.TimeStamp,
emp.StoredTimeStamp,
--emp.DeviceStatus,
--emp.CallRecID,
emp.RuleStatus,
emp.RuleID,
emp.HwRule,
emp.Processed,
emp.HardwareType,
ZoneRecID = NULL,
ISNULL(emp.HWRuleBitIndex, 0) AS [HwRuleBitIndex],
k.ProtechOnly,
k.ContractID,
R.RuleType
--REP.ParameterValue AS [CalibrationDays]
FROM
PositionKeys k
INNER JOIN Report_EM_Positions emp WITH(READCOMMITTED)
ON k.RecId = emp.RecID AND k.TableName = 'Report_EM_Positions'
LEFT JOIN Protech.dbo.Rules R (NOLOCK) ON R.RuleID = emp.RuleID
--LEFT JOIN Report_EventParams REP WITH(READCOMMITTED)
--	ON REP.EventTableRecID = emp.RecID
--		AND REP.EventTableLookupValue = 2
--		AND REP.ParameterTypeLookupValue = 2
ORDER BY
StoredTimeStamp, RecID
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_Reports_GetProcessIntervalSeconds]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ===========================================================================================================
-- Author		: Carla Gibson
-- Create date	: 05/07/2025
-- Revisions	:
-- ===========================================================================================================

CREATE   PROCEDURE [dbo].[cmsvc_Reports_GetProcessIntervalSeconds]

As


DECLARE @ProcessIntervalSeconds int = 60

SELECT TOP 1 @ProcessIntervalSeconds = ParamValue
FROM Protech.dbo.ApplicationParameters As P
WHERE AppName = 'Reports'
AND ParamName = 'AutomationProcessIntervalSeconds'

SELECT ProcessIntervalSeconds = @ProcessIntervalSeconds


GO
/****** Object:  StoredProcedure [dbo].[cmsvc_Reports_ProcessQueue]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ===========================================================================================================
-- Author		: Carla Gibson
-- Create date	: 05/21/2025
-- Revisions	: 07/23/2025 - CG - Added additional fields to support Associations
-- ===========================================================================================================

CREATE   PROCEDURE [dbo].[cmsvc_Reports_ProcessQueue]

As

-- Gather a list of data-driven subscriptions to check
DECLARE @DataDrivenSubscriptions TABLE
(
RowNumber int,
ReportName nvarchar(850),
SubscriptionName nvarchar(1024),
ScheduleID uniqueidentifier,
ScheduleIDString varchar(100),
HoursToQueue int,
LastStatus nvarchar(520),
LastRunTime datetime,
NumberOfQueuedReports int,
[Status] varchar(1024)
)


-- Which database server are we on?  The ReportServer is named differently on different servers
--	   Dev - ReportServer
--	   Dev2 - ReportServerExternal
--	   SQA - ReportServerExternal
--	   Prod - ReportServerExternal

DECLARE @DatabaseName varchar(50) = 'ReportServerExternal'

SELECT TOP 1 @DatabaseName = ParamValue
FROM Protech.dbo.ApplicationParameters
WHERE AppName = 'Reports'
AND ParamName = 'ReportServerName'


/**************************************************************************************************/
-- This is for testing.  This should be changed to be database-driven so that other reports can be added in the future
/**************************************************************************************************/

INSERT INTO @DataDrivenSubscriptions (RowNumber, ReportName, SubscriptionName, HoursToQueue)
SELECT RowNumber = 1, ReportName = 'StopsAndAssociations', SubscriptionName = 'Stops Report Data Driven Subscription', HoursToQueue = 24

--INSERT INTO @DataDrivenSubscriptions (RowNumber, ReportName, SubscriptionName)
--    SELECT RowNumber = 2, ReportName = 'PointsNotReviewed', SubscriptionName = 'Points Not Reviewed Data Driven Subscription'

/**************************************************************************************************/


-- Gather info about each each subscription
IF ISNULL(@DatabaseName,'ReportServerExternal') IN ('ReportServer')
BEGIN
UPDATE @DataDrivenSubscriptions
SET ScheduleID = S.ScheduleID,
ScheduleIDString = CAST(S.ScheduleID as varchar(100)),
LastStatus = S.LastStatus,
LastRunTime = S.LastRunTime
FROM
(
SELECT TRowNumber = D.RowNumber,
D.ReportName,
D.SubscriptionName,
RS.ScheduleID,
S.LastStatus,
S.LastRunTime
FROM @DataDrivenSubscriptions As D
JOIN ReportServer.dbo.[Catalog] As C ON C.[Name] = ReportName COLLATE SQL_Latin1_General_CP1_CI_AS
JOIN ReportServer.dbo.Subscriptions As S ON S.Report_OID = C.ItemID
JOIN ReportServer.dbo.ReportSchedule As RS ON RS.SubscriptionID = S.SubscriptionID
WHERE 1=1
AND S.[Description] = SubscriptionName COLLATE SQL_Latin1_General_CP1_CI_AS
AND DATALENGTH(S.[DataSettings]) IS NOT NULL
) As S
WHERE TRowNumber = RowNumber
END

-- Gather info about each each subscription
ELSE IF ISNULL(@DatabaseName,'ReportServerExternal') IN ('ReportServerExternal')
BEGIN
UPDATE @DataDrivenSubscriptions
SET ScheduleID = S.ScheduleID,
ScheduleIDString = CAST(S.ScheduleID as varchar(100)),
LastStatus = S.LastStatus,
LastRunTime = S.LastRunTime
FROM
(
SELECT TRowNumber = D.RowNumber,
D.ReportName,
D.SubscriptionName,
RS.ScheduleID,
S.LastStatus,
S.LastRunTime
FROM @DataDrivenSubscriptions As D
JOIN ReportServerExternal.dbo.[Catalog] As C ON C.[Name] = ReportName COLLATE SQL_Latin1_General_CP1_CI_AS
JOIN ReportServerExternal.dbo.Subscriptions As S ON S.Report_OID = C.ItemID
JOIN ReportServerExternal.dbo.ReportSchedule As RS ON RS.SubscriptionID = S.SubscriptionID
WHERE 1=1
AND S.[Description] = SubscriptionName COLLATE SQL_Latin1_General_CP1_CI_AS
AND DATALENGTH(S.[DataSettings]) IS NOT NULL
) As S
WHERE TRowNumber = RowNumber
END

-- Query the ReportSubscriptionData table for the number of queued reports
UPDATE @DataDrivenSubscriptions
SET NumberOfQueuedReports = S.NumberOfQueuedReports
FROM
(
SELECT D.ReportName,
NumberOfQueuedReports = SUM(CASE WHEN RSD.RecID > 0 THEN 1 ELSE 0 END)
FROM @DataDrivenSubscriptions As D
LEFT JOIN Protech.dbo.ReportSubscriptionData As RSD ON RSD.RDLName = D.ReportName
AND RSD.DateCreated >= DATEADD(HH,-D.HoursToQueue,GetDate())
AND RSD.Queued = 0
WHERE 1=1
GROUP BY D.ReportName
) As S


DECLARE @Counter int
DECLARE @MaxID int

DECLARE @LastStatus varchar(520)
DECLARE @ScheduleID varchar(1024)
DECLARE @NumberOfQueuedReports int

SELECT @Counter = 1, @MaxID = (SELECT MAX(RowNumber) FROM @DataDrivenSubscriptions)

-- Loop through the subscriptions gathered above
WHILE @Counter <= @MaxID
BEGIN
-- Grab the LastStatus and number of queued reports to see what needs to be processed
SELECT @LastStatus = LastStatus,
@ScheduleID = ScheduleID,
@NumberOfQueuedReports = NumberOfQueuedReports
FROM @DataDrivenSubscriptions
WHERE RowNumber = @Counter

-- If a job is Pending, don't do anything
IF @LastStatus = 'Pending'
BEGIN
UPDATE @DataDrivenSubscriptions SET [Status] = 'Job is Pending' WHERE RowNumber = @Counter
END

-- If we have reports queued
ELSE IF @NumberOfQueuedReports > 0
BEGIN

-- Start the job
BEGIN TRY
EXEC msdb.dbo.sp_start_job @job_name = @ScheduleID
UPDATE @DataDrivenSubscriptions SET [Status] = 'Job Started' WHERE RowNumber = @Counter
END TRY

BEGIN CATCH
UPDATE @DataDrivenSubscriptions SET [Status] = SUBSTRING(('Error Processing ScheduleID ' + @ScheduleID + '  (Error Message: ' + ERROR_MESSAGE()), 0, 1024) WHERE RowNumber = @Counter
END CATCH

END

ELSE
UPDATE @DataDrivenSubscriptions SET [Status] = 'No Reports Queued' WHERE RowNumber = @Counter


SET @Counter = @Counter + 1;
END

SELECT * FROM @DataDrivenSubscriptions

GO
/****** Object:  StoredProcedure [dbo].[cmsvc_StopsReport_GetViolationTypes]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 3/11/25
-- Description:	Returns a list of rule types that will trigger a Stops Report when a first violation occurs
-- Revisions:
-- mm/dd/yy - XXX - Revision Here
-- =============================================
CREATE   PROC [dbo].[cmsvc_StopsReport_GetViolationTypes]
AS
BEGIN
DECLARE @HWRULE_BSTRAP int = 0x400
DECLARE @ContractOption_EnableStopsReport int = 138

--Note: As of 3/11/25, only the bracelet strap rule triggers a stops report.
--      This proc allows additional rule types and specific contracts to be returned from a table if needed.
--      4/24/25 (SLM) - changed the default record to return 0 for HwRuleBitIndex since it has an HwRule value.
SELECT DISTINCT
C.ContractID
, 0 AS DeviceType
, '*' AS RuleType
, @HWRULE_BSTRAP as HwRule
, 0 AS HwRuleBitIndex	--Don't specify HwRuleBitIndex when HwRule is not 0x1 (HwRuleBitIndex).
FROM Protech.dbo.fn_ContractOptionAssignments_GetCustomersByOptionID(@ContractOption_EnableStopsReport) COA
JOIN Protech.dbo.Customers C ON C.CustomerID = COA.CustomerID
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvc_StopsReport_QueueReport]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ===========================================================================================================
-- Author		: Carla Gibson
-- Create date	: 03/20/2025
-- Revisions	: 07/23/2025 - Hopper 95841 - Removed call to sp_start_job and created a ReportsProcessor Service in Case Mgmt Svc to start the job
--			  08/22/2025 - Hopper 96503 - CG - Re-worked parameters so that they are pulled from the ApplicationParamters table instead of being harcoded
-- ===========================================================================================================


CREATE   PROCEDURE [dbo].[cmsvc_StopsReport_QueueReport]
@EventTableName varchar(100),
@EventTableRecID bigint,
@UserID int,
@Debug int = 0,
@DebugEmailAddress varchar(100) = ''
As

DECLARE @lEventTableName varchar(100) = @EventTableName,
@lEventTableRecID bigint = @EventTableRecID,
@lUserID int = @UserID, -- (Case Management Service user)
@lDebug int = @Debug,
@lDebugEmailAddress varchar(100) = @DebugEmailAddress


--DECLARE @lEventTableName varchar(100) = 'Report_MTDPositions',
--	   @lEventTableRecID bigint = 647094430,  --647096798,  -- DemoID = 629653
--	   @lUserID int = 19741, -- (Case Management Service user)
--	   @lDebug int = 1,
--	   @lDebugEmailAddress varchar(100) = 'carla.gibson@em.aus.com'


SET NOCOUNT ON

-- These will be pulled from the ApplicationParameters but default them here.  The ApplicationParameters table overrides these values
DECLARE @ReportTitle varchar(100) = 'Absconder Report',
@MinutesInRadius int = 5,
@RadiusInFeet int = 300,
@ShowStops int = 1,
@ShowStopDetails int = 1,
@IncludeZones int = 1,
@FilterByViolation int = 0,
@ShowViolationDetails int = 0,
@ShowAssociations int = 1,
@ShowAssociationDetails int = 1,

@StopsTopTen int = 1,
@StopsTopTenDescription varchar(100) = 'Total Time at Stop',
@StopsTopTenNumber int = 10,

@AssociationsTopTen int = 1,
@AssociationsTopTenDescription varchar(100) = 'Total Time with Associated',
@AssociationsTopTenNumber int = 10,

@NumberOfDays int = 60

-- ******************** Parameters ********************

DECLARE @AbsconderReportParameters1 varchar(255) = (SELECT TOP 1 ParamValue FROM Protech.dbo.ApplicationParameters WHERE AppName = 'Reports' AND ParamName = 'AbsconderReportParameters1')
DECLARE @AbsconderReportParameters2 varchar(255) = (SELECT TOP 1 ParamValue FROM Protech.dbo.ApplicationParameters WHERE AppName = 'Reports' AND ParamName = 'AbsconderReportParameters2')
DECLARE @AbsconderReportParameters3 varchar(255) = (SELECT TOP 1 ParamValue FROM Protech.dbo.ApplicationParameters WHERE AppName = 'Reports' AND ParamName = 'AbsconderReportParameters3')

-- Concatenate the three rows into a single string.
DECLARE @fullString varchar(MAX) = CONCAT(@AbsconderReportParameters1, ';', @AbsconderReportParameters2, ';', @AbsconderReportParameters3);

-- Split the full string into key-value pairs.
;WITH cteSplitPairs AS (
SELECT
RTRIM(LTRIM(value)) AS Pair
FROM STRING_SPLIT(@fullString, ';')
WHERE RTRIM(LTRIM(value)) <> '' -- Exclude any empty strings resulting from the split
)

-- Parse each pair into a separate key and value.
, cteParsedPairs AS (
SELECT
RTRIM(LTRIM(LEFT(Pair, CHARINDEX('=', Pair) - 1))) AS ParamName,
RTRIM(LTRIM(SUBSTRING(Pair, CHARINDEX('=', Pair) + 1, LEN(Pair)))) AS ParamValue
FROM cteSplitPairs
WHERE CHARINDEX('=', Pair) > 0 -- Ensure the string contains an equals sign
)
-- Set the values for each parameter by selecting from the parsed data.
SELECT
@ReportTitle = MAX(CASE WHEN ParamName = 'ReportTitle' THEN ParamValue END),
@StopsTopTenDescription = MAX(CASE WHEN ParamName = 'StopsTopTenDescription' THEN ParamValue END),
@AssociationsTopTenDescription = MAX(CASE WHEN ParamName = 'AssociationsTopTenDescription' THEN ParamValue END),
@MinutesInRadius = MAX(CASE WHEN ParamName = 'MinutesInRadius' THEN CAST(ParamValue AS INT) END),
@RadiusInFeet = MAX(CASE WHEN ParamName = 'RadiusInFeet' THEN CAST(ParamValue AS INT) END),
@IncludeZones = MAX(CASE WHEN ParamName = 'IncludeZones' THEN CAST(ParamValue AS INT) END),
@FilterByViolation = MAX(CASE WHEN ParamName = 'FilterByViolation' THEN CAST(ParamValue AS INT) END),
@ShowViolationDetails = MAX(CASE WHEN ParamName = 'ShowViolationDetails' THEN CAST(ParamValue AS INT) END),
@NumberOfDays = ISNULL(MAX(CASE WHEN ParamName = 'NumberOfDays' THEN CAST(ParamValue AS INT) END),@NumberOfDays),
@ShowStops = MAX(CASE WHEN ParamName = 'ShowStops' THEN CAST(ParamValue AS INT) END),
@ShowStopDetails = MAX(CASE WHEN ParamName = 'ShowStopDetails' THEN CAST(ParamValue AS INT) END),
@StopsTopTen = MAX(CASE WHEN ParamName = 'StopsTopTen' THEN CAST(ParamValue AS INT) END),
@StopsTopTenNumber = MAX(CASE WHEN ParamName = 'StopsTopTenNumber' THEN CAST(ParamValue AS INT) END),
@ShowAssociations = MAX(CASE WHEN ParamName = 'ShowAssociations' THEN CAST(ParamValue AS INT) END),
@ShowAssociationDetails = MAX(CASE WHEN ParamName = 'ShowAssociationDetails' THEN CAST(ParamValue AS INT) END),
@AssociationsTopTen = MAX(CASE WHEN ParamName = 'AssociationsTopTen' THEN CAST(ParamValue AS INT) END),
@AssociationsTopTenNumber = MAX(CASE WHEN ParamName = 'AssociationsTopTenNumber' THEN CAST(ParamValue AS INT) END)
FROM cteParsedPairs;

-- ******************** Parameters ********************




DECLARE @ContractOption_EnableStopsReport int = 138

DECLARE @GlobalDefaultUserID int  = 25989

DECLARE @Status varchar(100) = ''

-- Determine how many days to go back
DECLARE @StartDate datetime = Protech.dbo.TruncateTimeFromDate(DATEADD(DD,-@NumberOfDays,GetDate()))
DECLARE @EndDate datetime = Protech.dbo.EndOfDayDate(GetDate())

-- Default this and update it once we get the Ofender's data
DECLARE @OffenderLabel varchar(50) = 'Offender'

-- Store Offender info so we can look up other things
DECLARE @ContractID int,
@CustomerID int,
@Comment varchar(500)



-- Holds data about the offender and violation
DECLARE @OffenderData TABLE (
EventTableName varchar(25),
EventTableRecID bigint,
DemographicID int,
RuleID int,
ViolationStartTimeUTC datetime,
ViolationStartTimeLocal datetime,
LastName varchar(100),
FirstName varchar(50),
CustomerID int
)

-- Holds data about the contacts that get nofified on violation
DECLARE @ActionData TABLE (
DemographicID int,
ContactDemographicID int,
ContactLastName varchar(100),
ContactFirstName varchar(50),
EmailAddress varchar(75)
)



-- Query ReportPositions tables to extract DemographicID, RuleID, ViolationStartTime
INSERT INTO @OffenderData (EventTableName, EventTableRecID, DemographicID, RuleID, ViolationStartTimeUTC, ViolationStartTimeLocal, LastName, FirstName, CustomerID)
SELECT EventTableName = @lEventTableName,
EventTableRecID = @lEventTableRecID,
P.DemographicID,
P.RuleID,
ViolationStartTimeUTC = P.[Timestamp],
ViolationStartTimeLocal = CASE WHEN DATEPART(tz,CAST(P.[Timestamp] AS DATETIME) AT TIME ZONE 'UTC' AT TIME ZONE 'Eastern Standard Time') = -300 THEN
DATEADD(MI,P.StandardTimeOffset,P.[Timestamp]) ELSE DATEADD(MI,P.DaylightTimeOffset,P.[Timestamp]) END,
LastName,
FirstName,
CustomerID
FROM Reporting.dbo.Report_MTDPositions As P WITH(NOLOCK)
JOIN Protech.dbo.Demographics As D WITH(NOLOCK) ON D.DemographicID = P.DemographicID
WHERE 1=1
AND @lEventTableName = 'Report_MTDPositions'
AND @lEventTableRecID = P.RecID


-- Query ReportPositions tables to extract DemographicID, RuleID, ViolationStartTime
INSERT INTO @OffenderData (EventTableName, EventTableRecID, DemographicID, RuleID, ViolationStartTimeUTC, ViolationStartTimeLocal, LastName, FirstName, CustomerID)
SELECT EventTableName = @lEventTableName,
EventTableRecID = @lEventTableRecID,
P.DemographicID,
P.RuleID,
ViolationStartTimeUTC = P.[Timestamp],
ViolationStartTimeLocal = CASE WHEN DATEPART(tz,CAST(P.[Timestamp] AS DATETIME) AT TIME ZONE 'UTC' AT TIME ZONE 'Eastern Standard Time') = -300 THEN
DATEADD(MI,P.StandardTimeOffset,P.[Timestamp]) ELSE DATEADD(MI,P.DaylightTimeOffset,P.[Timestamp]) END,
LastName,
FirstName,
CustomerID
FROM Reporting.dbo.Report_EM_Positions As P WITH(NOLOCK)
JOIN Protech.dbo.Demographics As D WITH(NOLOCK) ON D.DemographicID = P.DemographicID
WHERE 1=1
AND @lEventTableName = 'Report_EM_Positions'
AND @lEventTableRecID = P.RecID


-- Query ReportPositions tables to extract DemographicID, RuleID, ViolationStartTime
INSERT INTO @OffenderData (EventTableName, EventTableRecID, DemographicID, RuleID, ViolationStartTimeUTC, ViolationStartTimeLocal, LastName, FirstName, CustomerID)
SELECT EventTableName = @lEventTableName,
EventTableRecID = @lEventTableRecID,
P.DemographicID,
P.RuleID,
ViolationStartTimeUTC = P.[Timestamp],
ViolationStartTimeLocal = CASE WHEN DATEPART(tz,CAST(P.[Timestamp] AS DATETIME) AT TIME ZONE 'UTC' AT TIME ZONE 'Eastern Standard Time') = -300 THEN
DATEADD(MI,P.StandardTimeOffset,P.[Timestamp]) ELSE DATEADD(MI,P.DaylightTimeOffset,P.[Timestamp]) END,
LastName,
FirstName,
CustomerID
FROM Reporting.dbo.Report_AlcoholTests As P WITH(NOLOCK)
JOIN Protech.dbo.Demographics As D WITH(NOLOCK) ON D.DemographicID = P.DemographicID
WHERE 1=1
AND @lEventTableName = 'Report_AlcoholTests'
AND @lEventTableRecID = P.AlcoholTestID




-- Now that we have the offender's data, store it in parameters to use later
SELECT TOP 1 @ContractID = C.ContractID, @CustomerID = C.CustomerID,
@Comment = @OffenderLabel + ': ' + D.LastName + ', ' + D.FirstName + ' - Violation Start Time: ' + CONVERT(varchar,D.ViolationStartTimeLocal,120)
FROM @OffenderData As D
JOIN Protech.dbo.Offenders As O WITH(NOLOCK) ON O.DemographicID = D.DemographicID
JOIN Protech.dbo.Customers As C WITH(NOLOCK) ON C.CustomerID = D.CustomerID
LEFT JOIN Protech.dbo.Contacts As Con WITH(NOLOCK) ON Con.DemographicID = O.PoDemoID


-- OffenderLabel is based on the offender's ContractID
SELECT @OffenderLabel = ISNULL(EF.[Value],'Offender')
FROM Protech.dbo.CustomFieldLabels CF WITH(NOLOCK)
JOIN Protech.dbo.EMMCustomFieldLabels EF WITH(NOLOCK) ON CF.CustomFieldLabelID = EF.CustomFieldLabelID
WHERE EF.ContractID = @ContractID
AND  CF.DefaultValue = 'Offender'
AND ISNULL(EF.IsDeleted,0) < 1


DECLARE @RunReport int = 0

SELECT @RunReport = CASE WHEN ISNULL(ContractOptionID,0) = @ContractOption_EnableStopsReport THEN 1 ELSE 0 END
FROM Protech.dbo.fn_ContractOptionAssignments_GetByCustomerID(@CustomerID)
WHERE ContractOptionID = @ContractOption_EnableStopsReport


IF @RunReport = 1
BEGIN

If @lDebugEmailAddress = ''
BEGIN
-- Query for email addresses that get notified on violation if they have a valid email address, regardless if they emailed notifications or not
INSERT INTO @ActionData (DemographicID, ContactDemographicID, ContactLastName, ContactFirstName, EmailAddress)
SELECT OffenderDemographicID = V.DemographicID,
ContactDemographicID = A.ContactDemoID,
ContactLastName = D.LastName,
ContactFirstName = D.FirstName,
EmailAddress = CASE WHEN RIGHT(D.Email,2) IN ('-s','-b') THEN SUBSTRING(D.Email, 0, LEN(D.Email) - 1) ELSE D.Email END
FROM @OffenderData As V
JOIN Protech.dbo.Rules As R WITH(NOLOCK) ON R.RuleID = V.RuleID
JOIN Protech.dbo.Actions As A WITH(NOLOCK) ON A.RuleID = R.RuleID --AND A.Email = 'Y'
JOIN Protech.dbo.Contacts As C WITH(NOLOCK) ON C.DemographicID = A.ContactDemoID --AND ActionEmail = 'Y'
JOIN Protech.dbo.Demographics As D WITH(NOLOCK) ON D.DemographicID = C.DemographicID
WHERE ISNULL(D.Email,'') LIKE '%_@__%.__%'
END

IF LEN(@lDebugEmailAddress) > 0
BEGIN
INSERT INTO @ActionData (DemographicID, ContactDemographicID, ContactLastName, ContactFirstName, EmailAddress)
SELECT DISTINCT OffenderDemographicID = V.DemographicID,
ContactDemographicID = 0,
ContactLastName = '',
ContactFirstName = '',
EmailAddress = @lDebugEmailAddress
FROM @OffenderData As V
JOIN Protech.dbo.Rules As R WITH(NOLOCK) ON R.RuleID = V.RuleID
JOIN Protech.dbo.Actions As A WITH(NOLOCK) ON A.RuleID = R.RuleID AND A.Email = 'Y'
JOIN Protech.dbo.Contacts As C WITH(NOLOCK) ON C.DemographicID = A.ContactDemoID AND ActionEmail = 'Y'
JOIN Protech.dbo.Demographics As D WITH(NOLOCK) ON D.DemographicID = C.DemographicID
END


-- Combine all email addresses in a semicolon-delimited list
DECLARE @EmailAddresses varchar(max)
SELECT @EmailAddresses =
STUFF (
(SELECT '; ' + EmailAddress
FROM @ActionData
FOR XML PATH(''), ROOT('MyString'), TYPE
).value('/MyString[1]','varchar(max)') , 1, 2, ''
)





-- Create an XML string from the data gathered
--	 This is the list of report parameters that gets passed to the Stops report
DECLARE @ParametersXML xml;
SET @ParametersXML = (
SELECT
ReportTitle = ISNULL(@ReportTitle,'Absconder Report'),
ReportName = D.LastName + ', ' + D.FirstName,
ReportType = 'Offender',
ReportID = CAST(D.DemographicID as varchar(10)),
StartDate = CONVERT(varchar, @StartDate,101),
EndDate = CONVERT(varchar, @EndDate,101),
UserID = CAST(@GlobalDefaultUserID as varchar(10)),
ShowDebug = 0,
ShowStops = CAST(@ShowStops as varchar(10)),
ShowStopDetails = CAST(@ShowStopDetails as varchar(10)),
IncludeZones = CAST(@IncludeZones as varchar(10)),
FilterByViolation = CAST(@FilterByViolation as varchar(10)),
ShowViolationDetails = CAST(@ShowViolationDetails as varchar(10)),
ShowAssociations = CAST(@ShowAssociations as varchar(10)),
ShowAssociationDetails = CAST(@ShowAssociationDetails as varchar(10)),
StopsTopTen = CAST(@StopsTopTen as varchar(10)),
StopsTopTenDescription = CAST(@StopsTopTenDescription as varchar(100)),
StopsTopTenNumber = CAST(@StopsTopTenNumber as varchar(10)),
AssociationsTopTen = CAST(@AssociationsTopTen as varchar(10)),
AssociationsTopTenDescription = CAST(@AssociationsTopTenDescription as varchar(100)),
AssociationsTopTenNumber = CAST(@AssociationsTopTenNumber as varchar(10)),
MinutesInRadius = CAST(@MinutesInRadius as varchar(10)),
RadiusInFeet = CAST(@RadiusInFeet as varchar(10)),
OffenderLabel = ISNULL(@OffenderLabel,''),
SubscriptionViolationID = CAST(D.EventTableRecID as varchar(20))
FROM @OffenderData As D
FOR XML PATH('Parameters'), TYPE
);

IF (LEN(ISNULL(@EmailAddresses,'')) = 0)
BEGIN
SET @Status = 'No email address, report NOT queued!'
END
ELSE
BEGIN
-- Build a row to insert into the ReportSubscriptionData table
INSERT INTO Protech.dbo.ReportSubscriptionData (RDLName, EmailAddresses, EmailAddresses_CC, EmailAddresses_BCC,  [RenderFormat], [Subject],  [Comment],  ParametersXML, Queued, UserID)
SELECT RDLName = 'StopsAndAssociations',
EmailAddresses = @EmailAddresses,
EmailAddresses_CC = '',
EmailAddresses_BCC = '',
[RenderFormat] = 'PDF',
[Subject] = 'Absconder Report executed at GetDate()',
[Comment] = @Comment,
ParametersXML = @ParametersXML,
Queued = CASE WHEN @lDebug = 1 THEN 1 ELSE 0 END,  -- If we are in debug mode, then set Queued = 2.  Only Queued = 0 will trigger the report to run.
UserID = @lUserID

SET @Status = 'Report queued!'
END

END

ELSE
BEGIN
SET @Status = 'Contract Option not supported'
END


SELECT *,
ParametersXML = @ParametersXML,
EmailAddresses = @EmailAddresses,
[Status] = @Status
FROM @OffenderData



GO
/****** Object:  StoredProcedure [dbo].[cmsvr_DeleteFollowUpReminders]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--=============================================================================
-- Procedure Name: cmsvr_DeleteFollowUpReminders
-- Description...: Deletes any follow-up reminders that exist for the specified
--                 device.
-- Author........: Phillip R. Hickman
-- Date Created..: 2018-08-08
-------------------------------------------------------------------------------
-- Revisions
--	2018-08-08 - PRH - Initial procedure created.
--=============================================================================
CREATE PROC [dbo].[cmsvr_DeleteFollowUpReminders]
	@DeviceID	INT,
	@DeviceType	INT
AS
BEGIN
	SET NOCOUNT ON

	DELETE 
	FROM	dbo.FollowUpReminders 
	WHERE	DeviceID = @DeviceID 
	AND		DeviceType = @DeviceType 
	AND		IsProcessed = 0
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_FollowUpReminders_Insert]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[cmsvr_FollowUpReminders_Insert]
	@DeviceID			INT,
	@PositionRecID		INT,
	@FollowUpType		VARCHAR(50),
	@FollowUpDate		DATETIME,
	@HwRule				INT,
	@HwRuleBitIndex		INT
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [FollowUpReminders]
	(
		[DeviceID],
		[PositionRecID],
		[FollowUpType],
		[FollowUpDate],
		[HwRule],
		[HwRuleBitIndex]
	)
	VALUES
	(
		@DeviceID,
		@PositionRecID,
		@FollowUpType,
		@FollowUpDate,
		@HwRule,
		@HwRuleBitIndex
	)
END

GO
/****** Object:  StoredProcedure [dbo].[cmsvr_FollowUpReminders_SelectList]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cmsvr_FollowUpReminders_SelectList]
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		FUR.FollowUpReminderID,
		FUR.DeviceID,
		FUR.PositionRecID,
		FUR.FollowUpType,
		FUR.FollowUpDate,
		FUR.HwRule,
		FUR.HwRuleBitIndex,
		FUR.IsProcessed,
		OD.DemographicID,
		FUR.DeviceType
	FROM [FollowUpReminders] FUR WITH(NOLOCK)
	INNER JOIN [Protech]..[OffenderDevices] OD WITH(NOLOCK) ON OD.DeviceID = FUR.DeviceID
		AND OD.DemographicID > 0
		AND FUR.IsProcessed = 0
		AND Fur.FollowUpDate <= GETDATE()
	WHERE FUR.DeviceType NOT IN (244, 256) -- Exclude CAM and S.M.A.R.T. Mobile devices.
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_FollowUpReminders_SetProcessed]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[cmsvr_FollowUpReminders_SetProcessed]
	@FollowUpReminderID	INT
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [FollowUpReminders] SET
		[IsProcessed] = 1
	WHERE [FollowUpReminderID] = @FollowUpReminderID
END

GO
/****** Object:  StoredProcedure [dbo].[cmsvr_GetAssignedOfficerDetails]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shannon Maness
-- Create date: 08/24/2010
-- Description:	Returns information for an offender's assigned officer
-- =============================================
CREATE PROCEDURE [dbo].[cmsvr_GetAssignedOfficerDetails]
	@DemographicID int
AS
BEGIN
	SELECT OfficerDemoID=PO.DemographicID, PO.LastName, PO.FirstName, PO.Email
	FROM Protech.dbo.Offenders AS O
	JOIN Protech.dbo.Demographics AS PO ON PO.DemographicID = O.PoDemoID
	WHERE O.DemographicID = @DemographicID
END

GO
/****** Object:  StoredProcedure [dbo].[cmsvr_GetEMPositionRecord]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[cmsvr_GetEMPositionRecord]
	@PositionRecID	INT
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		[RecID],
		[DemographicID],
		[DeviceID],
		[TimeStamp],
		[StoredTimeStamp],
		[DeviceStatus],
		CallRecID,
		[RuleStatus],
		[RuleID],
		[HwRule],
		[Processed],
		[StandardTimeOffset],
		[DaylightTimeOffset],
		[HardwareType],
		[EventStatus],
		[OneTimeSchedID],
		[HWRuleBitIndex],
		[DeviceStatus2]
	FROM [Report_EM_Positions] WITH(NOLOCK)
	WHERE RecID = @PositionRecID
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_GetLastAssignedBracelet]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shannon Maness
-- Create date: 8/20/2010
-- Description:	Finds the last bracelet assigned to a specific offender
-- =============================================
CREATE PROCEDURE [dbo].[cmsvr_GetLastAssignedBracelet]
	@DemographicID int
AS
BEGIN
	SELECT TOP 1 DemographicID=H.OwnerRecID, BraceletID=H.HardwareID, H.AssignmentDate
	FROM Protech.dbo.HardwareAssignmentHistory AS H
	WHERE H.OwnerRecID = @DemographicID 
	AND H.OwnerType = 'O'
	AND H.HardwareType = 'B'
	AND H.AssignmentType = 'A'
	ORDER BY H.AssignmentDate DESC
END

GO
/****** Object:  StoredProcedure [dbo].[cmsvr_IsDeviceRecalled]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Shannon Maness
-- Create date: 8/20/2010
-- Description:	Scans the recall table to see if a device already has an outstanding recall record.
-- =============================================
CREATE PROCEDURE [dbo].[cmsvr_IsDeviceRecalled]
	@DeviceType int, 
	@DeviceID int, 
	@RecallType int
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @AutoRecallEnabled char(1)
	IF @DeviceType = 30
		SELECT @AutoRecallEnabled = CASE WHEN A.CustomerRecID = 1 THEN 'N' ELSE 'Y' END
		FROM Protech.dbo.AssemblyCHGs AS A
		WHERE A.ChgID = @DeviceID
	ELSE IF @DeviceType = 29
		SELECT @AutoRecallEnabled = CASE WHEN A.CustomerRecID = 1 THEN 'N' ELSE 'Y' END
		FROM Protech.dbo.AssemblyMTDs AS A
		WHERE A.MtdID = @DeviceID
	ELSE IF @DeviceType = 2
		SELECT @AutoRecallEnabled = CASE WHEN A.CustomerRecID = 1 THEN 'N' ELSE 'Y' END
		FROM Protech.dbo.AssemblyBracelets AS A
		WHERE A.BraceletID = @DeviceID
	ELSE IF @DeviceType = 111 OR @DeviceType = 110 OR @DeviceType = 244 OR @DeviceType = 256
		SELECT @AutoRecallEnabled = CASE WHEN A.CustomerID = 1 THEN 'N' ELSE 'Y' END
		FROM Protech.dbo.Assemblies AS A
		WHERE A.AssemblyRecID = @DeviceID
	SET NOCOUNT OFF

	SELECT DeviceType=@DeviceType, 
		DeviceID=@DeviceID, 
		AutoRecallEnabled=@AutoRecallEnabled,
		Recalled=CASE WHEN (
			SELECT COUNT(RecID)  
			FROM Protech.dbo.RecalledHardware AS R
			WHERE R.HwType = @DeviceType
			AND R.HwRecID = @DeviceID
			AND R.RecallType = @RecallType
			AND R.DateAddressed IS NULL
			) > 0 THEN 'Y' ELSE 'N' END
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_MTD_Positions_UpdateProcessed]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_Report_MTD_Positions_UpdateProcessed
PARAMETERS:@RecID
DESCRIPTION: Updates a Position record marking it processed
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_MTD_Positions_UpdateProcessed]
	@RecID int
AS
UPDATE Report_MTDPositions
SET Processed = 'Y'
WHERE RecID = @RecID
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_MTD_SummaryData_GetUnclearedFirstViolations]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***************************************************************************
NAME:		dvsr_Report_MTD_SummaryData_GetUnclearedFirstViolations
PARAMETERS:	@DemographicID, @DeviceId, @RuleId, @HwRulet, @Timestamp
DESCRIPTION: Gets all uncleared first violations that match the specificed 'Cleared' position (clsPosition)
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS: on 05/17/2010, ER added an index hint INDEX (IX_Report_MTD_SummaryData_EndRptRecId)
			05/28/09 (SLM) - Changed the old-style join to a new-style join
			02/27/2012 (jlafay) - Added ZoneRecId as a parameter used to match violations for the clear.
			02/27/2014 (PRH) - Changed order in which HwRuleBitIndex was processed.
			04/29/2014 (SLM) - Added ISNULLs to allow for nulls or zeros.
			11/21/2016 (jlafay) - Redeclared parameters to alleviate possible parameter sniffing issue.
			5/10/2017  (UOkoye) - Changed index hint to (Start_EndRecID) to cover both join and where filters
			4/4/18 (SLM) - Added support for ClearRecID parameter to be used in matching to make sure
			               the first violation was stored before the clear when it has the same timestamp.
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_MTD_SummaryData_GetUnclearedFirstViolations]
	@DemographicID int,
	@DeviceId int,
	@RuleId int,
	@HwRule int,
	@Timestamp datetime,
	@ZoneRecID bigint,
	@HwRuleBitIndex int,
	@ClearRecID int
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @DemoId int = @DemographicID,
		@DevId int = @DeviceId,
		@RulId int = @RuleId,
		@HwRul int = @HwRule,
		@Time datetime = @Timestamp,
		@ZoneId bigint = @ZoneRecID,
		@BitIndex int = @HwRuleBitIndex,
		@ClrRecID int= @ClearRecID

	SELECT	S.RecID, 
			S.StartRptRecID
	FROM	Report_MTD_SummaryData AS S WITH (NOLOCK,INDEX (Start_EndRecID)) --(IX_Report_MTD_SummaryData_StartRptRecId))
	JOIN	Report_MTDPositions AS P WITH (NOLOCK) ON P.RecID = S.StartRptRecID
	WHERE	S.EndRptRecID = 0
	AND		P.DemographicID = @DemoId
	AND		P.DeviceID = @DevId
	AND		((@HwRul = 0 AND P.RuleID = @RulId ) 			-- 02/25/05
				OR ( @HwRul > 0 AND P.HwRule = @HwRul))
	AND		((ISNULL(@BitIndex, 0) = 0 AND ISNULL(P.HWRuleBitIndex, 0) = 0)
				OR ( P.HWRuleBitIndex = @BitIndex))
	AND		((P.TimeStamp < @Time)
	          OR (P.TimeStamp = @Time AND P.RecID < @ClrRecID))
	AND		((ISNULL(@ZoneId, 0) = 0) AND ISNULL(P.ZoneRecID, 0) = 0 
				OR  (P.ZoneRecID = @ZoneId))
OPTION (RECOMPILE)
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_MTD_SummaryData_GetUnclearedFirstViolations_SLM]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***************************************************************************
NAME:		dvsr_Report_MTD_SummaryData_GetUnclearedFirstViolations
PARAMETERS:	@DemographicID, @DeviceId, @RuleId, @HwRulet, @Timestamp
DESCRIPTION: Gets all uncleared first violations that match the specificed 'Cleared' position (clsPosition)
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS: on 05/17/2010, ER added an index hint INDEX (IX_Report_MTD_SummaryData_EndRptRecId)
			05/28/09 (SLM) - Changed the old-style join to a new-style join
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_MTD_SummaryData_GetUnclearedFirstViolations_SLM]
	@DemographicID int,
	@DeviceId int,
	@RuleId int,
	@HwRule int,
	@Timestamp datetime
AS
BEGIN
	SET NOCOUNT ON

	SELECT S.RecID, S.StartRptRecID
	FROM Report_MTD_SummaryData AS S WITH (NOLOCK,INDEX (IX_Report_MTD_SummaryData_EndRptRecId))
	INNER JOIN Report_MTDPositions AS P WITH (NOLOCK) ON P.RecID = S.StartRptRecID
	WHERE S.EndRptRecID = 0
		  AND P.DemographicID = @DemographicID
		  AND P.DeviceID = @DeviceId
		  AND ( ( @HwRule = 0 AND P.RuleID = @RuleId ) 		-- 09/16/04
			 OR ( @HwRule > 0 AND P.HwRule = @HwRule ) )	-- 09/16/04
		  AND P.TimeStamp <= @Timestamp
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_MTD_SummaryData_GetUnclearedFirstViolations_SLM_test2]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

-- 05/28/09 (SLM) - Changed the old-style join to a new-style join
/***************************************************************************
NAME:		dvsr_Report_MTD_SummaryData_GetUnclearedFirstViolations
PARAMETERS:	@DemographicID, @DeviceId, @RuleId, @HwRulet, @Timestamp
DESCRIPTION: Gets all uncleared first violations that match the specificed 'Cleared' position (clsPosition)
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:
***************************************************************************/

CREATE PROCEDURE [dbo].[cmsvr_Report_MTD_SummaryData_GetUnclearedFirstViolations_SLM_test2]
	@DemographicID int,
	@DeviceId int,
	@RuleId int,
	@HwRule int,
	@Timestamp datetime
AS
BEGIN

set nocount on


SELECT S.RecID, S.StartRptRecID
FROM Report_MTD_SummaryData AS S WITH (NOLOCK,INDEX (IX_Report_MTD_SummaryData_EndRptRecId))
INNER JOIN Report_MTDPositions AS P WITH (NOLOCK) ON P.RecID = S.StartRptRecID
WHERE S.EndRptRecID = 0
      AND P.DemographicID = @DemographicID
      AND P.DeviceID = @DeviceId
      AND ( ( @HwRule = 0 AND P.RuleID = @RuleId ) 		-- 09/16/04
         OR ( @HwRule > 0 AND P.HwRule = @HwRule ) )	-- 09/16/04
      AND P.TimeStamp <= @Timestamp
END

GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_MTD_SummaryData_GetUnClearedFirstViolationsByDemoId]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***************************************************************************
NAME:		cmsvr_Report_MTD_SummaryData_GetUnClearedFirstViolationsByDemoId
PARAMETERS:@DemographicId
DESCRIPTION: Gets all uncleared first violations Note: this is used to clear all violations
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/28/2004
REVISIONS:	11/12/04 - CG - Added HardwareType
		05/01/06 - CG - Added @ClearAllTimeStamp - Only return pendings that are less than or equal to
                   		the clear-all timestamp.
		4/4/18 (SLM) - Added support for ClearRecID parameter to be used in matching to make sure
		               the first violation was stored before the clear when it has the same timestamp.
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_MTD_SummaryData_GetUnClearedFirstViolationsByDemoId]
	@DemographicId int,
	@HardwareType int,
	@ClearAllTimeStamp datetime,
	@ClearRecID int
AS
BEGIN
	SET NOCOUNT ON

	SELECT     S.RecID, S.StartRptRecID
	FROM       Report_MTD_SummaryData AS S WITH (NOLOCK) 
	INNER JOIN Report_MTDPositions AS P WITH (NOLOCK) ON S.StartRptRecID = P.RecID
	WHERE     (S.EndRptRecID = 0) 
		AND (P.DemographicID = @DemographicId) 
		AND (P.HardwareType = @HardwareType) 
		AND ((P.TimeStamp < @ClearAllTimeStamp) OR
			 (P.TimeStamp = @ClearAllTimeStamp AND P.RecID < @ClearRecID))
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_MTD_SummaryData_GetUnClearedFirstViolationsByDemoId_SLM]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***************************************************************************
NAME:		dvsr_Report_MTD_SummaryData_GetUnClearedFirstViolationsByDemoId
PARAMETERS:@DemographicId
DESCRIPTION: Gets all uncleared first violations Note: this is used to clear all violations
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/28/2004
REVISIONS:	11/12/04 - CG - Added HardwareType
		05/01/06 - CG - Added @ClearAllTimeStamp - Only return pendings that are less than or equal to
                   		the clear-all timestamp.
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_MTD_SummaryData_GetUnClearedFirstViolationsByDemoId_SLM]
	@DemographicId int,
	@HardwareType int,
	@ClearAllTimeStamp datetime
AS
BEGIN
	SET NOCOUNT ON

	SELECT     S.RecID, S.StartRptRecID
	FROM       Report_MTD_SummaryData AS S WITH (NOLOCK) 
	INNER JOIN Report_MTDPositions AS P WITH (NOLOCK) ON S.StartRptRecID = P.RecID
	WHERE     (S.EndRptRecID = 0) 
		AND (P.DemographicID = @DemographicId) 
		AND (P.HardwareType = @HardwareType) 
		AND (P.TimeStamp <= @ClearAllTimeStamp)
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_MTD_SummaryData_GetUnclearedFirstViolationsOLD]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/***************************************************************************
NAME:		dvsr_Report_MTD_SummaryData_GetUnclearedFirstViolations
PARAMETERS:	@DemographicID, @DeviceId, @RuleId, @HwRulet, @Timestamp
DESCRIPTION: Gets all uncleared first violations that match the specificed 'Cleared' position (clsPosition)
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS: on 05/17/2010, ER added an index hint INDEX (IX_Report_MTD_SummaryData_EndRptRecId)
			05/28/09 (SLM) - Changed the old-style join to a new-style join
			02/27/2012 (jlafay) - Added ZoneRecId as a parameter used to match violations for the clear.
			02/27/2014 (PRH) - Changed order in which HwRuleBitIndex was processed.
			04/29/2014 (SLM) - Added ISNULLs to allow for nulls or zeros.
			11/21/2016 (jlafay) - Redeclared parameters to alleviate possible parameter sniffing issue.
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_MTD_SummaryData_GetUnclearedFirstViolationsOLD]
	@DemographicID int,
	@DeviceId int,
	@RuleId int,
	@HwRule int,
	@Timestamp datetime,
	@ZoneRecID bigint,
	@HwRuleBitIndex int
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @DemoId int = @DemographicID,
		@DevId int = @DeviceId,
		@RulId int = @RuleId,
		@HwRul int = @HwRule,
		@Time datetime = @Timestamp,
		@ZoneId bigint = @ZoneRecID,
		@BitIndex int = @HwRuleBitIndex

	SELECT	S.RecID, 
			S.StartRptRecID
	FROM	Report_MTD_SummaryData AS S WITH (NOLOCK,INDEX (IX_Report_MTD_SummaryData_EndRptRecId))
	JOIN	Report_MTDPositions AS P WITH (NOLOCK) ON P.RecID = S.StartRptRecID
	WHERE	S.EndRptRecID = 0
	AND		P.DemographicID = @DemoId
	AND		P.DeviceID = @DevId
	AND		((@HwRul = 0 AND P.RuleID = @RulId ) 			-- 02/25/05
				OR ( @HwRul > 0 AND P.HwRule = @HwRul))
	AND		((ISNULL(@BitIndex, 0) = 0 AND ISNULL(P.HWRuleBitIndex, 0) = 0)
				OR ( P.HWRuleBitIndex = @BitIndex))
	AND		P.TimeStamp <= @Time
	AND		((ISNULL(@ZoneId, 0) = 0) AND ISNULL(P.ZoneRecID, 0) = 0 
				OR  (P.ZoneRecID = @ZoneId))
	
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_MTD_SummaryData_InsertCleared]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_MTD_SummaryData_InsertCleared
PARAMETERS:@EndRepRecId
DESCRIPTION: Inserts a Cleared Violation record into the SummaryData table 
		Note: this is used in rare circumstances when a Cleared record is received but a matching 1st record cannot be found
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/28/2004
REVISIONS:
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_MTD_SummaryData_InsertCleared]
	@EndRepRecId int 
AS
INSERT Report_MTD_SummaryData (StartRptRecID, EndRptRecID) 
VALUES(0, @EndRepRecId)
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_MTD_SummaryData_InsertFirstViolation]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_MTD_SummaryData_InsertFirstViolation
PARAMETERS:	@StartRptRecID.  
DESCRIPTION: Inserts a First Violation record into the SummaryData table
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_MTD_SummaryData_InsertFirstViolation] 
	@StartRptRecID as int
AS
INSERT Report_MTD_SummaryData (StartRptRecID, EndRptRecID) VALUES(@StartRptRecID, 0)
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_MTD_SummaryData_UpdateCleared]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_MTD_SummaryData_UpdateCleared
PARAMETERS:@EndRptRecID, @RecId.  
DESCRIPTION: Updates a First Violation record with the Cleared record ID
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/28/2004
REVISIONS:
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_MTD_SummaryData_UpdateCleared] 
	@EndRptRecID int,
	@RecId int
AS
UPDATE Report_MTD_SummaryData
SET EndRptRecID = @EndRptRecID
WHERE RecID = @RecId
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_Positions_UpdateProcessed]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_Report_Positions_UpdateProcessed
PARAMETERS:@RecID
DESCRIPTION: Updates a Position record marking it processed
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_Positions_UpdateProcessed]
	@RecID int
AS
UPDATE Report_Positions
SET Processed = 'Y'
WHERE RecID = @RecID
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_RF_Positions_UpdateProcessed]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_RF_Positions_UpdateProcessed
PARAMETERS:@RecID
DESCRIPTION: Updates a Position record marking it processed
DEVELOPER: 	Shannon Manness
CREATE DATE:	04/20/2004
REVISIONS:
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_RF_Positions_UpdateProcessed]
	@RecID int
AS
UPDATE Report_EM_Positions
SET Processed = 'Y'
WHERE RecID = @RecID
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_RF_SummaryData_GetUnclearedFirstViolations]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***************************************************************************
NAME:		cmsvr_Report_RF_SummaryData_GetUnclearedFirstViolations
PARAMETERS:	@DemographicID, @DeviceId, @RuleId, @HwRulet, @Timestamp
DESCRIPTION: Gets all uncleared first violations that match the specificed 'Cleared' position (clsPosition)
DEVELOPER: 	Shannon Manness
CREATE DATE:	04/20/2004
REVISIONS:	02/25/05 - CG - Added code to match HwRule instead of RuleID (this will prevent
			Hardware Rules from not clearing when the rule is changed while it's in violation.)
			05/28/09 (SLM) - Changed the old-style join to a new-style join
			01/28/14 (PRH) - Updated for First/Clears on ExtraTx events.
			4/4/18 (SLM) - Added support for (Clear) RecID parameter to be used in matching to make sure
			               the first violation was stored before the clear when it has the same timestamp.
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_RF_SummaryData_GetUnclearedFirstViolations]
	@DemographicID int,
	@DeviceId int,
	@RuleId int,
	@HwRule int,
	@Timestamp datetime,
	@HwRuleBitIndex int,
	@RecID int = 0
AS
BEGIN
	SET NOCOUNT ON

	IF @HwRuleBitIndex = 206
	BEGIN
		SELECT	S.RecID,
				S.StartRptRecID
		FROM	Report_EM_SummaryData	S WITH(NOLOCK)
		JOIN	Report_EM_Positions		P WITH(NOLOCK) ON P.RecID = S.StartRptRecID
		JOIN	Report_EventParams	   SP WITH(NOLOCK) ON SP.EventTableRecID = S.StartRptRecID
			AND SP.EventTableLookupValue = 2
			AND SP.ParameterTypeLookupValue IN (1, 7)
		JOIN	Report_EventParams	   EP WITH(NOLOCK) ON EP.EventTableRecID = @RecID
			AND EP.EventTableLookupValue = 2
			AND EP.ParameterTypeLookupValue IN (1, 7)
		WHERE	S.EndRptRecID = 0
			AND P.DemographicID = @DemographicID
			AND P.DeviceID = @DeviceId
			AND P.TimeStamp <= @Timestamp
			AND	EP.ParameterTypeLookupValue = SP.ParameterTypeLookupValue
			AND EP.ParameterValue = SP.ParameterValue
			AND P.HwRuleBitIndex = @HwRuleBitIndex
	END
	ELSE
	BEGIN
		SELECT S.RecID, S.StartRptRecID
		FROM Report_EM_SummaryData AS S WITH (NOLOCK)
		INNER JOIN Report_EM_Positions AS P WITH (NOLOCK) ON P.RecID = S.StartRptRecID
		WHERE S.EndRptRecID = 0
			  AND P.DemographicID = @DemographicID
			  AND P.DeviceID = @DeviceId
			  AND ( ( P.TimeStamp < @Timestamp ) OR
				    ( P.TimeStamp = @Timestamp AND P.RecID < @RecID ) )
			  AND ( ( @HwRule = 0 AND P.RuleID = @RuleId ) 			-- 02/25/05
				 OR ( @HwRule NOT IN (0, 1) AND P.HwRule = @HwRule) 
				 OR ( @HwRule = 1 AND
					  P.HWRuleBitIndex = @HwRuleBitIndex))
		END
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_RF_SummaryData_GetUnclearedFirstViolations_SLM]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***************************************************************************
NAME:		cmsvr_Report_RF_SummaryData_GetUnclearedFirstViolations
PARAMETERS:	@DemographicID, @DeviceId, @RuleId, @HwRulet, @Timestamp
DESCRIPTION: Gets all uncleared first violations that match the specificed 'Cleared' position (clsPosition)
DEVELOPER: 	Shannon Manness
CREATE DATE:	04/20/2004
REVISIONS:	02/25/05 - CG - Added code to match HwRule instead of RuleID (this will prevent
			Hardware Rules from not clearing when the rule is changed while it's in violation.)
			05/28/09 (SLM) - Changed the old-style join to a new-style join
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_RF_SummaryData_GetUnclearedFirstViolations_SLM]
	@DemographicID int,
	@DeviceId int,
	@RuleId int,
	@HwRule int,
	@Timestamp datetime
AS
BEGIN
	SET NOCOUNT ON

	SELECT S.RecID, S.StartRptRecID
	FROM Report_EM_SummaryData AS S WITH (NOLOCK)
	INNER JOIN Report_EM_Positions AS P WITH (NOLOCK) ON P.RecID = S.StartRptRecID
	WHERE S.EndRptRecID = 0
		  AND P.DemographicID = @DemographicID
		  AND P.DeviceID = @DeviceId
		  AND ( ( @HwRule = 0 AND P.RuleID = @RuleId ) 			-- 02/25/05
			 OR ( @HwRule > 0 AND P.HwRule = @HwRule ) )	-- 02/25/05
		  AND P.TimeStamp <= @Timestamp
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_RF_SummaryData_GetUnClearedFirstViolationsByDemoId]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***************************************************************************
NAME:		cmsvr_Report_RF_SummaryData_GetUnClearedFirstViolationsByDemoId
PARAMETERS:@DemographicId
DESCRIPTION: Gets all uncleared first violations Note: this is used to clear all violations
DEVELOPER: 	Shannon Manness
CREATE DATE:	04/20/2004
REVISIONS:	12/15/04 - Added HardwareType Parameter (not used, see notes below)
		05/22/06 - CG - Added @ClearAllTimeStamp - Only return pendings that are less than or equal to
                   		the clear-all timestamp.
		02/03/11 - Changed P.StoredTimeStamp to P.TimeStamp JJL
		4/4/18 (SLM) - Added support for ClearRecID parameter to be used in matching to make sure
		               the first violation was stored before the clear when it has the same timestamp.
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_RF_SummaryData_GetUnClearedFirstViolationsByDemoId]
	@DemographicId int,
	@HardwareType int = -1,	-- Not used, this is required in the Passive SP, needs to be here for compatibility,
	@ClearAllTimeStamp datetime,
	@ClearRecID int
AS
BEGIN
	SET NOCOUNT ON

	SELECT     S.RecID, S.StartRptRecID
	FROM       Report_EM_SummaryData AS S WITH (NOLOCK)
	INNER JOIN Report_EM_Positions AS P WITH (NOLOCK) ON S.StartRptRecID = P.RecID
	WHERE     (S.EndRptRecID = 0)
		 AND (P.DemographicID = @DemographicId) 
		AND ((P.TimeStamp < @ClearAllTimeStamp) OR
			 (P.TimeStamp = @ClearAllTimeStamp AND P.RecID < @ClearRecID))
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_RF_SummaryData_GetUnClearedFirstViolationsByDemoId_SLM]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***************************************************************************
NAME:		cmsvr_Report_RF_SummaryData_GetUnClearedFirstViolationsByDemoId
PARAMETERS:@DemographicId
DESCRIPTION: Gets all uncleared first violations Note: this is used to clear all violations
DEVELOPER: 	Shannon Manness
CREATE DATE:	04/20/2004
REVISIONS:	12/15/04 - Added HardwareType Parameter (not used, see notes below)
		05/22/06 - CG - Added @ClearAllTimeStamp - Only return pendings that are less than or equal to
                   		the clear-all timestamp.
		02/03/11 - Changed P.StoredTimeStamp to P.TimeStamp JJL
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_RF_SummaryData_GetUnClearedFirstViolationsByDemoId_SLM]
	@DemographicId int,
	@HardwareType int = -1,	-- Not used, this is required in the Passive SP, needs to be here for compatibility,
	@ClearAllTimeStamp datetime
AS
BEGIN
	SET NOCOUNT ON

	SELECT     S.RecID, S.StartRptRecID
	FROM       Report_EM_SummaryData AS S WITH (NOLOCK)
	INNER JOIN Report_EM_Positions AS P WITH (NOLOCK) ON S.StartRptRecID = P.RecID
	WHERE     (S.EndRptRecID = 0)
		 AND (P.DemographicID = @DemographicId) 
		 AND (P.TimeStamp <= @ClearAllTimeStamp)
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_RF_SummaryData_InsertCleared]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_RF_SummaryData_InsertCleared
PARAMETERS:@EndRepRecId
DESCRIPTION: Inserts a Cleared Violation record into the SummaryData table 
		Note: this is used in rare circumstances when a Cleared record is received but a matching 1st record cannot be found
DEVELOPER: 	Shannon Manness
CREATE DATE:	04/20/2004
REVISIONS:
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_RF_SummaryData_InsertCleared]
	@EndRepRecId int 
AS
INSERT Report_EM_SummaryData (StartRptRecID, EndRptRecID) 
VALUES(0, @EndRepRecId)
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_RF_SummaryData_InsertFirstViolation]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_RF_SummaryData_InsertFirstViolation
PARAMETERS:	@StartRptRecID.  
DESCRIPTION: Inserts a First Violation record into the SummaryData table
DEVELOPER: 	Shannon Manness
CREATE DATE:	04/20/2004
REVISIONS:
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_RF_SummaryData_InsertFirstViolation] 
	@StartRptRecID as int
AS
INSERT Report_EM_SummaryData (StartRptRecID, EndRptRecID) VALUES(@StartRptRecID, 0)
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_RF_SummaryData_UpdateCleared]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_RF_SummaryData_UpdateCleared
PARAMETERS:@EndRptRecID, @RecId.  
DESCRIPTION: Updates a First Violation record with the Cleared record ID
DEVELOPER: 	Shannon Manness
CREATE DATE:	04/20/2004
REVISIONS:
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_RF_SummaryData_UpdateCleared] 
	@EndRptRecID int,
	@RecId int
AS
UPDATE Report_EM_SummaryData
SET EndRptRecID = @EndRptRecID
WHERE RecID = @RecId
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_SummaryData_GetUnclearedFirstViolations]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_SummaryData_GetUnclearedFirstViolations
PARAMETERS:	@DemographicID, @DeviceId, @RuleId, @HwRulet, @Timestamp
DESCRIPTION: Gets all uncleared first violations that match the specificed 'Cleared' position (clsPosition)
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:
***************************************************************************/

CREATE PROCEDURE [dbo].[cmsvr_Report_SummaryData_GetUnclearedFirstViolations]
	@DemographicID int,
	@DeviceId int,
	@RuleId int,
	@HwRule int,
	@Timestamp datetime
AS

Declare @RS_FIRST_VIOLATION int
Set @RS_FIRST_VIOLATION = 16  -- &H10& 16   BIT 04

SELECT S.RecID, S.StartRptRecID
FROM Report_SummaryData AS S, Report_Positions AS P
WHERE S.EndRptRecID = 0
      AND P.RecID = S.StartRptRecID
      AND P.DemographicID = @DemographicID
--      AND P.DeviceID = @DeviceId  --SLM - Table currently does not support a DeviceID
      AND (P.RuleStatus & @RS_FIRST_VIOLATION) = @RS_FIRST_VIOLATION
      AND ( (@HwRule = 0 AND P.RuleID = @RuleId) 		-- 09/16/04
	OR ( @HwRule > 0 AND P.HwRule = @HwRule ) )	-- 09/16/04
      AND P.TimeStamp <= @Timestamp
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_SummaryData_GetUnClearedFirstViolationsByDemoId]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/***************************************************************************
NAME:		dvsr_Report_SummaryData_GetUnClearedFirstViolationsByDemoId
PARAMETERS:@DemographicId
DESCRIPTION: Gets all uncleared first violations Note: this is used to clear all violations
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:	12/15/04 - Added HardwareType Parameter (not used, see notes below)
		05/01/06 - CG - Added @ClearAllTimeStamp - Only return pendings that are less than or equal to
                   		the clear-all timestamp.
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_SummaryData_GetUnClearedFirstViolationsByDemoId]
	@DemographicId int,
	@HardwareType int = -1,	-- Not used, this is required in the Passive SP, needs to be here for compatibility
	@ClearAllTimeStamp datetime
AS

Declare @RS_FIRST_VIOLATION int
Set @RS_FIRST_VIOLATION = 16 -- &H10& 16   BIT 04

SELECT S.RecID, S.StartRptRecID 
FROM Report_SummaryData AS S, Report_Positions AS P 
WHERE S.EndRptRecID = 0
      AND P.RecID = S.StartRptRecID
      AND P.DemographicID = @DemographicId
      AND (P.RuleStatus & @RS_FIRST_VIOLATION) = @RS_FIRST_VIOLATION
     AND P.StoredTimestamp <= @ClearAllTimeStamp

GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_SummaryData_InsertCleared]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_SummaryData_InsertCleared
PARAMETERS:@EndRepRecId
DESCRIPTION: Inserts a Cleared Violation record into the SummaryData table 
		Note: this is used in rare circumstances when a Cleared record is received but a matching 1st record cannot be found
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_SummaryData_InsertCleared]
	@EndRepRecId int 
AS
INSERT Report_SummaryData (StartRptRecID, EndRptRecID) 
VALUES(0, @EndRepRecId)
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_SummaryData_InsertFirstViolation]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_SummaryData_InsertFirstViolation
PARAMETERS:	@StartRptRecID.  
DESCRIPTION: Inserts a First Violation record into the SummaryData table
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_SummaryData_InsertFirstViolation] 
	@StartRptRecID as int
AS
INSERT Report_SummaryData (StartRptRecID, EndRptRecID) VALUES(@StartRptRecID, 0)
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_Report_SummaryData_UpdateCleared]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_Report_SummaryData_UpdateCleared
PARAMETERS:@EndRptRecID, @RecId.  
DESCRIPTION: Updates a First Violation record with the Cleared record ID
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:
***************************************************************************/
CREATE PROCEDURE [dbo].[cmsvr_Report_SummaryData_UpdateCleared] 
	@EndRptRecID int,
	@RecId int
AS
UPDATE Report_SummaryData
SET EndRptRecID = @EndRptRecID
WHERE RecID = @RecId
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_ReportEMPositions_Insert]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[cmsvr_ReportEMPositions_Insert]
	@DemographicID			INT,
	@DeviceID				INT,
	@TimeStamp				DATETIME,
	@DeviceStatus			INT,
	@CallRecID				BIGINT,
	@RuleStatus				INT,
	@RuleID					INT,
	@HwRule					INT,
	@Processed				CHAR(1),
	@StandardTimeOffset	SMALLINT,
	@DaylightTimeOffset	SMALLINT,
	@HardwareType			SMALLINT,
	@EventStatus			TINYINT,
	@OneTimeSchedid		INT,
	@HWRuleBitIndex		INT,
	@DeviceStatus2			INT,
	@RecID int OUTPUT
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [Report_EM_Positions]
	(
		[DemographicID],
		[DeviceID],
		[TimeStamp],
		[StoredTimeStamp],
		[DeviceStatus],
		[CallRecID],
		[RuleStatus],
		[RuleID],
		[HwRule],
		[Processed],
		[StandardTimeOffset],
		[DaylightTimeOffset],
		[HardwareType],
		[EventStatus],
		[OneTimeSchedID],
		[HWRuleBitIndex],
		[DeviceStatus2]
	)
	VALUES
	(
		@DemographicID,
		@DeviceID,
		@TimeStamp,
		GETDATE(),
		@DeviceStatus,
		@CallRecID,
		@RuleStatus,
		@RuleID,
		@HwRule,
		@Processed,
		@StandardTimeOffset,
		@DaylightTimeOffset,
		@HardwareType,
		@EventStatus,
		@OneTimeSchedID,
		@HWRuleBitIndex,
		@DeviceStatus2
	)
	SET @RecID = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_ReportEventParams_Insert]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[cmsvr_ReportEventParams_Insert]
	@EventTableLookupValue	int,
	@EventTableRecID int,
	@ParameterTypeLookupValue int,
	@ParameterValue varchar(50),
	@EventTimeStamp datetime
AS
	SET NOCOUNT ON

	INSERT INTO [Report_EventParams]
	(
		EventTableLookupValue,
		EventTableRecID,
		ParameterTypeLookupValue,
		ParameterValue,
		EventTimestamp
	)
	VALUES
	(
		@EventTableLookupValue,
		@EventTableRecID,
		@ParameterTypeLookupValue,
		@ParameterValue,
		@EventTimeStamp
	)

GO
/****** Object:  StoredProcedure [dbo].[cmsvr_RptPositions_GetNonProcessed]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: <Author,,Name>
-- Create date: <Create Date,,>
-- Description: <Description,,>
-- Revisions: 
-- 02/27/12 (jlafay) - Added select for ZoneRecID column when referencing Report_MTDPositions
-- 11/22/16 (SLM) - Reworked to take in list of contracts to include or exclude
-- =============================================

CREATE PROCEDURE [dbo].[cmsvr_RptPositions_GetNonProcessed]
@ProtechOnly char(1) = 'N',
@IncludeContracts varchar(MAX) = NULL,
@ExcludeContracts varchar(MAX) = NULL
AS
BEGIN
	SET NOCOUNT ON
	SET NOCOUNT ON
	DECLARE @PtmOnly char(1) = @ProtechOnly

	-- Build table variables containing the list of contracts to include/exclude
	DECLARE @IncludedContracts TABLE ( ContractID INT )
	DECLARE @ExcludedContracts TABLE ( ContractID INT )
	DECLARE @DoInclude bit = 0, @DoExclude bit = 0

	IF LEN(ISNULL(@IncludeContracts, '')) > 0
	BEGIN 
		SET @DoInclude = 1
		INSERT @IncludedContracts
			SELECT Value FROM dbo.Split(@IncludeContracts, ',')
	END
	IF LEN(ISNULL(@ExcludeContracts, '')) > 0
	BEGIN
		SET @DoExclude = 1
		INSERT @ExcludedContracts
			SELECT Value FROM dbo.Split(@ExcludeContracts, ',')
	END

	IF @DoInclude = 1 AND @DoExclude = 1
	BEGIN
		RAISERROR (N'ERROR: Cannot specify parameter values for both @IncludeContracts and @ExcludeContracts!', 10, 1);
		RETURN
	END
		
	SELECT 
		TableName='Report_MTDPositions', 
		P.RecID, 
		P.DemographicID, 
		P.DeviceID, 
		P.TimeStamp, 
		P.StoredTimeStamp, 
		P.DeviceStatus, 
		CallRecID = P.MTDCallsRecID,
		P.RuleStatus, 
		P.RuleID, 
		P.HwRule, 
		P.Processed, 
		P.HardwareType,
		P.ZoneRecID, 
		ISNULL(P.HWRuleBitIndex, 0) AS [HwRuleBitIndex],
		REP.ParameterValue AS [CalibrationDays] 
	FROM 
		Report_MTDPositions As P WITH (INDEX = IX_Report_MTDPositions_Processed, NOLOCK) 
		INNER JOIN Protech..Demographics D WITH(NOLOCK)
			ON P.DemographicID = D.DemographicID
		INNER JOIN Protech..Customers Cu WITH (NOLOCK)
			ON D.CustomerID = Cu.CustomerID 
		LEFT JOIN @IncludedContracts IC ON Cu.ContractID = IC.ContractID 
		LEFT JOIN @ExcludedContracts EC ON Cu.ContractID = EC.ContractID 
		
		LEFT JOIN Report_EventParams REP WITH(NOLOCK) 
			ON REP.EventTableRecID = P.RecID
				AND REP.EventTableLookupValue = 1
				AND REP.ParameterTypeLookupValue = 2
	WHERE ( P.Processed = 'N' ) 
		AND ( @PtmOnly = 'N' OR Cu.ProtechOnly = @PtmOnly ) 
		AND ( ( @DoInclude = 0 AND @DoExclude = 0 ) 
		   OR ( @DoInclude = 1 AND IC.ContractID IS NOT NULL )
		   OR ( @DoExclude = 1 AND EC.ContractID IS NULL )
			)
	
	UNION ALL
	
	SELECT 
		TableName='Report_EM_Positions', 
		P.RecID, 
		P.DemographicID, 
		P.DeviceID, 
		P.TimeStamp, 
		P.StoredTimeStamp, 
		P.DeviceStatus, 
		P.CallRecID, 
		P.RuleStatus, 
		P.RuleID, 
		P.HwRule, 
		P.Processed, 
		P.HardwareType, 
		ZoneRecID = NULL, 
		ISNULL(P.HWRuleBitIndex, 0) AS [HwRuleBitIndex],
		REP.ParameterValue AS [CalibrationDays] 
	FROM 
		Report_EM_Positions As P WITH (INDEX = IDX_ReportEmPositions_Processed, NOLOCK) 
		INNER JOIN Protech..Demographics D WITH(NOLOCK) 
			ON P.DemographicID = D.DemographicID
		INNER JOIN Protech..Customers Cu WITH(NOLOCK)
			ON D.CustomerID = Cu.CustomerID 
		LEFT JOIN @IncludedContracts IC 
			ON Cu.ContractID = IC.ContractID 
		LEFT JOIN @ExcludedContracts EC 
			ON Cu.ContractID = EC.ContractID 

		LEFT JOIN Report_EventParams REP WITH(NOLOCK) 
			ON REP.EventTableRecID = P.RecID
				AND REP.EventTableLookupValue = 2
				AND REP.ParameterTypeLookupValue = 2
	WHERE ( P.Processed = 'N' ) 
		AND ( @PtmOnly = 'N' OR Cu.ProtechOnly = @PtmOnly ) 
		AND ( ( @DoInclude = 0 AND @DoExclude = 0 ) 
		   OR ( @DoInclude = 1 AND IC.ContractID IS NOT NULL )
		   OR ( @DoExclude = 1 AND EC.ContractID IS NULL )
			)

	ORDER BY 
		StoredTimeStamp, RecID
		OPTION(MAXDOP 1)
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_TEMP_QueryMismatchedClears]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[cmsvr_TEMP_QueryMismatchedClears]
	@PositionTable varchar(50),
	@SummaryTable varchar(50),
	@StartDate datetime, 
	@EndDate datetime
AS
BEGIN
	DECLARE @sqlCmd nvarchar(2000), @sqlParams nvarchar(100)
	SET @sqlParams = '@StartDate datetime, @EndDate datetime'

	SET @sqlCmd =  'SELECT Q2.*, VioRecIDs=CONVERT(varchar, Q2.VioRecID)+'', ''+CONVERT(varchar, Q2.V2RecID), '+
						'ClrRecIDs=CONVERT(varchar, Q2.ClrRecID)+'', ''+CONVERT(varchar, Q2.NxtRecID) '+
					'FROM (	SELECT Q1.*, '+
							'V2RecID=SD.StartRptRecID, '+
							'''VioRecID, ClrRecID, NxtRecID''=CONVERT(varchar, Q1.VioRecID)+'', ''+CONVERT(varchar, Q1.ClrRecID)+'', ''+CONVERT(varchar, Q1.NxtRecID) '+
							'FROM (	SELECT V.DemographicID, '+
											'VioRecID=V.RecID, '+ 
											'ClrRecID=C.RecID, '+
											'NxtRecID=ISNULL((SELECT TOP 1 RecID FROM '+@Positiontable+' AS C2 WHERE C2.DemographicID = V.DemographicID AND C2.DeviceId = V.DeviceId AND ( ( C2.RuleID = 0 ) OR ( C2.HwRule = 0 AND C2.RuleID = V.RuleId ) OR ( C2.HwRule > 0 AND C2.HwRule = V.HwRule ) ) AND (C2.RuleStatus & 32) = 32 AND C2.TimeStamp >= V.TimeStamp AND C2.RecID >= V.RecID ORDER BY C2.TimeStamp ASC), 0) '+
									'FROM '+@Positiontable+' AS V '+
									'JOIN '+@SummaryTable+' AS SD ON SD.StartRptRecID = V.RecID '+
									'JOIN '+@Positiontable+' AS C ON C.RecID = SD.EndRptRecID '+
									'WHERE V.StoredTimeStamp BETWEEN @StartDate AND @EndDate '+
									'AND (V.RuleStatus & 16) = 16 '+
							') AS Q1 '+
							'JOIN '+@SummaryTable+' AS SD ON SD.EndRptRecID = NxtRecID '+
							'WHERE ClrRecID <> NxtRecID '+
							'AND NxtRecID > 0 '+
					') AS Q2 '+
					'ORDER BY VioRecID'

	EXECUTE sp_executesql @sqlCmd, @sqlParams, @StartDate, @EndDate
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_TEMP_ResetClearProcessFlag]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[cmsvr_TEMP_ResetClearProcessFlag]
	@PositionTable varchar(50),
	@RecID int
AS
BEGIN
	IF @PositionTable = 'Report_MTDPositions'
		UPDATE dbo.Report_MTDPositions SET Processed = 'N' WHERE RecID = @RecID
	ELSE IF @PositionTable = 'Report_EM_Positions'
		UPDATE dbo.Report_EM_Positions SET Processed = 'N' WHERE RecID = @RecID
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_TEMP_ResetFirstViolationClearRecID]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[cmsvr_TEMP_ResetFirstViolationClearRecID]
	@SummaryTable varchar(50),
	@StartRptRecID int
AS
BEGIN
	IF @SummaryTable = 'Report_MTD_SummaryData'
		UPDATE dbo.Report_MTD_SummaryData SET EndRptRecID = 0 WHERE StartRptRecID = @StartRptRecID
	ELSE IF @SummaryTable = 'Report_EM_SummaryData'
		UPDATE dbo.Report_EM_SummaryData SET EndRptRecID = 0 WHERE StartRptRecID = @StartRptRecID
END
GO
/****** Object:  StoredProcedure [dbo].[cmsvr_UpdateCalibrationReminders]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--=============================================================================
-- Procedure Name: cmsvr_UpdateCalibrationReminders
-- Description...: Updates the specified calibration reminders.
-- Author........: Phillip R. Hickman
-- Date Created..: 2018-08-14
-------------------------------------------------------------------------------
-- Revisions
--	2018-08-14 - PRH - Initial procedure created.
--=============================================================================
CREATE PROC [dbo].[cmsvr_UpdateCalibrationReminders]
	@FollowUpReminderIds	VARCHAR(MAX)
AS
BEGIN
	DECLARE @FollowUpIds TABLE (ID INT)

	INSERT INTO @FollowUpIds
		SELECT	ID
		FROM	dbo.ParseMultipleParametersInt(@FollowUpReminderIds)

	UPDATE	dbo.FollowUpReminders
	SET		IsProcessed = 1
	WHERE	FollowUpReminderID IN (SELECT ID FROM @FollowUpIds)
END
GO
/****** Object:  StoredProcedure [dbo].[cmvsr_FollowUpReminders_Process7DayCalibrations]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--=============================================================================
-- Procedure Name: cmvsr_FollowUpReminders_Process7DayCalibrations
-- Description...: Returns a list of the CAM/S.M.A.R.T. Mobile devices that are
--				   due for calibration within the next 7 days.
-- Author........: Phillip R. Hickman
-- Date Created..: 2018-08-03
-------------------------------------------------------------------------------
-- Revisions
--	2018-08-03 - PRH - Initial procedure created.
--	2018-09-04 - PRH - Removed the "DATEADD" to the FollowUpDate.
--=============================================================================
CREATE PROC [dbo].[cmvsr_FollowUpReminders_Process7DayCalibrations]
	@ProTechOnly	CHAR(1) = 'N'
AS
BEGIN
	SET NOCOUNT ON

	--
	--	Grab a list of all of the CAM/S.M.A.R.T. Mobile devices that are due for
	--  calibration within the next 7 days.
	--
	SELECT		FUR.FollowUpReminderID,
				FUR.DeviceID,
				FUR.DeviceType,
				FUR.FollowUpDate,
				'ContactName'		= LTRIM(RTRIM(LTRIM(RTRIM(ISNULL(OD.FirstName, ''))) + ' ' + LTRIM(RTRIM(ISNULL(OD.LastName, ''))))),
				'ContactEmail'		= LTRIM(RTRIM(ISNULL(OD.Email, ''))),
				'NumDays'			= DATEDIFF(d, GETDATE(), FUR.FollowUpDate),
				'AssignedOffender'	= LTRIM(RTRIM(LTRIM(RTRIM(ISNULL(D.FirstName, ''))) + ' ' + LTRIM(RTRIM(ISNULL(D.LastName, ''))))),
				'AccountRep'		= LTRIM(RTRIM(LTRIM(RTRIM(ISNULL(RP.FirstName, ''))) + ' ' + LTRIM(RTRIM(ISNULL(RP.LastName, ''))))),
				'AccountRepEmail'	= LTRIM(RTRIM(ISNULL(RP.EmailAddress, ''))),
				'IsContactEmail'	= CASE WHEN ISNULL(VAD.AssignedDemoID, 0) > 0 THEN 1 ELSE 0 END,
				'CustomerName'		= LTRIM(RTRIM(ISNULL(C.OrganizationName, ''))),
				CONT.ContractName
	FROM		dbo.FollowUpReminders FUR		(NOLOCK)
	LEFT JOIN	Protech.dbo.View_AllDevices VAD	(NOLOCK) ON VAD.DeviceID = FUR.DeviceID
	AND			VAD.DeviceType = FUR.DeviceType
	LEFT JOIN	Protech.dbo.Demographics D		(NOLOCK) ON D.DemographicID = VAD.AssignedDemoID
	LEFT JOIN	Protech.dbo.Offenders O			(NOLOCK) ON O.DemographicID = D.DemographicID
	LEFT JOIN	Protech.dbo.Demographics OD		(NOLOCK) ON OD.DemographicID = O.PoDemoID
	LEFT JOIN	Protech.dbo.customers C			(NOLOCK) ON C.CustomerID = VAD.CustomerRecID
	LEFT JOIN	Protech.dbo.ResponsibleParty RP	(NOLOCK) ON RP.ResponsiblePartyRecID = C.ResponsibleAccountMgr
	LEFT JOIN	Protech.dbo.contracts CONT		(NOLOCK) ON C.ContractID = CONT.ContractID
	WHERE		FUR.DaysToReminder = 7
	AND			DATEDIFF(d, GETDATE(), FUR.FollowUpDate) <= 7
	AND			FUR.DeviceType IN (244, 256) -- CAM/S.M.A.R.T. Mobile Devices.
	AND			(@ProTechOnly = 'N' OR CONT.ProtechOnly = @ProTechOnly)
	AND			FUR.IsProcessed = 0
END
GO
/****** Object:  StoredProcedure [dbo].[dds_OffenderDataDelete_Report_EM_SummaryData]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Girish L. Ukarande
-- Create date: 9/22/21
-- Description:	Deletes offender data from Reporting.Report_EM_SummaryData table for a given offender
-- Revisions:
-- mm/dd/yy (xxx) - Revision text here
-- =============================================
CREATE   PROCEDURE [dbo].[dds_OffenderDataDelete_Report_EM_SummaryData]
@DemographicID int
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pDemoID int = @DemographicID

BEGIN TRY
--Validate demographicID to check if it is valid and has contract option to delete offender data
EXEC Protech.dbo.dds_ValidateDemographicIDForOffenderDataDelete @pDemoID

BEGIN TRANSACTION

DELETE SD
FROM Reporting.dbo.Report_EM_SummaryData AS SD
JOIN Reporting.dbo.Report_EM_Positions AS R ON SD.StartRptRecID = R.RecID
WHERE R.DemographicID = @pDemoID

DELETE SD
FROM Reporting.dbo.Report_EM_SummaryData AS SD
JOIN Reporting.dbo.Report_EM_Positions AS R ON SD.EndRptRecID = R.RecID
WHERE R.DemographicID = @pDemoID

COMMIT TRANSACTION
END TRY
BEGIN CATCH
IF(@@TRANCOUNT > 0)
ROLLBACK TRANSACTION

THROW;
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[dds_OffenderDataDelete_Report_MTD_SummaryData]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Girish L. Ukarande
-- Create date: 9/22/21
-- Description:	Deletes offender data from Reporting.Report_EM_SummaryData table for a given offender
-- Revisions:
-- mm/dd/yy (xxx) - Revision text here
-- =============================================
CREATE   PROCEDURE [dbo].[dds_OffenderDataDelete_Report_MTD_SummaryData]
@DemographicID int
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pDemoID int = @DemographicID

BEGIN TRY
--Validate demographicID to check if it is valid and has contract option to delete offender data
EXEC Protech.dbo.dds_ValidateDemographicIDForOffenderDataDelete @pDemoID

BEGIN TRANSACTION

DELETE SD
FROM Reporting.dbo.Report_MTD_SummaryData AS SD
JOIN Reporting.dbo.Report_MTDPositions AS R ON SD.StartRptRecID = R.RecID
WHERE R.DemographicID = @pDemoID

DELETE SD
FROM Reporting.dbo.Report_MTD_SummaryData AS SD
JOIN Reporting.dbo.Report_MTDPositions AS R ON SD.EndRptRecID = R.RecID
WHERE R.DemographicID = @pDemoID

COMMIT TRANSACTION
END TRY
BEGIN CATCH
IF(@@TRANCOUNT > 0)
ROLLBACK TRANSACTION

THROW;
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[dds_OffenderDataDelete_Reporting_OffenderEvents]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Girish L. Ukarande
-- Create date: 10/01/21
-- Description:	Batch delete for very large offender related data from OffenderEvents table
-- Revisions:
-- mm/dd/yy (xxx) - Revision text here
-- =============================================
CREATE   PROCEDURE [dbo].[dds_OffenderDataDelete_Reporting_OffenderEvents]
@DemographicID int,
@BatchSize INT = null
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pDemoID int = @DemographicID
DECLARE @MaxBatchSize int = 4000
DECLARE @rowcount INT;

IF @BatchSize is NULL OR @BatchSize > @MaxBatchSize
SET @BatchSize = @MaxBatchSize

BEGIN TRY
--Validate demographicID to check if it is valid and has contract option to delete offender data
EXEC Protech.dbo.dds_ValidateDemographicIDForOffenderDataDelete @pDemoID

DELETE TOP(@BATCHSIZE)
FROM Reporting.dbo.OffenderEvents
WHERE DemographicID = @pDemoID

SET @rowcount = @@ROWCOUNT
END TRY
BEGIN CATCH
IF(@@TRANCOUNT > 0)
ROLLBACK TRANSACTION

THROW;
END CATCH

Select @rowcount
END
GO
/****** Object:  StoredProcedure [dbo].[dds_OffenderDataDelete_Reporting_OffenderServiceEvents]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Girish L. Ukarande
-- Create date: 10/01/21
-- Description:	Batch delete for very large offender related data from OffenderServiceEvents table
-- Revisions:
-- mm/dd/yy (xxx) - Revision text here
-- =============================================
CREATE   PROCEDURE [dbo].[dds_OffenderDataDelete_Reporting_OffenderServiceEvents]
@DemographicID int,
@BatchSize INT = null
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pDemoID int = @DemographicID
DECLARE @MaxBatchSize int = 4000
DECLARE @rowcount INT = 0;

IF @BatchSize is NULL OR @BatchSize > @MaxBatchSize
SET @BatchSize = @MaxBatchSize

BEGIN TRY
--Validate demographicID to check if it is valid and has contract option to delete offender data
EXEC Protech.dbo.dds_ValidateDemographicIDForOffenderDataDelete @pDemoID

DELETE TOP(@BATCHSIZE)
FROM Reporting.dbo.OffenderServiceEvents
WHERE DemographicID = @pDemoID

SET @rowcount = @@ROWCOUNT

END TRY
BEGIN CATCH
THROW;
RETURN;
END CATCH

Select @rowcount
END
GO
/****** Object:  StoredProcedure [dbo].[dds_OffenderDataDelete_Reporting_Report_AlcoholTests]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Girish L. Ukarande
-- Create date: 10/01/21
-- Description:	Batch delete for very large offender related data from Report_AlcoholTests table
-- Revisions:
-- mm/dd/yy (xxx) - Revision text here
-- =============================================
CREATE   PROCEDURE [dbo].[dds_OffenderDataDelete_Reporting_Report_AlcoholTests]
@DemographicID int,
@BatchSize INT = null
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pDemoID int = @DemographicID
DECLARE @MaxBatchSize int = 4000
DECLARE @rowcount INT = 0;

IF @BatchSize is NULL OR @BatchSize > @MaxBatchSize
SET @BatchSize = @MaxBatchSize

BEGIN TRY
--Validate demographicID to check if it is valid and has contract option to delete offender data
EXEC Protech.dbo.dds_ValidateDemographicIDForOffenderDataDelete @pDemoID

DELETE TOP(@BATCHSIZE)
FROM Reporting.dbo.Report_AlcoholTests
WHERE DemographicID = @pDemoID

SET @rowcount = @@ROWCOUNT

END TRY
BEGIN CATCH
THROW;
RETURN;
END CATCH

Select @rowcount
END
GO
/****** Object:  StoredProcedure [dbo].[dds_OffenderDataDelete_Reporting_Report_EM_Positions]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Girish L. Ukarande
-- Create date: 10/01/21
-- Description:	Batch delete for very large offender related data from Report_EM_Positions table
-- Revisions:
--	04/07/2015 - GLU/JM - Replaced raiseError with THROW 50000 for bubbling error to calling program

-- =============================================
CREATE   PROCEDURE [dbo].[dds_OffenderDataDelete_Reporting_Report_EM_Positions]
@DemographicID int,
@BatchSize INT = null
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pDemoID int = @DemographicID
DECLARE @MaxBatchSize int = 4000
DECLARE @rowcount INT = 0;
DECLARE @Msg NVARCHAR(200) = ''

IF @BatchSize is NULL OR @BatchSize > @MaxBatchSize
SET @BatchSize = @MaxBatchSize

BEGIN TRY
--Validate demographicID to check if it is valid and has contract option to delete offender data
EXEC Protech.dbo.dds_ValidateDemographicIDForOffenderDataDelete @pDemoID


IF EXISTS(Select TOP 1 SD.StartRptRecID FROM Reporting.dbo.Report_EM_SummaryData AS SD
JOIN Reporting.dbo.Report_EM_Positions AS R ON SD.StartRptRecID = R.RecID
WHERE R.DemographicID = @pDemoID)
BEGIN
SET @Msg = 'ERROR: Data from Report_EM_Positions table cannot be delete since StartRptRecID records exists in Report_EM_SummaryData table!';
THROW 50000, @Msg, 1;
RETURN
END

IF EXISTS(Select TOP 1 SD.EndRptRecID FROM Reporting.dbo.Report_EM_SummaryData AS SD
JOIN Reporting.dbo.Report_EM_Positions AS R ON SD.EndRptRecID = R.RecID
WHERE R.DemographicID = @pDemoID)
BEGIN
SET @Msg = 'ERROR: Data from Report_EM_Positions table cannot be delete since EndRptRecID records exists in Report_EM_SummaryData table!';
THROW 50000, @Msg, 1;
RETURN
END

DELETE TOP(@BATCHSIZE)
FROM Reporting.dbo.Report_EM_Positions
WHERE DemographicID = @pDemoID

SET @rowcount = @@ROWCOUNT

END TRY
BEGIN CATCH
THROW;
RETURN;
END CATCH

Select @rowcount
END

GO
/****** Object:  StoredProcedure [dbo].[dds_OffenderDataDelete_Reporting_Report_MTDPositions]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Girish L. Ukarande
-- Create date: 10/01/21
-- Description:	Batch delete for very large offender related data from Report_MTDPositions table
-- Revisions:
-- mm/dd/yy (xxx) - Revision text here
-- =============================================
CREATE   PROCEDURE [dbo].[dds_OffenderDataDelete_Reporting_Report_MTDPositions]
@DemographicID int,
@BatchSize INT = null
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pDemoID int = @DemographicID
DECLARE @MaxBatchSize int = 4000
DECLARE @rowcount INT;

IF @BatchSize is NULL OR @BatchSize > @MaxBatchSize
SET @BatchSize = @MaxBatchSize

BEGIN TRY
--Validate demographicID to check if it is valid and has contract option to delete offender data
EXEC Protech.dbo.dds_ValidateDemographicIDForOffenderDataDelete @pDemoID

DELETE TOP(@BATCHSIZE)
FROM Reporting.dbo.Report_MTDPositions
WHERE DemographicID = @pDemoID

SET @rowcount = @@ROWCOUNT

END TRY
BEGIN CATCH
IF(@@TRANCOUNT > 0)
ROLLBACK TRANSACTION

THROW;
END CATCH

Select @rowcount
END
GO
/****** Object:  StoredProcedure [dbo].[dds_OffenderDataDelete_Reporting_Report_Positions]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Girish L. Ukarande
-- Create date: 10/01/21
-- Description:	Batch delete for very large offender related data from Report_EM_Positions table
-- Revisions:
-- mm/dd/yy (xxx) - Revision text here
-- =============================================
CREATE   PROCEDURE [dbo].[dds_OffenderDataDelete_Reporting_Report_Positions]
@DemographicID int,
@BatchSize INT = null
AS
BEGIN
--Redeclare parameters to prevent parameter sniffing
DECLARE @pDemoID int = @DemographicID
DECLARE @MaxBatchSize int = 4000
DECLARE @rowcount INT = 0;

IF @BatchSize is NULL OR @BatchSize > @MaxBatchSize
SET @BatchSize = @MaxBatchSize

BEGIN TRY
--Validate demographicID to check if it is valid and has contract option to delete offender data
EXEC Protech.dbo.dds_ValidateDemographicIDForOffenderDataDelete @pDemoID

DELETE TOP(@BATCHSIZE)
FROM Reporting.dbo.Report_Positions
WHERE DemographicID = @pDemoID

SET @rowcount = @@ROWCOUNT

END TRY
BEGIN CATCH
THROW;
RETURN;
END CATCH

Select @rowcount
END
GO
/****** Object:  StoredProcedure [dbo].[drs_CaseNotes_ListByNoteRecId]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jeremy Nelson
-- Create date: 11/22/2013
-- Description:	Used by Data Request Service to gather case notes for the user
-- ---------------------------------------------
-- Revisions
--	2018-05-24	Phillip Hickman	- Changed 3M to Attenti.
--	2018-06-05	Jeremy Nelson	- Fixed bug where records were excluded if no officer is assigned
--  2018-06-12	Jeremy Nelson	- Added ParameterSniffing protection
--	2018-06-13	Jeremy Nelson	- Added NoteStatus / EventStatus
-- =============================================
CREATE PROCEDURE [dbo].[drs_CaseNotes_ListByNoteRecId]

@UserRecID				int,
@MaxResults				int,
@StartingNoteRecId		bigint

AS
BEGIN

	SET NOCOUNT ON;

	--
	--	Parameter Sniffing 
	--
	Declare @QueryUserRecID				int = @UserRecID
	Declare @QueryMaxResults			int = @MaxResults
	Declare @QueryStartingNoteRecId		bigint = @StartingNoteRecId

	--
	--	Variables
	--
	DECLARE @Customers TABLE ( 
								ContractID				int,
								ContractName			varchar(100),
								RegionId				int,
								RegionName				varchar(100),
								CustomerId				int,
								CustomerName			varchar(100),
								ResponsibleAccountMgr	int
							);

	--
	--	Load customers the user has access to
	--
	INSERT	
	INTO	@Customers 
	EXEC Protech..ptm_GetContractRegionCustomerByUserRecID @QueryUserRecID

	--
	--	Gather the data for the request
	--		Cap results to @MaxResults
	--
	SELECT		TOP (@QueryMaxResults)
				Z.NoteRecID,
				Z.NoteTimestamp,
				Z.Note,
				Z.RuleName,
				Z.EventTime,
				D.ID1,
				OffenderFirstName = ISNULL(D.FirstName, ''),
				OffenderLastName = ISNULL(D.LastName, ''),
				OfficerName = LTRIM(RTRIM(ISNULL(F.FirstName, '') + ' ' + ISNULL(F.LastName, ''))),
				EnteredBy =	CASE U.ProtechUser
								WHEN 'Y' THEN 'Attenti Electronic Monitoring User'
								ELSE LTRIM(RTRIM(U.FirstName + ' ' + U.LastName))
							END,
				Z.NoteStatus,
				Z.SuspendTimestamp,
				Z.EventTableName,
				Z.EventStatus,
				D.DemographicID
	FROM		(	SELECT		TOP (@QueryMaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.NoteStatus,
								N.SuspendTimestamp,
								N.Note,
								N.UserRecID,
								N.EventTableName,
								P.EventStatus,
								OffenderDemographicID = P.DemographicID,
								RuleName =	CASE ISNULL(R.RuleType, '')
												WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
												WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
												ELSE IsNull(R.RuleName, '')
											END,
								EventTime = P.TimeStamp
					FROM		CaseMgmtNotes			N (NOLOCK)
					JOIN		Report_MTDPositions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
					WHERE		N.EventTableName = 'Report_MTDPositions'
					AND			N.NoteRecID >= @QueryStartingNoteRecID
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteRecID

					UNION

					SELECT		TOP (@QueryMaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.NoteStatus,
								N.SuspendTimestamp,
								N.Note,
								N.UserRecID,
								N.EventTableName,
								P.EventStatus,
								OffenderDemographicID = P.DemographicID,
								RuleName =	CASE ISNULL(R.RuleType, '')
												WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
												WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
												ELSE IsNull(R.RuleName, '')
											END,
								EventTime = P.TimeStamp
					FROM		CaseMgmtNotes			N (NOLOCK)
					JOIN		Report_EM_Positions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
					WHERE		N.EventTableName = 'Report_EM_Positions'
					AND			N.NoteRecID >= @QueryStartingNoteRecID
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteRecID

					UNION

					SELECT		TOP (@QueryMaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.NoteStatus,
								N.SuspendTimestamp,
								N.Note,
								N.UserRecID,
								N.EventTableName,
								P.EventStatus,
								OffenderDemographicID = P.DemographicID,
								RuleName =	CASE ISNULL(R.RuleType, '')
												WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
												WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
												ELSE IsNull(R.RuleName, '')
											END,
								EventTime = P.TimeStamp
					FROM		CaseMgmtNotes			N (NOLOCK)
					JOIN		Report_Positions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
					WHERE		N.EventTableName = 'Report_Positions'
					AND			N.NoteRecID >= @QueryStartingNoteRecID
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteRecID

					UNION

					/*SELECT		TOP (@MaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.Note,
								N.UserRecID,
								OffenderDemographicID = P.DemographicID,
								RuleName =	ISNULL(R.RuleName, ''),
								EventTime = P.TimeStamp
					FROM		CaseMgmtNotes			N (NOLOCK)
					JOIN		Report_AlcoholTests		P (NOLOCK)	ON P.Report_AlcoholTestsID = N.EventTableRecID
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
					WHERE		N.EventTableName = 'Report_AlcoholTests'
					AND			N.NoteRecID >= @StartingNoteRecID
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteRecID 

					UNION */

					SELECT		TOP (@QueryMaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.NoteStatus,
								N.SuspendTimestamp,
								N.Note,
								N.UserRecID,
								N.EventTableName,
								EventStatus = 0,
								OffenderDemographicID = N.EventTableRecID,
								RuleName =	'Offender Note',
								EventTime = N.NoteTimestamp
					FROM		CaseMgmtNotes			N (NOLOCK)
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = N.EventTableRecID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					WHERE		N.EventTableName = 'Offenders'
					AND			N.NoteRecID >= @QueryStartingNoteRecID
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteRecID
				) Z
	JOIN		Protech..Users			U (NOLOCK) ON U.UserRecID = Z.UserRecID
	JOIN		Protech..Demographics	D (NOLOCK) ON D.DemographicID = Z.OffenderDemographicID
	JOIN		Protech..Offenders		O (NOLOCK) ON O.DemographicID = D.DemographicID
	LEFT JOIN	Protech..Demographics	F (NOLOCK) ON F.DemographicID = O.PoDemoID
	ORDER BY	Z.NoteRecID
	OPTION		(RECOMPILE)

END
GO
/****** Object:  StoredProcedure [dbo].[drs_CaseNotes_ListByTimestamp]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jeremy Nelson
-- Create date: 11/22/2013
-- Description:	Used by Data Request Service to gather case notes for the user
-- ---------------------------------------------
-- Revisions
--	2018-05-24	Phillip Hickman	- Changed 3M to Attenti.
--	2018-06-05	Jeremy Nelson	- Fixed bug where records were excluded if no officer is assigned
--  2018-06-12	Jeremy Nelson	- Added ParameterSniffing protection
--	2018-06-13	Jeremy Nelson	- Added NoteStatus / EventStatus
-- =============================================
CREATE PROCEDURE [dbo].[drs_CaseNotes_ListByTimestamp]

@UserRecId		int,
@MaxResults		int,
@StartDate		datetime,
@EndDate		datetime

AS
BEGIN

	SET NOCOUNT ON;

	--
	--	Parameter Sniffing 
	--
	Declare @QueryUserRecID		int = @UserRecID
	Declare @QueryMaxResults	int = @MaxResults
	Declare @QueryStartDate		datetime = @StartDate
	Declare @QueryEndDate		datetime = @EndDate

	--
	--	Variables
	--
	DECLARE @Customers TABLE ( 
								ContractID				int,
								ContractName			varchar(100),
								RegionId				int,
								RegionName				varchar(100),
								CustomerId				int,
								CustomerName			varchar(100),
								ResponsibleAccountMgr	int
							);

	--
	--	Load customers the user has access to
	--
	INSERT	
	INTO	@Customers 
	EXEC Protech..ptm_GetContractRegionCustomerByUserRecID @QueryUserRecID

	--
	--	Gather the data for the request
	--		Cap results to @MaxResults
	--
	SELECT		TOP (@QueryMaxResults)
				Z.NoteRecID,
				Z.NoteTimestamp,
				Z.Note,
				Z.RuleName,
				Z.EventTime,
				D.ID1,
				OffenderFirstName = ISNULL(D.FirstName, ''),
				OffenderLastName = ISNULL(D.LastName, ''),
				OfficerName = LTRIM(RTRIM(ISNULL(F.FirstName, '') + ' ' + ISNULL(F.LastName, ''))),
				EnteredBy =	CASE U.ProtechUser
								WHEN 'Y' THEN 'Attenti Electronic Monitoring User'
								ELSE LTRIM(RTRIM(U.FirstName + ' ' + U.LastName))
							END,
				Z.NoteStatus,
				Z.SuspendTimestamp,
				Z.EventTableName,
				Z.EventStatus,
				D.DemographicID
	FROM		(	SELECT		TOP (@QueryMaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.NoteStatus,
								N.SuspendTimestamp,
								N.Note,
								N.UserRecID,
								N.EventTableName,
								P.EventStatus,
								OffenderDemographicID = P.DemographicID,
								RuleName =	CASE ISNULL(R.RuleType, '')
												WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
												WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
												ELSE IsNull(R.RuleName, '')
											END,
								EventTime = P.TimeStamp
					FROM		CaseMgmtNotes			N WITH (NOLOCK INDEX([IX_EventTblName_NoteTimeStamp]))
					JOIN		Report_MTDPositions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
					WHERE		N.EventTableName = 'Report_MTDPositions'
					AND			N.NoteTimestamp BETWEEN @QueryStartDate AND @QueryEndDate
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteTimestamp

					UNION

					SELECT		TOP (@QueryMaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.NoteStatus,
								N.SuspendTimestamp,
								N.Note,
								N.UserRecID,
								N.EventTableName,
								P.EventStatus,
								OffenderDemographicID = P.DemographicID,
								RuleName =	CASE ISNULL(R.RuleType, '')
												WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
												WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
												ELSE IsNull(R.RuleName, '')
											END,
								EventTime = P.TimeStamp
					FROM		CaseMgmtNotes			N WITH (NOLOCK INDEX([IX_EventTblName_NoteTimeStamp]))
					JOIN		Report_EM_Positions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
					WHERE		N.EventTableName = 'Report_EM_Positions'
					AND			N.NoteTimestamp BETWEEN @QueryStartDate AND @QueryEndDate
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteTimestamp

					UNION

					SELECT		TOP (@QueryMaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.NoteStatus,
								N.SuspendTimestamp,
								N.Note,
								N.UserRecID,
								N.EventTableName,
								P.EventStatus,
								OffenderDemographicID = P.DemographicID,
								RuleName =	CASE ISNULL(R.RuleType, '')
												WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
												WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
												ELSE IsNull(R.RuleName, '')
											END,
								EventTime = P.TimeStamp
					FROM		CaseMgmtNotes			N WITH (NOLOCK INDEX([IX_EventTblName_NoteTimeStamp]))
					JOIN		Report_Positions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
					WHERE		N.EventTableName = 'Report_Positions'
					AND			N.NoteTimestamp BETWEEN @QueryStartDate AND @QueryEndDate
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteTimestamp

					UNION

					/*SELECT		TOP (@MaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.Note,
								N.UserRecID,
								OffenderDemographicID = P.DemographicID,
								RuleName =	ISNULL(R.RuleName, ''),
								EventTime = P.TimeStamp
					FROM		CaseMgmtNotes			N (NOLOCK)
					JOIN		Report_AlcoholTests		P (NOLOCK)	ON P.Report_AlcoholTestsID = N.EventTableRecID
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
					WHERE		N.EventTableName = 'Report_AlcoholTests'
					AND			N.NoteTimestamp BETWEEN @StartDate AND @EndDate
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteTimestamp

					UNION */

					SELECT		TOP (@QueryMaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.NoteStatus,
								N.SuspendTimestamp,
								N.Note,
								N.UserRecID,
								N.EventTableName,
								EventStatus = 0,
								OffenderDemographicID = N.EventTableRecID,
								RuleName =	'Offender Note',
								EventTime = N.NoteTimestamp
					FROM		CaseMgmtNotes			N WITH (NOLOCK INDEX([IX_EventTblName_NoteTimeStamp]))
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = N.EventTableRecID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					WHERE		N.EventTableName = 'Offenders'
					AND			N.NoteTimestamp BETWEEN @QueryStartDate AND @QueryEndDate
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteTimestamp
				) Z
	JOIN		Protech..Users			U (NOLOCK) ON U.UserRecID = Z.UserRecID
	JOIN		Protech..Demographics	D (NOLOCK) ON D.DemographicID = Z.OffenderDemographicID
	JOIN		Protech..Offenders		O (NOLOCK) ON O.DemographicID = D.DemographicID
	LEFT JOIN	Protech..Demographics	F (NOLOCK) ON F.DemographicID = O.PoDemoID
	ORDER BY	Z.NoteTimestamp
	OPTION		(RECOMPILE)

END
GO
/****** Object:  StoredProcedure [dbo].[dvsr_EmailDistributionList_Select]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


/***************************************************************************
PARAMETERS:	@ListName - Name of the List as it is used in the Application
DESCRIPTION: Queries for a List of EmailAddresses
DEVELOPER: 	Carla Gibson 
CREATE DATE:	03/09/2005
USED BY:	DvsrServer
REVISIONS:	06/02/05 - Rewrote 'ptm_EmailDistributionList_Select' for DvsrServer
***************************************************************************/


CREATE PROCEDURE [dbo].[dvsr_EmailDistributionList_Select] 
	@ListName varchar(50)
AS

SELECT * FROM Protech..EmailDistributionList
WHERE [AppName] = 'DvsrServer'
AND ListName LIKE @ListName
GO
/****** Object:  StoredProcedure [dbo].[dvsr_GetRecipientEmailAddress]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***************************************************************************
NAME:			dvsr_GetRecipientEmailAddress
PARAMETERS:		@RecipientDemoID
DESCRIPTION:	Gets the email address of 1 recipient that gets a multiple-customer report
DEVELOPER: 		Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:		11/02/07 - CG - Added support for ReportOptions
				04/29/08 (SLM)  Added support for ContractOptions (which will replace the need for CaseMgmtSettings).
***************************************************************************/

CREATE PROCEDURE [dbo].[dvsr_GetRecipientEmailAddress]
	@RecipientDemoID int,
	@ProtechOnly char(1)
AS

SELECT DISTINCT D.DemographicID, D.LastName, D.FirstName, C.ReportEMailAddr, D.CustomerID, R.ReportOptions, Con.CaseMgmtSettings, Con.ContractOptions
FROM ReportRecipients as R,
           Protech..Contacts as C,
           Protech..Demographics as D,
           Protech..Customers As Cust,
		   Protech..Contracts As Con
WHERE C.DemographicID = R.ContactDemoID
      AND D.DemographicID = R.ContactDemoID
      AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
      AND D.Active = 'Y' 
      AND R.ContactDemoID = @RecipientDemoID
	  AND D.CustomerID = Cust.CustomerID
	  AND Con.ContractID = Cust.ContractID
ORDER BY D.DemographicID
GO
/****** Object:  StoredProcedure [dbo].[dvsr_GetReportEmailAddresses]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/***************************************************************************
NAME:			dvsr_GetReportEmailAddresses
PARAMETERS:		@CustomerID
DESCRIPTION:	Gets the List of email address that the report is sent to
DEVELOPER: 		Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:		11/02/07 - CG - Added support for ReportOptions
				04/29/08 (SLM)  Added support for ContractOptions (which will replace the need for CaseMgmtSettings).
***************************************************************************/
CREATE PROCEDURE [dbo].[dvsr_GetReportEmailAddresses]
	@CustomerID int, 
	@ProtechOnly char(1)
AS

SELECT D.DemographicID, D.LastName, D.FirstName, C.ReportEMailAddr, D.CustomerID, C.ReportOptions, Con.CaseMgmtSettings, Con.ContractOptions
FROM Protech..Demographics AS D, Protech..Contacts AS C, Protech..Customers AS Cust, Protech..Contracts AS Con
WHERE D.CustomerID = @CustomerID
      AND D.Active = 'Y'
      AND C.DemographicID = D.DemographicID
      AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
      AND C.ReportOptions > 0
	  AND D.CustomerID = Cust.CustomerID
	  AND Con.ContractID = Cust.ContractID
ORDER BY D.DemographicID
GO
/****** Object:  StoredProcedure [dbo].[dvsr_GetReportList]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/***************************************************************************
NAME:		dvsr_GetReportList
PARAMETERS:	@TimeZone
DESCRIPTION: Gets the Report List
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:	05/01/08 (SLM) - Added check for ReportEnabled
***************************************************************************/
CREATE PROCEDURE [dbo].[dvsr_GetReportList] 
	@TimeZone int = -1,
	@ReportType varchar(20) = '%'
AS

SELECT * FROM ReportList
WHERE ReportType LIKE @ReportType
      AND ((@TimeZone <> -1 AND TimeZone = @TimeZone) OR (@TimeZone = -1))
      AND ReportEnabled = 'Y'
GO
/****** Object:  StoredProcedure [dbo].[dvsr_QueryReportRecipients]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/***************************************************************************
NAME:		dvsr_GetReportEmailAddresses
PARAMETERS: @PtdDvsr - 0(zero),Y,N
		@MtdDvsr - 0(zero),Y,N
		@EmDvsr - 0(zero),Y,N
		@TimeZone
DESCRIPTION: Gets the List of Recipients that get multiple-customer reports
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:	04/01/05 - CG - Moved the check for Protech only since it's 
			previous location would not limit the results to only 
			Protech Officers if @ProtechOnly  = 'Y'
		10/19/05 (SLM) - Added support for Active MTD DVSR (alsoo added @DeviceType parameter used to determine report type)
		01/27/06 (SLM) - Updated to filter out disabled customer and contact records.
		03/15/06 (SLM) - Added DISTINCT and a specific select list to weed out any duplicates.
		10/31/07 - CG - Added support for ReportOptions
		04/29/08 (SLM) - Added support for ContractOptions (which will replace the need for CaseMgmtSettings).
**************************************************************************/
CREATE PROCEDURE [dbo].[dvsr_QueryReportRecipients]
	@TimeZone int,
	@ProtechOnly char(1)
AS


SELECT DISTINCT D.FirstName, D.LastName, R.ContactDemoID, R.CustomerID, R.ReportOptions, Con.CasemgmtSettings, Con.ContractOptions
FROM ReportRecipients As R
JOIN Protech..Demographics AS D ON D.DemographicID = R.ContactDemoID --AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
JOIN Protech..Customers AS C ON C.CustomerID = R.CustomerID
JOIN Protech..Contracts As Con ON C.ContractID = Con.ContractID
WHERE R.ReportOptions  > 0
AND R.TimeZone = @TimeZone
AND R.Enabled = 'Y'
AND (@ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
AND D.Active = 'Y'	-- Make sure the contact record is enabled
AND C.Enabled = 'Y'	-- Make sure the customer record is enabled
ORDER BY R.ContactDemoID, R.CustomerID
GO
/****** Object:  StoredProcedure [dbo].[dvsr_QueryReportRecipients_Beacon]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


/***************************************************************************
NAME:		dvsr_GetReportEmailAddresses
PARAMETERS: @PtdDvsr - 0(zero),Y,N
		@MtdDvsr - 0(zero),Y,N
		@EmDvsr - 0(zero),Y,N
		@TimeZone
DESCRIPTION: Gets the List of Recipients that get multiple-customer reports
DEVELOPER: 	Michael McGowan
CREATE DATE:	05/04/2012
REVISIONS:	05/04/2012 - Copied from XT Recipients and modified for Beacon
**************************************************************************/
CREATE PROCEDURE [dbo].[dvsr_QueryReportRecipients_Beacon]
	@TimeZone int,
	@ProtechOnly char(1)
AS
  
DECLARE @ContractsThatSupportBeacon TABLE (ContractID int)

INSERT INTO @ContractsThatSupportBeacon (ContractID)
	SELECT DISTINCT ContractID
	FROM Protech..ContractLevels  WITH (NOLOCK)
	WHERE ReportedSystemType = 4
	AND [LevelEnabled] = 'Y'

SELECT DISTINCT D.FirstName, D.LastName, R.ContactDemoID, R.CustomerID, R.ReportOptions, Con.CasemgmtSettings, Con.ContractOptions
FROM ReportRecipients As R WITH (NOLOCK)
JOIN Protech..Customers AS C  WITH (NOLOCK) ON C.CustomerID = R.CustomerID
JOIN @ContractsThatSupportBeacon As B ON C.ContractID = B.ContractID
JOIN Protech..Contracts As Con  WITH (NOLOCK) ON C.ContractID = Con.ContractID
JOIN Protech..Demographics AS D  WITH (NOLOCK) ON D.DemographicID = R.ContactDemoID --AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
WHERE R.ReportOptions  > 0
AND R.TimeZone = @TimeZone
AND R.[Enabled] = 'Y'
AND (@ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
AND D.Active = 'Y'	-- Make sure the contact record is enabled
AND C.[Enabled] = 'Y'	-- Make sure the customer record is enabled
ORDER BY R.ContactDemoID, R.CustomerID


GO
/****** Object:  StoredProcedure [dbo].[dvsr_QueryReportRecipients_XT]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/***************************************************************************
NAME:		dvsr_GetReportEmailAddresses
PARAMETERS: @PtdDvsr - 0(zero),Y,N
		@MtdDvsr - 0(zero),Y,N
		@EmDvsr - 0(zero),Y,N
		@TimeZone
DESCRIPTION: Gets the List of Recipients that get multiple-customer reports
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:	04/01/05 - CG - Moved the check for Protech only since it's 
			previous location would not limit the results to only 
			Protech Officers if @ProtechOnly  = 'Y'
		10/19/05 (SLM) - Added support for Active MTD DVSR (alsoo added @DeviceType parameter used to determine report type)
		01/27/06 (SLM) - Updated to filter out disabled customer and contact records.
		03/15/06 (SLM) - Added DISTINCT and a specific select list to weed out any duplicates.
		10/31/07 - CG - Added support for ReportOptions
		04/29/08 (SLM) - Added support for ContractOptions (which will replace the need for CaseMgmtSettings).
		03/21/11 - CG - Split from main query.  Added support for XT.
**************************************************************************/
CREATE PROCEDURE [dbo].[dvsr_QueryReportRecipients_XT]
	@TimeZone int,
	@ProtechOnly char(1)
AS
  
DECLARE @ContractsThatSupportXT TABLE (ContractID int)

INSERT INTO @ContractsThatSupportXT (ContractID)
	SELECT DISTINCT ContractID
	FROM Protech..ContractLevels
	WHERE ReportedSystemType = 5
	AND [LevelEnabled] = 'Y'

SELECT DISTINCT D.FirstName, D.LastName, R.ContactDemoID, R.CustomerID, R.ReportOptions, Con.CasemgmtSettings, Con.ContractOptions
FROM ReportRecipients As R
JOIN Protech..Customers AS C ON C.CustomerID = R.CustomerID
JOIN @ContractsThatSupportXT As XT ON C.ContractID = XT.ContractID
JOIN Protech..Contracts As Con ON C.ContractID = Con.ContractID
JOIN Protech..Demographics AS D ON D.DemographicID = R.ContactDemoID --AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
WHERE R.ReportOptions  > 0
AND R.TimeZone = @TimeZone
AND R.[Enabled] = 'Y'
AND (@ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
AND D.Active = 'Y'	-- Make sure the contact record is enabled
AND C.[Enabled] = 'Y'	-- Make sure the customer record is enabled
ORDER BY R.ContactDemoID, R.CustomerID


GO
/****** Object:  StoredProcedure [dbo].[dvsr_Report_ActiveMTD_GetByDateTimeZone]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/***************************************************************************
NAME:		dvsr_Report_ActiveMTD_Positions_GetByDateTimeZone
PARAMETERS:	@DateRun, @TimeZone
DESCRIPTION:The following query pulls data for the actual DVSR 
		Query for Violations that occurred within date range 
		Union will strip out duplicate records where the violation and clear both occur withing the date range
		Query for Clears that occurred within date range
DEVELOPER: 	Shannon Manness
CREATE DATE:	10/18/2005
REVISIONS:	03/15/06 (SLM) - Fixed bug in the blank customer query looking for contacts with Passive DVSR checked instead of ActiveMTD.
		03/15/06 (SLM) - Changed blank customer query so that ReportRecipient contacts are also included
		03/15/06 (SLM) - Commented out the Active MTD Data Only SQL code ... too slow.
		10/04/06 - CG - Changed RuleName to Return 'Home Curfew Violation' if the RuleType is 'C'
		10/31/07 - CG - Added support for ReportOptions, RuleOptions, and Split function
***************************************************************************/
CREATE PROCEDURE [dbo].[dvsr_Report_ActiveMTD_GetByDateTimeZone]
	@DateRun datetime,
	@TimeZone int,
	@ProtechOnly char(1), 
	@List varchar(1000) = '', 		-- Delimited list of elements
	@SplitOn nvarchar(5) = ',' 	-- Delimiter
AS

DECLARE @EndRunDate datetime
SET @EndRunDate = DateAdd(hh, 24 + ((@TimeZone * -1) / 60) + 1, @DateRun)

DECLARE @DS_SYSTEM_TYPE_MASK int, @DS_SYSTEM_TYPE_PASSIVE int, @DS_SYSTEM_TYPE_ACTIVE int
SELECT @DS_SYSTEM_TYPE_MASK = 0x700, @DS_SYSTEM_TYPE_PASSIVE = 0x0, @DS_SYSTEM_TYPE_ACTIVE = 0x200
  
DECLARE @DVSR_RCV_ACTIVE_MTD_RPT int
SET @DVSR_RCV_ACTIVE_MTD_RPT = 0x2

-- Add Blank Record for Each Customer if @List = ''
--	This allows for a blank DVSR to be generated if there are no offender violations
--	Rewrote 12/15/04 - CG
SELECT DISTINCT C.CustomerID, 'BlankRecord' = 'Y', 'PoName' = NULL, 'OffenderName' = NULL, 'OrganizationName' = C.OrganizationName, 
	'StandardTimeOffset' = @Timezone, 'DaylightTimeOffset' = NULL, 'PtdID' = NULL, 'BraceletID' = NULL, 'ChargingStandID1' = NULL,
	'RuleName' = NULL, 'RuleID' = NULL, 'RuleType' = NULL, 'TimeGrid' = NULL,
	'DeviceID' = NULL, 'RuleID' = NULL, 'HwRule' = NULL, 'HardwareType' = 29, 'DeviceStatus' = @DS_SYSTEM_TYPE_ACTIVE, 'VioTimestamp' = NULL, 
	'ClrTimestamp' = NULL, 'VioRuleStatus' = NULL, 'ClrRuleStatus' = NULL, 'RecID' = NULL, 'EndRptRecID' = NULL,
	'VioStoredTimestamp' = NULL, 'ClrStoredTimestamp' = NULL, 
	'CustomID1Label' = NULL, 'CustomID1String' = NULL, 'CustomID2Label' = NULL, 'CustomID2String' = NULL, 
	'OffenderAddress' = NULL, 'OffenderCity' = NULL, 'OffenderState' = NULL, 'OffenderZipCode' = NULL, 'OffenderPhone' = NULL,
	Con.ContractOptions, 'RuleOptions' = NULL
FROM Protech..Customers As C (NOLOCK)
JOIN Protech..Contracts As Con (NOLOCK) ON Con.ContractID = C.ContractID
LEFT JOIN Protech..Demographics AS D (NOLOCK) On D.CustomerID = C.CustomerID
LEFT JOIN Protech..Contacts AS PO (NOLOCK) On D.DemographicID = PO.DemographicID
LEFT JOIN ReportRecipients AS R (NOLOCK) ON R.CustomerID = C.CustomerID
LEFT JOIN Protech..Demographics AS D2 (NOLOCK) ON D2.DemographicID = R.ContactDemoID
WHERE C.Enabled = 'Y'
-- Either a Contact set up to receive a report for this customer
AND ( ( D.Active = 'Y' AND D.StandardTimeOffset = @TimeZone AND ((PO.ReportOptions & @DVSR_RCV_ACTIVE_MTD_RPT) = @DVSR_RCV_ACTIVE_MTD_RPT) AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) ) )
-- Or a Recipient set up to receive a report for this customer
   OR ( ((R.ReportOptions & @DVSR_RCV_ACTIVE_MTD_RPT) = @DVSR_RCV_ACTIVE_MTD_RPT) AND R.Timezone = @Timezone AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D2.CustomerID = 1 ) ) ) )
AND @List = ''

UNION

-- Add a Blank Record for Each Customer that is passed in to @List
--	This allows for each Customer to e displayed in one Report, even if there are no offender violations
SELECT 'CustomerID' = CustomerID, 'BlankRecord' = 'Y', 'PoName' = NULL, 'OffenderName' = NULL, 'OrganizationName' = OrganizationName, 
	'StandardTimeOffset' = @TimeZone, 'DaylightTimeOffset' = NULL, 'PtdID' = NULL, 'BraceletID' = NULL, 'ChargingStandID1' = NULL,
	'RuleName' = NULL, 'RuleID' = NULL, 'RuleType' = NULL, 'TimeGrid' = NULL,
	'DeviceID' = NULL, 'RuleID' = NULL, 'HwRule' = NULL, 'HardwareType' = 29, 'DeviceStatus' = @DS_SYSTEM_TYPE_ACTIVE, 'VioTimestamp' = NULL, 
	'ClrTimestamp' = NULL, 'VioRuleStatus' = NULL, 'ClrRuleStatus' = NULL, 'RecID' = NULL, 'EndRptRecID' = NULL,
	'VioStoredTimestamp' = NULL, 'ClrStoredTimestamp' = NULL, 
	'CustomID1Label' = NULL, 'CustomID1String' = NULL, 'CustomID2Label' = NULL, 'CustomID2String' = NULL, 
	'OffenderAddress' = NULL, 'OffenderCity' = NULL, 'OffenderState' = NULL, 'OffenderZipCode' = NULL, 'OffenderPhone' = NULL,
	Con.ContractOptions, 'RuleOptions' = NULL
FROM Protech..Customers As C (NOLOCK)
LEFT JOIN Protech..Contracts As Con (NOLOCK) ON Con.ContractID = C.ContractID
WHERE CustomerID IN (SELECT CONVERT(int,Value) FROM Protech..Split(@List,@SplitOn)) AND @List <> ''

UNION

SELECT C.CustomerID, 'BlankRecord' = 'N', PoName=RTRIM(PO.LastName)+', '+RTRIM(PO.FirstName), OffenderName=RTRIM(D.Lastname)+', '+RTRIM(D.FirstName),
   	C.OrganizationName, D.StandardTimeOffset, D.DaylightTimeOffset, O.PtdID, O.BraceletID, O.ChargingStandID1,
   	'RuleName' = CASE R.RuleType WHEN 'C' THEN 'Home Curfew Violation' ELSE R.RuleName END, 
	R.RuleID, R.RuleType, R.TimeGrid, DeviceID=O.PtdID, P.RuleID, P.HwRule, P.HardwareType, P.DeviceStatus, 
	VioTimestamp=CONVERT(Datetime, P.VioTimestamp), ClrTimestamp=CONVERT(Datetime, P.ClrTimestamp), 
	VioRuleStatus=CONVERT(Int, P.VioRuleStatus), ClrRuleStatus=CONVERT(Int, P.ClrRuleStatus), P.RecID, P.EndRptRecID,
	P.VioStoredTimestamp, P.ClrStoredTimestamp, 
	'CustomID1Label' = ISNULL(Con.CustomID1Label,'ID1'), 'CustomID1String' = D.ID1, 'CustomID2Label' = ISNULL(Con.CustomID2Label,'ID2'), 'CustomID2String' = D.ID2, 
	'OffenderAddress' = D.Address, 'OffenderCity' = D.City, 'OffenderState' = D.State, 'OffenderZipCode' = D.Zip, 'OffenderPhone' = D.PhoneNumber,
	Con.ContractOptions, R.RuleOptions
FROM ( 	
--		Rewrote 12/15/04 - CG
		SELECT V.RecID, V.DemographicID, V.RuleID, V.HwRule, V.HardwareType,  V.DeviceStatus, S.EndRptRecID, 
		'VioTimestamp' = V.TimeStamp, 'VioRuleStatus' = V.RuleStatus, 'VioStoredTimestamp' = V.StoredTimeStamp, 
		'ClrTimestamp' = NULL, 'ClrRuleStatus' = NULL, 'ClrStoredTimeStamp' = NULL
		FROM Report_MTD_SummaryData As S WITH(INDEX(IX_Report_MTD_SummaryData_EndRptRecID), NOLOCK)
		JOIN Report_MTDPositions As V WITH(INDEX(PK_Report_MTDPositions), NOLOCK) ON V.RecID = S.StartRptRecID
		WHERE S.EndRptRecID = 0
		-- DeviceStatus may contain nulls, convert them to 0
--		AND (ISNULL(V.DeviceStatus, 0) & @DS_SYSTEM_TYPE_MASK) = @DS_SYSTEM_TYPE_ACTIVE

		UNION ALL

 		SELECT V.RecID, V.DemographicID, V.RuleID, V.HwRule, V.HardwareType,  V.DeviceStatus, S.EndRptRecID, 
		'VioTimestamp' = V.TimeStamp, 'VioRuleStatus' = V.RuleStatus, 'VioStoredTimestamp' = V.StoredTimeStamp, 
		'ClrTimestamp' = C.TimeStamp, 'ClrRuleStatus' = C.RuleStatus, 'ClrStoredTimeStamp' = C.StoredTimeStamp
		FROM Report_MTDPositions As C WITH(INDEX(IDX_Report_MTDPositions_StoredTimeStamp), NOLOCK)
		JOIN Report_MTD_SummaryData As S WITH(INDEX(IX_Report_MTD_SummaryData_EndRptRecID), NOLOCK) ON S.EndRptRecID = C.RecID
 		JOIN Report_MTDPositions As V WITH(INDEX(PK_Report_MTDPositions), NOLOCK) ON V.RecID = S.StartRptRecID
 		WHERE C.StoredTimeStamp >= @DateRun 
		-- DeviceStatus may contain nulls, convert them to 0
--		AND ((ISNULL(C.DeviceStatus, 0) & @DS_SYSTEM_TYPE_MASK) = @DS_SYSTEM_TYPE_ACTIVE OR (ISNULL(V.DeviceStatus, 0) & @DS_SYSTEM_TYPE_MASK) = @DS_SYSTEM_TYPE_ACTIVE)

	    ) AS P 
LEFT OUTER JOIN Protech..Rules AS R (NOLOCK) ON R.RuleID = P.RuleID
JOIN Protech..Demographics AS D ON D.DemographicID = P.DemographicID  
JOIN Protech..Customers AS C ON C.CustomerID = D.CustomerID 
JOIN Protech..Offenders AS O ON O.DemographicID = D.DemographicID
JOIN Protech..Contracts As Con (NOLOCK) ON Con.ContractID = C.ContractID
LEFT OUTER JOIN Protech..Demographics AS PO (NOLOCK) ON PO.DemographicID = O.PoDemoID 
    WHERE P.RuleID > 0 
    AND D.StandardTimeOffset = @TimeZone    AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
    AND ((@List <> '' AND C.CustomerID IN (SELECT CONVERT(int,Value) FROM Protech..Split(@List,@SplitOn))) OR (@List = ''))
ORDER BY C.CustomerID, OffenderName, VioTimestamp, RecID

GO
/****** Object:  StoredProcedure [dbo].[dvsr_Report_GetBySupervisionLevel]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ===========================================================================================================
-- Author		: ??
-- Create date	: ??
-- Revisions	: 09/01/17 - CG - Added Shutdown Event (1073741824)
--			: 06/18/20 - CG - Added support for Offender Services
--			: 10/12/21 - CG - Rewrote Stored Procedure for efficiency and to accommodate the Hoppers below:
--							 Hopper 74073	aCheck DESR phase 2
--							 Hopper 70938	No events showing for Passive 2 Piece GPS (Data Only) Alcohol VB (MEMS Cellular) level of supervision
--							 Hopper 67741	Offender appears on the new supervision level report after a supervision level change
--							 Hopper 68294  DESR Bug - Duplicate columns in Summary grid
--			: 01/13/22 - CG - Hopper 82075 - "Device Shutdown" and "Charging" and other description names are not shown under status
--						   VComm stores Non Violation Statuses with a 0 for HwRruleBitIndex.  This will be fixed at some point in the future (with the release of VComm3),
--							 so patch it for now by ignoring HwRuleBitIndex unless HwRule is set to 1 so that DESR displays the correct label
--			: 01/28/22 - CG - Hopper 82879 - Extra TX Detected - Do not display if TX is not assigned to an offender
--			: 02/08/22 - CG - Hopper 83238 - BUG - UTCs are not being displayed - The changes for extra TX introduced this bug.  UTCs have a NULL HwRuleBitIndex.
--						   Added ISNULL around HwRuleBitIndex
--			: 02/01/23 - CG - Hopper 88358 - Update for bigint conversion (Report_MTDPositions.RecID, Report_MTD_SummaryData.RecID, Report_MTD_SummaryData.StartRptRecID, Report_MTD_SummaryData.EndRptRecID
--			: 09/10/24 - KP/CG - Hopper 93795 - Added support for One Offender Per Page and updated Report Render to work for CMAR
--			: 07/23/25 - CG - Hopper 96279 - Fixed a bug that was genrating duplicate rows when the supervision level had more than one report type (Ex Active and Beacon)
--
--	   *** NOTE ***  The CMAR stored procedure (cmar_Report_GetBySupervisionLevel) calls this!
--				    If the return columns are added to or modified in any way, the CMAR stored procedure needs to be updated as well!
--
--	   *** NOTE ***  This stored procedure was updated to support passing in Contract, Region, Customer, or Offender.  Leave @ReportID = 0 to query for everything.
--
-- ===========================================================================================================

CREATE   PROCEDURE [dbo].[dvsr_Report_GetBySupervisionLevel]
(
@ReportDate datetime,
@TimeZone int,
@ProTechOnly char(1),
@ReportLevelType int,
@ReportType varchar(25) = '',
@ReportID int = 0
)
AS


SET NOCOUNT ON


DECLARE @lReportDate datetime = @ReportDate,
@lTimeZone int = @TimeZone,
@lProTechOnly char(1) = @ProTechOnly,
@lReportLevelType int = @ReportLevelType,
@lReportType varchar(25) = @ReportType,
@lReportID int = @ReportID


--DECLARE @lReportDate datetime = '08/19/2022',
--	   @lTimeZone int = -300,
--	   @lProTechOnly char(1) = 'Y',
--	   @lReportLevelType int = 1,
--	   @lReportType varchar(25) = '',
--	   @lReportID int = 0  --387453


/***************************************************************************************************************************************/

DECLARE @ShowDebug int = 0

/***************************************************************************************************************************************/

----ReportedLevelType 1 - Active, 2 - Passive, 3 - Hybrid, 4 - RF, 5 - Alcohol, 7 - OffenderSvcs

-- Reported Level Type
DECLARE @ACTIVE int = 1
DECLARE @PASSIVE int = 2
DECLARE @HYBRID int = 3
DECLARE @RF int = 4
DECLARE @ALCOHOL int = 5
DECLARE @OFFENDER_SVCS int = 7

DECLARE @ReportLevelTypeValue int = (SELECT ReportLevelTypeValue FROM Protech.dbo.ReportLevelTypes WITH(NOLOCK) WHERE ReportLevelTypeRecID = @lReportLevelType)

-- Custom Fields (Offender Label)
DECLARE @CustomFieldLabelType_Offender int = 2
DECLARE @CustomFieldLabelType_OffenderDefault varchar(100) = (SELECT DefaultValue FROM Protech.dbo.CustomFieldLabels WHERE CustomFieldLabelID = @CustomFieldLabelType_Offender)

-- HwRule
DECLARE @HWRULE_CHARGING int = 268435456
DECLARE @HWRULE_SHUTDOWN int = 1073741824

-- HwRuleBitIndex
DECLARE @HWRULEBITINDEX_BreathAlcoholTest int = 200
DECLARE @HWRULEBITINDEX_AlcoholCalibrationRequired int = 204
DECLARE @HWRULEBITINDEX_ExtraTxDetected int = 206

-- Rule Status
DECLARE @RS_ZONE_ID int = 8192
DECLARE @RS_NON_VIOLATION int = 16384

-- Device Status
DECLARE @DS_SYSTEM_TYPE_ACTIVE_WMTD int = 0x300

-- Capabilities
DECLARE @CAPABILITIES_ALCOHOL int = 16384


-- Extra TX
DECLARE @ReportingEventTable_Report_MTDPositions int = 1
DECLARE @ReportingEventTable_Report_EM_Positions int = 2

DECLARE @ParameterType_ExtraTx int = 1

/*
SELECT LookupTypeID, LookupGroup, LookupValue, [Description]
FROM LookupType
WHERE LookupGroup IN ('RIAParameterTypes','ReportingEventTables')
ORDER BY LookupGroup, LookupValue

LookupTypeID LookupGroup			 LookupValue Description
------------ ---------------------- ----------- ----------------------------------------
42           ReportingEventTables	 1           Report_MTDPositions
43           ReportingEventTables	 2           Report_EM_Positions

37           RIAParameterTypes	 1           ExtraTX
46           RIAParameterTypes	 7           DCC Extra TX  (As of 9/17/2021, this was last used in 2015)
*/




-- Date Ranges
DECLARE @StartDate datetime = Protech.dbo.TruncateTimeFromDate(@lReportDate)
DECLARE @EndDate datetime = Protech.dbo.EndofDayDate(@lReportDate)

DECLARE @QueryStartDate datetime = DATEADD(DD,-1,@StartDate)
DECLARE @QueryEndDate datetime = DATEADD(DD,3,DATEADD(HH, ((@lTimeZone * -1) / 60) + 1, @lReportDate))

-- For testing, we only want to look at points to the next day since we are looking at several days past data (DESR looks at yesterday's data)
--SET @QueryEndDate = DATEADD(DD,1,@EndDate)


DECLARE @ActualReportDate datetime = @lReportDate
DECLARE @ActualReportDateEndOfDay datetime = Protech.dbo.EndofDayDate(@ActualReportDate)

DECLARE @FutureDate datetime = '01/01/2100'


-- Display parameters
IF @ShowDebug >= 1
SELECT
TimeZone = @lTimeZone,
ProTechOnly  = @lProTechOnly,
ReportLevelType  = @lReportLevelType,
ReportLevelTypeValue = @ReportLevelTypeValue,
ReportType  = @lReportType,
ReportID  = @lReportID,
ReportDate = @lReportDate,
ActualReportDate = @ActualReportDate,
ActualReportDateEndOfDay = @ActualReportDateEndOfDay,
StartDate = @StartDate,
EndDate = @EndDate,
QueryStartDate = @QueryStartDate,
QueryEndDate = @QueryEndDate


SET NOCOUNT ON

/***************************************************************************************************************************************/

-- Gather a list of Alcohol types based on capabilites

DECLARE @AlcoholTypes TABLE (TypeRecID int)

INSERT INTO @AlcoholTypes
SELECT DISTINCT HwTypeID
FROM Protech..HardwareRevs
WHERE (Capabilities & @CAPABILITIES_ALCOHOL) = @CAPABILITIES_ALCOHOL
AND [Enabled] = 'Y'

/***************************************************************************************************************************************/

-- Gather a list of Customers and settings

DECLARE @ContractOption_DESRExcel int = 94  -- DESR Option - Create report in Excel
DECLARE @ContractOption_CMARExcel int = 95  -- CMAR Option - Create report in Excel
DECLARE @ContractOption_ShareOffenderData int = 48  -- EM Manager - Share Offender Data
DECLARE @ContractOption_DESROneOffenderPerPage int = 134  -- DESR Option - Share Offender Data
DECLARE @ContractOption_CMAROneOffenderPerPage int = 135  -- DESR Option - Share Offender Data

DECLARE @RenderFormat_PDF varchar(10) = 'PDF'
DECLARE @RenderFormat_Excel varchar(10) = 'EXCEL'

DECLARE @Customers TABLE
(CustomerID int,
RegionID int,
ContractID int,
ReportRenderFormat varchar(10),
ShareData int,
OffenderLabel varchar(100),
OrganizationName varchar(50),
ReportRenderFormatCMAR varchar(10),
OneOffenderPerPageDESR int,
OneOffenderPerPageCMAR int
)

-- If we pass in a Customer, split it and apply a Customer filter
;WITH cteCustomerList
As (
SELECT CustomerID
FROM Protech.dbo.Customers WITH(NOLOCK)
WHERE
(
(@lReportID > 0
AND @lReportType IN ('Customer', 'Region', 'Contract')
AND CASE(@lReportType)
WHEN ('Customer') THEN Customers.CustomerID
WHEN ('Region') THEN Customers.RegionID
WHEN ('Contract') THEN Customers.ContractID
END = @lReportID
)
OR @lReportType NOT IN ('Customer', 'Region', 'Contract')
)
AND [Enabled] = 'Y'
)
, cteOffenderLabel
AS (
SELECT L.EMMCustomFieldLabelID, L.ContractID, OffenderLabel = L.[Value]
FROM Protech.dbo.EMMCustomFieldLabels As L
JOIN (
SELECT MaxLabelID = MAX(EMMCustomFieldLabelID), ContractID
FROM Protech.dbo.EMMCustomFieldLabels
WHERE CustomFieldLabelID = @CustomFieldLabelType_Offender
AND ISNULL(IsDeleted,0) < 1
GROUP BY ContractID
) As A ON A.MaxLabelID = L.EMMCustomFieldLabelID
)
, cteContractOptions
As (
SELECT
C.CustomerID,
ContractOptionID = CO.RecID,
OptionAllowed = CASE WHEN ISNULL(COA_C.OptionDenied,0) = 1 OR ISNULL(COA_R.OptionDenied,0) = 1 OR ISNULL(COA_Con.OptionDenied,0) = 1 THEN 0
WHEN ISNULL(COA_C.OptionAllowed,0) = 1 OR ISNULL(COA_R.OptionAllowed,0) = 1 OR ISNULL(COA_Con.OptionAllowed,0) = 1 THEN 1 ELSE 0 END,
OptionDenied = CASE WHEN ISNULL(COA_C.OptionDenied,0) = 1 OR ISNULL(COA_R.OptionDenied,0) = 1 OR ISNULL(COA_Con.OptionDenied,0) = 1 THEN 1 ELSE 0 END
FROM Protech.dbo.Customers As C
JOIN Protech.dbo.ContractOptions As CO ON 1=1
LEFT JOIN Protech.dbo.ContractOptionAssignments As COA_C ON COA_C.CustomerID = C.CustomerID AND COA_C.ContractOptionID = CO.RecID
LEFT JOIN Protech.dbo.ContractOptionAssignments As COA_R ON COA_R.RegionID = C.RegionID AND COA_R.ContractOptionID = CO.RecID
LEFT JOIN Protech.dbo.ContractOptionAssignments As COA_Con ON COA_Con.ContractID = C.ContractID AND COA_Con.ContractOptionID = CO.RecID
WHERE 1=1
AND CO.RecID IN (@ContractOption_DESRExcel, @ContractOption_CMARExcel, @ContractOption_ShareOffenderData, @ContractOption_DESROneOffenderPerPage, @ContractOption_CMAROneOffenderPerPage)
)
INSERT INTO @Customers
SELECT C.CustomerID, C.RegionID, C.ContractID,
-- ReportRenderFormat - DESR supports running the report in Excel if the Contract/Region/Customer allows it
ReportRenderFormat = CASE WHEN RR.OptionDenied = 1 THEN @RenderFormat_PDF
WHEN RR.OptionAllowed = 1 THEN @RenderFormat_Excel
ELSE @RenderFormat_PDF
END,
ShareData = CASE WHEN SD.OptionAllowed = 1 THEN 1 ELSE 0 END,
OffenderLabel = ISNULL(OL.OffenderLabel,@CustomFieldLabelType_OffenderDefault),
C.OrganizationName,
ReportRenderFormatCMAR = CASE WHEN RRC.OptionDenied = 1 THEN @RenderFormat_PDF
WHEN RRC.OptionAllowed = 1 THEN @RenderFormat_Excel
ELSE @RenderFormat_PDF
END,
OneOffenderPerPageDESR = CASE WHEN OneOffD.OptionDenied = 1 THEN 0
WHEN OneOffD.OptionAllowed = 1 THEN 1
ELSE 0
END,
OneOffenderPerPageCMAR = CASE WHEN OneOffC.OptionDenied = 1 THEN 0
WHEN OneOffC.OptionAllowed = 1 THEN 1
ELSE 0
END
FROM Protech.dbo.Customers As C WITH(NOLOCK)
LEFT JOIN cteContractOptions As RR ON RR.CustomerID = C.CustomerID AND RR.ContractOptionID = @ContractOption_DESRExcel
LEFT JOIN cteContractOptions As RRC ON RRC.CustomerID = C.CustomerID AND RRC.ContractOptionID = @ContractOption_CMARExcel
LEFT JOIN cteContractOptions As SD ON SD.CustomerID = C.CustomerID AND SD.ContractOptionID = @ContractOption_ShareOffenderData
LEFT JOIN cteContractOptions As OneOffD ON OneOffD.CustomerID = C.CustomerID AND OneOffD.ContractOptionID = @ContractOption_DESROneOffenderPerPage
LEFT JOIN cteContractOptions As OneOffC ON OneOffC.CustomerID = C.CustomerID AND OneOffC.ContractOptionID = @ContractOption_CMAROneOffenderPerPage
JOIN cteCustomerList As cte ON cte.CustomerID = C.CustomerID
LEFT JOIN cteOffenderLabel As OL ON OL.ContractID = C.ContractID

IF @ShowDebug = 1  SELECT TableName = '@Customers', [RowCount] = COUNT(1) FROM @Customers


/***************************************************************************************************************************************/

-- Hopper 74073 - This breaks apart the ReportLevelTypeValue to handle combined Supervision Levels without the need to update the ReportContractLevels table
--		  The ReportContractLevels table will still need to be updated if the level needs to use a different name on the DESR

IF OBJECT_ID('tempdb..#SupervisionLevels') IS NOT NULL DROP TABLE #SupervisionLevels
CREATE TABLE #SupervisionLevels
(
ContractLevelRecID int,
SupervisionLevelName varchar(100),
LevelNumber int,
ReportLevelType int,
ReportLevelName varchar(15),
TrackingDeviceType int,
RecordFound tinyint,
UseLevelNumber tinyint,
UseLevelName varchar(100),
UseReportLevelType int,
ContractID int
)


CREATE INDEX IDX_TempData_SupervisionLevels ON #SupervisionLevels(ContractLevelRecID ASC)


INSERT INTO #SupervisionLevels
SELECT
CL.ContractLevelRecID,
SupervisionLevelName = CL.[Name],
SL.LevelNumber,
ReportLevelType = RLT.ReportLevelTypeRecID,
RLT.ReportLevelName,
SL.TrackingDeviceType,
RecordFound = CASE WHEN USL.LevelNumber IS NULL THEN 0 ELSE 1 END,
UseLevelNumber = ISNULL(USL.LevelNumber,SL.LevelNumber),
UseLevelName = ISNULL(USL.[Description],SL.[Description]),
UseReportLevelType = ISNULL(USL.ReportLevelType,SL.ReportLevelType),
CL.ContractID
FROM Protech.dbo.ContractLevels AS CL WITH(NOLOCK)
JOIN Billing.dbo.SupervisionLevel As SL WITH(NOLOCK) ON CL.LevelNumber = SL.LevelNumber
JOIN Protech.dbo.ReportLevelTypes As RLT WITH(NOLOCK) ON (SL.ReportLevelTypeValue & RLT.ReportLevelTypeValue) = RLT.ReportLevelTypeValue

LEFT JOIN Reporting.dbo.ReportContractLevels As RCL WITH(NOLOCK) ON RCL.ContractLevel = SL.LevelNumber AND RLT.ReportLevelTypeRecID = RCL.ReportLevelType
LEFT JOIN Billing.dbo.SupervisionLevel As USL WITH(NOLOCK) ON RCL.ReportContractLevel = USL.LevelNumber

JOIN (SELECT DISTINCT ContractID FROM @Customers) As C ON C.ContractID = CL.ContractID

WHERE 1=1
AND RLT.ReportLevelTypeRecID = @lReportLevelType

ORDER BY CL.ContractLevelRecID

IF @ShowDebug = 1  SELECT TableName = '#SupervisionLevels', [RowCount] = COUNT(1) FROM #SupervisionLevels


/***************************************************************************************************************************************/

-- Hopper 67741 - Gather a list of Supervision Level changes
--	   Exclude records that have a Start and End date before the QueryStartDate

IF OBJECT_ID('tempdb.dbo.#SupervisionLevelHistory', 'U') IS NOT NULL DROP TABLE #SupervisionLevelHistory;
CREATE TABLE #SupervisionLevelHistory
(
DemographicID int,
LevelRecID int,
AssignmentDateOdessa datetime,
UnassignmentDateOdessa datetime,
ReportLevelType int,
ReportLevelTypeValue int,
TrackingDeviceType int,
TrackingDeviceName varchar(50),
StandardTimeOffset int,
DaylightTimeOffset int,
AssignmentDateUTC datetime,
UnassignmentDateUTC datetime,
BraceletDeviceType int,
BraceletDeviceName varchar(50),
ChargingDeviceType int,
ChargingDeviceName varchar(50),
AlcoholDeviceType int,
AlcoholDeviceName varchar(50)
)

CREATE INDEX IDX_TempData_SupervisionLevelHistory ON #SupervisionLevelHistory (DemographicID ASC)


;WITH cteSupervisionLevelHistory_Temp
As (
SELECT *
FROM Protech.dbo.SupervisionLevelHistory As SLH WITH(NOLOCK)
WHERE ChangeType = 'A'

AND (@lReportType <> 'Offender' OR (@lReportType = 'Offender' AND SLH.DemoID = @lReportID))

)
,cteSupervisionLevelHistory
As (
SELECT DemoID, RecID, NextRecID = LEAD(RecID) OVER ( PARTITION BY DemoID ORDER BY [Timestamp], RecID)
FROM cteSupervisionLevelHistory_Temp
)
INSERT INTO #SupervisionLevelHistory
SELECT DemographicID = SLH.DemoID,
Assign.LevelRecID,
AssignmentDateOdessa = Assign.[Timestamp],
UnassignmentDateOdessa = UnAssign.[Timestamp],
CL.ReportLevelType,
CL.ReportLevelTypeValue,
CL.TrackingDeviceType,
CL.TrackingDeviceName,
D.StandardTimeOffset,
D.DaylightTimeOffset,
AssignmentDateUTC = CASE WHEN DATEPART(tz,CAST(Assign.[Timestamp] AS DATETIME) AT TIME ZONE 'UTC' AT TIME ZONE 'Eastern Standard Time') = -300 THEN
DATEADD(MI,StandardTimeOffset,Assign.[Timestamp]) ELSE DATEADD(MI,DaylightTimeOffset,Assign.[Timestamp]) END,
UnassignmentDateUTC = CASE WHEN DATEPART(tz,CAST(UnAssign.[Timestamp] AS DATETIME) AT TIME ZONE 'UTC' AT TIME ZONE 'Eastern Standard Time') = -300 THEN
DATEADD(MI,StandardTimeOffset,UnAssign.[Timestamp]) ELSE DATEADD(MI,DaylightTimeOffset,UnAssign.[Timestamp]) END,
BraceletDeviceType,
BraceletDeviceName,
ChargingDeviceType,
ChargingDeviceName,
AlcoholDeviceType,
AlcoholDeviceName
FROM cteSupervisionLevelHistory As SLH
JOIN Protech.dbo.SupervisionLevelHistory As Assign WITH(NOLOCK) ON SLH.RecID = Assign.RecID
LEFT JOIN Protech.dbo.SupervisionLevelHistory As UnAssign WITH(NOLOCK) ON SLH.NextRecID = UnAssign.RecID
JOIN Protech.dbo.ContractLevels As CL WITH(NOLOCK) ON CL.ContractLevelRecID = Assign.LevelRecID
JOIN Protech.dbo.Demographics As D WITH(NOLOCK) ON D.DemographicID = SLH.DemoID

JOIN (SELECT DISTINCT ContractID FROM @Customers) As C ON C.ContractID = CL.ContractID

WHERE 1=1
AND (CL.ReportLevelTypeValue & @ReportLevelTypeValue) = @ReportLevelTypeValue
AND Assign.[Timestamp] <= @QueryEndDate
AND ISNULL(UnAssign.[Timestamp],@QueryEndDate) >= @QueryStartDate
AND ( @lProTechOnly = 'N' OR ( @lProTechOnly = 'Y' AND D.CustomerID = 1 ) )
AND D.StandardTimeOffset = @lTimeZone


IF @ShowDebug = 1  SELECT TableName = '#SupervisionLevelHistory', [RowCount] = COUNT(1) FROM #SupervisionLevelHistory

/***************************************************************************************************************************************/

-- Gather the Violation data
--	   If a new ReportLevelType is added, it will query all of the tables


IF OBJECT_ID('tempdb.dbo.#ViolationData', 'U') IS NOT NULL DROP TABLE #ViolationData;
CREATE TABLE #ViolationData
(QueryNumber int,
TableName varchar(100),
RecID bigint,
DemographicID int,
RuleID int,
HwRule int,
HardwareType int,
DeviceStatus int,
EndRptRecID bigint,
VioTimestamp datetime,
VioRuleStatus int,
VioStoredTimestamp datetime,
ClrTimestamp datetime,
DeviceID int,
ZoneRecID int,
HwRuleBitIndex int,
IsClearable bit,
BatLevel varchar(9)
)


CREATE INDEX IDX_TempData_ViolationData ON #ViolationData(DemographicID ASC, HwRuleBitIndex ASC)


-- Do this once
DECLARE @DemographicsList TABLE (DemographicID int, StandardTimeOffset int, DaylightTimeOffset int)

INSERT INTO @DemographicsList
SELECT DISTINCT DemographicID, StandardTimeOffset, DaylightTimeOffset FROM #SupervisionLevelHistory

DECLARE @QueryForExtraTX int = 0

-- Query Report_EM_Positions table
IF (@lReportLevelType NOT IN (@ACTIVE, @HYBRID, @OFFENDER_SVCS))
BEGIN
SET @QueryForExtraTX = 1

INSERT INTO #ViolationData
--Violations without clear times
SELECT QueryNumber = 1, TableName = 'Report_EM_Positions',
V.RecID, V.DemographicID, V.RuleID, V.HwRule, V.HardwareType, V.DeviceStatus, S.EndRptRecID,
VioTimestamp = V.[TimeStamp], VioRuleStatus = V.RuleStatus, VioStoredTimestamp = V.StoredTimeStamp,
ClrTimestamp = NULL, V.DeviceID, ZoneRecID = 0, V.HwRuleBitIndex, IsClearable = 1, BatLevel = NULL
FROM Reporting.dbo.Report_EM_SummaryData As S WITH(INDEX(IX_Report_EM_SummaryData_EndRptRecID), NOLOCK)
JOIN Reporting.dbo.Report_EM_Positions As V WITH (INDEX(PK_Report_EM_Positions), NOLOCK) ON V.RecID = S.StartRptRecID
JOIN @DemographicsList As D ON V.DemographicID = D.DemographicID
WHERE S.EndRptRecID = 0

INSERT INTO #ViolationData
--Violations with clear times
SELECT QueryNumber = 2, TableName = 'Report_EM_Positions',
V.RecID, V.DemographicID, V.RuleID, V.HwRule, V.HardwareType,  V.DeviceStatus, S.EndRptRecID,
VioTimestamp = V.[TimeStamp], VioRuleStatus = V.RuleStatus, VioStoredTimestamp = V.StoredTimeStamp,
ClrTimestamp = C.[TimeStamp], V.DeviceID, ZoneRecID = 0, V.HwRuleBitIndex, IsClearable = 1, BatLevel = NULL
FROM Reporting.dbo.Report_EM_Positions As C WITH(INDEX(IDX_ReportEMPositions_StoredTimeStamp), NOLOCK)
JOIN Reporting.dbo.Report_EM_SummaryData As S WITH(INDEX(IX_Report_EM_SummaryData_EndRptRecID), NOLOCK) ON S.EndRptRecID = C.RecID
AND C.StoredTimeStamp between @QueryStartDate AND @QueryEndDate
JOIN @DemographicsList As D ON c.DemographicID = D.DemographicID
JOIN Reporting.dbo.Report_EM_Positions As V WITH(INDEX(PK_Report_EM_Positions), NOLOCK) ON V.RecID = S.StartRptRecID
END

-- If Passive, delete non-Passive data
IF (@lReportLevelType IN (@PASSIVE))
BEGIN
DELETE FROM #ViolationData
WHERE QueryNumber IN (1,2)
AND (DeviceStatus & @DS_SYSTEM_TYPE_ACTIVE_WMTD) <> @DS_SYSTEM_TYPE_ACTIVE_WMTD
END


-- Query Report_MTDPositions table
IF (@lReportLevelType NOT IN (@ALCOHOL, @OFFENDER_SVCS))
BEGIN

INSERT INTO #ViolationData
--Violations without clear times
SELECT QueryNumber = 3, TableName = 'Report_MTDPositions',
V.RecID, V.DemographicID, V.RuleID, V.HwRule, V.HardwareType,  V.DeviceStatus, S.EndRptRecID,
VioTimestamp = V.[TimeStamp], VioRuleStatus = V.RuleStatus, VioStoredTimestamp = V.StoredTimeStamp,
ClrTimestamp = NULL, V.DeviceID, V.ZoneRecID, V.HwRuleBitIndex, IsClearable = 1, BatLevel = NULL
FROM Reporting.dbo.Report_MTD_SummaryData As S WITH(INDEX(IX_Report_MTD_SummaryData_EndRptRecID), NOLOCK)
JOIN Reporting.dbo.Report_MTDPositions As V WITH(INDEX(PK_Report_MTDPositions), NOLOCK) ON V.RecID = S.StartRptRecID
JOIN @DemographicsList As D ON V.DemographicID = D.DemographicID
WHERE S.EndRptRecID = 0

AND V.RuleID > 0
AND (V.RuleStatus & @RS_NON_VIOLATION) != @RS_NON_VIOLATION
--FOR GPS Devices only want to see the device status of charging  -- 09/01/17 - CG - Added Shutdown Event (1073741824)
AND (V.RuleID <> 1 OR (V.RuleID = 1 AND (V.HwRule & @HWRULE_CHARGING) = @HWRULE_CHARGING) OR (V.RuleID = 1 AND (V.HwRule & @HWRULE_SHUTDOWN) = @HWRULE_SHUTDOWN))


INSERT INTO #ViolationData
--Violations with clear times
SELECT QueryNumber = 4, TableName = 'Report_MTDPositions',
V.RecID, V.DemographicID, V.RuleID, V.HwRule, V.HardwareType,  V.DeviceStatus, S.EndRptRecID,
VioTimestamp = V.[TimeStamp], VioRuleStatus = V.RuleStatus, VioStoredTimestamp = V.StoredTimeStamp,
ClrTimestamp = C.[TimeStamp], V.DeviceID, C.ZoneRecID, V.HwRuleBitIndex, IsClearable = 1, BatLevel = NULL
FROM Reporting.dbo.Report_MTDPositions As C WITH(INDEX(IDX_Report_MTDPositions_StoredTimeStamp), NOLOCK)
JOIN Reporting.dbo.Report_MTD_SummaryData As S WITH(INDEX(IX_Report_MTD_SummaryData_EndRptRecID), NOLOCK) ON S.EndRptRecID = C.RecID
AND C.StoredTimeStamp BETWEEN @QueryStartDate AND @QueryEndDate
JOIN @DemographicsList As D ON C.DemographicID = D.DemographicID
JOIN Reporting.dbo.Report_MTDPositions As V WITH(INDEX(PK_Report_MTDPositions), NOLOCK) ON V.RecID = S.StartRptRecID

WHERE 1=1
AND V.RuleID > 0
AND (V.RuleStatus & @RS_NON_VIOLATION) != @RS_NON_VIOLATION
--FOR GPS Devices only want to see the device status of charging  -- 09/01/17 - CG - Added Shutdown Event (1073741824)
AND (V.RuleID <> 1 OR (V.RuleID = 1 AND (V.HwRule & @HWRULE_CHARGING) = @HWRULE_CHARGING) OR (V.RuleID = 1 AND (V.HwRule & @HWRULE_SHUTDOWN) = @HWRULE_SHUTDOWN))

END

-- Query Report_AlcoholTests
IF (@lReportLevelType IN (@ALCOHOL))
BEGIN

INSERT INTO #ViolationData
--Alcohol Tests
SELECT QueryNumber = 5, TableName = 'Report_AlcoholTests',
RecID = Report_AlcoholTestsID, V.DemographicID, V.RuleID, R.HwRule, HardwareType = A.DeviceType, DeviceStatus = V.EventStatus, EndRptRecID = 0,
VioTimestamp = V.[TimeStamp], VioRuleStatus = V.RuleStatus, VioStoredTimestamp = V.StoredTimeStamp,
ClrTimestamp = NULL, V.DeviceID, ZoneRecID = 0, HwRuleBitIndex = 0, IsClearable = 0,
BATLevel = CASE WHEN LEN(Convert(varchar(9),T.BATLevel)) > 5 THEN SUBSTRING(Convert(varchar(9),T.BATLevel),1,5)
ELSE Convert(varchar(9),T.BATLevel) END
FROM Reporting.dbo.Report_AlcoholTests As V WITH (NOLOCK)
JOIN Protech..View_AllDevices As A ON A.DeviceID = V.DeviceID
JOIN Protech.dbo.Rules As R WITH(NOLOCK) ON V.RuleID = R.RuleID
JOIN @DemographicsList As D ON V.DemographicId = D.DemographicId
LEFT JOIN Alcohol.dbo.AlcoholTest T WITH(NOLOCK) ON V.AlcoholTestID = T.AlcoholTestID
WHERE V.StoredTimeStamp between @QueryStartDate AND @QueryEndDate
END

-- Query OffenderServiceEvents
IF (@lReportLevelType IN (@OFFENDER_SVCS))
BEGIN

INSERT INTO #ViolationData
SELECT QueryNumber = 6, TableName = 'OffenderServiceEvents',
RecID = V.ServiceEventID, V.DemographicID, V.RuleID, R.HwRule, HardwareType = 0, DeviceStatus = 0, EndRptRecID = 0,
VioTimestamp = V.UtcEventTimeStamp, VioRuleStatus = 0, VioStoredTimestamp = V.StoredTimeStamp,
ClrTimestamp = NULL, DeviceID = 0, ZoneRecID = 0, R.HwRuleBitIndex, IsClearable = 0, BATLevel = NULL
FROM Reporting.dbo.OffenderServiceEvents As V WITH(NOLOCK)
JOIN @DemographicsList D ON V.DemographicId = D.DemographicId
JOIN Protech.dbo.Rules As R WITH(NOLOCK) ON R.RuleID = V.RuleID
WHERE CASE WHEN DATEPART(tz,CAST(V.UtcEventTimeStamp AS DATETIME) AT TIME ZONE 'UTC' AT TIME ZONE 'Eastern Standard Time') = -300 THEN
DATEADD(MI,StandardTimeOffset,V.UtcEventTimeStamp) ELSE DATEADD(MI,DaylightTimeOffset,V.UtcEventTimeStamp) END BETWEEN @ActualReportDate AND @ActualReportDateEndOfDay
END


SET NOCOUNT OFF


IF @ShowDebug >= 1  SELECT TableName = '#ViolationData', QueryNumber, TableName, [RowCount] = COUNT(1) FROM #ViolationData GROUP BY QueryNumber, TableName ORDER BY QueryNumber


IF OBJECT_ID('tempdb.dbo.#ExtraTX', 'U') IS NOT NULL DROP TABLE #ExtraTX;
CREATE TABLE #ExtraTX
(
RecID int,
VioTimestamp datetime,
V_DeviceID int,
V_DemographicID int,
EP_DeviceID varchar(50),
EP_DemographicID int,
DetectedOffender varchar(100)
)


CREATE INDEX IDX_TempData_#ExtraTX ON #ExtraTX(RecID ASC)

-- Don't query for this unless it's supported
IF @QueryForExtraTX = 1
BEGIN

;WITH cteViolationsForExtraTx
As (
SELECT V.RecID, V.DemographicID, V.TableName, V.DeviceID, V.VioTimestamp
FROM #ViolationData As V
WHERE V.HWRuleBitIndex = @HWRULEBITINDEX_ExtraTxDetected
AND V.TableName = 'Report_EM_Positions'
)

INSERT INTO #ExtraTX
SELECT V.RecID,
V.VioTimestamp,
V_DeviceID = V.DeviceID,
V_DemographicID = V.DemographicID,
EP_DeviceID = EP.ParameterValue,
EP_DemographicID = OD.DemographicID,
--Either the detecting device is same contract or detected contract allows access                     -- If we don't find an offender name, show just the serial number (but we are going to filter out unassigned records further down in the code, Hopper 82879)
DetectedOffender = CASE WHEN CD.ShareData = 1 OR C.ContractID = CD.ContractID THEN 'Extra Tx Detected: ' + CASE WHEN D.LastName IS NULL THEN A.SerialNumber ELSE D.LastName + ', ' + D.FirstName + ' ('+ A.SerialNumber + ')' END
ELSE 'Extra Tx Detected: Undisclosed' END
FROM cteViolationsForExtraTx As V
LEFT JOIN Reporting.dbo.Report_EventParams As EP WITH(NOLOCK) ON EP.EventTableLookupValue = @ReportingEventTable_Report_EM_Positions
AND EP.EventTableRecID = V.RecID AND EP.ParameterTypeLookupValue = @ParameterType_ExtraTx
LEFT JOIN Protech.dbo.OffenderDevices As OD WITH(NOLOCK) ON OD.DeviceID = CASE WHEN ISNUMERIC(EP.ParameterValue) = 1 THEN CAST(EP.ParameterValue as int) ELSE 0 END
AND OD.AssignmentDate <= V.VioTimestamp AND (ISNULL(OD.UnassignmentDate,@FutureDate) >= V.VioTimestamp)
LEFT JOIN Protech.dbo.Demographics As D WITH(NOLOCK) ON OD.DemographicID = D.DemographicID
LEFT JOIN Protech.dbo.View_AllDevices As A WITH(NOLOCK) ON A.DeviceID = CASE WHEN ISNUMERIC(EP.ParameterValue) = 1 THEN CAST(EP.ParameterValue as int) ELSE 0 END
LEFT JOIN @Customers As C ON D.CustomerID = C.CustomerID
LEFT JOIN Protech.dbo.Demographics As DD WITH(NOLOCK) ON V.DemographicID = DD.DemographicID --Detecting Device Demo
LEFT JOIN @Customers As CD ON DD.CustomerID = CD.CustomerID --Detecting Device Demo
WHERE  1=1
ORDER BY RecID DESC
END


-- Final Query

-- There is no need to have an almost identical stored procedure for CMAR
--	   cmar_Report_GetBySupervisionLevel will call this stored procedure, store the data in a temp table, and add the CaseMgmt notes to the results
--	   **** DO NOT MODIFY THE RETURN COLUMNS UNLESS YOU ALSO MODIFY THEM IN cmar_Report_GetBySupervisionLevel ****

SELECT
V.DemographicID,
OffenderName = RTRIM(D.Lastname) + ', ' + RTRIM(D.FirstName),

ViolationLabel = Protech.dbo.fn_GetViolationReportLabel(CASE WHEN ISNULL(V.HwRule,0) > 0 THEN ISNULL(V.HwRule,0) ELSE ISNULL(R.HwRule,0) END,
CASE WHEN ISNULL(V.HwRuleBitIndex,0) > 0 THEN ISNULL(V.HwRuleBitIndex,0) ELSE ISNULL(R.HwRuleBitIndex,0) END,
ISNULL(R.RuleType,'H'), R.RuleName, SL.UseLevelNumber, @lReportLevelType, V.HardwareType, 0),

--NonViolationStatus = ISNULL((SELECT MAX(CAST(NonViolationStatus As int)) FROM Reporting.dbo.EventLabels WHERE HwRuleBitIndex = ISNULL(V.HwRuleBitIndex,0)),0),
NonViolationStatus = ISNULL((SELECT MAX(CAST(NonViolationStatus As int)) FROM Reporting.dbo.EventLabels As EL WHERE EL.HwRule = ISNULL(V.HwRule,0) OR (HWRule = 1 AND EL.HwRuleBitIndex = ISNULL(V.HwRuleBitIndex,0))   ),0),
-- VComm stores Non Violation Statuses with a 0 for HwRruleBitIndex.  This will be fixed at some point in teh future (with the release of VComm3), so patch it for now so that DESR displays the correct label (Hopper 82075)

--Rule Info
RuleName = CASE WHEN @lReportLevelType = @OFFENDER_SVCS THEN (CASE R.RuleType WHEN 'I' THEN 'Inclusion Zone' WHEN 'O' THEN 'Exclusion Zone' ELSE R.RuleName END)
WHEN (V.VioRuleStatus & @RS_ZONE_ID) = @RS_ZONE_ID AND (V.VioRuleStatus & @RS_NON_VIOLATION) = @RS_NON_VIOLATION THEN 'AOI - ' +  r.RuleName + ' - (' + z.Description + ')'
WHEN R.AssignedDeviceID IN (SELECT TypeRecID FROM @AlcoholTypes) AND V.HWRuleBitIndex = @HWRULEBITINDEX_BreathAlcoholTest THEN R.RuleName + ' (BAT Level ' + V.BATLevel + ')'
WHEN V.HWRuleBitIndex = @HWRULEBITINDEX_AlcoholCalibrationRequired THEN 'Alcohol Device Calibration Required'
ELSE r.RuleName END,

SLH.LevelRecID,
SupervisionLevel = SL.UseLevelName,
LevelNumber = SL.UseLevelNumber,
UseReportLevelType = UseReportLevelType,
R.RuleType,
R.TimeGrid,
V.RuleID,
V.HwRule,
V.HardwareType,
V.DeviceStatus,
R.RuleOptions,
V.IsClearable,
V.HWRuleBitIndex,
ETX.DetectedOffender,
ShowSchedule = CASE WHEN (R.RuleType IN ('I','O')) OR (@lReportLevelType = @ALCOHOL AND RuleType IN ('H')) THEN 1 ELSE 0 END,

ShowEndTimeColumn = CASE WHEN @lReportLevelType IN (@OFFENDER_SVCS) THEN 0 ELSE 1 END,
ReportLevelType = @lReportLevelType,
ReportLevelTypeValue = @ReportLevelTypeValue,

-- This was assigned at the time of the violation
ViolationDevice = V.DeviceID,
SerialNumber = A.SerialNumber,

-- Violation Info
VioTimestamp = CASE WHEN DATEPART(tz,CAST(V.VioTimestamp AS DATETIME) AT TIME ZONE 'UTC' AT TIME ZONE 'Eastern Standard Time') = -300 THEN
DATEADD(MI,D.StandardTimeOffset,V.VioTimestamp) ELSE DATEADD(MI,D.DaylightTimeOffset,V.VioTimestamp) END,
ClrTimestamp = CASE WHEN DATEPART(tz,CAST(V.ClrTimestamp AS DATETIME) AT TIME ZONE 'UTC' AT TIME ZONE 'Eastern Standard Time') = -300 THEN
DATEADD(MI,D.StandardTimeOffset,V.ClrTimestamp) ELSE DATEADD(MI,D.DaylightTimeOffset,V.ClrTimestamp) END,
VioRuleStatus = CONVERT(Int, V.VioRuleStatus),
V.RecID,
V.EndRptRecID,
V.VioStoredTimestamp,

-- These are currently assigned
TrackingDeviceID = A_Trac.SerialNumber,
TrackingDeviceName = ISNULL(CL.TrackingDeviceName,'Tracking Device'),
BraceletID = A_Brac.SerialNumber,
BraceletDeviceName = ISNULL(CL.BraceletDeviceName,'Bracelet'),
ChgID = A_Chg.SerialNumber,
ChargingDeviceName = ISNULL(CL.ChargingDeviceName,(SELECT TOP 1 [Description] FROM Protech.dbo.HardwareTypes WITH(NOLOCK) WHERE TypeRecID = SLH.ChargingDeviceType)),
AlcoholDeviceID = A_Alc.SerialNumber,
AlcoholDeviceName = ISNULL(CL.AlcoholDeviceName,'Alcohol Device'),

C.OrganizationName,
D.StandardTimeOffset,
D.DaylightTimeOffset,

OfficerID = O.PoDemoID,
C.CustomerID,
BlankRecord = 'N',
OfficerName = CASE WHEN PO.LastName IS NULL THEN '' ELSE RTRIM(PO.LastName) + ', ' + RTRIM(PO.FirstName) END,

CustomID1Label = ISNULL(Con.CustomID1Label,'ID1'),
CustomID1String = D.ID1,
CustomID2Label = ISNULL(Con.CustomID2Label,'ID2'),
CustomID2String = D.ID2,
Con.ContractOptions,
C.OffenderLabel,
ReportRenderFormat = ISNULL(C.ReportRenderFormat,'PDF'),

OffenderAddress = D.[Address],
OffenderCity = D.City,
OffenderState = D.[State],
OffenderZipCode = D.Zip,
OffenderPhone = D.PhoneNumber,

TableName,		-- Needed for CMAR
ReportRenderFormatCMAR = ISNULL(C.ReportRenderFormatCMAR,'PDF'),
OneOffenderPerPage = ISNULL(C.OneOffenderPerPageDESR,0),
OneOffenderPerPageCMAR = ISNULL(C.OneOffenderPerPageCMAR,0)

FROM #ViolationData As V
JOIN #SupervisionLevelHistory As SLH ON SLH.DemographicID = V.DemographicID AND V.VioTimestamp BETWEEN SLH.AssignmentDateUTC AND ISNULL(SLH.UnassignmentDateUTC,@FutureDate)
JOIN #SupervisionLevels As SL ON SL.ContractLevelRecID = SLH.LevelRecID

JOIN Protech.dbo.Demographics As D WITH(NOLOCK) ON D.DemographicID = V.DemographicID
JOIN Protech.dbo.Offenders As O WITH(NOLOCK) ON O.DemographicID = V.DemographicID
LEFT JOIN Protech.dbo.Demographics As PO WITH(NOLOCK) ON PO.DemographicID = O.PoDemoID
JOIN @Customers As C ON C.CustomerID = D.CustomerID
JOIN Protech.dbo.Contracts As Con WITH(NOLOCK) ON Con.ContractID = C.ContractID

LEFT JOIN Protech.dbo.Rules As R WITH(NOLOCK) ON R.RuleID = V.RuleID
LEFT JOIN Protech.dbo.Zones Z WITH(NOLOCK) ON V.ZoneRecID = Z.ZoneRecID

-- Get device assiciated with the violation
LEFT JOIN Protech.dbo.View_AllDevices As A WITH(NOLOCK) ON A.DeviceID = V.DeviceID

-- Get current level so we can get currently assigned devices
JOIN Protech.dbo.ContractLevels As CL WITH(NOLOCK) ON CL.ContractLevelRecID = O.SupervisionLevel
LEFT JOIN Protech.dbo.OffenderDevices As OD_Trac WITH(NOLOCK) ON OD_Trac.DemographicID = V.DemographicID AND OD_Trac.HardwareTypeRecID = CL.TrackingDeviceType AND OD_Trac.UnassignmentDate IS NULL
LEFT JOIN Protech.dbo.View_AllDevices As A_Trac WITH(NOLOCK) ON A_Trac.DeviceID = OD_Trac.DeviceID
LEFT JOIN Protech.dbo.OffenderDevices As OD_Brac WITH(NOLOCK) ON OD_Brac.DemographicID = V.DemographicID AND OD_Brac.HardwareTypeRecID = CL.BraceletDeviceType AND OD_Brac.UnassignmentDate IS NULL
LEFT JOIN Protech.dbo.View_AllDevices As A_Brac WITH(NOLOCK) ON A_Brac.DeviceID = OD_Brac.DeviceID
LEFT JOIN Protech.dbo.OffenderDevices As OD_Chg WITH(NOLOCK) ON OD_Chg.DemographicID = V.DemographicID AND OD_Chg.HardwareTypeRecID = CL.ChargingDeviceType AND OD_Chg.UnassignmentDate IS NULL
LEFT JOIN Protech.dbo.View_AllDevices As A_Chg WITH(NOLOCK) ON A_Chg.DeviceID = OD_Chg.DeviceID
LEFT JOIN Protech.dbo.OffenderDevices As OD_Alc WITH(NOLOCK) ON OD_Alc.DemographicID = V.DemographicID AND OD_Alc.HardwareTypeRecID = CL.AlcoholDeviceType AND OD_Alc.UnassignmentDate IS NULL
LEFT JOIN Protech.dbo.View_AllDevices As A_Alc WITH(NOLOCK) ON A_Alc.DeviceID = OD_Alc.DeviceID

LEFT JOIN #ExtraTX As ETX ON ETX.RecID = V.RecID

WHERE 1=1

-- ViolationTimestamp <= @EndDate
AND CASE WHEN DATEPART(tz,CAST(V.VioTimestamp AS DATETIME) AT TIME ZONE 'UTC' AT TIME ZONE 'Eastern Standard Time') = -300 THEN
DATEADD(MI,D.StandardTimeOffset,V.VioTimestamp) ELSE DATEADD(MI,D.DaylightTimeOffset,V.VioTimestamp) END <= @EndDate

-- ClearTimestamp = NULL or >= @StartDate
AND (V.ClrTimestamp IS NULL OR CASE WHEN DATEPART(tz,CAST(V.ClrTimestamp AS DATETIME) AT TIME ZONE 'UTC' AT TIME ZONE 'Eastern Standard Time') = -300 THEN
DATEADD(MI,D.StandardTimeOffset,V.ClrTimestamp) ELSE DATEADD(MI,D.DaylightTimeOffset,V.ClrTimestamp) END >= @StartDate)

-- Only report violations from the passed in level type
AND SL.UseReportLevelType = @lReportLevelType

-- If violation is Extra TX Detected and it does not find an assigned offender, do not show the record
AND ( (ISNULL(V.HwRuleBitIndex,0) = @HWRULEBITINDEX_ExtraTxDetected AND ISNULL(ETX.EP_DemographicID,0) > 0) OR ISNULL(V.HwRuleBitIndex,0) <> @HWRULEBITINDEX_ExtraTxDetected )

ORDER BY D.Lastname, D.FirstName, VioTimestamp



IF OBJECT_ID('tempdb..#SupervisionLevels') IS NOT NULL DROP TABLE #SupervisionLevels
IF OBJECT_ID('tempdb.dbo.#SupervisionLevelHistory', 'U') IS NOT NULL DROP TABLE #SupervisionLevelHistory;
IF OBJECT_ID('tempdb.dbo.#ViolationData', 'U') IS NOT NULL DROP TABLE #ViolationData;
IF OBJECT_ID('tempdb.dbo.#ExtraTX', 'U') IS NOT NULL DROP TABLE #ExtraTX;


GO
/****** Object:  StoredProcedure [dbo].[dvsr_Report_PassiveMTD_GetByDateTimeZone]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/***************************************************************************
NAME:		dvsr_Report_MTD_Positions_GetByDateTimeZone
PARAMETERS:	@DateRun, @TimeZone
DESCRIPTION:The following query pulls data for the actual DVSR 
		Query for Violations that occurred within date range 
		Union will strip out duplicate records where the violation and clear both occur withing the date range
		Query for Clears that occurred within date range
DEVELOPER: 	Shannon Maness
CREATE DATE:	07/28/2004
REVISIONS:	05/04/2004 - CG - Added 'Split Function' to split
		a comma-delimited list of CustomerIDs (@List) and
		store them in a temporary table, This will be used to 
		generate multi-Customer DVSRs
		12/15/04 - CG - Rewrote query that gets Blank records,
			Rewrote SubQuery 
		02/14/05 - CG - Added NOLOCK to all non 'Reporting' Tables
		10/18/05 (SLM) - Changed to ONLY look at passive data (ignoreing Active MTD data)
		03/15/06 (SLM) - Changed blank customer query so that ReportRecipient contacts are also included
		03/15/06 (SLM) - Commented out the Passive Data Only SQL code ... too slow.
		10/04/06 - CG - Changed RuleName to Return 'Home Curfew Violation' if the RuleType is 'C'
		10/31/07 - CG - Added support for ReportOptions, RuleOptions, and Split function
***************************************************************************/
CREATE PROCEDURE [dbo].[dvsr_Report_PassiveMTD_GetByDateTimeZone]
	@DateRun datetime,
	@TimeZone int,
	@ProtechOnly char(1), 
	@List varchar(1000) = '', 		-- Delimited list of elements
	@SplitOn nvarchar(5) = ',' 	-- Delimiter
AS

DECLARE @EndRunDate datetime
SET @EndRunDate = DateAdd(hh, 24 + ((@TimeZone * -1) / 60) + 1, @DateRun)

DECLARE @DVSR_RCV_PASSIVE_RPT int
SET @DVSR_RCV_PASSIVE_RPT = 0x4

-- DECLARE @DS_SYSTEM_TYPE_MASK int, @DS_SYSTEM_TYPE_PASSIVE int, @DS_SYSTEM_TYPE_ACTIVE int
-- SELECT @DS_SYSTEM_TYPE_MASK = 0x700, @DS_SYSTEM_TYPE_PASSIVE = 0x0, @DS_SYSTEM_TYPE_ACTIVE = 0x200

-- Add Blank Record for Each Customer if @List = ''
--	This allows for a blank DVSR to be generated if there are no offender violations
--	Rewrote 12/15/04 - CG
SELECT DISTINCT C.CustomerID, 'BlankRecord' = 'Y', 'PoName' = NULL, 'OffenderName' = NULL, 'OrganizationName' = C.OrganizationName, 
	'StandardTimeOffset' = @Timezone, 'DaylightTimeOffset' = NULL, 'PtdID' = NULL, 'BraceletID' = NULL, 'ChargingStandID1' = NULL,
	'RuleName' = NULL, 'RuleID' = NULL, 'RuleType' = NULL, 'TimeGrid' = NULL,
	'DeviceID' = NULL, 'RuleID' = NULL, 'HwRule' = NULL, 'HardwareType' = 29, 'DeviceStatus' = NULL, 'VioTimestamp' = NULL, 
	'ClrTimestamp' = NULL, 'VioRuleStatus' = NULL, 'ClrRuleStatus' = NULL, 'RecID' = NULL, 'EndRptRecID' = NULL,
	'VioStoredTimestamp' = NULL, 'ClrStoredTimestamp' = NULL, 
	'CustomID1Label' = NULL, 'CustomID1String' = NULL, 'CustomID2Label' = NULL, 'CustomID2String' = NULL, 
	'OffenderAddress' = NULL, 'OffenderCity' = NULL, 'OffenderState' = NULL, 'OffenderZipCode' = NULL, 'OffenderPhone' = NULL,
	Con.ContractOptions, 'RuleOptions' = NULL
FROM Protech..Customers As C (NOLOCK)
JOIN Protech..Contracts As Con (NOLOCK) ON Con.ContractID = C.ContractID
LEFT JOIN Protech..Demographics AS D (NOLOCK) On D.CustomerID = C.CustomerID
LEFT JOIN Protech..Contacts AS PO (NOLOCK) On D.DemographicID = PO.DemographicID
LEFT JOIN ReportRecipients AS R (NOLOCK) ON R.CustomerID = C.CustomerID
LEFT JOIN Protech..Demographics AS D2 (NOLOCK) ON D2.DemographicID = R.ContactDemoID
WHERE C.Enabled = 'Y'
-- Either a Contact set up to receive a report for this customer
AND ( ( D.Active = 'Y' AND D.StandardTimeOffset = @TimeZone AND ((PO.ReportOptions & @DVSR_RCV_PASSIVE_RPT) = @DVSR_RCV_PASSIVE_RPT) AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) ) )
-- Or a Recipient set up to receive a report for this customer
   OR ( ((R.ReportOptions & @DVSR_RCV_PASSIVE_RPT) = @DVSR_RCV_PASSIVE_RPT) AND R.Timezone = @Timezone AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D2.CustomerID = 1 ) ) ) )
AND @List = ''

UNION

-- Add a Blank Record for Each Customer that is passed in to @List
--	This allows for each Customer to e displayed in one Report, even if there are no offender violations
SELECT 'CustomerID' = CustomerID, 'BlankRecord' = 'Y', 'PoName' = NULL, 'OffenderName' = NULL, 'OrganizationName' = OrganizationName, 
	'StandardTimeOffset' = @TimeZone, 'DaylightTimeOffset' = NULL, 'PtdID' = NULL, 'BraceletID' = NULL, 'ChargingStandID1' = NULL,
	'RuleName' = NULL, 'RuleID' = NULL, 'RuleType' = NULL, 'TimeGrid' = NULL,
	'DeviceID' = NULL, 'RuleID' = NULL, 'HwRule' = NULL, 'HardwareType' = 29, 'DeviceStatus' = NULL, 'VioTimestamp' = NULL, 
	'ClrTimestamp' = NULL, 'VioRuleStatus' = NULL, 'ClrRuleStatus' = NULL, 'RecID' = NULL, 'EndRptRecID' = NULL,
	'VioStoredTimestamp' = NULL, 'ClrStoredTimestamp' = NULL, 
	'CustomID1Label' = NULL, 'CustomID1String' = NULL, 'CustomID2Label' = NULL, 'CustomID2String' = NULL, 
	'OffenderAddress' = NULL, 'OffenderCity' = NULL, 'OffenderState' = NULL, 'OffenderZipCode' = NULL, 'OffenderPhone' = NULL,
	Con.ContractOptions, 'RuleOptions' = NULL
FROM Protech..Customers As C (NOLOCK)
LEFT JOIN Protech..Contracts As Con (NOLOCK) ON Con.ContractID = C.ContractID
WHERE CustomerID IN (SELECT CONVERT(int,Value) FROM Protech..Split(@List,@SplitOn)) AND @List <> ''

UNION

SELECT C.CustomerID, 'BlankRecord' = 'N', PoName=RTRIM(PO.LastName)+', '+RTRIM(PO.FirstName), OffenderName=RTRIM(D.Lastname)+', '+RTRIM(D.FirstName),
   	C.OrganizationName, D.StandardTimeOffset, D.DaylightTimeOffset, O.PtdID, O.BraceletID, O.ChargingStandID1,
   	'RuleName' = CASE R.RuleType WHEN 'C' THEN 'Home Curfew Violation' ELSE R.RuleName END, 
	R.RuleID, R.RuleType, R.TimeGrid, DeviceID=O.PtdID, P.RuleID, P.HwRule, P.HardwareType, P.DeviceStatus, 
	VioTimestamp=CONVERT(Datetime, P.VioTimestamp), ClrTimestamp=CONVERT(Datetime, P.ClrTimestamp), 
	VioRuleStatus=CONVERT(Int, P.VioRuleStatus), ClrRuleStatus=CONVERT(Int, P.ClrRuleStatus), P.RecID, P.EndRptRecID,
	P.VioStoredTimestamp, P.ClrStoredTimestamp,  
	'CustomID1Label' = ISNULL(Con.CustomID1Label,'ID1'), 'CustomID1String' = D.ID1, 'CustomID2Label' = ISNULL(Con.CustomID2Label,'ID2'), 'CustomID2String' = D.ID2, 
	'OffenderAddress' = D.Address, 'OffenderCity' = D.City, 'OffenderState' = D.State, 'OffenderZipCode' = D.Zip, 'OffenderPhone' = D.PhoneNumber,
	Con.ContractOptions, R.RuleOptions
FROM ( 	
--		Rewrote 12/15/04 - CG
		SELECT V.RecID, V.DemographicID, V.RuleID, V.HwRule, V.HardwareType, V.DeviceStatus, S.EndRptRecID, 
		'VioTimestamp' = V.TimeStamp, 'VioRuleStatus' = V.RuleStatus, 'VioStoredTimestamp' = V.StoredTimeStamp, 
		'ClrTimestamp' = NULL, 'ClrRuleStatus' = NULL, 'ClrStoredTimeStamp' = NULL
		FROM Report_MTD_SummaryData As S WITH(INDEX(IX_Report_MTD_SummaryData_EndRptRecID), NOLOCK)
		JOIN Report_MTDPositions As V WITH(INDEX(PK_Report_MTDPositions), NOLOCK) ON V.RecID = S.StartRptRecID
		WHERE S.EndRptRecID = 0
		-- DeviceStatus may contain nulls, convert them to 0
--		AND (ISNULL(V.DeviceStatus, 0) & @DS_SYSTEM_TYPE_MASK) = @DS_SYSTEM_TYPE_PASSIVE

		UNION ALL

 		SELECT V.RecID, V.DemographicID, V.RuleID, V.HwRule, V.HardwareType, V.DeviceStatus, S.EndRptRecID, 
		'VioTimestamp' = V.TimeStamp, 'VioRuleStatus' = V.RuleStatus, 'VioStoredTimestamp' = V.StoredTimeStamp, 
		'ClrTimestamp' = C.TimeStamp, 'ClrRuleStatus' = C.RuleStatus, 'ClrStoredTimeStamp' = C.StoredTimeStamp
		FROM Report_MTDPositions As C WITH(INDEX(IDX_Report_MTDPositions_StoredTimeStamp), NOLOCK)
		JOIN Report_MTD_SummaryData As S WITH(INDEX(IX_Report_MTD_SummaryData_EndRptRecID), NOLOCK) ON S.EndRptRecID = C.RecID
 		JOIN Report_MTDPositions As V WITH(INDEX(PK_Report_MTDPositions), NOLOCK) ON V.RecID = S.StartRptRecID
 		WHERE C.StoredTimeStamp >= @DateRun 
		-- DeviceStatus may contain nulls, convert them to 0
--		AND ((ISNULL(C.DeviceStatus, 0) & @DS_SYSTEM_TYPE_MASK) = @DS_SYSTEM_TYPE_PASSIVE OR (ISNULL(V.DeviceStatus, 0) & @DS_SYSTEM_TYPE_MASK) = @DS_SYSTEM_TYPE_PASSIVE)

	    ) AS P 
LEFT OUTER JOIN Protech..Rules AS R (NOLOCK) ON R.RuleID = P.RuleID
JOIN Protech..Demographics AS D (NOLOCK) ON D.DemographicID = P.DemographicID  
JOIN Protech..Customers AS C (NOLOCK) ON C.CustomerID = D.CustomerID 
JOIN Protech..Offenders AS O (NOLOCK) ON O.DemographicID = D.DemographicID
JOIN Protech..Contracts As Con (NOLOCK) ON Con.ContractID = C.ContractID
LEFT OUTER JOIN Protech..Demographics AS PO (NOLOCK) ON PO.DemographicID = O.PoDemoID 
    WHERE P.RuleID > 0 
    AND D.StandardTimeOffset = @TimeZone
    AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
    AND ((@List <> '' AND C.CustomerID IN (SELECT CONVERT(int,Value) FROM Protech..Split(@List,@SplitOn))) OR (@List = ''))
ORDER BY C.CustomerID, OffenderName, VioTimestamp, RecID
GO
/****** Object:  StoredProcedure [dbo].[dvsr_UpdateLastRunTimestamp]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

/***************************************************************************
NAME:		dvsr_UpdateLastRunTimestamp
PARAMETERS: @RunTime, @RecID
DESCRIPTION: Updates the LastRunTimestamp
DEVELOPER: 	Shannon Manness
CREATE DATE:	07/12/2004
REVISIONS:
***************************************************************************/

CREATE PROCEDURE [dbo].[dvsr_UpdateLastRunTimestamp]
	@RunTime datetime,
	@RecID int
AS

--Only update the LastRunTimestamp if the new value is newer than the current value (don't set the clock backwards).

UPDATE ReportList 
SET LastRunTimestamp = @RunTime
WHERE RecID = @RecID
      AND ISNULL(LastRunTimestamp, '1/1/2000') < @RunTime

GO
/****** Object:  StoredProcedure [dbo].[emmapi_CaseNoteEvents_ListByNoteRecId]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Jeremy Nelson
-- Create date: 11/22/2013
-- Description:	Used by EMM-API to gather case notes including first / clear information
--				Branched from emmapi_CaseNotes_ListByNoteRecId
-- ---------------------------------------------
-- Revisions
--	2018-05-24	Phillip Hickman	- Changed 3M to Attenti.
--	2018-06-05	Jeremy Nelson	- Fixed bug where records were excluded if no officer is assigned
--  2018-06-12	Jeremy Nelson	- Added ParameterSniffing protection
--	2018-06-13	Jeremy Nelson	- Added NoteStatus / EventStatus
--	2018-07-09	Jeremy Nelson	- Branched from drs_CaseNotes_ListByNoteRecId
--								- Modified to be UTC based
--	2018-07-23	Jeremy Nelson	- Added EventTableRecId
--	2018-08-20	Jeremy Nelson	- Adding First/Clear Information
-- 2023-04-21   Girish Ukarande - Updated parameter @StartingNoteRecId to type int to support bigint conversion project
--where NoteRecID was changed to be of int type
-- =============================================
CREATE   PROCEDURE [dbo].[emmapi_CaseNoteEvents_ListByNoteRecId]

@UserRecID				INT,
@MaxResults				INT,
@StartingNoteRecId		INT

AS
BEGIN

SET NOCOUNT ON;

--
--	Variables
--
DECLARE @StandardTimeOffset	INT = -300
DECLARE @DaylightTimeOffset	INT = -240

DECLARE @Customers TABLE (
ContractID				INT,
ContractName			VARCHAR(100),
RegionId				INT,
RegionName				VARCHAR(100),
CustomerId				INT,
CustomerName			VARCHAR(100),
ResponsibleAccountMgr	INT
);

--
--	Parameter Sniffing
--
DECLARE @QueryUserRecID				INT = @UserRecID
DECLARE @QueryMaxResults			INT = @MaxResults
DECLARE @QueryStartingNoteRecId		INT = @StartingNoteRecId

--
--	Load customers the user has access to
--
INSERT
INTO	@Customers
EXEC Protech..ptm_GetContractRegionCustomerByUserRecID @QueryUserRecID

--
--	Gather the data for the request
--		Cap results to @MaxResults
--		EventTime is always server time. Convert to UTC
--
SELECT		TOP (@QueryMaxResults)
Z.NoteRecID,
NoteTimestampUtc = protech.dbo.fn_GetUtcTime(Z.NoteTimestamp, @StandardTimeOffset, @DaylightTimeOffset),
Z.Note,
Z.RuleName,
EventTimeUtc = Z.EventTime,
D.ID1,
OffenderFirstName = ISNULL(D.FirstName, ''),
OffenderLastName = ISNULL(D.LastName, ''),
OfficerName = LTRIM(RTRIM(ISNULL(F.FirstName, '') + ' ' + ISNULL(F.LastName, ''))),
EnteredBy =	CASE U.ProtechUser
WHEN 'Y' THEN 'Attenti Electronic Monitoring User'
ELSE LTRIM(RTRIM(U.FirstName + ' ' + U.LastName))
END,
Z.NoteStatus,
SuspendTimestampUtc = Z.SuspendTimestamp,
Z.EventTableName,
Z.EventTableRecID,
Z.EventStatus,
D.DemographicID,
Z.StartEventRecId,
Z.StartEventTimeUtc,
Z.EndEventRecId,
Z.EndEventTimeUtc
FROM		(	SELECT		TOP (@QueryMaxResults)
N.NoteRecID,
N.NoteTimestamp,
N.NoteStatus,
N.SuspendTimestamp,
N.Note,
N.UserRecID,
N.EventTableName,
N.EventTableRecID,
P.EventStatus,
OffenderDemographicID = P.DemographicID,
RuleName =	CASE ISNULL(R.RuleType, '')
WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
ELSE IsNull(R.RuleName, '')
END,
EventTime = P.TimeStamp,
StartEventRecId = Y.RecID,
StartEventTimeUtc = Y.TimeStamp,
EndEventRecId = Z.RecID,
EndEventTimeUtc = Z.TimeStamp
FROM		CaseMgmtNotes			N (NOLOCK)
JOIN		Report_MTDPositions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
LEFT JOIN	Report_MTD_SummaryData	S (NOLOCK)	ON S.StartRptRecID = N.EventTableRecID
OR S.EndRptRecID = N.EventTableRecID
LEFT JOIN	Report_MTDPositions		Y (NOLOCK)	ON Y.RecID = S.StartRptRecID
LEFT JOIN	Report_MTDPositions		Z (NOLOCK)	ON Z.RecID = S.EndRptRecID
WHERE		N.EventTableName = 'Report_MTDPositions'
AND			N.NoteRecID >= @QueryStartingNoteRecID
AND			D.TestRecord != 'Y'
ORDER BY	N.NoteRecID

UNION

SELECT		TOP (@QueryMaxResults)
N.NoteRecID,
N.NoteTimestamp,
N.NoteStatus,
N.SuspendTimestamp,
N.Note,
N.UserRecID,
N.EventTableName,
N.EventTableRecID,
P.EventStatus,
OffenderDemographicID = P.DemographicID,
RuleName =	CASE ISNULL(R.RuleType, '')
WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
ELSE IsNull(R.RuleName, '')
END,
EventTime = P.TimeStamp,
StartEventRecId = Y.RecID,
StartEventTimeUtc = Y.TimeStamp,
EndEventRecId = Z.RecID,
EndEventTimeUtc = Z.TimeStamp
FROM		CaseMgmtNotes			N (NOLOCK)
JOIN		Report_EM_Positions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
LEFT JOIN	Report_EM_SummaryData	S (NOLOCK)	ON S.StartRptRecID = N.EventTableRecID
OR S.EndRptRecID = N.EventTableRecID
LEFT JOIN	Report_EM_Positions		Y (NOLOCK)	ON Y.RecID = S.StartRptRecID
LEFT JOIN	Report_EM_Positions		Z (NOLOCK)	ON Z.RecID = S.EndRptRecID
WHERE		N.EventTableName = 'Report_EM_Positions'
AND			N.NoteRecID >= @QueryStartingNoteRecID
AND			D.TestRecord != 'Y'
ORDER BY	N.NoteRecID

UNION

SELECT		TOP (@QueryMaxResults)
N.NoteRecID,
N.NoteTimestamp,
N.NoteStatus,
N.SuspendTimestamp,
N.Note,
N.UserRecID,
N.EventTableName,
N.EventTableRecID,
P.EventStatus,
OffenderDemographicID = P.DemographicID,
RuleName =	CASE ISNULL(R.RuleType, '')
WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
ELSE IsNull(R.RuleName, '')
END,
EventTime = P.TimeStamp,
StartEventRecId = Y.RecID,
StartEventTimeUtc = Y.TimeStamp,
EndEventRecId = Z.RecID,
EndEventTimeUtc = Z.TimeStamp
FROM		CaseMgmtNotes			N (NOLOCK)
JOIN		Report_Positions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
LEFT JOIN	Report_SummaryData		S (NOLOCK)	ON S.StartRptRecID = N.EventTableRecID
OR S.EndRptRecID = N.EventTableRecID
LEFT JOIN	Report_Positions		Y (NOLOCK)	ON Y.RecID = S.StartRptRecID
LEFT JOIN	Report_Positions		Z (NOLOCK)	ON Z.RecID = S.EndRptRecID
WHERE		N.EventTableName = 'Report_Positions'
AND			N.NoteRecID >= @QueryStartingNoteRecID
AND			D.TestRecord != 'Y'
ORDER BY	N.NoteRecID

UNION

/*SELECT		TOP (@MaxResults)
N.NoteRecID,
N.NoteTimestamp,
N.Note,
N.UserRecID,
OffenderDemographicID = P.DemographicID,
RuleName =	ISNULL(R.RuleName, ''),
EventTime = P.TimeStamp
FROM		CaseMgmtNotes			N (NOLOCK)
JOIN		Report_AlcoholTests		P (NOLOCK)	ON P.Report_AlcoholTestsID = N.EventTableRecID
JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
WHERE		N.EventTableName = 'Report_AlcoholTests'
AND			N.NoteRecID >= @StartingNoteRecID
AND			D.TestRecord != 'Y'
ORDER BY	N.NoteRecID

UNION */

SELECT		TOP (@QueryMaxResults)
N.NoteRecID,
N.NoteTimestamp,
N.NoteStatus,
N.SuspendTimestamp,
N.Note,
N.UserRecID,
N.EventTableName,
N.EventTableRecID,
EventStatus = 0,
OffenderDemographicID = N.EventTableRecID,
RuleName =	'Offender Note',
EventTime = N.NoteTimestamp,
StartEventRecId = 0,
StartEventTimeUtc = NULL,
EndEventRecId = 0,
EndEventTimeUtc = NULL
FROM		CaseMgmtNotes			N (NOLOCK)
JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = N.EventTableRecID
JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
WHERE		N.EventTableName = 'Offenders'
AND			N.NoteRecID >= @QueryStartingNoteRecID
AND			D.TestRecord != 'Y'
ORDER BY	N.NoteRecID
) Z
JOIN		Protech..Users			U (NOLOCK) ON U.UserRecID = Z.UserRecID
JOIN		Protech..Demographics	D (NOLOCK) ON D.DemographicID = Z.OffenderDemographicID
JOIN		Protech..Offenders		O (NOLOCK) ON O.DemographicID = D.DemographicID
LEFT JOIN	Protech..Demographics	F (NOLOCK) ON F.DemographicID = O.PoDemoID
ORDER BY	Z.NoteRecID
OPTION		(RECOMPILE)

END
GO
/****** Object:  StoredProcedure [dbo].[emmapi_CaseNoteEvents_ListByTimestampUtc]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Stored Procedure


-- =============================================
-- Author:           Jeremy Nelson
-- Create date: 11/22/2013
-- Description:      Used by EMM-API to gather case notes including first / clear information
--                         Branched from emmapi_CaseNotes_ListByTimestampUtc
-- ---------------------------------------------
-- Revisions
--     2018-05-24    Phillip Hickman      - Changed 3M to Attenti.
--     2018-06-05    Jeremy Nelson - Fixed bug where records were excluded if no officer is assigned
--  2018-06-12       Jeremy Nelson - Added ParameterSniffing protection
--     2018-06-13    Jeremy Nelson - Added NoteStatus / EventStatus
--     2018-07-09    Jeremy Nelson - Branched from drs_CaseNotes_ListByTimestamp
--                                                     - Modified to be UTC based
--     2018-07-23    Jeremy Nelson - Added EventTableRecId
--     2018-08-20    Jeremy Nelson - Adding First/Clear Information
--	   2019-06-21	 John Fonnotto - Added COALESCE() to return 1/1/1900 for NULL date values in Z.StartEventTimeUtc and Z.EndEventTimeUtc
-- =============================================
CREATE PROCEDURE [dbo].[emmapi_CaseNoteEvents_ListByTimestampUtc]

@UserRecId           INT,
@MaxResults          INT,
@StartDateUtc DATETIME,
@EndDateUtc          DATETIME

AS
BEGIN

       SET NOCOUNT ON;

       --
       --     Variables
       --
       DECLARE @StandardTimeOffset INT = -300
       DECLARE @DaylightTimeOffset INT = -240

       DECLARE @Customers TABLE ( 
                                                       ContractID                        INT,
                                                       ContractName               VARCHAR(100),
                                                       RegionId                          INT,
                                                       RegionName                        VARCHAR(100),
                                                       CustomerId                        INT,
                                                       CustomerName               VARCHAR(100),
                                                       ResponsibleAccountMgr      INT
                                                );

       --
       --     Parameter Sniffing 
       --
       DECLARE @QueryUserRecID           INT = @UserRecID
       DECLARE @QueryMaxResults   INT = @MaxResults
       DECLARE @QueryStartDate           DATETIME = protech.dbo.fn_GetLocalTime(@StartDateUtc, @StandardTimeOffset, @DaylightTimeOffset)
       DECLARE @QueryEndDate             DATETIME = protech.dbo.fn_GetLocalTime(@EndDateUtc, @StandardTimeOffset, @DaylightTimeOffset)

       --
       --     Load customers the user has access to
       --
       INSERT 
       INTO   @Customers 
       EXEC   Protech..ptm_GetContractRegionCustomerByUserRecID @QueryUserRecID

       --
       --     Gather the data for the request
       --            Cap results to @MaxResults
       --
       SELECT        TOP (@QueryMaxResults)
                           Z.NoteRecID,
                           NoteTimestampUtc = protech.dbo.fn_GetUtcTime(Z.NoteTimestamp, @StandardTimeOffset, @DaylightTimeOffset),
                           Z.Note,
                           Z.RuleName,
                           EventTimeUtc = Z.EventTime,
                           D.ID1,
                           OffenderFirstName = ISNULL(D.FirstName, ''),
                           OffenderLastName = ISNULL(D.LastName, ''),
                           OfficerName = LTRIM(RTRIM(ISNULL(F.FirstName, '') + ' ' + ISNULL(F.LastName, ''))),
                           EnteredBy =   CASE U.ProtechUser
                                                       WHEN 'Y' THEN 'Attenti Electronic Monitoring User'
                                                       ELSE LTRIM(RTRIM(U.FirstName + ' ' + U.LastName))
                                                END,
                           Z.NoteStatus,
                           SuspendTimestampUtc = Z.SuspendTimestamp,
                           Z.EventTableName,
                           Z.EventTableRecID,
                           Z.EventStatus,
                           D.DemographicID,
                           Z.StartEventRecId,
                          COALESCE(Z.StartEventTimeUtc,CAST('1/1/1900' as datetime)) as StartEventTimeUtc,
                           Z.EndEventRecId,
                           COALESCE(Z.EndEventTimeUtc,CAST('1/1/1900' as datetime)) as EndEventTimeUtc
       FROM          (      SELECT        TOP (@QueryMaxResults)
                                                       N.NoteRecID,
                                                       N.NoteTimestamp,
                                                       N.NoteStatus,
                                                       N.SuspendTimestamp,
                                                       N.Note,
                                                       N.UserRecID,
                                                       N.EventTableName,
                                                       N.EventTableRecID,
                                                       P.EventStatus,
                                                       OffenderDemographicID = P.DemographicID,
                                                       RuleName =    CASE ISNULL(R.RuleType, '')
                                                                                  WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
                                                                                  WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
                                                                                  ELSE IsNull(R.RuleName, '')
                                                                           END,
                                                       EventTime = P.TimeStamp,
                                                       StartEventRecId = Y.RecID,
                                                       StartEventTimeUtc = Y.TimeStamp,
                                                       EndEventRecId = Z.RecID,
                                                       EndEventTimeUtc = Z.TimeStamp
                                  FROM          CaseMgmtNotes              N WITH (NOLOCK INDEX([IX_EventTblName_NoteTimeStamp]))
                                  JOIN          Report_MTDPositions        P (NOLOCK)    ON P.RecID = N.EventTableRecID
                                  JOIN          Protech..Demographics      D (NOLOCK)    ON D.DemographicID = P.DemographicID
                                  JOIN          @Customers                        C                    ON C.CustomerID = D.CustomerID
                                  LEFT JOIN     Protech..Rules                    R (NOLOCK)    ON R.RuleID = P.RuleID
                                  LEFT JOIN     Report_MTD_SummaryData     S (NOLOCK)    ON S.StartRptRecID = N.EventTableRecID
                                                                                                                     OR S.EndRptRecID = N.EventTableRecID
                                  LEFT JOIN     Report_MTDPositions        Y (NOLOCK)    ON Y.RecID = S.StartRptRecID
                                  LEFT JOIN     Report_MTDPositions        Z (NOLOCK)    ON Z.RecID = S.EndRptRecID
                                  WHERE         N.EventTableName = 'Report_MTDPositions'
                                  AND                  N.NoteTimestamp BETWEEN @QueryStartDate AND @QueryEndDate
                                  AND                  D.TestRecord != 'Y'
                                  ORDER BY      N.NoteTimestamp

                                  UNION

                                  SELECT        TOP (@QueryMaxResults)
                                                       N.NoteRecID,
                                                       N.NoteTimestamp,
                                                       N.NoteStatus,
                                                       N.SuspendTimestamp,
                                                       N.Note,
                                                       N.UserRecID,
                                                       N.EventTableName,
                                                       N.EventTableRecID,
                                                       P.EventStatus,
                                                       OffenderDemographicID = P.DemographicID,
                                                       RuleName =    CASE ISNULL(R.RuleType, '')
                                                                                  WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
                                                                                  WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
                                                                                  ELSE IsNull(R.RuleName, '')
                                                                           END,
                                                       EventTime = P.TimeStamp,
                                                       StartEventRecId = Y.RecID,
                                                       StartEventTimeUtc = Y.TimeStamp,
                                                       EndEventRecId = Z.RecID,
                                                       EndEventTimeUtc = Z.TimeStamp
                                  FROM          CaseMgmtNotes              N WITH (NOLOCK INDEX([IX_EventTblName_NoteTimeStamp]))
                                  JOIN          Report_EM_Positions        P (NOLOCK)    ON P.RecID = N.EventTableRecID
                                  JOIN          Protech..Demographics      D (NOLOCK)    ON D.DemographicID = P.DemographicID
                                  JOIN          @Customers                        C                    ON C.CustomerID = D.CustomerID
                                  LEFT JOIN     Protech..Rules                    R (NOLOCK)    ON R.RuleID = P.RuleID
                                  LEFT JOIN     Report_EM_SummaryData      S (NOLOCK)    ON S.StartRptRecID = N.EventTableRecID
                                                                                                                     OR S.EndRptRecID = N.EventTableRecID
                                  LEFT JOIN     Report_EM_Positions        Y (NOLOCK)    ON Y.RecID = S.StartRptRecID
                                  LEFT JOIN     Report_EM_Positions        Z (NOLOCK)    ON Z.RecID = S.EndRptRecID
                                  WHERE         N.EventTableName = 'Report_EM_Positions'
                                  AND                  N.NoteTimestamp BETWEEN @QueryStartDate AND @QueryEndDate
                                  AND                  D.TestRecord != 'Y'
                                  ORDER BY      N.NoteTimestamp

                                  UNION

                                  SELECT        TOP (@QueryMaxResults)
                                                       N.NoteRecID,
                                                       N.NoteTimestamp,
                                                       N.NoteStatus,
                                                       N.SuspendTimestamp,
                                                       N.Note,
                                                       N.UserRecID,
                                                       N.EventTableName,
                                                       N.EventTableRecID,
                                                       P.EventStatus,
                                                       OffenderDemographicID = P.DemographicID,
                                                       RuleName =    CASE ISNULL(R.RuleType, '')
                                                                                  WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
                                                                                  WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
                                                                                  ELSE IsNull(R.RuleName, '')
                                                                           END,
                                                       EventTime = P.TimeStamp,
                                                       StartEventRecId = Y.RecID,
                                                       StartEventTimeUtc = Y.TimeStamp,
                                                       EndEventRecId = Z.RecID,
                                                       EndEventTimeUtc = Z.TimeStamp
                                  FROM          CaseMgmtNotes              N WITH (NOLOCK INDEX([IX_EventTblName_NoteTimeStamp]))
                                  JOIN          Report_Positions           P (NOLOCK)    ON P.RecID = N.EventTableRecID
                                  JOIN          Protech..Demographics      D (NOLOCK)    ON D.DemographicID = P.DemographicID
                                  JOIN          @Customers                        C                    ON C.CustomerID = D.CustomerID
                                  LEFT JOIN     Protech..Rules                    R (NOLOCK)    ON R.RuleID = P.RuleID
                                  LEFT JOIN     Report_SummaryData         S (NOLOCK)    ON S.StartRptRecID = N.EventTableRecID
                                                                                                                     OR S.EndRptRecID = N.EventTableRecID
                                  LEFT JOIN     Report_Positions           Y (NOLOCK)    ON Y.RecID = S.StartRptRecID
                                  LEFT JOIN     Report_Positions           Z (NOLOCK)    ON Z.RecID = S.EndRptRecID
                                  WHERE         N.EventTableName = 'Report_Positions'
                                  AND                  N.NoteTimestamp BETWEEN @QueryStartDate AND @QueryEndDate
                                  AND                  D.TestRecord != 'Y'
                                  ORDER BY      N.NoteTimestamp

                                  UNION

                                  /*SELECT             TOP (@MaxResults)
                                                       N.NoteRecID,
                                                       N.NoteTimestamp,
                                                       N.Note,
                                                       N.UserRecID,
                                                       OffenderDemographicID = P.DemographicID,
                                                       RuleName =    ISNULL(R.RuleName, ''),
                                                       EventTime = P.TimeStamp
                                  FROM          CaseMgmtNotes              N (NOLOCK)
                                  JOIN          Report_AlcoholTests        P (NOLOCK)    ON P.Report_AlcoholTestsID = N.EventTableRecID
                                  JOIN          Protech..Demographics      D (NOLOCK)    ON D.DemographicID = P.DemographicID
                                  JOIN          @Customers                        C                    ON C.CustomerID = D.CustomerID
                                  LEFT JOIN     Protech..Rules                    R (NOLOCK)    ON R.RuleID = P.RuleID
                                  WHERE         N.EventTableName = 'Report_AlcoholTests'
                                  AND                  N.NoteTimestamp BETWEEN @StartDate AND @EndDate
                                  AND                  D.TestRecord != 'Y'
                                  ORDER BY      N.NoteTimestamp

                                  UNION */

                                  SELECT        TOP (@QueryMaxResults)
                                                       N.NoteRecID,
                                                       N.NoteTimestamp,
                                                       N.NoteStatus,
                                                       N.SuspendTimestamp,
                                                       N.Note,
                                                       N.UserRecID,
                                                       N.EventTableName,
                                                       N.EventTableRecID,
                                                       EventStatus = 0,
                                                       OffenderDemographicID = N.EventTableRecID,
                                                       RuleName =    'Offender Note',
                                                       EventTime = N.NoteTimestamp,
                                                       StartEventRecId = 0,
                                                       StartEventTimeUtc = NULL,
                                                       EndEventRecId = 0,
                                                       EndEventTimeUtc = NULL
                                  FROM          CaseMgmtNotes              N WITH (NOLOCK INDEX([IX_EventTblName_NoteTimeStamp]))
                                  JOIN          Protech..Demographics      D (NOLOCK)    ON D.DemographicID = N.EventTableRecID
                                  JOIN          @Customers                        C                    ON C.CustomerID = D.CustomerID
                                  WHERE         N.EventTableName = 'Offenders'
                                  AND                  N.NoteTimestamp BETWEEN @QueryStartDate AND @QueryEndDate
                                  AND                  D.TestRecord != 'Y'
                                  ORDER BY      N.NoteTimestamp
                           ) Z
       JOIN          Protech..Users                    U (NOLOCK) ON U.UserRecID = Z.UserRecID
       JOIN          Protech..Demographics      D (NOLOCK) ON D.DemographicID = Z.OffenderDemographicID
       JOIN          Protech..Offenders         O (NOLOCK) ON O.DemographicID = D.DemographicID
       LEFT JOIN     Protech..Demographics      F (NOLOCK) ON F.DemographicID = O.PoDemoID
       ORDER BY      Z.NoteTimestamp
       OPTION        (RECOMPILE)

END
GO
/****** Object:  StoredProcedure [dbo].[emmapi_CaseNotes_ListByNoteRecId]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Jeremy Nelson
-- Create date: 11/22/2013
-- Description:	Used by EMM-API to gather case notes for the user
--				Branched from drs_CaseNotes_ListByNoteRecId
-- ---------------------------------------------
-- Revisions
--	2018-05-24	Phillip Hickman	- Changed 3M to Attenti.
--	2018-06-05	Jeremy Nelson	- Fixed bug where records were excluded if no officer is assigned
--  2018-06-12	Jeremy Nelson	- Added ParameterSniffing protection
--	2018-06-13	Jeremy Nelson	- Added NoteStatus / EventStatus
--	2018-07-09	Jeremy Nelson	- Branched from drs_CaseNotes_ListByNoteRecId
--								- Modified to be UTC based
--	2018-07-23	Jeremy Nelson	- Added EventTableRecId
-- 2023-04-21   Girish Ukarande - Updated parameter @StartingNoteRecId to type int to support bigint conversion project
--where NoteRecID was changed to be of int type
-- =============================================
CREATE   PROCEDURE [dbo].[emmapi_CaseNotes_ListByNoteRecId]

@UserRecID				INT,
@MaxResults				INT,
@StartingNoteRecId		INT

AS
BEGIN

SET NOCOUNT ON;

--
--	Variables
--
DECLARE @StandardTimeOffset	INT = -300
DECLARE @DaylightTimeOffset	INT = -240

DECLARE @Customers TABLE (
ContractID				INT,
ContractName			VARCHAR(100),
RegionId				INT,
RegionName				VARCHAR(100),
CustomerId				INT,
CustomerName			VARCHAR(100),
ResponsibleAccountMgr	INT
);

--
--	Parameter Sniffing
--
DECLARE @QueryUserRecID				INT = @UserRecID
DECLARE @QueryMaxResults			INT = @MaxResults
DECLARE @QueryStartingNoteRecId		INT = @StartingNoteRecId

--
--	Load customers the user has access to
--
INSERT
INTO	@Customers
EXEC Protech..ptm_GetContractRegionCustomerByUserRecID @QueryUserRecID

--
--	Gather the data for the request
--		Cap results to @MaxResults
--		EventTime is always server time. Convert to UTC
--
SELECT		TOP (@QueryMaxResults)
Z.NoteRecID,
NoteTimestampUtc = protech.dbo.fn_GetUtcTime(Z.NoteTimestamp, @StandardTimeOffset, @DaylightTimeOffset),
Z.Note,
Z.RuleName,
EventTimeUtc = Z.EventTime,
D.ID1,
OffenderFirstName = ISNULL(D.FirstName, ''),
OffenderLastName = ISNULL(D.LastName, ''),
OfficerName = LTRIM(RTRIM(ISNULL(F.FirstName, '') + ' ' + ISNULL(F.LastName, ''))),
EnteredBy =	CASE U.ProtechUser
WHEN 'Y' THEN 'Attenti Electronic Monitoring User'
ELSE LTRIM(RTRIM(U.FirstName + ' ' + U.LastName))
END,
Z.NoteStatus,
SuspendTimestampUtc = Z.SuspendTimestamp,
Z.EventTableName,
Z.EventTableRecID,
Z.EventStatus,
D.DemographicID
FROM		(	SELECT		TOP (@QueryMaxResults)
N.NoteRecID,
N.NoteTimestamp,
N.NoteStatus,
N.SuspendTimestamp,
N.Note,
N.UserRecID,
N.EventTableName,
N.EventTableRecID,
P.EventStatus,
OffenderDemographicID = P.DemographicID,
RuleName =	CASE ISNULL(R.RuleType, '')
WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
ELSE IsNull(R.RuleName, '')
END,
EventTime = P.TimeStamp
FROM		CaseMgmtNotes			N (NOLOCK)
JOIN		Report_MTDPositions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
WHERE		N.EventTableName = 'Report_MTDPositions'
AND			N.NoteRecID >= @QueryStartingNoteRecID
AND			D.TestRecord != 'Y'
ORDER BY	N.NoteRecID

UNION

SELECT		TOP (@QueryMaxResults)
N.NoteRecID,
N.NoteTimestamp,
N.NoteStatus,
N.SuspendTimestamp,
N.Note,
N.UserRecID,
N.EventTableName,
N.EventTableRecID,
P.EventStatus,
OffenderDemographicID = P.DemographicID,
RuleName =	CASE ISNULL(R.RuleType, '')
WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
ELSE IsNull(R.RuleName, '')
END,
EventTime = P.TimeStamp
FROM		CaseMgmtNotes			N (NOLOCK)
JOIN		Report_EM_Positions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
WHERE		N.EventTableName = 'Report_EM_Positions'
AND			N.NoteRecID >= @QueryStartingNoteRecID
AND			D.TestRecord != 'Y'
ORDER BY	N.NoteRecID

UNION

SELECT		TOP (@QueryMaxResults)
N.NoteRecID,
N.NoteTimestamp,
N.NoteStatus,
N.SuspendTimestamp,
N.Note,
N.UserRecID,
N.EventTableName,
N.EventTableRecID,
P.EventStatus,
OffenderDemographicID = P.DemographicID,
RuleName =	CASE ISNULL(R.RuleType, '')
WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
ELSE IsNull(R.RuleName, '')
END,
EventTime = P.TimeStamp
FROM		CaseMgmtNotes			N (NOLOCK)
JOIN		Report_Positions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
WHERE		N.EventTableName = 'Report_Positions'
AND			N.NoteRecID >= @QueryStartingNoteRecID
AND			D.TestRecord != 'Y'
ORDER BY	N.NoteRecID

UNION

SELECT		TOP (@QueryMaxResults)
N.NoteRecID,
N.NoteTimestamp,
N.NoteStatus,
N.SuspendTimestamp,
N.Note,
N.UserRecID,
N.EventTableName,
N.EventTableRecID,
EventStatus = 0,
OffenderDemographicID = N.EventTableRecID,
RuleName =	'Offender Note',
EventTime = N.NoteTimestamp
FROM		CaseMgmtNotes			N (NOLOCK)
JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = N.EventTableRecID
JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
WHERE		N.EventTableName = 'Offenders'
AND			N.NoteRecID >= @QueryStartingNoteRecID
AND			D.TestRecord != 'Y'
ORDER BY	N.NoteRecID
) Z
JOIN		Protech..Users			U (NOLOCK) ON U.UserRecID = Z.UserRecID
JOIN		Protech..Demographics	D (NOLOCK) ON D.DemographicID = Z.OffenderDemographicID
JOIN		Protech..Offenders		O (NOLOCK) ON O.DemographicID = D.DemographicID
LEFT JOIN	Protech..Demographics	F (NOLOCK) ON F.DemographicID = O.PoDemoID
ORDER BY	Z.NoteRecID
OPTION		(RECOMPILE)

END
GO
/****** Object:  StoredProcedure [dbo].[emmapi_CaseNotes_ListByNoteRecIdV2]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  Jeremy Nelson  
-- Create date: 11/22/2013  
-- Description: Used by EMM-API to gather case notes for the user  
--    Branched from drs_CaseNotes_ListByNoteRecId  
-- ---------------------------------------------  
-- Revisions  
-- 2018-05-24 Phillip Hickman - Changed 3M to Attenti.  
-- 2018-06-05 Jeremy Nelson - Fixed bug where records were excluded if no officer is assigned  
--  2018-06-12 Jeremy Nelson - Added ParameterSniffing protection  
-- 2018-06-13 Jeremy Nelson - Added NoteStatus / EventStatus  
-- 2018-07-09 Jeremy Nelson - Branched from drs_CaseNotes_ListByNoteRecId  
--        - Modified to be UTC based  
-- 2018-07-23 Jeremy Nelson - Added EventTableRecId  
-- =============================================  
CREATE PROCEDURE [dbo].[emmapi_CaseNotes_ListByNoteRecIdV2]  
  
@UserRecID    INT,  
@MaxResults    INT,  
@StartingNoteRecId  BIGINT  
  
AS  
BEGIN  
  
 SET NOCOUNT ON;  
  
 --  
 -- Variables  
 --  
 DECLARE @StandardTimeOffset INT = -300  
 DECLARE @DaylightTimeOffset INT = -240  
  
 CREATE TABLE #Customers  (   
        ContractID    INT,  
        ContractName   VARCHAR(100),  
        RegionId    INT,  
        RegionName    VARCHAR(100),  
        CustomerId    INT,  
        CustomerName   VARCHAR(100),  
        ResponsibleAccountMgr INT  
       );  
  
 --  
 -- Parameter Sniffing   
 --  
 DECLARE @QueryUserRecID    INT = @UserRecID  
 DECLARE @QueryMaxResults   INT = @MaxResults  
 DECLARE @QueryStartingNoteRecId  BIGINT = @StartingNoteRecId  
  
 --  
 -- Load customers the user has access to  
 --  
 INSERT   
 INTO #Customers   
 EXEC Protech..ptm_GetContractRegionCustomerByUserRecID @QueryUserRecID  
  
 --  
 -- Gather the data for the request  
 --  Cap results to @MaxResults  
 --  EventTime is always server time. Convert to UTC  
 --  
 SELECT  TOP (@QueryMaxResults)  
    Z.NoteRecID,  
    NoteTimestampUtc = protech.dbo.fn_GetUtcTime(Z.NoteTimestamp, @StandardTimeOffset, @DaylightTimeOffset),  
    Z.Note,  
    Z.RuleName,  
    EventTimeUtc = Z.EventTime,  
    D.ID1,  
    OffenderFirstName = ISNULL(D.FirstName, ''),  
    OffenderLastName = ISNULL(D.LastName, ''),  
    OfficerName = LTRIM(RTRIM(ISNULL(F.FirstName, '') + ' ' + ISNULL(F.LastName, ''))),  
    EnteredBy = CASE U.ProtechUser  
        WHEN 'Y' THEN 'Attenti Electronic Monitoring User'  
        ELSE LTRIM(RTRIM(U.FirstName + ' ' + U.LastName))  
       END,  
    Z.NoteStatus,  
    SuspendTimestampUtc = Z.SuspendTimestamp,  
    Z.EventTableName,  
    Z.EventTableRecID,  
    Z.EventStatus,  
    D.DemographicID  
 FROM  ( SELECT  TOP (@QueryMaxResults)  
        N.NoteRecID,  
        N.NoteTimestamp,  
        N.NoteStatus,  
        N.SuspendTimestamp,  
        N.Note,  
        N.UserRecID,  
        N.EventTableName,  
        N.EventTableRecID,  
        P.EventStatus,  
        OffenderDemographicID = P.DemographicID,  
        RuleName = CASE ISNULL(R.RuleType, '')  
            WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')  
            WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')  
            ELSE IsNull(R.RuleName, '')  
           END,  
        EventTime = P.TimeStamp  
     FROM  CaseMgmtNotes   N (NOLOCK)  
     JOIN  Report_MTDPositions  P (NOLOCK) ON P.RecID = N.EventTableRecID  
     JOIN  Protech..Demographics D (NOLOCK) ON D.DemographicID = P.DemographicID  
     JOIN  #Customers    C   ON C.CustomerID = D.CustomerID  
     LEFT JOIN Protech..Rules   R (NOLOCK) ON R.RuleID = P.RuleID  
     WHERE  N.EventTableName = 'Report_MTDPositions'  
     AND   N.NoteRecID >= @QueryStartingNoteRecID  
     AND   D.TestRecord <> 'Y'  
     ORDER BY N.NoteRecID  
  
     UNION ALL  
  
     SELECT  TOP (@QueryMaxResults)  
        N.NoteRecID,  
        N.NoteTimestamp,  
        N.NoteStatus,  
        N.SuspendTimestamp,  
        N.Note,  
        N.UserRecID,  
        N.EventTableName,  
        N.EventTableRecID,  
        P.EventStatus,  
        OffenderDemographicID = P.DemographicID,  
        RuleName = CASE ISNULL(R.RuleType, '')  
            WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')  
            WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')  
            ELSE IsNull(R.RuleName, '')  
           END,  
        EventTime = P.TimeStamp  
     FROM  CaseMgmtNotes   N (NOLOCK)  
     JOIN  Report_EM_Positions  P (NOLOCK) ON P.RecID = N.EventTableRecID  
     JOIN  Protech..Demographics D (NOLOCK) ON D.DemographicID = P.DemographicID  
     JOIN  #Customers    C   ON C.CustomerID = D.CustomerID  
     LEFT JOIN Protech..Rules   R (NOLOCK) ON R.RuleID = P.RuleID  
     WHERE  N.EventTableName = 'Report_EM_Positions'  
     AND   N.NoteRecID >= @QueryStartingNoteRecID  
     AND   D.TestRecord != 'Y'  
     ORDER BY N.NoteRecID  
  
     UNION ALL  
  
     SELECT  TOP (@QueryMaxResults)  
        N.NoteRecID,  
        N.NoteTimestamp,  
        N.NoteStatus,  
        N.SuspendTimestamp,  
        N.Note,  
        N.UserRecID,  
        N.EventTableName,  
        N.EventTableRecID,  
        P.EventStatus,  
        OffenderDemographicID = P.DemographicID,  
        RuleName = CASE ISNULL(R.RuleType, '')  
            WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')  
            WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')  
            ELSE IsNull(R.RuleName, '')  
           END,  
        EventTime = P.TimeStamp  
     FROM  CaseMgmtNotes   N (NOLOCK)  
     JOIN  Report_Positions  P (NOLOCK) ON P.RecID = N.EventTableRecID  
     JOIN  Protech..Demographics D (NOLOCK) ON D.DemographicID = P.DemographicID  
     JOIN  #Customers    C   ON C.CustomerID = D.CustomerID  
     LEFT JOIN Protech..Rules   R (NOLOCK) ON R.RuleID = P.RuleID  
     WHERE  N.EventTableName = 'Report_Positions'  
     AND   N.NoteRecID >= @QueryStartingNoteRecID  
     AND   D.TestRecord != 'Y'  
     ORDER BY N.NoteRecID  
  
     UNION ALL  
  
     /*SELECT  TOP (@MaxResults)  
        N.NoteRecID,  
        N.NoteTimestamp,  
        N.Note,  
        N.UserRecID,  
        OffenderDemographicID = P.DemographicID,  
        RuleName = ISNULL(R.RuleName, ''),  
        EventTime = P.TimeStamp  
     FROM  CaseMgmtNotes   N (NOLOCK)  
     JOIN  Report_AlcoholTests  P (NOLOCK) ON P.Report_AlcoholTestsID = N.EventTableRecID  
     JOIN  Protech..Demographics D (NOLOCK) ON D.DemographicID = P.DemographicID  
     JOIN  @Customers    C   ON C.CustomerID = D.CustomerID  
     LEFT JOIN Protech..Rules   R (NOLOCK) ON R.RuleID = P.RuleID  
     WHERE  N.EventTableName = 'Report_AlcoholTests'  
     AND   N.NoteRecID >= @StartingNoteRecID  
     AND   D.TestRecord != 'Y'  
     ORDER BY N.NoteRecID   
  
     UNION ALL */  
  
     SELECT  TOP (@QueryMaxResults)  
        N.NoteRecID,  
        N.NoteTimestamp,  
        N.NoteStatus,  
        N.SuspendTimestamp,  
        N.Note,  
        N.UserRecID,  
        N.EventTableName,  
        N.EventTableRecID,  
        EventStatus = 0,  
        OffenderDemographicID = N.EventTableRecID,  
        RuleName = 'Offender Note',  
        EventTime = N.NoteTimestamp  
     FROM  CaseMgmtNotes   N (NOLOCK)  
     JOIN  Protech..Demographics D (NOLOCK) ON D.DemographicID = N.EventTableRecID  
     JOIN  #Customers    C   ON C.CustomerID = D.CustomerID  
     WHERE  N.EventTableName = 'Offenders'  
     AND   N.NoteRecID >= @QueryStartingNoteRecID  
     AND   D.TestRecord != 'Y'  
     ORDER BY N.NoteRecID  
    ) Z  
 JOIN  Protech..Users   U (NOLOCK) ON U.UserRecID = Z.UserRecID  
 JOIN  Protech..Demographics D (NOLOCK) ON D.DemographicID = Z.OffenderDemographicID  
 JOIN  Protech..Offenders  O (NOLOCK) ON O.DemographicID = D.DemographicID  
 LEFT JOIN Protech..Demographics F (NOLOCK) ON F.DemographicID = O.PoDemoID  
 ORDER BY Z.NoteRecID  
 OPTION  (RECOMPILE, MAXDOP 1, QUERYTRACEON 9481)  
  
END  
GO
/****** Object:  StoredProcedure [dbo].[emmapi_CaseNotes_ListByTimestampUtc]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jeremy Nelson
-- Create date: 11/22/2013
-- Description:	Used by EMM-API to gather case notes for the user
--				Branched from drs_CaseNotes_ListByTimestamp
-- ---------------------------------------------
-- Revisions
--	2018-05-24	Phillip Hickman	- Changed 3M to Attenti.
--	2018-06-05	Jeremy Nelson	- Fixed bug where records were excluded if no officer is assigned
--  2018-06-12	Jeremy Nelson	- Added ParameterSniffing protection
--	2018-06-13	Jeremy Nelson	- Added NoteStatus / EventStatus
--	2018-07-09	Jeremy Nelson	- Branched from drs_CaseNotes_ListByTimestamp
--								- Modified to be UTC based
--	2018-07-23	Jeremy Nelson	- Added EventTableRecId
-- =============================================
CREATE PROCEDURE [dbo].[emmapi_CaseNotes_ListByTimestampUtc]

@UserRecId		INT,
@MaxResults		INT,
@StartDateUtc	DATETIME,
@EndDateUtc		DATETIME

AS
BEGIN

	SET NOCOUNT ON;

	--
	--	Variables
	--
	DECLARE @StandardTimeOffset	INT = -300
	DECLARE @DaylightTimeOffset	INT = -240

	DECLARE @Customers TABLE ( 
								ContractID				INT,
								ContractName			VARCHAR(100),
								RegionId				INT,
								RegionName				VARCHAR(100),
								CustomerId				INT,
								CustomerName			VARCHAR(100),
								ResponsibleAccountMgr	INT
							);

	--
	--	Parameter Sniffing 
	--
	DECLARE @QueryUserRecID		INT = @UserRecID
	DECLARE @QueryMaxResults	INT = @MaxResults
	DECLARE @QueryStartDate		DATETIME = protech.dbo.fn_GetLocalTime(@StartDateUtc, @StandardTimeOffset, @DaylightTimeOffset)
	DECLARE @QueryEndDate		DATETIME = protech.dbo.fn_GetLocalTime(@EndDateUtc, @StandardTimeOffset, @DaylightTimeOffset)

	--
	--	Load customers the user has access to
	--
	INSERT	
	INTO	@Customers 
	EXEC	Protech..ptm_GetContractRegionCustomerByUserRecID @QueryUserRecID

	--
	--	Gather the data for the request
	--		Cap results to @MaxResults
	--
	SELECT		TOP (@QueryMaxResults)
				Z.NoteRecID,
				NoteTimestampUtc = protech.dbo.fn_GetUtcTime(Z.NoteTimestamp, @StandardTimeOffset, @DaylightTimeOffset),
				Z.Note,
				Z.RuleName,
				EventTimeUtc = Z.EventTime,
				D.ID1,
				OffenderFirstName = ISNULL(D.FirstName, ''),
				OffenderLastName = ISNULL(D.LastName, ''),
				OfficerName = LTRIM(RTRIM(ISNULL(F.FirstName, '') + ' ' + ISNULL(F.LastName, ''))),
				EnteredBy =	CASE U.ProtechUser
								WHEN 'Y' THEN 'Attenti Electronic Monitoring User'
								ELSE LTRIM(RTRIM(U.FirstName + ' ' + U.LastName))
							END,
				Z.NoteStatus,
				SuspendTimestampUtc = Z.SuspendTimestamp,
				Z.EventTableName,
				Z.EventTableRecID,
				Z.EventStatus,
				D.DemographicID
	FROM		(	SELECT		TOP (@QueryMaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.NoteStatus,
								N.SuspendTimestamp,
								N.Note,
								N.UserRecID,
								N.EventTableName,
								N.EventTableRecID,
								P.EventStatus,
								OffenderDemographicID = P.DemographicID,
								RuleName =	CASE ISNULL(R.RuleType, '')
												WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
												WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
												ELSE IsNull(R.RuleName, '')
											END,
								EventTime = P.TimeStamp
					FROM		CaseMgmtNotes			N WITH (NOLOCK INDEX([IX_EventTblName_NoteTimeStamp]))
					JOIN		Report_MTDPositions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
					WHERE		N.EventTableName = 'Report_MTDPositions'
					AND			N.NoteTimestamp BETWEEN @QueryStartDate AND @QueryEndDate
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteTimestamp

					UNION

					SELECT		TOP (@QueryMaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.NoteStatus,
								N.SuspendTimestamp,
								N.Note,
								N.UserRecID,
								N.EventTableName,
								N.EventTableRecID,
								P.EventStatus,
								OffenderDemographicID = P.DemographicID,
								RuleName =	CASE ISNULL(R.RuleType, '')
												WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
												WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
												ELSE IsNull(R.RuleName, '')
											END,
								EventTime = P.TimeStamp
					FROM		CaseMgmtNotes			N WITH (NOLOCK INDEX([IX_EventTblName_NoteTimeStamp]))
					JOIN		Report_EM_Positions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
					WHERE		N.EventTableName = 'Report_EM_Positions'
					AND			N.NoteTimestamp BETWEEN @QueryStartDate AND @QueryEndDate
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteTimestamp

					UNION

					SELECT		TOP (@QueryMaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.NoteStatus,
								N.SuspendTimestamp,
								N.Note,
								N.UserRecID,
								N.EventTableName,
								N.EventTableRecID,
								P.EventStatus,
								OffenderDemographicID = P.DemographicID,
								RuleName =	CASE ISNULL(R.RuleType, '')
												WHEN 'O' THEN '(EXCLUSION) ' + IsNull(R.RuleName, '')
												WHEN 'I' THEN '(INCLUSION) ' + IsNull(R.RuleName, '')
												ELSE IsNull(R.RuleName, '')
											END,
								EventTime = P.TimeStamp
					FROM		CaseMgmtNotes			N WITH (NOLOCK INDEX([IX_EventTblName_NoteTimeStamp]))
					JOIN		Report_Positions		P (NOLOCK)	ON P.RecID = N.EventTableRecID
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
					WHERE		N.EventTableName = 'Report_Positions'
					AND			N.NoteTimestamp BETWEEN @QueryStartDate AND @QueryEndDate
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteTimestamp

					UNION

					/*SELECT		TOP (@MaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.Note,
								N.UserRecID,
								OffenderDemographicID = P.DemographicID,
								RuleName =	ISNULL(R.RuleName, ''),
								EventTime = P.TimeStamp
					FROM		CaseMgmtNotes			N (NOLOCK)
					JOIN		Report_AlcoholTests		P (NOLOCK)	ON P.Report_AlcoholTestsID = N.EventTableRecID
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = P.DemographicID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					LEFT JOIN	Protech..Rules			R (NOLOCK)	ON R.RuleID = P.RuleID
					WHERE		N.EventTableName = 'Report_AlcoholTests'
					AND			N.NoteTimestamp BETWEEN @StartDate AND @EndDate
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteTimestamp

					UNION */

					SELECT		TOP (@QueryMaxResults)
								N.NoteRecID,
								N.NoteTimestamp,
								N.NoteStatus,
								N.SuspendTimestamp,
								N.Note,
								N.UserRecID,
								N.EventTableName,
								N.EventTableRecID,
								EventStatus = 0,
								OffenderDemographicID = N.EventTableRecID,
								RuleName =	'Offender Note',
								EventTime = N.NoteTimestamp
					FROM		CaseMgmtNotes			N WITH (NOLOCK INDEX([IX_EventTblName_NoteTimeStamp]))
					JOIN		Protech..Demographics	D (NOLOCK)	ON D.DemographicID = N.EventTableRecID
					JOIN		@Customers				C			ON C.CustomerID = D.CustomerID
					WHERE		N.EventTableName = 'Offenders'
					AND			N.NoteTimestamp BETWEEN @QueryStartDate AND @QueryEndDate
					AND			D.TestRecord != 'Y'
					ORDER BY	N.NoteTimestamp
				) Z
	JOIN		Protech..Users			U (NOLOCK) ON U.UserRecID = Z.UserRecID
	JOIN		Protech..Demographics	D (NOLOCK) ON D.DemographicID = Z.OffenderDemographicID
	JOIN		Protech..Offenders		O (NOLOCK) ON O.DemographicID = D.DemographicID
	LEFT JOIN	Protech..Demographics	F (NOLOCK) ON F.DemographicID = O.PoDemoID
	ORDER BY	Z.NoteTimestamp
	OPTION		(RECOMPILE)

END
GO
/****** Object:  StoredProcedure [dbo].[emmapi_Events_GPS_ListById]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:	Jeremy Nelson
-- Create date: 05/21/2018
-- Description:	Returns events from Report_MTD_Positions starting with the provided id
-- Revisions:
-- 4/17/23 (GLU) - updated the @StartingRecId parameter type to bigint
-- 10/25/24 (AEI) - Change top to rowcount for performance, cause not understood
-- =============================================
CREATE     PROCEDURE [dbo].[emmapi_Events_GPS_ListById]

@UserRecId	int,
@MaxRecords     int,
@StartingRecId  bigint

AS
BEGIN
SET NOCOUNT ON;

DECLARE @QueryUserRecId		INT = @UserRecId
DECLARE @QueryMaxRecords	INT = @MaxRecords

--
--	Customer table
--
CREATE
TABLE	#Customers
(
ContractID				int,
ContractName			varchar(100),
RegionId				int,
RegionName				varchar(100),
CustomerId				int,
CustomerName			varchar(100),
ResponsibleAccountMgr	int
);

CREATE CLUSTERED INDEX cx_tempCustomers ON #Customers(CustomerId)

--
--	Load customers the user has access to
--
INSERT
INTO	#Customers
EXEC	Protech.dbo.ptm_GetContractRegionCustomerByUserRecID @QueryUserRecID

--
--  Determine the minimum starting point
--      Without this step the query takes an extra long time
--      while it scans the entire table. This is also serves
--      to fix parameter sniffing
--
DECLARE @CleanStartingRecId bigint
DECLARE @MinRecId bigint

SELECT      @MinRecId = MIN(P.RecID)
FROM        Report_MTDPositions     P (NOLOCK)
JOIN        Protech..Demographics   D (NOLOCK)  ON D.DemographicID = P.DemographicID
JOIN        #Customers				C			ON C.CustomerID = D.CustomerID

--
--  Which starting point is higher
--
SET @CleanStartingRecId = CASE WHEN @MinRecId > @StartingRecId THEN @MinRecId ELSE @StartingRecId END

--
--  Get the data
--
set rowcount @QueryMaxRecords
SELECT
P.RecID,
D.ID1,
D.CustomerID,
P.TimeStamp,
--StoredTimeStampUTC = protech.dbo.fn_GetUtcTime(P.StoredTimeStamp, -300, -240),
P.HardwareType,
R.RuleType,
P.HWRule,
HwRuleBitIndex = Cast(CASE
WHEN ISNULL(P.HWRuleBitIndex, 0) = 0 AND P.HWRule != 0 THEN LOG(P.HWRule, 2)
WHEN ISNULL(P.HWRuleBitIndex, 0) = 0 AND P.HWRule = 0 THEN 0
ELSE P.HwRuleBitIndex
END as int),
P.DeviceID,
P.RuleStatus,
RuleName = Protech.dbo.fn_GetNonViolationRuleName(0, P.HwRule, R.RuleName, P.HWRuleBitIndex),
ClearsEventId = StartRptRecID,
ExtraTxSerialNumber = ISNULL(M.ParameterValue, 0),
ExtraTxId1 =	CASE ISNULL(P.HwRuleBitIndex, 0)
WHEN 206 THEN ISNULL(T.ID1, 'Undisclosed')
ELSE ISNULL(T.ID1, '')
END,
OffenderLocation = ''
FROM        Report_MTDPositions			P (NOLOCK)
JOIN        Protech..Demographics		D (NOLOCK)  ON D.DemographicID = P.DemographicID
JOIN        #Customers					C			ON C.CustomerID = D.CustomerID
LEFT JOIN   Protech..Rules				R (NOLOCK)  ON R.RuleID = P.RuleID
LEFT JOIN	Report_MTD_SummaryData		A (NOLOCK)	ON A.EndRptRecID = P.RecID
LEFT JOIN	Report_EventParams			M (NOLOCK)	ON	M.EventTableLookupValue = 2 --Report_EM_Positions
AND	M.EventTableRecID = P.RecID
AND	M.ParameterTypeLookupValue = 1 -- ExtraTX
AND	P.HWRuleBitIndex = 206 -- Extra TX
LEFT JOIN	Protech..OffenderDevices	O (NOLOCK)	ON	O.DeviceID = M.ParameterValue
AND	P.Timestamp BETWEEN O.AssignmentDate AND ISNULL(O.UnassignmentDate, '12/31/2199')
LEFT JOIN	Protech..Demographics		T (NOLOCK)	ON	T.DemographicID = O.DemographicID
LEFT JOIN	#Customers					E			ON	E.CustomerId = T.CustomerID
WHERE       P.RecID >=  @CleanStartingRecId
ORDER BY    P.RecID
END

RAISERROR('Script Complete!', 0, 1) WITH NOWAIT;
GO
/****** Object:  StoredProcedure [dbo].[emmapi_Events_RF_ListById]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:	Jeremy Nelson
-- Create date: 9/20/2017
-- Description:	Returns events from Report_EM_Positions starting with the provided id
-- 07/31/2023: UO Changed Temp table to Table variable
-- 08/09/2023: DLE - Use more table variables to enhance performance. Fix issue with the way TOP was being used.  We now really get the top availible records. 
-- 10/27/24 (GLU) - Change top to rowcount for performance, cause not understood
-- =============================================
CREATE     PROCEDURE [dbo].[emmapi_Events_RF_ListById]

	@UserRecId		int,
    @MaxRecords     int,
    @StartingRecId  bigint

AS
BEGIN
    SET NOCOUNT ON;

-- DECLARE @UserRecId INT = 44264,
--         @MaxRecords INT = 1000,
--         @StartingRecId bigINT = 146819882


	DECLARE @QueryUserRecId		INT = @UserRecId
	DECLARE @QueryMaxRecords	INT = @MaxRecords
	DECLARE @Customers  TABLE (	ContractID int,
				ContractName			varchar(100),
				RegionId				int,
				RegionName				varchar(100),
				CustomerId				int,
				CustomerName			varchar(100),
				ResponsibleAccountMgr	int)
    DECLARE @AbsoluteMaxRecords int = 1000
    DECLARE @RowCount int
    DECLARE @DebugFlag BIT = 0; -- 1 for debug mode to print out debug messages

	--
	--	Load customers the user has access to
	--
	INSERT	
	INTO	@Customers 
	EXEC	Protech.dbo.ptm_GetContractRegionCustomerByUserRecID @QueryUserRecID
    
    --
    --  Determine the minimum starting point
    --      Without this step the query takes an extra long time 
    --      while it scans the entire table. This is also serves
    --      to fix parameter sniffing
    --
    DECLARE @CleanStartingRecId bigint
    DECLARE @MinRecId bigint
    if @StartingRecId > 5000000  -- only do the extra steps if we are looking WAY back
    BEGIN
        set @CleanStartingRecId = @StartingRecId
    END
    ELSE
    BEGIN
        SELECT      @MinRecId = MIN(P.RecID)
        FROM        Report_EM_Positions     P --(NOLOCK) Make sure the minimum RecID has been committed
        JOIN        Protech..Demographics   D (NOLOCK)  ON D.DemographicID = P.DemographicID
        JOIN        @Customers				C			ON C.CustomerID = D.CustomerID

        --
        --  Which starting point is higher
        --
        SET @CleanStartingRecId = CASE WHEN @MinRecId > @StartingRecId THEN @MinRecId ELSE @StartingRecId END;
    END
    IF @DebugFlag = 1
        RAISERROR('Determined minimum starting point. CleanStartingRecId: %I64d.', 0, 1, @CleanStartingRecId) WITH NOWAIT;

    --
    --  Build a temp table with the list of possible position data
    --

	DECLARE @PositionData TABLE
    (
        RecID bigINT PRIMARY KEY,
        DeviceID INT,
        TimeStamp DATETIME,
        HWRule INT,
        RuleStatus INT,
        HardwareType SMALLINT,
        HWRuleBitIndex INT,
        DemographicID INT,
        PositionRecID bigint,
        RuleID int
    )

    -- get the positions

    INSERT INTO @PositionData
    SELECT TOP(@AbsoluteMaxRecords)
        P.RecID,
        p.DeviceID,
        P.TimeStamp,
        P.HWRule,
        P.RuleStatus,
        P.HardwareType,
        P.HWRuleBitIndex,
        p.DemographicID,
        p.PositionRecID,
        p.RuleID
        FROM        Report_EM_Positions			as P with (NOLOCK )
        JOIN Protech.dbo.Demographics d2 (NOLOCK) on d2.DemographicID = p.DemographicID
        join @Customers c on c.CustomerId = d2.CustomerID
        WHERE       P.RecID >=  @CleanStartingRecId 
        ORDER BY    P.RecID
        OPTION (MAXDOP 1)
        SET @RowCount = @@ROWCOUNT;
        IF @DebugFlag = 1
            RAISERROR('Finished Getting all position data. Total records: %d.', 0, 1, @RowCount) WITH NOWAIT;

        declare @BottomPositionRec bigint = (Select top 1 p.PositionRecID from @PositionData p order by p.PositionRecID)
        declare @TopPositionRec bigint = (Select top 1 p.PositionRecID from @PositionData p order by p.PositionRecID desc)

        -- Declare a new table variable for distinct PositionRecID values
        DECLARE @DistinctPositionRecID TABLE
        (
            PositionRecID bigint NULL
        );

        -- Insert distinct PositionRecID values into the new table variable
        INSERT INTO @DistinctPositionRecID(PositionRecID)
        SELECT DISTINCT PositionRecID FROM @PositionData 
        OPTION (MAXDOP 1);
        SET @RowCount = @@ROWCOUNT;
        IF @DebugFlag = 1
            RAISERROR('Finished Getting unique positionRecID into table variable. Total records: %d.', 0, 1, @RowCount) WITH NOWAIT;

    -- Get all possible RIA rows - this proved to be much faster than joining to specific records
    DECLARE @AllPossibleRulesInAlarmData TABLE
    (
        RulesInAlarmRecID bigint ,
        HWRule INT,
        RuleStatus INT,
        PositionRecId bigint 
    )
    INSERT INTO @AllPossibleRulesInAlarmData
    select 
        z.RulesInAlarmRecID,
        z.HWRule,
        z.RuleStatus,
        z.PositionRecID
    from MTD_01.dbo.RulesInAlarm	as	Z with (NOLOCK )	
    where 1=1 
        and z.PositionRecID  >= @BottomPositionRec 
        and z.PositionRecID<=@TopPositionRec
        -- It's tempting to add these next rows-- don't do it.  They slowed the query down to a crawl.  Each one was tested Aug 2023. Likely bad indexes.
--        and z.PositionRecID IN (SELECT PositionRecID FROM @DistinctPositionRecID)
        -- AND	Z.HWRule IN (33554432, 67108864)
        -- AND	Z.RuleStatus & 32 != 32
    set @RowCount = @@ROWCOUNT
    IF @DebugFlag = 1
        RAISERROR('Finished Getting Rules in alarm data into @AllPossibleRulesInAlarmData. Total records: %d.', 0, 1, @RowCount) WITH NOWAIT;

    -- Now that we have all the possible records from MTD_01, let's reduce the rows for the final join below
    DECLARE @AllUsedRulesInAlarmData TABLE
    (
        RulesInAlarmRecID bigint ,
        HWRule INT,
        RuleStatus INT,
        PositionRecId bigint 
    )
    insert into @AllUsedRulesInAlarmData
    select 
        z.RulesInAlarmRecID,
        z.HWRule,
        z.RuleStatus,
        z.PositionRecID
    from @AllPossibleRulesInAlarmData	as	Z 
    where 1=1 
        and z.PositionRecID IN (SELECT PositionRecID FROM @DistinctPositionRecID)
        AND	Z.HWRule IN (33554432, 67108864)
        AND	Z.RuleStatus & 32 != 32
    set @RowCount = @@ROWCOUNT
    IF @DebugFlag = 1
        RAISERROR('Finished Getting Rules in alarm data into @AllUsedRulesInAlarmData. Total records: %d.', 0, 1, @RowCount) WITH NOWAIT;


    --
    --  Get the final result data
    --
    set rowcount @QueryMaxRecords
    SELECT      P.RecID,
                D.ID1,
                D.CustomerID,
                P.TimeStamp,
                --StoredTimeStampUTC = protech.dbo.fn_GetUtcTime(P.StoredTimeStamp, -300, -240),
                P.HardwareType,
				R.RuleType,
                P.HWRule,
                HwRuleBitIndex = Cast(CASE 
                                    WHEN ISNULL(P.HWRuleBitIndex, 0) = 0 AND P.HWRule != 0 THEN LOG(P.HWRule, 2)
                                    WHEN ISNULL(P.HWRuleBitIndex, 0) = 0 AND P.HWRule = 0 THEN 0
                                    ELSE P.HwRuleBitIndex
                                 END as int),
                P.DeviceID,
                P.RuleStatus,
                RuleName = Protech.dbo.fn_GetNonViolationRuleName(0, P.HwRule, R.RuleName, P.HWRuleBitIndex),
				ClearsEventId = StartRptRecID,
				ExtraTxSerialNumber = ISNULL(M.ParameterValue, 0),
				ExtraTxId1 =	CASE ISNULL(P.HwRuleBitIndex, 0)
									WHEN 206 THEN ISNULL(T.ID1, 'Undisclosed')
									ELSE ISNULL(T.ID1, '')
								END,
				OffenderLocation =	CASE ISNULL(Z.HWRule, 0)
										WHEN 33554432 THEN 'Away'
										WHEN 67108864 THEN 'Home'
										ELSE ''
									END
    FROM        @PositionData		P 
    JOIN        Report_EM_Positions P2 on p2.recid = p.recid -- make sure the records are commited
    JOIN        Protech..Demographics		D (NOLOCK)  ON	D.DemographicID = P.DemographicID
    JOIN        @Customers					C			ON	C.CustomerID = D.CustomerID
	LEFT JOIN	@AllUsedRulesInAlarmData	Z 	ON	Z.PositionRecID = P.PositionRecID
														AND	Z.HWRule IN (33554432, 67108864)
														AND	Z.RuleStatus & 32 != 32
    LEFT JOIN   Protech..Rules				R (NOLOCK)  ON	R.RuleID = P.RuleID
	LEFT JOIN	Report_EM_SummaryData		A (NOLOCK)	ON	A.EndRptRecID = P.RecID
	LEFT JOIN	Report_EventParams			M (NOLOCK)	ON	M.EventTableLookupValue = 2 --Report_EM_Positions
														AND	M.EventTableRecID = P.RecID
														AND	M.ParameterTypeLookupValue = 1 -- ExtraTX
														AND	P.HWRuleBitIndex = 206 -- Extra TX
	LEFT JOIN	Protech..OffenderDevices	O (NOLOCK)	ON	O.DeviceID = M.ParameterValue
														AND	P.Timestamp BETWEEN O.AssignmentDate AND ISNULL(O.UnassignmentDate, '12/31/2199')
	LEFT JOIN	Protech..Demographics		T (NOLOCK)	ON	T.DemographicID = O.DemographicID
	LEFT JOIN	@Customers					E			ON	E.CustomerId = T.CustomerID
    ORDER BY    P.RecID desc
    OPTION (MAXDOP 1);
END
GO
/****** Object:  StoredProcedure [dbo].[emmapi_Events_RF_ListByIdv2]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
-- =============================================  
-- Author: Jeremy Nelson  
-- Create date: 9/20/2017  
-- Description: Returns events from Report_EM_Positions starting with the provided id  
-- Modified 4/25/2022 by U.O Optimized for Phantom reads
-- =============================================  
CREATE   PROCEDURE [dbo].[emmapi_Events_RF_ListByIdv2]  
  
    @UserRecId  int,  
    @MaxRecords     int,  
    @StartingRecId  int  
  
AS  
BEGIN  
    SET NOCOUNT ON;  
 DECLARE @SearchDateTimeUTC DATETIME = DATEADD(SECOND, -10, GETUTCDATE()) AT TIME ZONE 'UTC'  
 DECLARE @SearchDateTimeLocal DATETIME = @SearchDateTimeUTC AT TIME ZONE 'UTC' AT TIME ZONE 'US Eastern Standard Time'  
 DECLARE @QueryUserRecId  INT = @UserRecId  
 DECLARE @QueryMaxRecords INT = @MaxRecords  
 Declare @BeginRecID INT 
 Declare @lBeginRecID INT = @BeginRecID
 SET @lBeginRecID = (SELECT TOP(1) RecID From Report_EM_Positions WITH (NOLOCK)
 WHERE [TimeStamp] = @SearchDateTimeLocal)
 



--DATA TABLE
CREATE TABLE #TEMP 
(
RECID INT,
ID1 varchar(40),
CUSTOMERID INT,
[TIMESTAMP] DATETIME,
HARDWARETYPE INT,
RULETYPE varchar(10),
HWRULE INT,
HWRULEBITINDEX BIT,
DEVICEID INT,
RULESTATUS INT,
RULENAME VARCHAR(50),
CLEAREVENTID INT,
EXTRATXSERIALNUMBER INT,
EXTRATXID1 INT,
OFFENDERLOCATION VARCHAR (50)
);
 CREATE CLUSTERED INDEX CXRECID ON #TEMP(RECID) 


 --  
 -- Customer table  
 --  
 CREATE   
 TABLE #Customers   
   (   
    ContractID    int,  
    ContractName   varchar(100),  
    RegionId    int,  
    RegionName    varchar(100),  
    CustomerId    int,  
    CustomerName   varchar(100),  
    ResponsibleAccountMgr int  
   );  
  
 CREATE CLUSTERED INDEX cx_tempCustomers ON #Customers(CustomerId)  
  
 --  
 -- Load customers the user has access to  
 --  
 INSERT   
 INTO #Customers   
 EXEC Protech.dbo.ptm_GetContractRegionCustomerByUserRecID @QueryUserRecID  
  
    --  
    --  Determine the minimum starting point  
    --      Without this step the query takes an extra long time   
    --      while it scans the entire table. This is also serves  
    --      to fix parameter sniffing  
    --  
    DECLARE @CleanStartingRecId int  
    DECLARE @MinRecId int  
  
    SELECT      @MinRecId = MIN(P.RecID)  
    FROM        Report_EM_Positions     P (NOLOCK)  
    JOIN        Protech..Demographics   D (NOLOCK)  ON D.DemographicID = P.DemographicID  
    JOIN        #Customers    C   ON C.CustomerID = D.CustomerID  
  
    --  
    --  Which starting point is higher  
    --  
    SET @CleanStartingRecId = CASE WHEN @MinRecId > @StartingRecId THEN @MinRecId ELSE @StartingRecId END  
  
  
  
  --  
    --  Get the data  
    --  
	INSERT   
    INTO #TEMP
    SELECT      TOP(@QueryMaxRecords)  
                P.RecID,  
                D.ID1,  
                D.CustomerID,  
                P.TimeStamp,  
                --StoredTimeStampUTC = protech.dbo.fn_GetUtcTime(P.StoredTimeStamp, -300, -240),  
                P.HardwareType,  
    R.RuleType,  
                P.HWRule,  
                HwRuleBitIndex = Cast(CASE   
                                    WHEN ISNULL(P.HWRuleBitIndex, 0) = 0 AND P.HWRule != 0 THEN LOG(P.HWRule, 2)  
                                    WHEN ISNULL(P.HWRuleBitIndex, 0) = 0 AND P.HWRule = 0 THEN 0  
                                    ELSE P.HwRuleBitIndex  
                                 END as int),  
                P.DeviceID,  
                P.RuleStatus,  
                RuleName = Protech.dbo.fn_GetNonViolationRuleName(0, P.HwRule, R.RuleName, P.HWRuleBitIndex),  
    ClearsEventId = StartRptRecID,  
    ExtraTxSerialNumber = ISNULL(M.ParameterValue, 0),  
    ExtraTxId1 = CASE ISNULL(P.HwRuleBitIndex, 0)  
         WHEN 206 THEN ISNULL(T.ID1, 'Undisclosed')  
         ELSE ISNULL(T.ID1, '')  
        END,  
    OffenderLocation = CASE ISNULL(Z.HWRule, 0)  
          WHEN 33554432 THEN 'Away'  
          WHEN 67108864 THEN 'Home'  
          ELSE ''  
         END  
    FROM        Report_EM_Positions   P (NOLOCK)  
    JOIN        Protech..Demographics  D (NOLOCK)  ON D.DemographicID = P.DemographicID  
    JOIN        #Customers     C   ON C.CustomerID = D.CustomerID  
 LEFT JOIN MTD_01..RulesInAlarm  Z (NOLOCK) ON Z.PositionRecID = P.PositionRecID  
              AND Z.HWRule IN (33554432, 67108864)  
              AND Z.RuleStatus & 32 != 32  
    LEFT JOIN   Protech..Rules    R (NOLOCK)  ON R.RuleID = P.RuleID  
 LEFT JOIN Report_EM_SummaryData  A (NOLOCK) ON A.EndRptRecID = P.RecID  
 LEFT JOIN Report_EventParams   M (NOLOCK) ON M.EventTableLookupValue = 2 --Report_EM_Positions  
              AND M.EventTableRecID = P.RecID  
              AND M.ParameterTypeLookupValue = 1 -- ExtraTX  
              AND P.HWRuleBitIndex = 206 -- Extra TX  
 LEFT JOIN Protech..OffenderDevices O (NOLOCK) ON O.DeviceID = M.ParameterValue  
              AND P.Timestamp BETWEEN O.AssignmentDate AND ISNULL(O.UnassignmentDate, '12/31/2199')  
 LEFT JOIN Protech..Demographics  T (NOLOCK) ON T.DemographicID = O.DemographicID  
 LEFT JOIN #Customers     E   ON E.CustomerId = T.CustomerID  
 
    WHERE       P.RecID >=  @CleanStartingRecId  
    ORDER BY    P.RecID 
	
       

-- Return only data newer than captured RecID

SELECT * FROM #TEMP WITH (NOLOCK)

UNION

	    SELECT      TOP(@QueryMaxRecords)  
                RP.RecID,  
                D.ID1,  
                D.CustomerID,  
                RP.TimeStamp,  
                --StoredTimeStampUTC = protech.dbo.fn_GetUtcTime(P.StoredTimeStamp, -300, -240),  
                RP.HardwareType,  
    R.RuleType,  
                RP.HWRule,  
                HwRuleBitIndex = Cast(CASE   
                                    WHEN ISNULL(RP.HWRuleBitIndex, 0) = 0 AND RP.HWRule != 0 THEN LOG(RP.HWRule, 2)  
                                    WHEN ISNULL(RP.HWRuleBitIndex, 0) = 0 AND RP.HWRule = 0 THEN 0  
                                    ELSE RP.HwRuleBitIndex  
                                 END as int),  
                RP.DeviceID,  
                RP.RuleStatus,  
                RuleName = Protech.dbo.fn_GetNonViolationRuleName(0, RP.HwRule, R.RuleName, RP.HWRuleBitIndex),  
    ClearsEventId = StartRptRecID,  
    ExtraTxSerialNumber = ISNULL(M.ParameterValue, 0),  
    ExtraTxId1 = CASE ISNULL(RP.HwRuleBitIndex, 0)  
         WHEN 206 THEN ISNULL(T.ID1, 'Undisclosed')  
         ELSE ISNULL(T.ID1, '')  
        END,  
    OffenderLocation = CASE ISNULL(Z.HWRule, 0)  
          WHEN 33554432 THEN 'Away'  
          WHEN 67108864 THEN 'Home'  
          ELSE ''  
         END  
    FROM        Report_EM_Positions   RP 
	
    JOIN        Protech..Demographics  D  ON D.DemographicID = RP.DemographicID  
    JOIN        #Customers     C   ON C.CustomerID = D.CustomerID  
 LEFT JOIN MTD_01..RulesInAlarm  Z  ON Z.PositionRecID = RP.PositionRecID  
              AND Z.HWRule IN (33554432, 67108864)  
              AND Z.RuleStatus & 32 != 32  
    LEFT JOIN   Protech..Rules    R   ON R.RuleID = RP.RuleID  
 LEFT JOIN Report_EM_SummaryData  A  ON A.EndRptRecID = RP.RecID  
 LEFT JOIN Report_EventParams   M  ON M.EventTableLookupValue = 2 --Report_EM_Positions  
              AND M.EventTableRecID = RP.RecID  
              AND M.ParameterTypeLookupValue = 1 -- ExtraTX  
              AND RP.HWRuleBitIndex = 206 -- Extra TX  
 LEFT JOIN Protech..OffenderDevices O  ON O.DeviceID = M.ParameterValue  
              AND RP.Timestamp BETWEEN O.AssignmentDate AND ISNULL(O.UnassignmentDate, '12/31/2199')  
 LEFT JOIN Protech..Demographics  T  ON T.DemographicID = O.DemographicID  
 LEFT JOIN #Customers     E   ON E.CustomerId = T.CustomerID   
    WHERE       RP.RecID >=  @CleanStartingRecId  
	AND RP.RecID >= @lBeginRecID
    --ORDER BY    RP.RecID 
DROP TABLE #TEMP 
END  
GO
/****** Object:  StoredProcedure [dbo].[imgmt_GetDamagedEquipmentReportRecipients]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--[dbo].[imgmt_GetDamagedEquipmentReportRecipients] '5/20/2016','6/1/2016','RTAR-PAR'
CREATE PROCEDURE [dbo].[imgmt_GetDamagedEquipmentReportRecipients]
(
@StartDate datetime,
@EndDate datetime,
@ReportType varchar(100)
)
AS
BEGIN

SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET NOCOUNT ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF


--Repair Tool Actions Report - Leased / Purchased Under Warranty
BEGIN


Create Table #UserCustomers
(
UserRecID int,
CustomerID int
)

Declare @TempCustomers TABLE
(
ID int IDENTITY(1,1),
CustomerID int
)

INSERT INTO @TempCustomers

SELECT DISTINCT
A.CustomerID
FROM
(

SELECT

c.CustomerID,
d.DateQuoted Date,
v.OwnerContractId,
UnderWarranty =
(
SELECT CASE WHEN count(*) > 0 THEN 'Yes' ELSE 'No' END UnderWarranty
FROM Protech..HardwareWarranty As HW
JOIN Protech..ContractWarranty As CW ON CW.RecID = HW.ContractWarrantyRecID
JOIN Protech..WarrantyType As WT ON WT.WarrantyTypeID = CW.WarrantyTypeRecID
WHERE HW.DeviceType = d.DeviceTypeRecID
AND HW.DeviceID = d.DeviceID
AND ((rh.ReturnDate > '01/01/1899' AND HW.StartDate <= rh.ReturnDate AND HW.EndDate >= rh.ReturnDate) OR (rh.ReturnDate = '01/01/1899'))
)

FROM Protech..DamagedEquipment d with (nolock)
join Protech..RmaHardware rh with (nolock) on d.LastRmaNumber = rh.RmaRecID and d.DeviceID = rh.HwRecID
left join Protech..RmaProblems rp with (nolock) on rh.ProblemRecID = rp.RmaProblemRecID
left join Protech..Customers c with (nolock) on c.CustomerID =  d.LastCustomerID
left join Protech..View_AllDevices v with (nolock) on rh.HwRecID = v.DeviceID

WHERE
-- Status - Ready for Invoice
d.StatusRecId = 124
AND
d.DateQuoted between @StartDate AND @EndDate

) AS A
WHERE
--LPW - Leased / Purchased with Warranty, AR - Purchased Action Requried, NA - Purchased No Action Required
(@ReportType = 'RTAR-LPW' AND ( A.UnderWarranty = 'Yes' or A.OwnerContractId = 1))
OR
(@ReportType like 'RTAR-PAR' AND ( A.UnderWarranty = 'No' and A.OwnerContractId <> 1))
OR
(
@ReportType like 'RTAR-PAR30'

--UNCOMMENT FOR PRODUCTION
AND DATEDIFF(Day,A.Date,GetDate()) = 30

AND ( A.UnderWarranty = 'No' and A.OwnerContractId <> 1)
)
OR
(
@ReportType like 'RTAR-PAR45'

--UNCOMMENT FOR PRODUCTION
AND DATEDIFF(Day,A.Date,GetDate()) = 45

AND ( A.UnderWarranty = 'No' and A.OwnerContractId <> 1)
)
OR
(
@ReportType like 'RTAR-PNA60'

--UNCOMMENT FOR PRODUCTION
AND DATEDIFF(Day,A.Date,GetDate()) = 60

AND ( A.UnderWarranty = 'No' and A.OwnerContractId <> 1)
)


DECLARE @Idx int = (select count(*) from @TempCustomers)

WHILE(@Idx > 0)

BEGIN

DECLARE @CustomerID int = (select CustomerID from @TempCustomers where @Idx = ID)


INSERT INTO #UserCustomers
SElECT u.UserRecID,@CustomerID
FROM
Protech..Users u WITH (NOLOCK)
WHERE
SUBSTRING(U.InvMgmtPermissions,5,1) = 'Y'
AND
@CustomerID in (Select CustomerID from [Protech].[dbo].[fn_GetCustomersUserCanSee](u.UserRecID) )



SET @Idx = @Idx - 1;

END

/******************************************

--Have Damaged Equipment User Customers Here

*******************************************/

DECLARE @UserCustomersDistinct TABLE
(
UserRecID int,
CustomerIDs varchar(max)
)

INSERT INTO @UserCustomersDistinct
SELECT DISTINCT
UserRecID , (CONVERT(varchar(max),(select CustomerID From #UserCustomers where UserRecID = T.UserRecID FOR XML AUTO)))

FROM #UserCustomers T
ORDER BY 1

DECLARE @UserGroupEmails TABLE
(
EmailGroup int,
CustomerIds varchar(max),
UserRecIds varchar(max)
)

INSERT INTO @UserGroupEmails
select distinct
A.[EmailGroup],
A.CustomerIds,
UserIds = convert(varchar(max),(select UserRecID FROM @UserCustomersDistinct where CustomerIDs = A.CustomerIDs FOR XML AUTO))
FROM
(
select
UserRecID,
DENSE_RANK() OVER
(ORDER BY CustomerIDs) AS [EmailGroup], CustomerIDs
FROM @UserCustomersDistinct
) AS A


CREATE TABLE #UserGroupEmailsXml
(
EmailGroup int,
CustomerIdsXml xml,
UserRecIdsXml xml,
EmailAddresses varchar(max),
EmailsCount int,
CustomerIds varchar(max)
)


INSERT INTO #UserGroupEmailsXml
SELECT
EmailGroup,
Convert(xml,CustomerIds) CustomerIds,
Convert(xml,UserRecIds) UserRecIds,
null,
null,
null
FROM @UserGroupEmails


DECLARE @GroupIdx int = (select count(*) from #UserGroupEmailsXml)

WHILE(@GroupIdx > 0)
BEGIN

CREATE TABLE #TempEmailAddresses
(
ID int IDENTITY(1,1),
EmailAddress varchar(max)
)

CREATE TABLE #TempCustomers
(
ID int IDENTITY(1,1),
CustomerID varchar(max)
)


INSERT INTO #TempEmailAddresses
SELECT EmailAddress From Protech..Users WHERE
ISNULL(Len(EmailAddress),0) > 0 AND
UserRecID > 0 AND
UserRecID in
(
SELECT
pref.value('./@UserRecID', 'int') as UserRecID
FROM
#UserGroupEmailsXml x CROSS APPLY
UserRecIdsXml.nodes('//.') AS UserRecIds(pref)
WHERE   pref.value('./@UserRecID', 'int')  is not null
AND x.EmailGroup = @GroupIdx
)

INSERT INTO #TempCustomers
SELECT
pref.value('./@CustomerID', 'int') as CustomerId
FROM
#UserGroupEmailsXml x CROSS APPLY
CustomerIdsXml.nodes('//.') AS UserRecIds(pref)
WHERE   pref.value('./@CustomerID', 'int')  is not null
AND x.EmailGroup = @GroupIdx


--Set Email Addresses Value
DECLARE @TempIdx int = (select count(*) from #TempEmailAddresses)
DECLARE @EmailAddresses varchar(max) = ''

WHILE(@TempIdx > 0)
BEGIN
SET @EmailAddresses = @EmailAddresses + (select EmailAddress from #TempEmailAddresses where ID = @TempIdx) + ';'
SET @TempIdx = @TempIdx - 1
END

UPDATE #UserGroupEmailsXml
SET EmailAddresses = @EmailAddresses,
EmailsCount = (select count(*) from #TempEmailAddresses)
WHERE EmailGroup = @GroupIdx

DROP TABLE #TempEmailAddresses

--Set CustomerIds Value
DECLARE @TempCustomerIdx int = (select count(*) from #TempCustomers)
DECLARE @CustomerIds varchar(max) = ''

WHILE(@TempCustomerIdx > 0)
BEGIN
SET @CustomerIds = @CustomerIds + (select CustomerID from #TempCustomers where ID = @TempCustomerIdx) + ','
SET @TempCustomerIdx = @TempCustomerIdx - 1
END

Set @CustomerIds = STUFF(@CustomerIds, LEN(@CustomerIds), 1, '')

UPDATE #UserGroupEmailsXml
SET CustomerIds = @CustomerIds
WHERE EmailGroup = @GroupIdx

DROP TABLE #TempCustomers

SET @GroupIdx = @GroupIdx - 1

END

--select * from @GroupDistributions

select EmailGroup,EmailAddresses,CustomerIds FROM #UserGroupEmailsXml

DROP TABLE #UserGroupEmailsXml
DROP TABLE #UserCustomers

END

END

GO
/****** Object:  StoredProcedure [dbo].[imgmt_GetDamagedEquipmentReports]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO


--[dbo].[imgmt_GetDamagedEquipmentReports] '8/1/2014','3/1/2015','RTAR-PAR'
CREATE PROCEDURE [dbo].[imgmt_GetDamagedEquipmentReports]
(
@StartDate datetime,
@EndDate datetime,
@ReportType varchar(100)
)
AS
BEGIN

--SELECT D.* FROM  [dbo].[DamagedEquipmentTest] D with (nolock)
SELECT
A.Id,
A.Date,
A.CustomerName,
A.OffenderName,
A.DeviceType,
A.SerialNumber,
A.ReturnReason,
A.RepairReason,
Cost = CASE WHEN A.UnderWarranty = 'Yes' THEN 0.00 ELSE A.Cost  END,
--A.DeviceID,
--A.HwRevID,
A.CustomerID,
A.OwnerContractId,
--A.OffenderId,
--A.DamagedEquipmentRecId,
--A.ReturnDate,
--A.OfficerName,
--A.LastRmaNumber,
--A.DeviceTypeRecID,
A.UnderWarranty
FROM

(

select
d.RecID Id,
d.DateQuoted Date,
c.OrganizationName CustomerName,
demo.LastName + ', ' + demo.FirstName OffenderName,
isnull(hr.MarketingName,hr.version) DeviceType,
v.SerialNumber,
rp.Problem ReturnReason,
d.Notes RepairReason,
d.BilledDamageCost Cost,
null PendingAction,
v.DeviceID,
hr.HwRevID,
c.CustomerID,
v.OwnerContractId,
demo.DemographicID OffenderId,
d.RecID DamagedEquipmentRecId,
rh.ReturnDate,
PODemo.LastName + ', ' + PODemo.FirstName OfficerName,
d.LastRmaNumber,
d.DeviceTypeRecID,

UnderWarranty =
(
SELECT CASE WHEN count(*) > 0 THEN 'Yes' ELSE 'No' END UnderWarranty
FROM Protech..HardwareWarranty As HW
JOIN Protech..ContractWarranty As CW ON CW.RecID = HW.ContractWarrantyRecID
JOIN Protech..WarrantyType As WT ON WT.WarrantyTypeID = CW.WarrantyTypeRecID
WHERE HW.DeviceType = d.DeviceTypeRecID
AND HW.DeviceID = d.DeviceID
AND ((rh.ReturnDate > '01/01/1899' AND HW.StartDate <= rh.ReturnDate AND HW.EndDate >= rh.ReturnDate) OR (rh.ReturnDate = '01/01/1899'))
)

from Protech..DamagedEquipment d with (nolock)
join Protech..RmaHardware rh with (nolock) on d.LastRmaNumber = rh.RmaRecID and d.DeviceID = rh.HwRecID
left join Protech..RmaProblems rp with (nolock) on rh.ProblemRecID = rp.RmaProblemRecID
left join Protech..Customers c with (nolock) on c.CustomerID =  d.LastCustomerID
left join Protech..Demographics demo with (nolock) on d.LastDemographicID = demo.DemographicID
left join Protech..Offenders o with (nolock) on demo.DemographicID = o.DemographicID
left join Protech..Demographics PODemo with (nolock) on o.PoDemoID = PODemo.DemographicID
left join Protech..HardwareRevs hr with (nolock) on hr.HwRevID = rh.ModelRecID
left join Protech..View_AllDevices v with (nolock) on rh.HwRecID = v.DeviceID

where
-- Status - Ready for Invoice
d.StatusRecId = 124
--AND
--WHERE
--d.LastCustomerID in (SELECT CONVERT(int,Value) FROM dbo.Split(@CustomerIDs,','))
AND
--This date should match the one returned in the object
d.DateQuoted between @StartDate AND @EndDate
) AS A
WHERE
--LPW - Leased / Purchased with Warranty, AR - Purchased Action Requried, NA - Purchased No Action Required
(@ReportType = 'RTAR-LPW' AND ( A.UnderWarranty = 'Yes' or A.OwnerContractId = 1))
OR
(@ReportType like 'RTAR-PAR' AND ( A.UnderWarranty = 'No' and A.OwnerContractId <> 1))
OR
(@ReportType like 'RTAR-PAR30' AND DATEDIFF(Day,A.Date,GetDate()) = 30 AND ( A.UnderWarranty = 'No' and A.OwnerContractId <> 1))
OR
(@ReportType like 'RTAR-PAR45' AND DATEDIFF(Day,A.Date,GetDate()) = 45 AND ( A.UnderWarranty = 'No' and A.OwnerContractId <> 1))
OR
(@ReportType like 'RTAR-PNA60' AND DATEDIFF(Day,A.Date,GetDate()) = 60 AND ( A.UnderWarranty = 'No' and A.OwnerContractId <> 1))


order by A.Date asc

END

GO
/****** Object:  StoredProcedure [dbo].[LI_Report_EM_MTD_Pos_In_001]    Script Date: 9/3/2025 6:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Elena Roe
-- Create date: 02-08-2010
-- Description:	Inserts into either into Report_EM_Positions 
--  or Report_MTDPositions based on @EMChargingStand
-- Note:  the current query is missing some columns
-- =============================================
CREATE PROCEDURE [dbo].[LI_Report_EM_MTD_Pos_In_001]
    @EMChargingStand int,
    @DemographicID int,
    @DeviceID int,
    @TimeStamp datetime,
    @DeviceStatus int,
    @CallRecID int,
    @OneTimeSchedID int,
    @RuleStatus smallint,
	@RuleID int,
	@HWRule int,
	@StandardTimeOffset int,
	@DaylightTimeOffset int,
	@HardwareType smallint
	

AS
BEGIN
	SET NOCOUNT ON
	IF @EMChargingStand <> 0
		BEGIN
		SELECT @HWRule=@HWRule
--/*--MSSQL only (comment out the block in Sybase)
			INSERT INTO [dbo].[Report_EM_Positions]
				([DemographicID]
				,[DeviceID]
				,[TimeStamp]
				,[DeviceStatus]
				,[CallRecID]           
				,[RuleStatus]
				,[RuleID]
				,[HwRule]
				,[StandardTimeOffset]
				,[DaylightTimeOffset]
				,[HardwareType])
			VALUES
				(@DemographicID 
				,@DeviceID
				,@TimeStamp
				,@DeviceStatus
				,@CallRecID           
				,@RuleStatus
				,@RuleID
				,@HWRule
				,@StandardTimeOffset
				,@DaylightTimeOffset 
				,@HardwareType) 
--*/--MSSQL only (comment out the block in Sybase)
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[Report_MTDPositions]
					([DemographicID]
					,[DeviceID]
					,[TimeStamp]
					,[DeviceStatus]
					,[MtdCallsRecID]
					,[OneTimeSchedID]          
					,[RuleStatus]
					,[RuleID]
					,[HwRule]
					,[StandardTimeOffset]
					,[DaylightTimeOffset]
					,[HardwareType])
			VALUES
					(@DemographicID 
					,@DeviceID
					,@TimeStamp
					,@DeviceStatus
					,@CallRecID 
					,@OneTimeSchedID          
					,@RuleStatus
					,@RuleID
					,@HWRule
					,@StandardTimeOffset
					,@DaylightTimeOffset 
					,@HardwareType) 
		END
	
  
END
GO
/****** Object:  StoredProcedure [dbo].[LI_Report_EM_MTD_Pos_In_002]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Elena Roe
-- Create date: 02-08-2010
-- Description:	Inserts into either into Report_EM_Positions 
--  or Report_MTDPositions based on @EMChargingStand
-- Note:  the current query is missing some columns
-- RPB 5/7/2012 - Added ZoneRecID
-- =============================================
CREATE PROCEDURE [dbo].[LI_Report_EM_MTD_Pos_In_002]
    @EMChargingStand int,
    @DemographicID int,
    @DeviceID int,
    @TimeStamp datetime,
    @DeviceStatus int,
    @CallRecID int,
    @OneTimeSchedID int,
    @RuleStatus smallint,
	@RuleID int,
	@HWRule int,
	@StandardTimeOffset int,
	@DaylightTimeOffset int,
	@HardwareType smallint,
	@ZoneRecID int
	

AS
BEGIN
	SET NOCOUNT ON
	IF @EMChargingStand <> 0
		BEGIN
		SELECT @HWRule=@HWRule
--/*   Comment Out for Sybase only  
			INSERT INTO [dbo].[Report_EM_Positions]
				([DemographicID]
				,[DeviceID]
				,[TimeStamp]
				,[DeviceStatus]
				,[CallRecID]
				,[OneTimeSchedID]           
				,[RuleStatus]
				,[RuleID]
				,[HwRule]
				,[StandardTimeOffset]
				,[DaylightTimeOffset]
				,[HardwareType])
			VALUES
				(@DemographicID 
				,@DeviceID
				,@TimeStamp
				,@DeviceStatus
				,@CallRecID 
				,@OneTimeSchedID          
				,@RuleStatus
				,@RuleID
				,@HWRule
				,@StandardTimeOffset
				,@DaylightTimeOffset 
				,@HardwareType) 
--*/ Comment Out for Sybase only  
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[Report_MTDPositions]
					([DemographicID]
					,[DeviceID]
					,[TimeStamp]
					,[DeviceStatus]
					,[MtdCallsRecID]
					,[OneTimeSchedID]          
					,[RuleStatus]
					,[RuleID]
					,[HwRule]
					,[StandardTimeOffset]
					,[DaylightTimeOffset]
					,[HardwareType]					
					,[ZoneRecID])
			VALUES
					(@DemographicID 
					,@DeviceID
					,@TimeStamp
					,@DeviceStatus
					,@CallRecID 
					,@OneTimeSchedID          
					,@RuleStatus
					,@RuleID
					,@HWRule
					,@StandardTimeOffset
					,@DaylightTimeOffset 
					,@HardwareType
					,@ZoneRecID) 
		END
	
  
END
			
			
			

GO
/****** Object:  StoredProcedure [dbo].[LI_Report_EM_MTD_Pos_In_003]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Elena Roe
-- Create date: 02-08-2010
-- Description:	Inserts into either into Report_EM_Positions 
--  or Report_MTDPositions based on @EMChargingStand
-- Note:  the current query is missing some columns
-- RPB 5/7/2012 - Added ZoneRecID
-- JPN 8/14/2013 -	Added ParameterString
--					Moving MEMS / DCU points to EM_Positions
-- JPN 1/14/2014 -	Added @Timestamp to the Parameters table
-- JPN 1/16/2014 -	Added PositionRecID
-- JPN 1/22/2014 -	Added logic to convert parameter type 7 into parameter
--					type 1. Doing that requires matching the parameter value
--					to an assembly record and using the AssemblyRecID
-- JSC 4/3/2023 -	Changed the datatype of the locavl variable @EventTableRecID
--					from int to bigint.					
-- =============================================
CREATE   PROCEDURE [dbo].[LI_Report_EM_MTD_Pos_In_003]
    @EMChargingStand int,
    @DemographicID int,
    @DeviceID int,
    @TimeStamp datetime,
    @DeviceStatus int,
    @CallRecID bigint,
    @OneTimeSchedID int,
    @RuleStatus smallint,
	@RuleID int,
	@HWRule int,
	@StandardTimeOffset int,
	@DaylightTimeOffset int,
	@HardwareType smallint,
	@ZoneRecID int,
	@HWRuleBitIndex int,
	@ParameterString varchar(MAX) = '',
	@PositionRecID bigint = NULL
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @EventTableLookupValue int
	DECLARE @EventTableRecID bigint = 0

	IF (@EMChargingStand <> 0) OR (@HardwareType IN (110, 111))
		BEGIN

		SET @EventTableLookupValue = 2 -- Report_EM_Positions

		SELECT @HWRule=@HWRule
--/*   Comment Out for Sybase only  
			INSERT INTO [dbo].[Report_EM_Positions]
				([DemographicID]
				,[DeviceID]
				,[TimeStamp]
				,[DeviceStatus]
				,[CallRecID]
				,[OneTimeSchedID]           
				,[RuleStatus]
				,[RuleID]
				,[HwRule]
				,[StandardTimeOffset]
				,[DaylightTimeOffset]
				,[HardwareType]
				,[HWRuleBitIndex]
				,[PositionRecID])
			VALUES
				(@DemographicID 
				,@DeviceID
				,@TimeStamp
				,@DeviceStatus
				,@CallRecID 
				,@OneTimeSchedID          
				,@RuleStatus
				,@RuleID
				,@HWRule
				,@StandardTimeOffset
				,@DaylightTimeOffset 
				,@HardwareType
				,@HWRuleBitIndex
				,@PositionRecID) 

				SET @EventTableRecID = SCOPE_IDENTITY()
--*/ Comment Out for Sybase only  
		END
	ELSE
		BEGIN

			SET @EventTableLookupValue = 1 -- Report_MTDPositions

			INSERT INTO [dbo].[Report_MTDPositions]
					([DemographicID]
					,[DeviceID]
					,[TimeStamp]
					,[DeviceStatus]
					,[MtdCallsRecID]
					,[OneTimeSchedID]          
					,[RuleStatus]
					,[RuleID]
					,[HwRule]
					,[StandardTimeOffset]
					,[DaylightTimeOffset]
					,[HardwareType]					
					,[ZoneRecID]
					,[HWRuleBitIndex]
					,[PositionRecID])
			VALUES
					(@DemographicID 
					,@DeviceID
					,@TimeStamp
					,@DeviceStatus
					,@CallRecID 
					,@OneTimeSchedID          
					,@RuleStatus
					,@RuleID
					,@HWRule
					,@StandardTimeOffset
					,@DaylightTimeOffset 
					,@HardwareType
					,@ZoneRecID
					,@HWRuleBitIndex
					,@PositionRecID) 

				SET @EventTableRecID = SCOPE_IDENTITY()
		END
	
	--
	--	Parameters
	--
	IF (@ParameterString != '' AND @EventTableRecID != 0)
	BEGIN
		--
		--	Parse the parameters string
		--
		CREATE
		TABLE	#Values 
				(
					ParameterType	int,
					ParameterValue	varchar(50),
					NewValue		varchar(50)
				)

		INSERT
		INTO	#Values
		SELECT	ParameterType =  (Select Value From dbo.Split(A.Value, '=') B Where B.Id = 1),
				ParameterValue = (Select Value From dbo.Split(A.Value, '=') B Where B.Id = 2),
				NULL
		FROM	dbo.Split(@ParameterString, ';') A
		WHERE	A.Value != ''

		--
		--	For type 7, try to match the record to an assembly record
		--
		UPDATE	#Values
		SET		NewValue =	(
								SELECT		TOP 1 
											A.AssemblyRecID
								FROM		Protech..Assemblies	A (NOLOCK)
								WHERE		A.SerialNumber LIKE '078FC' + RIGHT('00000' + #Values.ParameterValue, 5)
								ORDER BY	A.ManufactureDate DESC
							)
		WHERE	ParameterType = '7'

		--
		--	If we were able to find a matching serial number, convert this to a type 1
		--
		UPDATE	#Values
		SET		ParameterType = 1,
				ParameterValue = NewValue
		WHERE	ParameterType = 7
		AND		NewValue IS NOT NULL

		--
		--	Store the values
		--	
		INSERT 
		INTO	[dbo].[Report_EventParams]
				(
					[EventTableLookupValue],
					[EventTableRecID],
					[ParameterTypeLookupValue],
					[ParameterValue],
					[EventTimestamp]
				)         
		SELECT	@EventTableLookupValue,
				@EventTableRecID,
				V.ParameterType,
				V.ParameterValue,
				@TimeStamp
		FROM	#Values	V

	END 
	--
	-- End Parameters
	--
  
END
GO
/****** Object:  StoredProcedure [dbo].[LI_ReportAlcoholTests_Insert]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:           Jeremy Nelson
-- Create date: 8/14/2013
-- Description:      Inserts into ReportAlcoholTests
--
------------------------------------------------
-- Modifications
------------------------------------------------
-- 01/12/2018 JPN    Changed MTDCallsRecID to bigint
-- =============================================
CREATE 
PROCEDURE     [dbo].[LI_ReportAlcoholTests_Insert]

    @DemographicID         int,
    @DeviceID              int,
    @TimeStamp                    datetime,
    @RuleStatus                   smallint,
       @RuleID                           int,
       @HWRuleBitIndex            int,
       @StandardTimeOffset smallint,
       @DaylightTimeOffset smallint,
    @OneTimeSchedID        int,
       @AlcoholTestID             int,
       @MTDCallsRecID             bigint

AS
BEGIN
       SET NOCOUNT ON

       INSERT 
       INTO   [dbo].[Report_AlcoholTests]
                     (
                           [DemographicID],
                           [DeviceID],
                           [TimeStamp],
                           [RuleStatus],
                           [RuleID],
                           [HWRuleBitIndex],
                           [StandardTimeOffset],
                           [DaylightTimeOffset],
                           [OneTimeSchedID],
                           [AlcoholTestID],
                           [MtdCallsRecID]
                     )
       VALUES (
                           @DemographicID,
                           @DeviceID,
                           @TimeStamp,
                           @RuleStatus,
                           @RuleID,
                           @HWRuleBitIndex,
                           @StandardTimeOffset,
                           @DaylightTimeOffset,
                           @OneTimeSchedID,
                           @AlcoholTestID,
                           @MTDCallsRecID
                     ) 
END

GO
/****** Object:  StoredProcedure [dbo].[LI_ReportCAMAlerts_Insert]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Zachary Welch
-- Create date: 07/24/2024
-- Description:	Insert report record for CAM alerts
-- =============================================
CREATE   PROCEDURE [dbo].[LI_ReportCAMAlerts_Insert]

@DemographicID		int,
@DeviceID			int,
@TimeStamp			datetime,
@StoredTimeStamp	datetime,
@RuleStatus			smallint,
@RuleID				int,
@HWRuleBitIndex		int,
@StandardTimeOffset smallint,
@DaylightTimeOffset smallint,
@EventStatus 		tinyint,
@OneTimeSchedID		int,
@AlertID			int,
@MTDCallsRecID		bigint

AS
BEGIN
SET NOCOUNT ON

INSERT
INTO	[dbo].[Report_CAMAlerts]
(
[DemographicID]
,[DeviceID]
,[TimeStamp]
,[StoredTimeStamp]
,[RuleStatus]
,[RuleID]
,[HwRuleBitIndex]
,[StandardTimeOffset]
,[DaylightTimeOffset]
,[EventStatus]
,[OneTimeSchedID]
,[AlertID]
,[MTDCallsRecID]
)
VALUES	(
@DemographicID,
@DeviceID,
@TimeStamp,
@StoredTimeStamp,
@RuleStatus,
@RuleID,
@HWRuleBitIndex,
@StandardTimeOffset,
@DaylightTimeOffset,
@EventStatus,
@OneTimeSchedID,
@AlertID,
@MTDCallsRecID
)
END
GO
/****** Object:  StoredProcedure [dbo].[LI_Rept_EM_Positions_In_001]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Elena Roe
-- Create date: 01-25-2010
-- Description:	Inserts into Report_EM_Positions
-- Note:  the current query is missing some columns
-- =============================================
CREATE PROCEDURE [dbo].[LI_Rept_EM_Positions_In_001]
    @DemographicsID int,
    @DeviceID int,
    @TimeStamp datetime,
    @DeviceStatus int,
    @MTDCallsRecID int,
    @RuleStatus int,
	@RuleID int,
	@StandardTimeOffset int,
	@DaylightTimeOffset int,
	@HardwareType smallint
	

AS
BEGIN
	SET NOCOUNT ON
--/*--MSSQL only (comment out the block in Sybase)
	INSERT INTO [dbo].[Report_EM_Positions]
           ([DemographicID]
           ,[DeviceID]
           ,[TimeStamp]
           ,[DeviceStatus]
           ,[CallRecID]
           ,[RuleStatus]
           ,[RuleID]
           ,[StandardTimeOffset]
           ,[DaylightTimeOffset]
           ,[HardwareType])
     VALUES
           (@DemographicsID 
           ,@DeviceID
           ,@TimeStamp
           ,@DeviceStatus
           ,@MTDCallsRecID
           ,@RuleStatus
           ,@RuleID
           ,@StandardTimeOffset
           ,@DaylightTimeOffset 
           ,@HardwareType) 
--*/--MSSQL only (comment out the block in Sybase)
END



GO
/****** Object:  StoredProcedure [dbo].[LI_Rept_EM_Positions_In_002]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Elena Roe
-- Create date: 01-25-2010
-- Description:	Inserts into Report_EM_Positions
-- Note:  the current query is missing some columns
-- Date		By		Change
-- -------- -----   ------
-- 8/8/2013 RPB     Added Support for field HWRuleBitIndex
-- 8/8/2013 RPB     Created a new procedure with the _002 Version
-- =============================================

CREATE PROCEDURE [dbo].[LI_Rept_EM_Positions_In_002]
    @DemographicsID int,
    @DeviceID int,
    @TimeStamp datetime,
    @DeviceStatus int,
    @MTDCallsRecID int,
    @RuleStatus int,
	@RuleID int,
	@StandardTimeOffset int,
	@DaylightTimeOffset int,
	@HardwareType smallint,
	@HWRuleBitIndex smallint

	
	

AS
BEGIN
	SET NOCOUNT ON
--/*--MSSQL only (comment out the block in Sybase)
	INSERT INTO [dbo].[Report_EM_Positions]
           ([DemographicID]
           ,[DeviceID]
           ,[TimeStamp]
           ,[DeviceStatus]
           ,[CallRecID]
           ,[RuleStatus]
           ,[RuleID]
           ,[StandardTimeOffset]
           ,[DaylightTimeOffset]
           ,[HardwareType]
		   ,[HWRuleBitIndex]) 
     VALUES
           (@DemographicsID 
           ,@DeviceID
           ,@TimeStamp
           ,@DeviceStatus
           ,@MTDCallsRecID
           ,@RuleStatus
           ,@RuleID
           ,@StandardTimeOffset
           ,@DaylightTimeOffset 
           ,@HardwareType
		   ,@HWRuleBitIndex) 
END

GO
/****** Object:  StoredProcedure [dbo].[LI_Rept_EM_Positions_In_003]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Elena Roe
-- Create date: 01-25-2010
-- Description:	Inserts into Report_EM_Positions
-- Note:  the current query is missing some columns
-- Date		By		Change
-- -------- -----   ------
-- 8/8/2013 RPB     Added Support for field HWRuleBitIndex
-- 8/8/2013 RPB     Created a new procedure with the _002 Version
-- =============================================
CREATE PROCEDURE [dbo].[LI_Rept_EM_Positions_In_003]
    @DemographicsID int,
    @DeviceID int,
    @TimeStamp datetime,
    @DeviceStatus int,
    @MTDCallsRecID bigint,
    @RuleStatus int,
	@RuleID int,
	@StandardTimeOffset int,
	@DaylightTimeOffset int,
	@HardwareType smallint,
	@HWRuleBitIndex smallint
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO [dbo].[Report_EM_Positions]
           ([DemographicID]
           ,[DeviceID]
           ,[TimeStamp]
           ,[DeviceStatus]
           ,[CallRecID]
           ,[RuleStatus]
           ,[RuleID]
           ,[StandardTimeOffset]
           ,[DaylightTimeOffset]
           ,[HardwareType]
		   ,[HWRuleBitIndex]) 
     VALUES
           (@DemographicsID 
           ,@DeviceID
           ,@TimeStamp
           ,@DeviceStatus
           ,@MTDCallsRecID
           ,@RuleStatus
           ,@RuleID
           ,@StandardTimeOffset
           ,@DaylightTimeOffset 
           ,@HardwareType
		   ,@HWRuleBitIndex) 
END

GO
/****** Object:  StoredProcedure [dbo].[LI_ReptMTDPositions_In_001]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Elena Roe
-- Create date: 01-14-2010
-- Description:	Inserts into Report_MTDPositions 
-- Note:  the current query is missing some columns
-- =============================================
CREATE PROCEDURE [dbo].[LI_ReptMTDPositions_In_001]
    @DemographicsID int,
	@DeviceId int,
    @TimeStamp datetime,
    @RuleStatus int,
	@RuleID int,
	@StandardTimeOffset int,
	@DaylightTimeOffset int,
	@HardwareType tinyint,
	@MTDCallsRecID int,			 
	@DeviceStatus int

AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO [dbo].[Report_MTDPositions]
			 ([DemographicID]
    	     ,[DeviceID]
			 ,[TimeStamp]
			 ,[RuleStatus]
			 ,[RuleID]
			 ,[StandardTimeOffset]
			 ,[DaylightTimeOffset]
			 ,[HardwareType]
			 ,[MtdCallsRecID]
			 ,[DeviceStatus])
     VALUES
             (@DemographicsID
             ,@DeviceId
			 ,@TimeStamp
			 ,@RuleStatus
			 ,@RuleID
			 ,@StandardTimeOffset
			 ,@DaylightTimeOffset
			 ,@HardwareType
			 ,@MTDCallsRecID
			 ,@DeviceStatus)
			 
  
END

GO
/****** Object:  StoredProcedure [dbo].[LI_ReptMTDPositions_In_002]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Elena Roe
-- Create date: 01-14-2010
-- Description:	Inserts into Report_MTDPositions 
-- Note:  the current query is missing some columns
-- Date		By		Change
-- -------- -----   ------
-- 8/8/2013 RPB     Added Support for two fields (ReportLevelTypeValue & DeviceModelTypeValue & HWRuleBitIndex)
-- 8/8/2013 RPB     Created a new procedure with the _002 Version
-- =============================================
CREATE PROCEDURE [dbo].[LI_ReptMTDPositions_In_002]
    @DemographicsID int,
	@DeviceId int,
    @TimeStamp datetime,
    @RuleStatus int,
	@RuleID int,
	@StandardTimeOffset int,
	@DaylightTimeOffset int,
	@HardwareType tinyint,
	@MTDCallsRecID int,			 
	@DeviceStatus int,
	@HWRuleBitIndex int


AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO [dbo].[Report_MTDPositions]
			 ([DemographicID]
    	     ,[DeviceID]
			 ,[TimeStamp]
			 ,[RuleStatus]
			 ,[RuleID]
			 ,[StandardTimeOffset]
			 ,[DaylightTimeOffset]
			 ,[HardwareType]
			 ,[MtdCallsRecID]
			 ,[DeviceStatus]
			 ,[HWRuleBitIndex])
     VALUES
             (@DemographicsID
             ,@DeviceId
			 ,@TimeStamp
			 ,@RuleStatus
			 ,@RuleID
			 ,@StandardTimeOffset
			 ,@DaylightTimeOffset
			 ,@HardwareType
			 ,@MTDCallsRecID
			 ,@DeviceStatus
			 ,@HWRuleBitIndex)
			 
  
END

GO
/****** Object:  StoredProcedure [dbo].[LI_ReptMTDPositions_In_003]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Elena Roe
-- Create date: 01-14-2010
-- Description:	Inserts into Report_MTDPositions 
-- Note:  the current query is missing some columns
-- Date		By		Change
-- -------- -----   ------
-- 8/8/2013 RPB     Added Support for two fields (ReportLevelTypeValue & DeviceModelTypeValue & HWRuleBitIndex)
-- 8/8/2013 RPB     Created a new procedure with the _002 Version
-- =============================================
CREATE PROCEDURE [dbo].[LI_ReptMTDPositions_In_003]
    @DemographicsID int,
	@DeviceId int,
    @TimeStamp datetime,
    @RuleStatus int,
	@RuleID int,
	@StandardTimeOffset int,
	@DaylightTimeOffset int,
	@HardwareType tinyint,
	@MTDCallsRecID bigint,			 
	@DeviceStatus int,
	@HWRuleBitIndex int
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO [dbo].[Report_MTDPositions]
			 ([DemographicID]
    	     ,[DeviceID]
			 ,[TimeStamp]
			 ,[RuleStatus]
			 ,[RuleID]
			 ,[StandardTimeOffset]
			 ,[DaylightTimeOffset]
			 ,[HardwareType]
			 ,[MtdCallsRecID]
			 ,[DeviceStatus]
			 ,[HWRuleBitIndex])
     VALUES
             (@DemographicsID
             ,@DeviceId
			 ,@TimeStamp
			 ,@RuleStatus
			 ,@RuleID
			 ,@StandardTimeOffset
			 ,@DaylightTimeOffset
			 ,@HardwareType
			 ,@MTDCallsRecID
			 ,@DeviceStatus
			 ,@HWRuleBitIndex)  
END

GO
/****** Object:  StoredProcedure [dbo].[Nagios_CaseMgmtNotes_Reporting]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--=============================================================================
-- Procedure Name: Nagios_CaseMgmtNotes_Reporting
-- Description...: Reporing Case management notes
-- Author........: Uche.O
-- Date Created..: 2020-08-21
-------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[Nagios_CaseMgmtNotes_Reporting]

AS

SELECT CASE 
        WHEN DATEPART(hour, getdate()) BETWEEN 2 AND 23
            THEN (
                    SELECT count(*)
                    FROM Reporting.dbo.CaseMgmtNotes(NOLOCK)
                    WHERE UserRecID = 6021
                        AND NoteTimestamp > dateadd(hour, - 2, getdate())
                    )
        ELSE 1
        END AS autoclear


GO
/****** Object:  StoredProcedure [dbo].[Nagios_GetCaseMgmtServiceNotProcessedCount]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jeff LaFay
-- Create date: 5/30/2017
-- Description:	Gets a count of unprocessed positions and number of minutes since the stored timestamp for the oldest
--				unprocessed position.
-- =============================================
CREATE PROCEDURE [dbo].[Nagios_GetCaseMgmtServiceNotProcessedCount] 

AS
BEGIN
	SET NOCOUNT ON;

	SELECT COUNT(*) AS UnprocessedCount,
		DATEDIFF(MINUTE, MIN(StoredTimeStamp), GETDATE()) AS MinutesOld
	FROM
	(
		SELECT 
			P.RecID, StoredTimeStamp 
		FROM 
			Report_MTDPositions AS P WITH (NOLOCK) 
		where
			processed = 'N' 
			AND RuleID > 0 
			AND RuleStatus & 16 = 16 
			AND DemographicID <> 0

		UNION ALL
       
		SELECT 
			P.RecID, StoredTimeStamp 
		FROM 
			Report_EM_Positions AS P WITH (NOLOCK) 
		WHERE 
			processed = 'N' 
			AND RuleID > 0 
			AND RuleStatus & 16 = 16
			AND DemographicID <> 0

	) AS Source

END
GO
/****** Object:  StoredProcedure [dbo].[OffenderEvent_NotifyContacts]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[OffenderEvent_NotifyContacts]
(
@OffenderEventID int,
@ContactDemographicID int = 0,
@ContactDemographicIDEmail varchar(100),
@SendEmail int,
@SendText nvarchar(500)
)
AS

DECLARE @errorMessage  varchar(100)= '';
DECLARE @contactEmailAddress varchar(100) = 0;
BEGIN
--SET PROCESSING STANDARD VARIABLES
SET NOCOUNT OFF;

If (@SendEmail = 1)
BEGIN
/*
EXEC Reporting.dbo.sp_send_dbmail
@recipients='ContactDemographicIDEmail',
@subject='Testing Email from SQL Server',
@body='<p>We are Notifying you about :-' + @SendText + ' !</p><p>Email about ' + OffenderEventID + '</p>',
@body_format='HTML',
@from_address='Sender Name <sender@attentigroup.com>',
*/
EXEC MTD_01.dbo.OffenderEventNotificationContacts_Insert
@OffenderEventID,
@ContactDemographicID,
@SendEmail,
@SendText
SELECT Top 1 * FROM [MTD_01].[dbo].[OffenderEventAlarms]
END
END
GO
/****** Object:  StoredProcedure [dbo].[OffenderEventMetaData_Delete]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[OffenderEventMetaData_Delete]
(
@OffenderEventMetaDataID int
)
AS
SET NOCOUNT OFF;
DELETE FROM [OffenderEventMetaData] WHERE (([OffenderEventMetaDataID] = @OffenderEventMetaDataID))
GO
/****** Object:  StoredProcedure [dbo].[OffenderEventMetaData_Insert]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[OffenderEventMetaData_Insert]
(
@OffenderEventID int,
@OffenderEventFieldID int,
@OffenderEventFieldValue nvarchar(1000),
@LastModifiedUserRecID int
)
AS
SET NOCOUNT OFF;
INSERT INTO [OffenderEventMetaData] ([OffenderEventID], [OffenderEventFieldID], [OffenderEventFieldValue], [LastModifiedUserRecID]) VALUES (@OffenderEventID, @OffenderEventFieldID, @OffenderEventFieldValue, @LastModifiedUserRecID);

SELECT OffenderEventMetaDataID, OffenderEventID, OffenderEventFieldID, OffenderEventFieldValue, LastModifiedUserRecID, LastModifiedTimeStamp FROM OffenderEventMetaData WHERE (OffenderEventMetaDataID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[OffenderEventMetaData_Select]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   PROCEDURE [dbo].[OffenderEventMetaData_Select]
(
@OffenderEventID int = -1
)
AS
SET NOCOUNT ON;
Select OffenderEventMetaDataID, OffenderEventID, OffenderEventFieldID, OffenderEventFieldValue, LastModifiedUserRecID, LastModifiedTimeStamp from OffenderEventMetaData
WHERE (@OffenderEventID = -1 OR OffenderEventID = @OffenderEventID)
GO
/****** Object:  StoredProcedure [dbo].[OffenderEventMetaData_Update]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[OffenderEventMetaData_Update]
(
@OffenderEventMetaDataID int,
@OffenderEventID int,
@OffenderEventFieldID int,
@OffenderEventFieldValue nvarchar(1000),
@LastModifiedUserRecID int
)
AS
SET NOCOUNT OFF;
UPDATE [OffenderEventMetaData] SET [OffenderEventID] = @OffenderEventID, [OffenderEventFieldID] = @OffenderEventFieldID, [OffenderEventFieldValue] = @OffenderEventFieldValue, [LastModifiedUserRecID] = @LastModifiedUserRecID WHERE (([OffenderEventMetaDataID] = @OffenderEventMetaDataID));

SELECT OffenderEventMetaDataID, OffenderEventID, OffenderEventFieldID, OffenderEventFieldValue, LastModifiedUserRecID, LastModifiedTimeStamp FROM OffenderEventMetaData WHERE (OffenderEventMetaDataID = @OffenderEventMetaDataID)
GO
/****** Object:  StoredProcedure [dbo].[OffenderEvents_Delete]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   PROCEDURE [dbo].[OffenderEvents_Delete]
(
@OffenderEventID int
)
AS
SET NOCOUNT OFF;

--CASCADE DELETE TO METADATA
exec OffenderEventMetaData_Delete @OffenderEventID

--Delete from OffenderEvents
DELETE FROM [OffenderEvents] WHERE (([OffenderEventID] = @OffenderEventID))
GO
/****** Object:  StoredProcedure [dbo].[OffenderEvents_History]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[OffenderEvents_History]
(
@DemographicID int = -1,
@StartTime DATETIME=NULL,
@EndTime DATETIME=NULL
)
AS
SET NOCOUNT ON;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

Select OffenderEventID, DemographicID, CreatedByUserRecID, [TimeStamp], UtcTimestamp, RuleID, OffenderEvents.OffenderEventTypeID
FROM OffenderEvents
WHERE (@DemographicID = -1 OR DemographicID = @DemographicID)
AND (@StartTime is null OR [TimeStamp] >= @StartTime)
AND (@EndTime is null OR [TimeStamp] <= @EndTime)

GO
/****** Object:  StoredProcedure [dbo].[OffenderEvents_Insert]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[OffenderEvents_Insert]
(
@DemographicID int,
@CreatedByUserRecID int,
@TimeStamp datetime,
@UtcTimestamp datetime,
@RuleID int,
@OffenderEventTypeID int
)
AS
BEGIN
SET NOCOUNT OFF;
DECLARE @OffenderEventID int;

IF (@RuleID <= 0) --RL: OLU - AND we will need to filter on the OffenderEventTypeScope when we add the column
Begin
select @RuleID = RuleID from Protech.dbo.Rules
where RuleType = 'E' AND Rules.DemographicID = @DemographicID
AND HWRuleBitIndex = 220 --This is the bit index for Manual Offender Events
End



IF (@RuleID <= 0) --RL: OLU - This IF is temporary and can be removed once rules logic is updated.  Currently we don't have a rule so setting to 1 for test purposes
Begin
select @RuleID = 0
End



INSERT INTO [OffenderEvents]
([DemographicID], [CreatedByUserRecID], [TimeStamp], [UtcTimestamp], [RuleID], [OffenderEventTypeID], [LastModifiedUserRecID])
VALUES		(@DemographicID, @CreatedByUserRecID, @TimeStamp, @UtcTimestamp, @RuleID, @OffenderEventTypeID, @CreatedByUserRecID);
SET @OffenderEventID = SCOPE_IDENTITY();
/*Notes about : building Offender Alarms and the subsequent Notifications list*/
--If notification required (@OffenderEventTypeID) found in the protech.offenderevents.ContractOffenderEvents table,
--populate mtd_01.dbo.offendereventnotificationcontacts and  and mtd_01.dbo.offendereventalarms if IsNotificationRequired is true
--EXEC [dbo].[OffenderNotifications_BuildAlarms] @DemographicID, @RuleID, @OffenderEventTypeID, @OffenderEventID;

--Return the Offender Event which has just
SELECT OffenderEventID, DemographicID, CreatedByUserRecID, [TimeStamp], UtcTimestamp, RuleID, OffenderEventTypeID, LastModifiedUserRecID, LastModifiedTimeStamp
FROM OffenderEvents
WHERE (OffenderEventID = @OffenderEventID)
END
GO
/****** Object:  StoredProcedure [dbo].[OffenderEvents_Select]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE   PROCEDURE [dbo].[OffenderEvents_Select]
(
@OffenderEventID int = -1,
@DemographicID int = -1
)
AS
SET NOCOUNT ON;
Select OffenderEventID, DemographicID, CreatedByUserRecID, [TimeStamp], UtcTimestamp, RuleID, OffenderEventTypeID
FROM OffenderEvents
WHERE ((@OffenderEventID = -1 OR OffenderEventID = @OffenderEventID) AND (@DemographicID = -1 OR DemographicID = @DemographicID))

GO
/****** Object:  StoredProcedure [dbo].[OffenderEvents_Update]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE   PROCEDURE [dbo].[OffenderEvents_Update]
(
@OffenderEventID int,
@DemographicID int,
@CreatedByUserRecID int,
@TimeStamp datetime,
@UtcTimestamp datetime,
@RuleID int,
@OffenderEventTypeID int,
@LastModifiedUserRecID int
)
AS
SET NOCOUNT OFF;
UPDATE [OffenderEvents] SET [DemographicID] = @DemographicID, [CreatedByUserRecID] = @CreatedByUserRecID, [TimeStamp] = @TimeStamp, [UtcTimestamp] = @UtcTimestamp,  [RuleID] = @RuleID, [OffenderEventTypeID] = @OffenderEventTypeID, [LastModifiedUserRecID] = @LastModifiedUserRecID WHERE (([OffenderEventID] = @OffenderEventID));

SELECT OffenderEventID, DemographicID, CreatedByUserRecID, TimeStamp, UtcTimestamp, RuleID, OffenderEventTypeID, LastModifiedUserRecID, LastModifiedTimeStamp FROM OffenderEvents WHERE (OffenderEventID = @OffenderEventID)
GO
/****** Object:  StoredProcedure [dbo].[ptmsvcs_Report_AlcoholTests_Insert]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Michael Shupe
-- Create date: 6/5/2013
-- 
-- dle - 08-14-13 - remove reference to deviceModelTypeValue
-- =============================================
CREATE PROCEDURE [dbo].[ptmsvcs_Report_AlcoholTests_Insert] 
	@DemographicID INT,
	@DeviceID INT,
	@Timestamp DATETIME,
	@RuleStatus INT,
	@RuleID INT,
	@hwRuleBitIndex INT,
	@standardTimeOffset INT,
	@daylightTimeOffset INT,
	@EventStatus INT,
	@OneTimeSchedID INT,
	@AlcoholTestID INT,
	@PictureMatchHistoryID INT
AS
BEGIN
	INSERT INTO Report_AlcoholTests
		(DemographicID, DeviceID, [Timestamp], RuleStatus, RuleID, HWRuleBitIndex, StandardTimeOffset,
		 DaylightTimeOffset, EventStatus, OneTimeSchedID, AlcoholTestID, PictureMatchHistoryID)
		 Values
		 (@DemographicID, @DeviceID, @Timestamp, @RuleStatus, @RuleID, @HWRuleBitIndex, @StandardTimeOffset,
		 @DaylightTimeOffset, @EventStatus, @OneTimeSchedID, @AlcoholTestID, @PictureMatchHistoryID)
	SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[ptmsvcs_ReportRecipients_Insert]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gibson, Carla	
-- Create date: May 30, 2008
-- Description:	Insert one ReportRecipient Record
-- =============================================

CREATE PROCEDURE [dbo].[ptmsvcs_ReportRecipients_Insert] 
	@ContactDemoID int, 
	@CustomerID int, 
	@TimeZone int, 
	@Enabled char(1), 
	@ReportOptions int,

	@RecID int OUTPUT
AS

INSERT INTO ReportRecipients
	(ContactDemoID, CustomerID, TimeZone, Enabled, ReportOptions)
VALUES
	(@ContactDemoID, @CustomerID, @TimeZone, @Enabled, @ReportOptions)


SET @RecID = @@IDENTITY

GO
/****** Object:  StoredProcedure [dbo].[ptmsvcs_ReportRecipients_Update]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gibson, Carla	
-- Create date: May 30, 2008
-- Description:	Update one ReportRecipient Record
--					- Only Enabled and ReportOptions can be updated!
-- =============================================

CREATE PROCEDURE [dbo].[ptmsvcs_ReportRecipients_Update] 
	@RecID int,
	@Enabled char(1), 
	@ReportOptions int
AS

UPDATE ReportRecipients
SET Enabled = @Enabled,
ReportOptions = @ReportOptions
WHERE RecID = @RecID

GO
/****** Object:  StoredProcedure [dbo].[q_violcnt]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[q_violcnt] @start datetime, @end datetime
AS
if (day(@end) > day(@start)) and ((day(@end) - day(@start)) = 1)
begin
insert into tmpstore
select customerid, organizationname, demographicid, offender, timestamp, clear, duration, 'type' = 'M' from
(select customerid, h.demographicid, organizationname, offender, timestamp, clear, 'duration' = rtrim(cast(datepart(hh,clear-timestamp)as char)) + ':' + rtrim(cast(datepart(n,clear-timestamp)as char)) + ':' + rtrim(cast(datepart(s,clear-timestamp)as char)) from
(select d.demographicid, d.timestamp, e.clear from
(select demographicid, timestamp, 'cnt'=count(timestamp) from
(select a.*, 'clear' = b.timestamp from 
(select report_mtdpositions.demographicid, report_mtdpositions.timestamp from report_mtdpositions join protech..rules on report_mtdpositions.ruleid = protech..rules.ruleid
where (hwrule & 1024)= 1024 and (TimeStamp >= @start and TimeStamp < @end)
and (rulestatus & 16)=16) as a
join
(select report_mtdpositions.demographicid, report_mtdpositions.timestamp from report_mtdpositions join protech..rules on report_mtdpositions.ruleid = protech..rules.ruleid
where (hwrule & 1024)= 1024 and (TimeStamp >= @start and TimeStamp < @end)
and (rulestatus & 32)=32) as b
on a.demographicid = b.demographicid) as c
group by demographicid, timestamp
) as d
join
(select demographicid, timestamp, clear from
(select a.*, 'clear' = b.timestamp from 
(select report_mtdpositions.demographicid, report_mtdpositions.timestamp from report_mtdpositions join protech..rules on report_mtdpositions.ruleid = protech..rules.ruleid
where (hwrule & 1024)= 1024 and (TimeStamp >= @start and TimeStamp < @end)
and (rulestatus & 16)=16) as a
join
(select report_mtdpositions.demographicid, report_mtdpositions.timestamp from report_mtdpositions join protech..rules on report_mtdpositions.ruleid = protech..rules.ruleid
where (hwrule & 1024)= 1024 and (TimeStamp >= @start and TimeStamp < @end)
and (rulestatus & 32)=32) as b
on a.demographicid = b.demographicid) as c
group by demographicid, timestamp, clear) as e
on d.demographicid = e.demographicid
where cnt = 1
UNION
--repeats fixed
select demographicid, timestamp, 'clear' = min(clear) from
(select d.demographicid, d.timestamp, e.clear, d.cnt from
(select demographicid, timestamp, 'cnt'=count(timestamp) from
(select a.*, 'clear' = b.timestamp from 
(select report_mtdpositions.demographicid, report_mtdpositions.timestamp from report_mtdpositions join protech..rules on report_mtdpositions.ruleid = protech..rules.ruleid
where (hwrule & 1024)= 1024 and (TimeStamp >= @start and TimeStamp < @end)
and (rulestatus & 16)=16) as a
join
(select report_mtdpositions.demographicid, report_mtdpositions.timestamp from report_mtdpositions join protech..rules on report_mtdpositions.ruleid = protech..rules.ruleid
where (hwrule & 1024)= 1024 and (TimeStamp >= @start and TimeStamp < @end)
and (rulestatus & 32)=32) as b
on a.demographicid = b.demographicid) as c
group by demographicid, timestamp
) as d
join
(select demographicid, timestamp, clear from
(select a.*, 'clear' = b.timestamp from 
(select report_mtdpositions.demographicid, report_mtdpositions.timestamp from report_mtdpositions join protech..rules on report_mtdpositions.ruleid = protech..rules.ruleid
where (hwrule & 1024)= 1024 and (TimeStamp >= @start and TimeStamp < @end)
and (rulestatus & 16)=16) as a
join
(select report_mtdpositions.demographicid, report_mtdpositions.timestamp from report_mtdpositions join protech..rules on report_mtdpositions.ruleid = protech..rules.ruleid
where (hwrule & 1024)= 1024 and (TimeStamp >= @start and TimeStamp < @end)
and (rulestatus & 32)=32) as b
on a.demographicid = b.demographicid) as c
group by demographicid, timestamp, clear) as e
on d.demographicid = e.demographicid
where cnt > 1 and d.timestamp < clear) as f
group by demographicid, timestamp) as g
join 
(select demographicid, protech..demographics.customerid, organizationname, 'offender' = lastname + ', ' + firstname from protech..demographics join protech..customers 
on protech..demographics.customerid = protech..customers.customerid)as h on g.demographicid = h.demographicid) as i
where duration <= '0:0:3'
order by organizationname, timestamp
end
GO
/****** Object:  StoredProcedure [dbo].[q_violcntptd]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[q_violcntptd] @begin datetime, @end datetime
as
if (day(@end) > day(@begin)) and ((day(@end) - day(@begin)) = 1)
begin
insert into tmpstore
select customerid, organizationname, demographicid, offender, timestamp, clear, duration, 'type' = 'P' from
(select h.customerid, organizationname, h.demographicid, offender, timestamp, clear, 'duration' = rtrim(cast(datepart(hh,clear-timestamp)as char)) + ':' + rtrim(cast(datepart(n,clear-timestamp)as char)) + ':' + rtrim(cast(datepart(s,clear-timestamp)as char)) from
(select d.demographicid, d.timestamp, e.clear from
(select demographicid, timestamp, 'cnt'=count(timestamp) from
(select a.*, 'clear' = b.timestamp from 
(select p.demographicid, timestamp from
(select report_positions.demographicid, report_positions.timestamp, rulestatus,ruleid, 'pointstatus' = case when rulestatus is null then pointstatus else rulestatus end from report_positions) as p
join protech..rules on p.ruleid = protech..rules.ruleid
where (pointstatus & 1024)= 1024 and (TimeStamp >= @begin and TimeStamp < @end)
and (pointstatus & 16384)<>16384) as a
join
(select p.demographicid, timestamp from 
(select report_positions.demographicid, report_positions.timestamp, rulestatus,ruleid, 'pointstatus' = case when rulestatus is null then pointstatus else rulestatus end from report_positions) as p
join protech..rules on p.ruleid = protech..rules.ruleid
where (pointstatus & 1024)<> 1024 and (TimeStamp >= @begin and TimeStamp < @end)
) as b
on a.demographicid = b.demographicid) as c
group by demographicid, timestamp
) as d
join
(select demographicid, timestamp, clear from
(select a.*, 'clear' = b.timestamp from 
(select p.demographicid, timestamp from
(select report_positions.demographicid, report_positions.timestamp, rulestatus,ruleid, 'pointstatus' = case when rulestatus is null then pointstatus else rulestatus end from report_positions) as p
join protech..rules on p.ruleid = protech..rules.ruleid
where (pointstatus & 1024)= 1024 and (TimeStamp >= @begin and TimeStamp < @end)
and (pointstatus & 16384)<>16384) as a
join
(select p.demographicid, timestamp from 
(select report_positions.demographicid, report_positions.timestamp, rulestatus,ruleid, 'pointstatus' = case when rulestatus is null then pointstatus else rulestatus end from report_positions) as p
join protech..rules on p.ruleid = protech..rules.ruleid
where (pointstatus & 1024)<> 1024 and (TimeStamp >= @begin and TimeStamp < @end)
) as b
on a.demographicid = b.demographicid) as c
group by demographicid, timestamp, clear) as e
on d.demographicid = e.demographicid
where cnt = 1
UNION
--repeats fixed
select demographicid, timestamp, 'clear' = min(clear) from
(select d.demographicid, d.timestamp, e.clear, d.cnt from
(select demographicid, timestamp, 'cnt'=count(timestamp) from
(select a.*, 'clear' = b.timestamp from 
(select p.demographicid, timestamp from
(select report_positions.demographicid, report_positions.timestamp, rulestatus,ruleid, 'pointstatus' = case when rulestatus is null then pointstatus else rulestatus end from report_positions) as p
join protech..rules on p.ruleid = protech..rules.ruleid
where (pointstatus & 1024)= 1024 and (TimeStamp >= @begin and TimeStamp < @end)
and (pointstatus & 16384)<>16384) as a
join
(select p.demographicid, timestamp from 
(select report_positions.demographicid, report_positions.timestamp, rulestatus,ruleid, 'pointstatus' = case when rulestatus is null then pointstatus else rulestatus end from report_positions) as p
join protech..rules on p.ruleid = protech..rules.ruleid
where (pointstatus & 1024)<> 1024 and (TimeStamp >= @begin and TimeStamp < @end)
) as b
on a.demographicid = b.demographicid) as c
group by demographicid, timestamp
) as d
join
(select demographicid, timestamp, clear from
(select a.*, 'clear' = b.timestamp from 
(select p.demographicid, timestamp from
(select report_positions.demographicid, report_positions.timestamp, rulestatus,ruleid, 'pointstatus' = case when rulestatus is null then pointstatus else rulestatus end from report_positions) as p
join protech..rules on p.ruleid = protech..rules.ruleid
where (pointstatus & 1024)= 1024 and (TimeStamp >= @begin and TimeStamp < @end)
and (pointstatus & 16384)<>16384) as a
join
(select p.demographicid, timestamp from 
(select report_positions.demographicid, report_positions.timestamp, rulestatus,ruleid, 'pointstatus' = case when rulestatus is null then pointstatus else rulestatus end from report_positions) as p
join protech..rules on p.ruleid = protech..rules.ruleid
where (pointstatus & 1024)<> 1024 and (TimeStamp >= @begin and TimeStamp < @end)
) as b
on a.demographicid = b.demographicid) as c
group by demographicid, timestamp, clear) as e
on d.demographicid = e.demographicid
where cnt > 1 and d.timestamp < clear) as f
group by demographicid, timestamp) as g
join 
(select demographicid, protech..demographics.customerid, organizationname, 'offender' = lastname + ', ' + firstname from protech..demographics join protech..customers 
on protech..demographics.customerid = protech..customers.customerid)as h on g.demographicid = h.demographicid) as i
where duration <= '0:0:3'
order by organizationname, timestamp
end
GO
/****** Object:  StoredProcedure [dbo].[qaa_UpdateReportMtdPositionClearStoredTimestamp]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Alfredo Inostroza
-- Create date: 2023-08-16
-- Description:	Set the Stored Timestamp of cleared MTD Positions
-- Revisions:
-- =============================================
-- Test script: EXEC [qaa_UpdateReportMtdPositionClearStoredTimestamp] @DemographicID =1    , @DeviceID =1    , @MinutesBack =1    , @Elevation=1
-- [/noformat]
CREATE   PROCEDURE [dbo].[qaa_UpdateReportMtdPositionClearStoredTimestamp] @DemographicID INT
, @DeviceID INT
, @MinutesBack INT
, @Elevation INT
AS
BEGIN
DECLARE @StoredTimeStamp DATETIME = dateadd(minute, - ABS(@MinutesBack), getdate())

SELECT rmtdp.recid
INTO #x
FROM Reporting.dbo.Report_MTDPositions AS rmtdp WITH (NOLOCK)
LEFT JOIN reporting.dbo.Report_MTD_SummaryData AS c WITH (NOLOCK) ON rmtdp.RecID = c.EndRptRecID
INNER JOIN MTD_01.dbo.MTD_Positions AS p WITH (NOLOCK) ON rmtdp.PositionRecID = p.PositionRecID
AND rmtdp.DeviceId = p.DeviceID
AND rmtdp.DemographicID = p.DemographicID
WHERE rmtdp.DemographicID = @DemographicID
AND rmtdp.DeviceId = @DeviceID
AND p.Elevation = @Elevation
AND rmtdp.RuleStatus & 32 = 32
AND c.RecID IS NULL

UPDATE rmtdp
SET StoredTimeStamp = @StoredTimeStamp
FROM Reporting.dbo.Report_MTDPositions AS rmtdp WITH (NOLOCK)
INNER JOIN #x ON rmtdp.RecID = #x.RecID

SELECT rmtdp.StoredTimeStamp
, rmtdp.RecID
FROM Reporting.dbo.Report_MTDPositions AS rmtdp WITH (NOLOCK)
INNER JOIN #x ON rmtdp.RecID = #x.RecID
END
GO
/****** Object:  StoredProcedure [dbo].[RecompileAllProcedures_Reporting]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[RecompileAllProcedures_Reporting]
as
begin
    declare cur cursor for 
    (
        select quotename(s.name) + '.' + quotename(o.name) as procname
        from 
           sys.objects o
           inner join sys.schemas s on o.schema_id = s.schema_id
        where  o.[type] in ('P', 'FN', 'IF')
    );

    declare @procname sysname;

    open cur;
    fetch next from cur into @procname;
    while @@fetch_status=0 
    begin
        exec sp_recompile @procname;
        fetch next from cur into @procname;
    end;
    close cur;
    deallocate cur;
end;
GO
/****** Object:  StoredProcedure [dbo].[Reporting_StoredProcedureRecompile]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Revisions:
-- 05/13/25 - (UO) - Converted to sp.
-- =============================================


CREATE PROCEDURE [dbo].[Reporting_StoredProcedureRecompile]
AS
BEGIN

EXEC sp_recompile  'cmsvc_Report_MTDPositions_QueryPendingFirstViolationsByEvent'

END
GO
/****** Object:  StoredProcedure [dbo].[rp_AddAttachment]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[rp_AddAttachment] @ReportRequestId int, @CustomerID int, @Attachment varchar(max), @ContactType char(1)

AS

INSERT INTO [Reporting].[dbo].[TmpAttachments]
           ([ReportRequestId]
           ,[CustomerID]
           ,[Attachment]
           ,[ContactType])
     VALUES
           (@ReportRequestId
           ,@CustomerID
           ,@Attachment
           ,@ContactType)



GO
/****** Object:  StoredProcedure [dbo].[rp_DeleteAttachments]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[rp_DeleteAttachments] @ReportRequestId int = 0, @CustomerID int = 0

AS

IF(@CustomerID> 0 AND @ReportRequestId > 0)
DELETE
  FROM [Reporting].[dbo].[TmpAttachments]
  WHERE 
  CustomerID = @CustomerID
  AND
  ReportRequestId = @ReportRequestId
ELSE
DELETE
  FROM [Reporting].[dbo].[TmpAttachments]
  WHERE 
  ReportRequestId = @ReportRequestId



GO
/****** Object:  StoredProcedure [dbo].[rp_GetAttachments]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[rp_GetAttachments] @ReportRequestID int = 0, @CustomerID int = 0, @ContactType char(1) = 'C'

AS

IF(@CustomerID > 0 AND @ReportRequestId > 0)
	SELECT [CustomerID]
		  ,[Attachment]
	  FROM [Reporting].[dbo].[TmpAttachments]
	  WHERE CustomerID = @CustomerID
		AND ContactType = @ContactType
		AND ReportRequestId = @ReportRequestId
ELSE
	SELECT [CustomerID]
		  ,[Attachment]
	  FROM [Reporting].[dbo].[TmpAttachments]
	  WHERE ReportRequestId = @ReportRequestId
	

GO
/****** Object:  StoredProcedure [dbo].[rp_GetCmarReportRecipients]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

-- 06/22/2020 - CG - Added support for Offender Devices
-- 08/05/2020 - CG - BUG 74897: Changed @ReportOptions from OptionType = 1 (DESR) to OptionType = 2 (CMAR), which caused the recipient list to use 
--						DESR options rather than CMAR options
-- 08/11/2020 - CG - BUG 75069: Added filter for deleted Report Options


CREATE   PROCEDURE [dbo].[rp_GetCmarReportRecipients]
	@TimeZone int,
	@ProtechOnly char(1),
	@ReportLevelType int
AS
	
--DECLARE
--	@TimeZone int = -300,
--	@ProtechOnly char(1) = 'N',
--	@ReportLevelType int = 7


-- 08/05/2020 - Changed @ReportOptions from OptionType = 1 (DESR) to OptionType = 2 (CMAR)
DECLARE @ReportOptions int = (SELECT SUM([Value]) FROM Reporting.dbo.ReportOptions WHERE ReportLevelType = @ReportLevelType AND OptionType = 2 AND isDeleted = 0)

DECLARE @CustomerIDs Table(CustomerID int)

INSERT INTO @CustomerIDs
SELECT DISTINCT D.CustomerID FROM
 Protech..Demographics AS D (NOLOCK) --ON D.CustomerID = C.CustomerID
JOIN Protech..Offenders AS O WITH (NOLOCK) ON O.DemographicID = D.DemographicID
INNER JOIN Protech..ContractLevels As CL WITH (NOLOCK) ON CL.ContractLevelRecid = O.SupervisionLevel
WHERE CL.ReportLevelType = @ReportLevelType	
	AND D.Active = 'Y' 
	AND D.StandardTimeOffset = @TimeZone


--Recipients are contacts managed in Contract Manager

SELECT  DISTINCT
	ContactType = 'R',
	R.TimeZone,
	Con.ContractOptions, 
	R.ContactDemoID,
	null OfficerID, 
	GetsActive = CASE WHEN (R.ReportOptions & 0x20) = 0x20  THEN 1 ELSE 0 END ,
	GetsPassive = CASE WHEN (R.ReportOptions & 0x40) = 0x40 THEN 1 ELSE 0 END ,
	GetsRF = CASE WHEN (R.ReportOptions & 0x80) = 0x80 THEN 1 ELSE 0 END 	,
	GetsHybrid = CASE WHEN (R.ReportOptions & 0x2000) = 0x2000 THEN 1 ELSE 0 END,
	GetsAlcohol = CASE WHEN (R.ReportOptions & 0x10000) = 0x10000  THEN 1 ELSE 0 END,
	GetsOffenderSvcs = CASE WHEN (R.ReportOptions & 262144) = 262144  THEN 1 ELSE 0 END,
	REPLACE(REPLACE(I.ReportEMailAddr,',',';'),' ','') EmailAddress,
	R.CustomerID,
	C.OrganizationName		
FROM 
ReportRecipients AS R (NOLOCK)
INNER JOIN @CustomerIDs CI ON R.CustomerID = CI.CustomerID
JOIN Protech..Customers As C (NOLOCK) ON C.CustomerID = R.CustomerID
LEFT JOIN Protech..Demographics AS D (NOLOCK) ON D.DemographicID = R.ContactDemoID
JOIN Protech..Contracts As Con (NOLOCK) ON Con.ContractID = C.ContractID
INNER JOIN Protech..Contacts AS I WITH (NOLOCK) ON R.ContactDemoID = I.DemographicID

WHERE
	D.Active = 'Y' AND 
	--R.TimeZone = @TimeZone AND 
	R.Enabled = 'Y' AND -- Make sure the contact record is enabled
	C.Enabled = 'Y'	AND -- Make sure the customer record is enabled  
	I.ReportEMailAddr <> '' AND
	(@ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND C.CustomerID = 1 ) ) 
	
	AND (R.ReportOptions & @ReportOptions) > 0
	
UNION 


--Contacts are managed in EM Manager

select
	ContactType = 'C',
	D.StandardTimeOffset,
	CT.ContractOptions, 
	CON.DemographicId,
	null OfficerID,
	GetsActive = CASE WHEN (CON.ReportOptions & 0x20) = 0x20  THEN 1 ELSE 0 END ,
	GetsPassive = CASE WHEN (CON.ReportOptions & 0x40) = 0x40 THEN 1 ELSE 0 END ,
	GetsRF = CASE WHEN (CON.ReportOptions & 0x80) = 0x80 THEN 1 ELSE 0 END 	,
	GetsHybrid = CASE WHEN (CON.ReportOptions & 0x2000) = 0x2000 THEN 1 ELSE 0 END,
	GetsAlcohol = CASE WHEN (CON.ReportOptions & 0x10000) = 0x10000  THEN 1 ELSE 0 END,
	GetsOffenderSvcs = CASE WHEN (CON.ReportOptions & 262144) = 262144  THEN 1 ELSE 0 END,
	REPLACE(REPLACE(CON.ReportEMailAddr,',',';'),' ','') EmailAddress,
	C.CustomerID,
	C.OrganizationName		
from Protech.dbo.Contacts CON with (nolock)
JOIN Protech.dbo.Demographics D with (nolock) ON CON.DemographicId = D.DemographicId
INNER JOIN @CustomerIDs CI ON D.CustomerID = CI.CustomerID
JOIN Protech..Customers As C (NOLOCK) ON C.CustomerID = D.CustomerID
JOIN Protech..Contracts As CT (NOLOCK) ON CT.ContractID = C.ContractID

WHERE
CON.ReportEMailAddr <> ''
--AND D.StandardTimeOffset = @TimeZone 
AND C.Enabled = 'Y'	-- Make sure the Customer is Enabled
AND D.Active = 'Y'	-- Make sure the Contact's Demo is Enabled
AND (@ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND C.CustomerID = 1 ) ) 

AND (CON.ReportOptions & @ReportOptions) > 0
	

GO
/****** Object:  StoredProcedure [dbo].[rp_GetCustomers]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[rp_GetCustomers]
AS
SELECT OrganizationName, CustomerID
FROM Protech.dbo.Customers with (nolock)
ORDER BY OrganizationName
GO
/****** Object:  StoredProcedure [dbo].[rp_GetDvsrReportRecipients]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

-- 06/22/2020 - CG - Added support for Offender Devices
-- 08/11/2020 - CG - BUG 75069: Added filter for deleted Report Options


CREATE   PROCEDURE [dbo].[rp_GetDvsrReportRecipients]
	@TimeZone int,
	@ProtechOnly char(1),
	@ReportLevelType int
AS

--DECLARE
--	@TimeZone int = -300,
--	@ProtechOnly char(1) = 'N',
--	@ReportLevelType int = 7


DECLARE @ReportOptions int = (SELECT SUM([Value]) FROM Reporting.dbo.ReportOptions WHERE ReportLevelType = @ReportLevelType AND OptionType = 1 AND isDeleted = 0)
	
DECLARE @CustomerIDs Table(CustomerID int)

INSERT INTO @CustomerIDs
SELECT DISTINCT D.CustomerID FROM
 Protech..Demographics AS D (NOLOCK) --ON D.CustomerID = C.CustomerID
JOIN Protech..Offenders AS O WITH (NOLOCK) ON O.DemographicID = D.DemographicID
INNER JOIN Protech..ContractLevels As CL WITH (NOLOCK) ON CL.ContractLevelRecid = O.SupervisionLevel
WHERE CL.ReportLevelType = @ReportLevelType	
	AND D.Active = 'Y' 
	AND D.StandardTimeOffset = @TimeZone


--Recipients are contacts managed in Contract Manager


SELECT  DISTINCT 
	ContactType = 'R',
	R.TimeZone,
	Con.ContractOptions, 
	R.ContactDemoID,
	null OfficerID, 
	GetsActive = CASE WHEN (R.ReportOptions & 0x2) = 0x2  THEN 1 ELSE 0 END ,
	GetsPassive = CASE WHEN (R.ReportOptions & 0x4) = 0x4 THEN 1 ELSE 0 END ,
	GetsRF = CASE WHEN (R.ReportOptions & 0x8) = 0x8 THEN 1 ELSE 0 END 	,
	GetsHybrid = CASE WHEN (R.ReportOptions & 0x1000) = 0x1000  THEN 1 ELSE 0 END,
	GetsAlcohol = CASE WHEN (R.ReportOptions & 0x8000) = 0x8000  THEN 1 ELSE 0 END,
	GetsOffenderSvcs = CASE WHEN (R.ReportOptions & 131072) = 131072  THEN 1 ELSE 0 END,
	REPLACE(REPLACE(I.ReportEMailAddr,',',';'),' ','') EmailAddress,
	R.CustomerID,
	C.OrganizationName	
FROM 
ReportRecipients AS R (NOLOCK)
INNER JOIN @CustomerIDs CI ON R.CustomerID = CI.CustomerID
JOIN Protech..Customers As C (NOLOCK) ON C.CustomerID = R.CustomerID
LEFT JOIN Protech..Demographics AS D (NOLOCK) ON D.DemographicID = R.ContactDemoID
JOIN Protech..Contracts As Con (NOLOCK) ON Con.ContractID = C.ContractID
INNER JOIN Protech..Contacts AS I WITH (NOLOCK) ON R.ContactDemoID = I.DemographicID

WHERE
	D.Active = 'Y' AND 
	--R.TimeZone = @TimeZone AND 
	R.Enabled = 'Y' AND -- Make sure the contact record is enabled
	C.Enabled = 'Y'	AND -- Make sure the customer record is enabled  
	I.ReportEMailAddr <> '' AND
	(@ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND C.CustomerID = 1 ) ) 
	
	AND (R.ReportOptions & @ReportOptions) > 0
	
UNION 

--Contacts are managed in EM Manager

select 
	ContactType = 'C',
	D.StandardTimeOffset,
	CT.ContractOptions, 
	CON.DemographicId,
	null OfficerID,
	GetsActive = CASE WHEN (CON.ReportOptions & 0x2) = 0x2  THEN 1 ELSE 0 END ,
	GetsPassive = CASE WHEN (CON.ReportOptions & 0x4) = 0x4 THEN 1 ELSE 0 END ,
	GetsRF = CASE WHEN (CON.ReportOptions & 0x8) = 0x8 THEN 1 ELSE 0 END 	,
	GetsHybrid = CASE WHEN (CON.ReportOptions & 0x1000) = 0x1000  THEN 1 ELSE 0 END,
	GetsAlcohol = CASE WHEN (CON.ReportOptions & 0x8000) = 0x8000  THEN 1 ELSE 0 END,
	GetsOffenderSvcs = CASE WHEN (CON.ReportOptions & 131072) = 131072  THEN 1 ELSE 0 END,
	REPLACE(REPLACE(CON.ReportEMailAddr,',',';'),' ','') EmailAddress,
	C.CustomerID,
	C.OrganizationName		
from Protech.dbo.Contacts CON with (nolock)
JOIN Protech.dbo.Demographics D with (nolock) ON CON.DemographicId = D.DemographicId
INNER JOIN @CustomerIDs CI ON D.CustomerID = CI.CustomerID
JOIN Protech..Customers As C (NOLOCK) ON C.CustomerID = D.CustomerID
JOIN Protech..Contracts As CT (NOLOCK) ON CT.ContractID = C.ContractID

WHERE
CON.ReportEMailAddr <> ''
--AND D.StandardTimeOffset = @TimeZone 
AND C.Enabled = 'Y'	-- Make sure the Customer is Enabled
AND D.Active = 'Y'	-- Make sure the Contact's Demo is Enabled
AND (@ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND C.CustomerID = 1 ) ) 

AND (CON.ReportOptions & @ReportOptions) > 0
	

GO
/****** Object:  StoredProcedure [dbo].[rp_GetHeartBeatStatus]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[rp_GetHeartBeatStatus] @HeartBeatName varchar(50) 

AS

SELECT Active FROM Protech.dbo.Heartbeat WITH (NOLOCK) WHERE MachineName = @HeartBeatName


GO
/****** Object:  StoredProcedure [dbo].[rp_GetReportEventLabels]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[rp_GetReportEventLabels]

AS

SELECT LevelNumber, ReportLabel, Abbreviation, ReportLevelType, RuleName, HwRule, HwRuleBitIndex, RuleType, isDeleted, DeviceType, NonViolationStatus = CAST(ISNULL(NonViolationStatus,0) as int)
FROM dbo.EventLabels WITH (NOLOCK)
WHERE ISNULL(isDeleted,0) = 0


GO
/****** Object:  StoredProcedure [dbo].[rp_GetReportRequests]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[rp_GetReportRequests] 

AS

SELECT * FROM ReportRequests WITH (NOLOCK)

GO
/****** Object:  StoredProcedure [dbo].[rp_GetReportSchedule]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[rp_GetReportSchedule] (@ScheduleRecID int)

AS

SELECT * FROM ReportSchedules WITH (NOLOCK)
WHERE RecID = @ScheduleRecID

GO
/****** Object:  StoredProcedure [dbo].[rp_GetReportSchedules]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


-- ===========================================================================================================
-- Author		: ??
-- Create date	: ??
-- Revisions	: 09/21/2021 - Hopper 81027 - Report Scheduler is ignoring the Enabled flag
-- ===========================================================================================================


CREATE PROCEDURE [dbo].[rp_GetReportSchedules]

AS

SELECT * FROM ReportSchedules WITH (NOLOCK)
WHERE [Enabled] = 1

GO
/****** Object:  StoredProcedure [dbo].[rp_GetTimezoneList]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ===========================================================================================================
-- Author		: Carla Gibson
-- Create date	: 09/22/2021
-- Revisions	:
-- ===========================================================================================================


CREATE   PROCEDURE [dbo].[rp_GetTimezoneList]

AS

SELECT DISTINCT StandardTimeOffset, StandardTimeAbbreviation, DaylightTimeAbbreviation
FROM Protech.dbo.Timezones
WHERE StandardTimeAbbreviation IS NOT NULL
AND DaylightTimeAbbreviation IS NOT NULL
ORDER BY StandardTimeOffset DESC


GO
/****** Object:  StoredProcedure [dbo].[rp_GetUnprocessedReportSchedules]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE PROCEDURE [dbo].[rp_GetUnprocessedReportSchedules]

AS

SELECT RecID FROM ReportSchedules WITH (NOLOCK)
WHERE
(
(Convert(Date,LastRunTimeStamp) < Convert(Date,GetDate()) AND Interval = 'D')
OR
(Convert(Date,LastRunTimeStamp) < Convert(Date,GetDate()) AND Interval = 'W' AND DatePart(WEEKDAY,GetDate()) = 2)
)
AND
Convert(Time,GetDate()) > Convert(Time,RunTime)
AND
RecID not in
(select ReportScheduleRecID from dbo.ReportRequests
where Convert(Date,ReportDate) =  Convert(Date,GetDate()-1))


GO
/****** Object:  StoredProcedure [dbo].[rp_ReportRequests_Delete]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[rp_ReportRequests_Delete] 
	@RequestRecID int
AS

--Update last run date
UPDATE dbo.ReportSchedules
SET LastRunTimestamp = Getdate()
WHERE RecID in
(SELECT ReportScheduleRecID FROM dbo.ReportRequests WITH (NOLOCK) WHERE RecID = @RequestRecID)

DELETE FROM dbo.ReportRequests WHERE RecID = @RequestRecID

GO
/****** Object:  StoredProcedure [dbo].[rp_ReportRequests_Insert]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[rp_ReportRequests_Insert] 
	@ReportScheduleRecID int, 
	@ReportDate DateTime,
	@ReportCount int,
	@CustomerID int
AS

INSERT INTO [Reporting].[dbo].[ReportRequests]
           ([ReportScheduleRecID]
           ,[ReportDate]
           ,[CustomerID]
           ,[ReportCount])
VALUES
	(@ReportScheduleRecID, @ReportDate, @CustomerID, @ReportCount)


GO
/****** Object:  StoredProcedure [dbo].[rp_ReportRequests_Update]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[rp_ReportRequests_Update] 
	@RequestRecID int
AS

UPDATE
[Reporting].[dbo].[ReportRequests]
SET ReportsComplete = ReportsComplete + 1
WHERE RecID = @RequestRecID


GO
/****** Object:  StoredProcedure [dbo].[rpt_Report_RF_Positions_CaseMgmtActivity]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



/***************************************************************************
NAME:		rpt_Report_RF_Positions_CaseMgmtActivity
PARAMETERS:@DateRun, @TimeZone
DESCRIPTION:The following query pulls data for the actual DVSR 
		Query for Violations that occurred within date range 
		Union will strip out duplicate records where the violation and clear both occur withing the date range
		Query for Clears that occurred within date range
DEVELOPER: 	Shannon Manness
CREATE DATE:	04/20/2004
REVISIONS:	05/04/2004 - CG - Added 'Split Function' to split
		a comma-delimited list of CustomerIDs (@List) and
		store them in a temporary table, This will be used to 
		generate multi-Customer DVSRs
		09/13/04 - CG - Rewrote since old query doesn't work with large amounts of data
		09/16/04 - CG - Added 4th Select to Union to get Violations that cleared after @DateRun
		09/16/04 - CG - Added Code for generating a Null Record for each Customer
		09/21/04 - CG - Added check to see if Customer is Enabled (don't generate Report for disabled Customers)
		12/09/04 - CG - Rewrote to run faster
		12/15/04 - CG - Rewrote query that gets Blank records,
			Rewrote SubQuery 
		02/14/05 - CG - Added NOLOCK to all non 'Reporting' Tables
		06/13/05 - CG - Changed to support Case Management Activity Report
		10/04/06 - CG - Changed RuleName to Return 'Home Curfew Violation' if the RuleType is 'C'
***************************************************************************/
CREATE PROCEDURE [dbo].[rpt_Report_RF_Positions_CaseMgmtActivity]
	@DateRun datetime,
	@TimeZone int,
	@ProtechOnly char(1), 
	@List varchar(1000) = '', 		-- Delimited list of elements
	@SplitOn nvarchar(5) = ',' 	-- Delimiter
AS

DECLARE @EndRunDate datetime
SET @EndRunDate = DateAdd(hh, 24 + ((-300 * -1) / 60) + 1, @DateRun)

CREATE TABLE #RF_SplitResults(Results varchar(1000))	

-- 'SPLIT FUNCTION' - The following will take @List and split it into separate elements, storing each element in the #EM_SplitResults Temporary Table
IF @List <> ''
BEGIN
	DECLARE @Value nvarchar(100)	


	SELECT @Value = LTRIM(RTRIM(@List))
	BEGIN 
		WHILE (CHARINDEX(@SplitOn,@List)>0)
		BEGIN
			
			SELECT @Value = LTRIM(RTRIM(SUBSTRING(@List,1,CHARINDEX(@SplitOn,@List)-1)))
			SET @List = SUBSTRING(@List,CHARINDEX(@SplitOn,@List)+LEN(@SplitOn),LEN(@List))
			
			INSERT INTO #RF_SplitResults VALUES (@Value)
			SELECT @Value = LTRIM(RTRIM(@List))
		END
	END
	
	INSERT INTO #RF_SplitResults VALUES (@Value)
END
-- END 'SPLIT FUNCTION'
	




-- Add Blank Record for Each Customer if @List = ''
--	This allows for a blank DVSR to be generated if there are no offender violations
SELECT DISTINCT C.CustomerID, 'BlankRecord' = 'Y', 'PoName' = NULL, 'OffenderName' = NULL, 'OrganizationName' = C.OrganizationName, 
	'StandardTimeOffset' = @Timezone, 'DaylightTimeOffset' = NULL, 'PtdID' = NULL, 'BraceletID' = NULL, 'ChargingStandID1' = NULL,
	'RuleName' = NULL, 'RuleID' = NULL, 'RuleType' = NULL, 'TimeGrid' = NULL,
	'RuleID' = NULL, 'HwRule' = NULL, 'HardwareType' = NULL, 'VioTimestamp' = NULL, 
	'ClrTimestamp' = NULL, 'VioRuleStatus' = NULL, 'ClrRuleStatus' = NULL, 'RecID' = NULL, 'EndRptRecID' = NULL,
	'VioStoredTimestamp' = NULL, 'ClrStoredTimestamp' = NULL, Con.CaseMgmtSettings, 
	'NoteRecID' = NULL, 'NoteTimestamp' = NULL, 'UserName' = NULL, 'NoteStatus' = NULL, 'SuspendTimestamp' = NULL, 'Note' = NULL
FROM Protech..Demographics AS D (NOLOCK)
INNER JOIN Protech..Contacts AS PO (NOLOCK) On D.DemographicID = PO.DemographicID
LEFT JOIN Protech..Customers As C (NOLOCK) On D.CustomerID = C.CustomerID
LEFT JOIN Protech..Contracts As Con (NOLOCK) On C.ContractID = Con.ContractID
WHERE D.Active = 'Y'
AND C.Enabled = 'Y'
AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
AND PO.RcvEmDvsr = 'Y' 
AND D.StandardTimeOffset = @TimeZone
AND @List = ''

UNION


-- Add a Blank Record for Each Customer that is passed in to @List
--	This allows for each Customer to e displayed in one Report, even if there are no offender violations
SELECT 'CustomerID' = C.CustomerID, 'BlankRecord' = 'Y', 'PoName' = NULL, 'OffenderName' = NULL, 'OrganizationName' = OrganizationName, 
	'StandardTimeOffset' = @TimeZone, 'DaylightTimeOffset' = NULL, 'PtdID' = NULL, 'BraceletID' = NULL, 'ChargingStandID1' = NULL,
	'RuleName' = NULL, 'RuleID' = NULL, 'RuleType' = NULL, 'TimeGrid' = NULL,
	'RuleID' = NULL, 'HwRule' = NULL, 'HardwareType' = NULL, 'VioTimestamp' = NULL, 
	'ClrTimestamp' = NULL, 'VioRuleStatus' = NULL, 'ClrRuleStatus' = NULL, 'RecID' = NULL, 'EndRptRecID' = NULL,
	'VioStoredTimestamp' = NULL, 'ClrStoredTimestamp' = NULL, Con.CaseMgmtSettings, 
	'NoteRecID' = NULL, 'NoteTimestamp' = NULL, 'UserName' = NULL, 'NoteStatus' = NULL, 'SuspendTimestamp' = NULL, 'Note' = NULL
FROM Protech..Customers As C (NOLOCK)
LEFT JOIN Protech..Contracts As Con (NOLOCK) On C.ContractID = Con.ContractID
WHERE C.CustomerID IN (SELECT Results FROM #RF_SplitResults)
AND @List <> ''


UNION


SELECT C.CustomerID, 'BlankRecord' = 'N', PoName=RTRIM(PO.LastName)+', '+RTRIM(PO.FirstName), 
	OffenderName=RTRIM(D.Lastname)+', '+RTRIM(D.FirstName),
   	C.OrganizationName, D.StandardTimeOffset, D.DaylightTimeOffset, O.PtdID, O.BraceletID, O.ChargingStandID1,
   	'RuleName' = CASE R.RuleType WHEN 'C' THEN 'Home Curfew Violation' ELSE R.RuleName END, 
	R.RuleID, R.RuleType, R.TimeGrid, P.RuleID, P.HwRule, P.HardwareType, 
	VioTimestamp=CONVERT(Datetime, P.VioTimestamp), ClrTimestamp=CONVERT(Datetime, P.ClrTimestamp), 
	VioRuleStatus=CONVERT(Int, P.VioRuleStatus), ClrRuleStatus=CONVERT(Int, P.ClrRuleStatus), P.RecID, P.EndRptRecID,
	P.VioStoredTimestamp, P.ClrStoredTimestamp, Con.CaseMgmtSettings, 
	CM.NoteRecID, CM.NoteTimestamp, 'UserName' = U.LastName + ', ' + U.FirstName, CM.NoteStatus, CM.SuspendTimestamp, CM.Note
FROM  ( 	
		SELECT V.RecID, V.DemographicID, V.RuleID, V.HwRule, V.HardwareType, S.EndRptRecID, 
		'VioTimestamp' = V.TimeStamp, 'VioRuleStatus' = V.RuleStatus, 'VioStoredTimestamp' = V.StoredTimeStamp, 
		'ClrTimestamp' = NULL, 'ClrRuleStatus' = NULL, 'ClrStoredTimeStamp' = NULL
		FROM Report_EM_SummaryData As S WITH(INDEX(IX_Report_EM_SummaryData_EndRptRecID), NOLOCK)
		JOIN Report_EM_Positions As V WITH(INDEX(PK_Report_EM_Positions), NOLOCK) ON V.RecID = S.StartRptRecID
		WHERE S.EndRptRecID = 0

		UNION ALL

 		SELECT V.RecID, V.DemographicID, V.RuleID, V.HwRule, V.HardwareType, S.EndRptRecID, 
		'VioTimestamp' = V.TimeStamp, 'VioRuleStatus' = V.RuleStatus, 'VioStoredTimestamp' = V.StoredTimeStamp, 
		'ClrTimestamp' = C.TimeStamp, 'ClrRuleStatus' = C.RuleStatus, 'ClrStoredTimeStamp' = C.StoredTimeStamp
		FROM Report_EM_Positions As C WITH(INDEX(IDX_ReportEmPositions_StoredTimeStamp), NOLOCK)
		JOIN Report_EM_SummaryData As S WITH(INDEX(IX_Report_EM_SummaryData_EndRptRecID), NOLOCK) ON S.EndRptRecID = C.RecID
 		JOIN Report_EM_Positions As V WITH(INDEX(PK_Report_EM_Positions), NOLOCK) ON V.RecID = S.StartRptRecID
 		WHERE C.StoredTimeStamp >= @DateRun 


            ) AS P 
LEFT OUTER JOIN Protech..Rules AS R (NOLOCK) ON R.RuleID = P.RuleID
JOIN Protech..Demographics AS D ON D.DemographicID = P.DemographicID 
JOIN Protech..Customers AS C ON C.CustomerID = D.CustomerID 
JOIN Protech..Offenders AS O ON O.DemographicID = D.DemographicID 
LEFT OUTER JOIN Protech..Demographics AS PO (NOLOCK) ON PO.DemographicID = O.PoDemoID 
LEFT JOIN Protech..Contracts As Con (NOLOCK) On C.ContractID = Con.ContractID
LEFT JOIN CaseMgmtNotes As CM (NOLOCK) On CM.EventTableRecID = P.RecID AND CM.EventTableName = 'Report_EM_Positions'
LEFT JOIN Protech..Users As U (NOLOCK) On CM.UserRecID = U.UserRecID
    WHERE P.RuleID > 0 
    AND D.StandardTimeOffset = @TimeZone
    AND ( @ProtechOnly = 'N' OR ( @ProtechOnly = 'Y' AND D.CustomerID = 1 ) )
    AND ((@List <> '' AND C.CustomerID IN (SELECT Results FROM #RF_SplitResults)) OR (@List = ''))
ORDER BY C.CustomerID, OffenderName, VioTimestamp, RecID

DROP TABLE #RF_SplitResults

GO
/****** Object:  StoredProcedure [dbo].[usp_binarySearchReport_MTDPositions]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROC [dbo].[usp_binarySearchReport_MTDPositions]
( @StartTime DATETIME, @EndTime DATETIME)
AS
BEGIN
-- ══════════════════════════════════════════════════════════════
--                Binary Search Example for SQL Server
--
-- This example demonstrates how to use binary search to efficiently
-- find records within a time range when:
-- 1. The table has a clustered index on an identity column (PositionRecID)
-- 2. The timestamp column (StoredTimeStamp) is not indexed or poorly indexed
-- 3. The table is very large (millions/billions of rows)
--
-- The binary search finds the RecID boundaries for your time range,
-- then uses those boundaries for efficient data retrieval.
-- ══════════════════════════════════════════════════════════════

-- ════════════════════════════
-- Setup: Define your time range
-- ════════════════════════════
--DECLARE @StartTime DATETIME = '2025-01-15 10:00:00';  -- Your start time
--DECLARE @EndTime DATETIME = '2025-01-15 11:00:00';    -- Your end time

-- Variables for binary search
DECLARE @MinPositionRecID BIGINT;  -- Will hold the first RecID >= StartTime
DECLARE @MaxPositionRecID BIGINT;  -- Will hold the last RecID < EndTime
DECLARE @Low BIGINT, @High BIGINT, @Mid BIGINT;
DECLARE @MidTime DATETIME;

-- ════════════════════════════════════════════════
-- Step 1: Get the table's RecID range
-- ════════════════════════════════════════════════
SELECT @Low = MIN(PositionRecID), @High = MAX(PositionRecID) 
FROM Reporting.dbo.Report_MTDPositions WITH (NOLOCK);

PRINT 'Table range: ' + CAST(@Low AS VARCHAR) + ' to ' + CAST(@High AS VARCHAR);

-- ════════════════════════════════════════════════
-- Step 2: Binary Search for Lower Bound
-- Find the first PositionRecID where StoredTimeStamp >= @StartTime
-- ════════════════════════════════════════════════
PRINT '';
PRINT '=== Finding Lower Bound (first record >= ' + CONVERT(VARCHAR, @StartTime, 120) + ') ===';

-- Store initial range for reuse
DECLARE @InitialLow BIGINT = @Low;
DECLARE @InitialHigh BIGINT = @High;

WHILE @Low <= @High
BEGIN
    SET @Mid = (@Low + @High) / 2;
    
    -- Get the timestamp for this RecID (using PK index hint)
    SELECT TOP 1 @MidTime = StoredTimeStamp 
    FROM Reporting.dbo.Report_MTDPositions WITH (NOLOCK)--, INDEX(IX_Report_MTDPositions))
    WHERE PositionRecID >= @Mid
    ORDER BY PositionRecID;
    
    PRINT 'Checking RecID ' + CAST(@Mid AS VARCHAR) + ': Time = ' + 
          ISNULL(CONVERT(VARCHAR, @MidTime, 120), 'NULL');
    
    IF @MidTime IS NULL OR @MidTime < @StartTime
        SET @Low = @Mid + 1;  -- Look in the upper half
    ELSE
    BEGIN
        SET @MinPositionRecID = @Mid;  -- This could be our answer
        SET @High = @Mid - 1;          -- But check if there's a smaller one
    END
END

PRINT 'Lower bound found: RecID = ' + ISNULL(CAST(@MinPositionRecID AS VARCHAR), 'NULL');

-- ════════════════════════════════════════════════
-- Step 3: Binary Search for Upper Bound
-- Find the last PositionRecID where StoredTimeStamp < @EndTime
-- ════════════════════════════════════════════════
-- Reset the search range
SET @Low = @InitialLow;
SET @High = @InitialHigh;

PRINT '';
PRINT '=== Finding Upper Bound (last record < ' + CONVERT(VARCHAR, @EndTime, 120) + ') ===';

WHILE @Low <= @High
BEGIN
    SET @Mid = (@Low + @High) / 2;
    
    -- Get the timestamp for this RecID (using PK index hint)
    SELECT TOP 1 @MidTime = StoredTimeStamp 
    FROM Reporting.dbo.Report_MTDPositions WITH (NOLOCK)--, INDEX(IX_Report_MTDPositions))
    WHERE PositionRecID >= @Mid
    ORDER BY PositionRecID DESC;
    
    PRINT 'Checking RecID ' + CAST(@Mid AS VARCHAR) + ': Time = ' + 
          ISNULL(CONVERT(VARCHAR, @MidTime, 120), 'NULL');
    
    IF @MidTime IS NULL
        SET @High = @Mid - 1;  -- Look in the lower half
    ELSE IF @MidTime < @EndTime
    BEGIN
        SET @MaxPositionRecID = @Mid;  -- This could be our answer
        SET @Low = @Mid + 1;           -- But check if there's a larger one
    END
    ELSE
        SET @High = @Mid - 1;  -- Look in the lower half
END

PRINT 'Upper bound found: RecID = ' + ISNULL(CAST(@MaxPositionRecID AS VARCHAR), 'NULL');

-- ════════════════════════════════════════════════
-- Step 4: Use the boundaries to query data
-- ════════════════════════════════════════════════
PRINT '';
PRINT '=== Final Query Using Binary Search Results ===';

-- Check if we found valid boundaries
IF @MinPositionRecID IS NULL OR @MaxPositionRecID IS NULL
BEGIN
    PRINT 'ERROR: Could not find valid RecID boundaries for the given time range';
    RETURN;
END

PRINT 'RecID Range: ' + CAST(@MinPositionRecID AS VARCHAR) + ' to ' + CAST(@MaxPositionRecID AS VARCHAR);

-- Now you can efficiently query using the RecID range!
-- The PK index makes the BETWEEN very fast, and we add timestamp filter for accuracy
SELECT 
    COUNT(*) as RecordCount,
    MIN(StoredTimeStamp) as FirstRecord,
    MAX(StoredTimeStamp) as LastRecord
FROM Reporting.dbo.Report_MTDPositions WITH (NOLOCK)--, INDEX(IX_Report_MTDPositions))
WHERE PositionRecID BETWEEN @MinPositionRecID AND @MaxPositionRecID
  AND StoredTimeStamp >= @StartTime 
  AND StoredTimeStamp < @EndTime;

-- ════════════════════════════════════════════════
-- Example: Aggregate by minute using the boundaries
-- ════════════════════════════════════════════════
SELECT 
    DATEADD(MINUTE, DATEDIFF(MINUTE, 0, StoredTimeStamp), 0) AS MinuteBucket,
    COUNT(*) AS EventCount
FROM Reporting.dbo.Report_MTDPositions WITH (NOLOCK)--, INDEX(IX_Report_MTDPositions))
WHERE PositionRecID BETWEEN @MinPositionRecID AND @MaxPositionRecID
  AND StoredTimeStamp >= @StartTime 
  AND StoredTimeStamp < @EndTime
GROUP BY DATEADD(MINUTE, DATEDIFF(MINUTE, 0, StoredTimeStamp), 0)
ORDER BY MinuteBucket;

-- ════════════════════════════════════════════════
-- Performance Comparison (Optional)
-- ════════════════════════════════════════════════
/*
-- Compare with traditional approach (WARNING: This might be very slow!)
SELECT COUNT(*) as RecordCount
FROM MTD_01.dbo.MTD_Positions WITH (NOLOCK)
WHERE StoredTimeStamp >= @StartTime 
  AND StoredTimeStamp < @EndTime;

-- The binary search approach is typically 10-100x faster on large tables
-- because it uses the clustered index on PositionRecID efficiently
*/
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getIdentityValuesReporting]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================

-- Author:		Uche Okoye

-- Create date: 07-03-2018

-- Monitors identity values to prevent overflow

-- =============================================

CREATE PROCEDURE [dbo].[usp_getIdentityValuesReporting]

AS

BEGIN

SET NOCOUNT ON; 

	INSERT INTO [Utilities].[dbo].[Reporting_IdentityValues]

		([TableName]

		,[ColumnName]

		,[ColumnType]

		,[Precision]

		,[CurrentIdentityValue]

		,[PercentUsed])

		

                   

     SELECT  

        --DB_NAME() as database_name,

		OBJECT_NAME(c.object_id) as table_name,  

		c.name as column_name,                     

        t.name as column_type,

        c.precision,


        IDENT_CURRENT(OBJECT_NAME(c.object_id)) as current_identity_value,

        (IDENT_CURRENT(OBJECT_NAME(c.object_id)) / 

        CASE

			WHEN    t.name = 'bigint'

				THEN    9223372036854775807.00

            WHEN    t.name = 'int'

                THEN    2147483647.00

			WHEN    t.name = 'smallint'

                THEN    32767.00

            WHEN    t.name = 'tinyint'

                THEN    255.00

            WHEN    t.name = 'numeric'                      

                THEN    POWER(10.00, c.precision) - 1

            WHEN    t.name = 'decimal'

                THEN    POWER(10.00, c.precision) - 1

            WHEN    t.name = 'money'

                THEN    922337203685477.5807

            WHEN    t.name = 'smallmoney'

                THEN    214748.3647

            ELSE    1.00

        END) * 100 AS percent_used

     FROM    sys.columns c

         INNER JOIN sys.types t

		 ON c.system_type_id = t.system_type_id                       

     WHERE   c.is_identity = 1

         AND OBJECTPROPERTY(c.object_id, 'IsUserTable') = 1 AND OBJECT_NAME(c.object_id) <> 'dtproperties'

     order by table_name 

     

END


GO
/****** Object:  StoredProcedure [dbo].[usp_spaceused]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[usp_spaceused] --- 2003/05/19 14:00
@objname nvarchar(776) = null,		-- The object we want size on.
@updateusage varchar(5) = false		-- Param. for specifying that
					-- usage info. should be updated.
as

declare @id	int			-- The object id that takes up space
		,@type	character(2) -- The object type.
		,@pages	bigint			-- Working variable for size calc.
		,@dbname sysname
		,@dbsize bigint
		,@logsize bigint
		,@reservedpages  bigint
		,@usedpages  bigint
		,@rowCount bigint

/*
**  Check to see if user wants usages updated.
*/

if @updateusage is not null
	begin
		select @updateusage=lower(@updateusage)

		if @updateusage not in ('true','false')
			begin
				raiserror(15143,-1,-1,@updateusage)
				return(1)
			end
	end
/*
**  Check to see that the objname is local.
*/
if @objname IS NOT NULL
begin

	select @dbname = parsename(@objname, 3)

	if @dbname is not null and @dbname <> db_name()
		begin
			raiserror(15250,-1,-1)
			return (1)
		end

	if @dbname is null
		select @dbname = db_name()

	/*
	**  Try to find the object.
	*/
	SELECT @id = object_id, @type = type FROM sys.objects WHERE object_id = object_id(@objname)

	-- Translate @id to internal-table for queue
	IF @type = 'SQ'
		SELECT @id = object_id FROM sys.internal_tables WHERE parent_id = @id and internal_type = 201 --ITT_ServiceQueue

	/*
	**  Does the object exist?
	*/
	if @id is null
		begin
			raiserror(15009,-1,-1,@objname,@dbname)
			return (1)
		end

	-- Is it a table, view or queue?
	IF @type NOT IN ('U ','S ','V ','SQ','IT')
	begin
		raiserror(15234,-1,-1)
		return (1)
	end
end

/*
**  Update usages if user specified to do so.
*/

if @updateusage = 'true'
	begin
		if @objname is null
			dbcc updateusage(0) with no_infomsgs
		else
			dbcc updateusage(0,@objname) with no_infomsgs
		print ' '
	end

set nocount on

/*
**  If @id is null, then we want summary data.
*/
if @id is null
begin
	select @dbsize = sum(convert(bigint,case when status & 64 = 0 then size else 0 end))
		, @logsize = sum(convert(bigint,case when status & 64 <> 0 then size else 0 end))
		from dbo.sysfiles

	select @reservedpages = sum(a.total_pages),
		@usedpages = sum(a.used_pages),
		@pages = sum(
				CASE
					-- XML-Index and FT-Index internal tables are not considered "data", but is part of "index_size"
					When it.internal_type IN (202,204,211,212,213,214,215,216) Then 0
					When a.type <> 1 Then a.used_pages
					When p.index_id < 2 Then a.data_pages
					Else 0
				END
			)
	from sys.partitions p join sys.allocation_units a on p.partition_id = a.container_id
		left join sys.internal_tables it on p.object_id = it.object_id

	/* unallocated space could not be negative */
	select 
		database_name = db_name(),
		/*database_size = ltrim(str((convert (dec (15,2),@dbsize) + convert (dec (15,2),@logsize)) 
			* 8192 / 1048576,15,2) + ' MB'),*/
		 database_sizeGB = ltrim(str((convert (dec (15,2),@dbsize) + convert (dec (15,2),@logsize)) 
			* 8192 / (1048576 * 1024.),15,2) + ' GB'),	
		/*'unallocated space' = ltrim(str((case when @dbsize >= @reservedpages then
			(convert (dec (15,2),@dbsize) - convert (dec (15,2),@reservedpages)) 
			* 8192 / 1048576 else 0 end),15,2) + ' MB'),*/
		'unallocated space GB' = ltrim(str((case when @dbsize >= @reservedpages then
			(convert (dec (15,2),@dbsize) - convert (dec (15,2),@reservedpages)) 
			* 8192 / (1048576 * 1024.) else 0 end),15,2) + ' GB')

	/*
	**  Now calculate the summary data.
	**  reserved: sum(reserved) where indid in (0, 1, 255)
	** data: sum(data_pages) + sum(text_used)
	** index: sum(used) where indid in (0, 1, 255) - data
	** unused: sum(reserved) - sum(used) where indid in (0, 1, 255)
	*/
	select
		--reserved = ltrim(str(@reservedpages * 8192 / 1024.,15,0) + ' KB'),
		reservedGB = ltrim(str(@reservedpages * 8192 / (1024. * 1024. * 1024.),15,2) + ' GB'),
		--data = ltrim(str(@pages * 8192 / 1024.,15,0) + ' KB'),
		dataGB = ltrim(str(@pages * 8192 / (1024. * 1024. * 1024.),15,2) + ' GB'),
		--index_size = ltrim(str((@usedpages - @pages) * 8192 / 1024.,15,0) + ' KB'),
		index_sizeGB = ltrim(str((@usedpages - @pages) * 8192 / (1024. * 1024. * 1024.),15,2) + ' GB'),
		--unused = ltrim(str((@reservedpages - @usedpages) * 8192 / 1024.,15,0) + ' KB'),
		unusedGB = ltrim(str((@reservedpages - @usedpages) * 8192 / (1024. * 1024. * 1024.),15,2) + ' GB')
end

/*
**  We want a particular object.
*/
else
begin
	/*
	** Now calculate the summary data. 
	*  Note that LOB Data and Row-overflow Data are counted as Data Pages.
	*/
	SELECT 
		@reservedpages = SUM (reserved_page_count),
		@usedpages = SUM (used_page_count),
		@pages = SUM (
			CASE
				WHEN (index_id < 2) THEN (in_row_data_page_count + lob_used_page_count + row_overflow_used_page_count)
				ELSE lob_used_page_count + row_overflow_used_page_count
			END
			),
		@rowCount = SUM (
			CASE
				WHEN (index_id < 2) THEN row_count
				ELSE 0
			END
			)
	FROM sys.dm_db_partition_stats
	WHERE object_id = @id;

	/*
	** Check if table has XML Indexes or Fulltext Indexes which use internal tables tied to this table
	*/
	IF (SELECT count(*) FROM sys.internal_tables WHERE parent_id = @id AND internal_type IN (202,204,211,212,213,214,215,216)) > 0 
	BEGIN
		/*
		**  Now calculate the summary data. Row counts in these internal tables don't 
		**  contribute towards row count of original table.
		*/
		SELECT 
			@reservedpages = @reservedpages + sum(reserved_page_count),
			@usedpages = @usedpages + sum(used_page_count)
		FROM sys.dm_db_partition_stats p, sys.internal_tables it
		WHERE it.parent_id = @id AND it.internal_type IN (202,204,211,212,213,214,215,216) AND p.object_id = it.object_id;
	END

	SELECT 
		table_name = OBJECT_NAME (@id),
		rows = convert (char(11), @rowCount),
		--reserved = LTRIM (STR (@reservedpages * 8, 15, 0) + ' KB'),
		reservedGB = LTRIM (STR (@reservedpages * 8/(1024. * 1024.), 15, 2) + ' GB'),
		--data = LTRIM (STR (@pages * 8, 15, 0) + ' KB'),
		dataGB = LTRIM (STR (@pages * 8/(1024. * 1024.), 15, 2) + ' GB'),
		--index_size = LTRIM (STR ((CASE WHEN @usedpages > @pages THEN (@usedpages - @pages) ELSE 0 END) * 8, 15, 0) + ' KB'),
		index_sizeGB = LTRIM (STR ((CASE WHEN @usedpages > @pages THEN (@usedpages - @pages) ELSE 0 END) * 8/(1024. * 1024.), 15, 2) + ' GB'),
		--unused = LTRIM (STR ((CASE WHEN @reservedpages > @usedpages THEN (@reservedpages - @usedpages) ELSE 0 END) * 8, 15, 0) + ' KB'),
		unusedGB = LTRIM (STR ((CASE WHEN @reservedpages > @usedpages THEN (@reservedpages - @usedpages) ELSE 0 END) * 8/(1024. * 1024.), 15, 2) + ' GB')


end


return (0) -- sp_spaceused

GO
/****** Object:  StoredProcedure [dbo].[wr_ViolationByRule_OneTime]    Script Date: 9/3/2025 6:46:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[wr_ViolationByRule_OneTime]
AS 
SET NOCOUNT ON
BEGIN
SELECT [DateSent],OrganizationName,OffenderLastName,OffenderFirstName,RuleName,RuleType,HWRule,RuleStatus,
       HardwareType,DemographicID,DeviceStatus,ID1,ID2,CustomID1Label,CustomID2Label,StandardTimeOffset,
       DaylightTimeOffset,RuleOptions,OfficerFirstName,OfficerLastName,TimeStamp,DeviceID
FROM ViolationByType  
END  
GO
USE [master]
GO
ALTER DATABASE [Reporting] SET  READ_WRITE 
GO
