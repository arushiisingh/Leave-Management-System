if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_EmpDetails_tbl_City]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_EmpDetails] DROP CONSTRAINT FK_tbl_EmpDetails_tbl_City
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_City_tbl_Country]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_CityDetails] DROP CONSTRAINT FK_tbl_City_tbl_Country
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_EmpDetails_tbl_Country]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_EmpDetails] DROP CONSTRAINT FK_tbl_EmpDetails_tbl_Country
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_State_tbl_Country]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_State] DROP CONSTRAINT FK_tbl_State_tbl_Country
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_EmpDetails_tbl_Dept]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_EmpDetails] DROP CONSTRAINT FK_tbl_EmpDetails_tbl_Dept
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_ApplicationData_tbl_LeaveType]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_ApplicationData] DROP CONSTRAINT FK_tbl_ApplicationData_tbl_LeaveType
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_LeaveDetails_tbl_LeaveType]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_LeaveDetails] DROP CONSTRAINT FK_tbl_LeaveDetails_tbl_LeaveType
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_City_tbl_State]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_CityDetails] DROP CONSTRAINT FK_tbl_City_tbl_State
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_EmpDetails_tbl_State]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_EmpDetails] DROP CONSTRAINT FK_tbl_EmpDetails_tbl_State
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_ApplicationData_tbl_Status]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_ApplicationData] DROP CONSTRAINT FK_tbl_ApplicationData_tbl_Status
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_City_tbl_Status]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_CityDetails] DROP CONSTRAINT FK_tbl_City_tbl_Status
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_Country_tbl_Status]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_Country] DROP CONSTRAINT FK_tbl_Country_tbl_Status
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_State_tbl_Status]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_State] DROP CONSTRAINT FK_tbl_State_tbl_Status
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_ApplicationData_tbl_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_ApplicationData] DROP CONSTRAINT FK_tbl_ApplicationData_tbl_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_EmpDetails_tbl_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_EmpDetails] DROP CONSTRAINT FK_tbl_EmpDetails_tbl_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tbl_LeaveDetails_tbl_Users]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tbl_LeaveDetails] DROP CONSTRAINT FK_tbl_LeaveDetails_tbl_Users
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spAddEmployee]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spAddEmployee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spAddLeaveApplication]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spAddLeaveApplication]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spAddLeaveDetails]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spAddLeaveDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spAdminChangePassword]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spAdminChangePassword]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spAdminLogin]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spAdminLogin]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spCheckAdminOldPassword]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spCheckAdminOldPassword]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spCheckAppNoInLeaveDetails]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spCheckAppNoInLeaveDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spCheckEmpOldPassword]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spCheckEmpOldPassword]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spCheckLogin]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spCheckLogin]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spEmpChangePassword]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spEmpChangePassword]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spEmpLogin]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spEmpLogin]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetApplication]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetApplication]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetApplicationByUserName]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetApplicationByUserName]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetApplicationLeave]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetApplicationLeave]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetApplicationStatus]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetApplicationStatus]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetBalanceDays]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetBalanceDays]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetEmpDetails]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetEmpDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetLeaveType]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetLeaveType]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetNextDayEmpList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetNextDayEmpList]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetPresentDayEmpList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetPresentDayEmpList]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetTotalBalanceDays]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetTotalBalanceDays]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetUserByUserName]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetUserByUserName]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spInsertApplication]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsertApplication]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spInsertApplicationForm]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsertApplicationForm]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spRegisterEmpForm]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spRegisterEmpForm]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spRegisterEmpUserForm]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spRegisterEmpUserForm]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spUpdataEmployee]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdataEmployee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spUpdateApplicationData]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdateApplicationData]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[test]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[test]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_AdminLogin]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_AdminLogin]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_ApplicationData]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_ApplicationData]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_CityDetails]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_CityDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_Country]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_Country]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_Dept]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_Dept]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_Designation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_Designation]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_EmpDetails]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_EmpDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_LeaveDetails]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_LeaveDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_LeaveType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_LeaveType]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_Sanction]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_Sanction]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_State]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_State]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_Status]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_Status]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tbl_Users]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tbl_Users]
GO

CREATE TABLE [dbo].[tbl_AdminLogin] (
	[AdminLoginId] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Password] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_ApplicationData] (
	[ApplicationNo] [int] IDENTITY (400, 1) NOT NULL ,
	[UserName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[LeaveTypeId] [int] NOT NULL ,
	[StartingDate] [datetime] NOT NULL ,
	[EndingDate] [datetime] NOT NULL ,
	[ApplyingDate] [datetime] NULL ,
	[NoOfDays] [int] NOT NULL ,
	[LeavePurpose] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ApplicationStatusId] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_CityDetails] (
	[CityId] [int] IDENTITY (300, 1) NOT NULL ,
	[CityName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CityDescription] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[StateId] [int] NOT NULL ,
	[CountryId] [int] NOT NULL ,
	[StatusId] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_Country] (
	[CountryId] [int] IDENTITY (100, 1) NOT NULL ,
	[CountryName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CountryDescription] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[StatusId] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_Dept] (
	[DeptId] [int] IDENTITY (600, 1) NOT NULL ,
	[DeptName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DeptDescription] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_Designation] (
	[DesigId] [int] IDENTITY (700, 1) NOT NULL ,
	[DesigType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DesigDesc] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_EmpDetails] (
	[EmpId] [int] IDENTITY (800, 1) NOT NULL ,
	[EmpName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EmpDesigName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DeptId] [int] NULL ,
	[Address] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CityId] [int] NULL ,
	[StateId] [int] NULL ,
	[CountryId] [int] NULL ,
	[EmailId] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ContactNo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[UserName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_LeaveDetails] (
	[LeaveDetailsId] [int] IDENTITY (1000, 1) NOT NULL ,
	[LeaveTypeId] [int] NOT NULL ,
	[UsedLeaves] [int] NOT NULL ,
	[BalanceLeave] [int] NOT NULL ,
	[UserName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ApplicationNo] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_LeaveType] (
	[LeaveTypeId] [int] NOT NULL ,
	[LeaveTypeName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[LeaveTypeDesg] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NoOfLeavesPerYear] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_Sanction] (
	[SanctionNo] [int] IDENTITY (800, 1) NOT NULL ,
	[SanctionDate] [datetime] NOT NULL ,
	[SanctionStatus] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[UserName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_State] (
	[StateId] [int] IDENTITY (200, 1) NOT NULL ,
	[StateName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[StateDescription] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CountryId] [int] NOT NULL ,
	[StatusId] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_Status] (
	[StatusId] [int] IDENTITY (1, 1) NOT NULL ,
	[StatusName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[StatusDescription] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tbl_Users] (
	[UserName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Password] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Role] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create PROCEDURE dbo.spAddEmployee
(
@UserName varchar(50),
@Password varchar(30),
@EmpName varchar(30),
@DeptId int,
@ContactNo varchar(15),
@Address varchar(200),
@CityId int,
@StateId int,
@CountryId int,
@EmailId varchar (30),
@output int output,
@DesigName varchar(50),
@Role varchar(50)
) 
	
AS
	declare @Errorcode int
	if not exists(select * from tbl_Users where UserName=@UserName)
	begin
	begin tran
	insert into tbl_Users values(@UserName,@Password,@Role)
	insert into tbl_EmpDetails values(@EmpName,@DesigName,@DeptId,@Address,@CityId,@StateId,
	@CountryId,@EmailId,@ContactNo,@UserName)
	set @output=1
	select @Errorcode=@@Error 
	if @Errorcode<>0 Goto Error
	Commit Tran
	end
	else	
	begin
	set @output=-2
	end
	Error:
if @Errorcode<>0
Begin
	Print 'Login Failed'
	RollBack Tran
 End
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spAddLeaveApplication 	
	(
	@LeaveTypeId int,
	@UserName varchar(50),
	@StartingDate datetime,
	@EndingDate datetime,
	@ApplyingDate datetime,
	@NoOfDays int,
	@LeavePurpose varchar(500),
	@StatusId int
	)
	
AS
	insert into tbl_ApplicationData values(@UserName,@LeaveTypeId,@StartingDate,@EndingDate,@ApplyingDate,@NoOfDays,@LeavePurpose,@StatusId)
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spAddLeaveDetails 	
	(
	@UserName varchar(50),
	@ApplicationNo int,
	@AppStatusId int,
	@BalanceLeaves int,
	@LeaveTypeId int
	)
	
AS
	declare @usedLeaves int
	declare @TotalLeaves int
	set @TotalLeaves=(select NoOfLeavesPerYear from tbl_LeaveType where LeaveTypeId=@LeaveTypeId)
	 set @usedLeaves=@TotalLeaves-@BalanceLeaves
	 
	 insert into tbl_LeaveDetails values(@LeaveTypeId,@usedLeaves,@BalanceLeaves,@UserName,@ApplicationNo)
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create PROCEDURE dbo.spAdminChangePassword(@AdminLoginId varchar(30),@Password varchar(30)) 
	
AS
	update tbl_adminLogin set Password=@Password where AdminLoginId=@AdminLoginId
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create PROCEDURE dbo.spAdminLogin(@AdminLoginId varchar(30),@Password varchar(30)) 
	
AS
	select * from tbl_AdminLogin where AdminLoginId=@AdminLoginId and Password=@Password
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create PROCEDURE dbo.spCheckAdminOldPassword(@AdminLoginId varchar(30),@Password varchar(30)) 
	
AS
	select * from tbl_AdminLogin where AdminLoginId=@AdminLoginId and Password=@Password 
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spCheckAppNoInLeaveDetails(@ApplicationNo int) 
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select * from tbl_LeaveDetails where ApplicationNo=@ApplicationNo
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spCheckEmpOldPassword(@UserName varchar(30),@Password varchar(30))   
   
AS  
 select * from tbl_Users where UserName=@UserName and Password=@Password   
 RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE spCheckLogin
(
@username varchar(30),
@pwd varchar(10)
)
AS
select * from tblUsers where username=@username and password=@pwd
	/* SET NOCOUNT ON */ 
	RETURN
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spEmpChangePassword(@UserName varchar(30),@Password varchar(30))   
   
AS  
 update tbl_Users set Password=@Password where UserName=@UserName  
 RETURN  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spEmpLogin(@UserName varchar(30),@Password varchar(30))   
   
AS  
 select * from tbl_Users where UserName=@UserName and Password=@Password  
 RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE spGetApplication
@applicationno int

AS

select * from tblApplicationData where applicationno=@applicationno
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE procedure spGetApplicationByUserName

@username varchar(50)

as 
select * from tblApplicationData where username=@username
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spGetApplicationLeave
(
@ApplicationNo int
)
	
AS
	select * from tbl_ApplicationData a,tbl_Status s,tbl_LeaveType l where a.ApplicationStatusId=s.StatusId and a.LeaveTypeId=l.LeaveTypeId and a.ApplicationNo=@ApplicationNo
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spGetApplicationStatus (@UserName varchar(50))
	
AS
	select * from tbl_ApplicationData a,tbl_Status s,tbl_LeaveType l where a.ApplicationStatusId=s.StatusId and a.LeaveTypeId=l.LeaveTypeId and a.UserName=@UserName
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spGetBalanceDays   
 (  
 @LeaveTypeId int,  
 @UserName varchar(50),  
 @Balanceleaves int output  
 )  
AS  
begin
declare @NoOfLeaves int  
declare @LeaveDetailsId int  
declare @ErrorCode int  
declare @Usedleaves int  
set @NoOfLeaves=(select NoOfLeavesPeryear from tbl_LeaveType where LeaveTypeId=@LeaveTypeId)  
set @LeaveDetailsId=(select isnull(max(LeaveDetailsId),-1) from tbl_leaveDetails where LeaveTypeId=@LeaveTypeId and UserName=@UserName)  
if(@LeaveDetailsId<>-1)
begin  
set @Usedleaves=(select UsedLeaves from tbl_leaveDetails where LeaveDetailsId=@LeaveDetailsId)  
set @Balanceleaves=(@NoOfLeaves-@Usedleaves)
end  
else if(@LeaveDetailsId=-1)
begin  
set @Balanceleaves=@NoOfLeaves 
end  
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spGetEmpDetails(
@UserName varchar(50))
as
begin
select * from tbl_Users u,tbl_EmpDetails e where u.UserName=e.UserName and u.UserName=@UserName
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spGetLeaveType 
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select * from tbl_LeaveType
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spGetNextDayEmpList 
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select * from tbl_EmpDetails where UserName not in (select userName from tbl_ApplicationData where ApplicationStatusId=4 and startingDate<getdate()+1 and EndingDate>getdate()+1)
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spGetPresentDayEmpList 
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select * from tbl_EmpDetails where UserName not in (select userName from tbl_ApplicationData where ApplicationStatusId=4 and startingDate<getdate() and EndingDate>getdate())
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spGetTotalBalanceDays 
	(	
	@UserName varchar(50),
	@CasualBalanceLeaves int output,
	@EarnBalanceLeaves int output,
	@HalfPaidBalanceLeaves int output,
	@MedicalBalanceLeaves int output
	)
AS
declare @NoOfLeaves int
declare @LeaveDetailsId int
declare @ErrorCode int
declare @Usedleaves int
declare @i int
set @i=1
while(@i<5)
begin
set @NoOfLeaves=(select NoOfLeavesPeryear from tbl_LeaveType where LeaveTypeId=@i)
set @LeaveDetailsId=(select max(LeaveDetailsId) from tbl_leaveDetails where LeaveTypeId=@i and UserName=@UserName)

if(@LeaveDetailsId is null)
begin 
set @LeaveDetailsId=0
if(@i=1)
set @CasualBalanceLeaves=@NoOfLeaves
if(@i=2)
set @EarnBalanceLeaves=@NoOfLeaves
if(@i=3)
set @HalfPaidBalanceLeaves=@NoOfLeaves
if(@i=4)
set @MedicalBalanceLeaves=@NoOfLeaves

end
else
begin
set @Usedleaves=(select UsedLeaves from tbl_leaveDetails where LeaveDetailsId=@LeaveDetailsId)
if(@i=1)
set @CasualBalanceLeaves=@NoOfLeaves-@Usedleaves
if(@i=2)
set @EarnBalanceLeaves=@NoOfLeaves-@Usedleaves
if(@i=3)
set @HalfPaidBalanceLeaves=@NoOfLeaves-@Usedleaves
if(@i=4)
set @MedicalBalanceLeaves=@NoOfLeaves-@Usedleaves

end
set @i=@i+1
end

	
	RETURN
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE procedure spGetUserByUserName

@username varchar(50)

as 
select 
e.username,
e1.applicationno,
e1.designation,
e1.leavetype,
e1.startingdate,
e1.endingdate,
e1.applyingdate,
e1.deptname,
e1.noofdays,
e1.purpose,
e1.applicationdate,
e1.applicationstatus
from 
tblEmpDetails e,  tblApplicationData e1
where 
e.username=e1.username and
e.username=@username
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE spInsertApplication

@username varchar(50),
@desg varchar(50),
@leavetype varchar(50),
@startdate datetime,
@enddate datetime,
@applydate datetime,
@deptname varchar(50),
@noofdays int,
@purpose varchar(50)

AS

insert into tblApplicationData (username, designation, leavetype, startingdate, endingdate, applyingdate, deptname, noofdays, purpose, applicationdate, applicationstatus) 
values(@username, @desg, @leavetype, @startdate, @enddate, @applydate, @deptname, @noofdays, @purpose, getdate(), 'Not Approved')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE spInsertApplicationForm

@scantionstatus varchar(50),
@username varchar(50)

AS

insert into tblScanction (sanctiondate, scantionstatus, username)
values(getdate(), @scantionstatus, @username)

update tblApplicationData set applicationstatus='Approved' where username=@username
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE spRegisterEmpForm

@empname varchar(50), @desg varchar(50), @deptname varchar(50), @address varchar(50), @city varchar(50),
@state varchar(50), @country varchar(50), @email varchar(50), @phone varchar(50), @username varchar(50)

AS

insert into tblEmpDetails (empname, empdesg, deptname, address, city, state, country, email, phone, username)
values(@empname, @desg , @deptname, @address, @city, @state, @country, @email, @phone, @username)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE spRegisterEmpUserForm

@username varchar(50), @password varchar(50)

AS

insert into tblUsers (username, password, role) values (@username, @password, 'User' )
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spUpdataEmployee 
	(
@UserName varchar(50),
@ContactNo varchar(15),
@Address varchar(200),
@CityId int,
@StateId int,
@CountryId int,
@EmailId varchar (30),
@DeptId int,
@Desig varchar(50),
@EmpName varchar(50)
)
	
AS
	update tbl_EmpDetails set ContactNo=@ContactNo,Address=@Address,CityId=@CityId,
	StateId=@StateId,CountryId=@CountryId,EmailId=@EmailId,EmpDesigName=@Desig,DeptId=@DeptId,EmpName=@EmpName 
	where UserName=@UserName
	RETURN
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.spUpdateApplicationData 	
	(
	@StausId int,
	@ApplicationNo int
	)
	
AS
	update tbl_ApplicationData set ApplicationStatusId=@StausId where ApplicationNo=@ApplicationNo
	
	RETURN

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE procedure test(
@LeaveTypeId int,
@UserName varchar(50),
@Balanceleaves int output)
as
begin
declare @l int
set @l=(select max(leavedetailsid) from tbl_leavedetails where Leavetypeid=@LeaveTypeId and UserName=@UserName)
if(@l is null)
print @l
else if(@l is not null)
print @l
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

