USE [HunterDatabase]
GO
/****** 对象:  UserDefinedFunction [Fn].[PadLeft]    脚本日期: 09/10/2014 15:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	补全字符串（左）。
*/

CREATE Function [Fn].[PadLeft](
	@str As Varchar(Max),
	@length As Int = 2,
	@char As Char(1) = '0'
)
Returns Varchar(Max)
As
Begin
	If (@char Is Null Or @char = '') Begin
		Set @char = '0'
	End

	Declare @result As Varchar(Max); Set @result = @str;

	Declare @strLen As Int; Set @strLen = Len(@str);

	Declare @strDiff As Int; Set @strDiff = @length - @strLen;

	If (@strDiff > 0) Begin
		Declare @loopIndex As Int; Set @loopIndex = 0

		While (@loopIndex < @strDiff) Begin

			Set @result = @char + @result			

			Set @loopIndex = @loopIndex + 1

		End
	End

	Return @result
End
GO
/****** 对象:  UserDefinedFunction [Fn].[PadRight]    脚本日期: 09/10/2014 15:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	补全字符串（右）。
*/

Create Function [Fn].[PadRight](
	@str As Varchar(Max),
	@length As Int = 2,
	@char As Char(1) = '0'
)
Returns Varchar(Max)
As
Begin
	If (@char Is Null Or @char = '') Begin
		Set @char = '0'
	End

	Declare @result As Varchar(Max); Set @result = @str;

	Declare @strLen As Int; Set @strLen = Len(@str);

	Declare @strDiff As Int; Set @strDiff = @length - @strLen;

	If (@strDiff > 0) Begin
		Declare @loopIndex As Int; Set @loopIndex = 0

		While (@loopIndex < @strDiff) Begin

			Set @result = @result + @char

			Set @loopIndex = @loopIndex + 1

		End
	End

	Return @result
End
GO
/****** 对象:  Table [Basic].[ObjectBase]    脚本日期: 09/10/2014 15:43:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Basic].[ObjectBase](
	[ObjectID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[IsRemoved] [char](1) NOT NULL DEFAULT ('N'),
	[Enabled] [char](1) NOT NULL DEFAULT ('Y'),
	[Visible] [char](1) NOT NULL DEFAULT ('Y'),
	[OpenID] [varchar](256) NOT NULL,
	[IsCreatedTime] [datetime] NOT NULL DEFAULT (getdate()),
	[LastModifiedTime] [datetime] NULL DEFAULT (NULL),
	[IsModifiedTimes] [int] NOT NULL DEFAULT ((0)),
	[Comments] [nvarchar](max) NULL DEFAULT (NULL),
 CONSTRAINT [PK_ObjectBase] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK：对象唯一标识。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'ObjectID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已经被逻辑删除：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'IsRemoved'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否被启用：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可见：Y（可见的）；N（隐藏的）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'Visible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对外公开的唯一标识。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'OpenID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象被创建的时间。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'IsCreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后一次被修改的时间。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象被修改的次数。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'IsModifiedTimes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象的备注信息。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'Comments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象基本属性表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase'
GO
/****** 对象:  UserDefinedFunction [Fn].[RebuiltOrgObjectVirtualName]    脚本日期: 09/10/2014 15:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	重构组织机构对象的虚拟名称。
*/

Create Function [Fn].[RebuiltOrgObjectVirtualName](
	@newName As Nvarchar(512),
	@oldVirtualName As NVarchar(1024)
)
Returns NVarchar(1024)
As
Begin
	Declare @newVirtualName As Nvarchar(1024)

	Declare @index As Int; Set @index = Charindex('_', @oldVirtualName)

	Set @newVirtualName = Substring(@oldVirtualName, 1, @index - 1) + '_' + @newName

	Return @newVirtualName
End
GO
/****** 对象:  UserDefinedFunction [Fn].[IsEmptyGuid]    脚本日期: 09/10/2014 15:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	验证指定的GUID是否全为0
*/

Create Function [Fn].[IsEmptyGuid](
	@guid As Uniqueidentifier
)
Returns Bit
As
Begin
	Declare @bool As Int

	Set @bool = (
			Case When Cast(@guid As Varchar(36)) = '00000000-0000-0000-0000-000000000000' Then 1 Else 0 End
		)

	Return @bool
End
GO
/****** 对象:  Table [Secure].[SignInToken]    脚本日期: 09/10/2014 15:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[SignInToken](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[ActionID] [uniqueidentifier] NOT NULL,
	[Token] [varchar](max) NOT NULL,
	[ExpiredTime] [datetime] NOT NULL DEFAULT (getdate()),
 CONSTRAINT [PK_SignInToken] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：登录票据唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInToken', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：登录动作标识（关联到SignInAction表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInToken', @level2type=N'COLUMN',@level2name=N'ActionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录令牌字符串。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInToken', @level2type=N'COLUMN',@level2name=N'Token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录令牌失效时间。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInToken', @level2type=N'COLUMN',@level2name=N'ExpiredTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录令牌表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInToken'
GO
/****** 对象:  Table [Secure].[RoleSetting]    脚本日期: 09/10/2014 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Secure].[RoleSetting](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_RoleSetting] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：角色设置唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'RoleSetting', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：角色标识（关联到Role表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'RoleSetting', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：授权的组织机构对象标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'RoleSetting', @level2type=N'COLUMN',@level2name=N'OrganizationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色设置表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'RoleSetting'
GO
/****** 对象:  Table [Secure].[PermissionRoleSetting]    脚本日期: 09/10/2014 15:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Secure].[PermissionRoleSetting](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[PermissionID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_PermissionRoleSetting] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：角色、权限设置关系唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionRoleSetting', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：权限标识（关联到Permission表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionRoleSetting', @level2type=N'COLUMN',@level2name=N'PermissionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：角色标识（关联到Role表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionRoleSetting', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限设置（关于角色）表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionRoleSetting'
GO
/****** 对象:  Table [Secure].[PermissionOrgSetting]    脚本日期: 09/10/2014 15:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Secure].[PermissionOrgSetting](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[PermissionID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PermissionOrgSetting] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：设置关系唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionOrgSetting', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：权限标识（关联到Permission表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionOrgSetting', @level2type=N'COLUMN',@level2name=N'PermissionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：被授权的组织机构对象标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionOrgSetting', @level2type=N'COLUMN',@level2name=N'OrganizationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限设置表（关于组织机构）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionOrgSetting'
GO
/****** 对象:  Table [Secure].[SubsysAdministrator]    脚本日期: 09/10/2014 15:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Secure].[SubsysAdministrator](
	[StaffID] [uniqueidentifier] NOT NULL,
	[SysID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SubsysAdministrator] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC,
	[SysID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：人员对象标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SubsysAdministrator', @level2type=N'COLUMN',@level2name=N'StaffID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：应用系统标识（关联到Subsystem表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SubsysAdministrator', @level2type=N'COLUMN',@level2name=N'SysID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子系统管理员表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SubsysAdministrator'
GO
/****** 对象:  Table [Secure].[StaffAccount]    脚本日期: 09/10/2014 15:43:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[StaffAccount](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[StaffID] [uniqueidentifier] NOT NULL,
	[IsLocked] [char](1) NOT NULL CONSTRAINT [DF__StaffAcco__IsLoc__03317E3D]  DEFAULT ('N'),
	[LockReason] [uniqueidentifier] NULL CONSTRAINT [DF_StaffAccount_LockReason]  DEFAULT (NULL),
	[LockedTime] [datetime] NULL CONSTRAINT [DF__StaffAcco__Locke__0425A276]  DEFAULT (NULL),
	[UnlockTime] [datetime] NULL CONSTRAINT [DF__StaffAcco__Unloc__0519C6AF]  DEFAULT (NULL),
 CONSTRAINT [PK_StaffAccount] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：人员帐户表（关联到Account）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：人员标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount', @level2type=N'COLUMN',@level2name=N'StaffID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户是否被锁定：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount', @level2type=N'COLUMN',@level2name=N'IsLocked'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：锁定原因代码标识（关联到PredefinedCode表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount', @level2type=N'COLUMN',@level2name=N'LockReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'锁定时间。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount', @level2type=N'COLUMN',@level2name=N'LockedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'解锁时间。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount', @level2type=N'COLUMN',@level2name=N'UnlockTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员账户表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount'
GO
/****** 对象:  Table [Secure].[Staff]    脚本日期: 09/10/2014 15:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[Staff](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[LastName] [nvarchar](64) NULL DEFAULT (NULL),
	[FirstName] [nvarchar](64) NULL DEFAULT (NULL),
	[OrganizationID] [uniqueidentifier] NOT NULL,
	[Gender] [char](1) NOT NULL DEFAULT ('M'),
	[BirthDate] [datetime] NULL DEFAULT (NULL),
	[BirthPlaceID] [uniqueidentifier] NULL,
	[ResidenceAddress] [nvarchar](max) NULL DEFAULT (NULL),
	[CredentialsTypeID] [uniqueidentifier] NULL,
	[CredentialsNO] [varchar](128) NULL DEFAULT (NULL),
	[PositionID] [uniqueidentifier] NOT NULL,
	[OfficePhoneNO] [varchar](16) NULL DEFAULT (NULL),
	[MobileNO] [varchar](16) NULL DEFAULT (NULL),
	[EmailAddress] [varchar](512) NULL DEFAULT (NULL),
	[InductionDate] [datetime] NOT NULL DEFAULT (getdate()),
	[IsProbationary] [char](1) NOT NULL DEFAULT ('N'),
	[ProbationLength] [int] NOT NULL DEFAULT ((3)),
	[AutoRegularized] [char](1) NOT NULL DEFAULT ('Y'),
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：人员对象唯一标识（关联到OrganizationObject和ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓氏' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名字。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：人员的主要任职组织标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'OrganizationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员性别：M（男）；W（女）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员出生日期。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'BirthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：出生地标识（关联到GlobalRegion表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'BirthPlaceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'居住地址。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'ResidenceAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：证件类型标识（关联到CredentialsType表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'CredentialsTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证件编号。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'CredentialsNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：主要职位ID（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'PositionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'办公电话号码。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'OfficePhoneNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话号码。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'MobileNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮件地址。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'EmailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入职日期。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'InductionDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为试用期员工：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'IsProbationary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试用期长度（单位：月）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'ProbationLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动转正：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'AutoRegularized'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff'
GO
/****** 对象:  Table [Secure].[PositionRelation]    脚本日期: 09/10/2014 15:43:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Secure].[PositionRelation](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[SuperiorID] [uniqueidentifier] NOT NULL,
	[CurrentID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PositionRelation] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：汇报关系唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PositionRelation', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：上一级职位标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PositionRelation', @level2type=N'COLUMN',@level2name=N'SuperiorID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：当前职位标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PositionRelation', @level2type=N'COLUMN',@level2name=N'CurrentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位汇报关系表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PositionRelation'
GO
/****** 对象:  Table [Secure].[Position]    脚本日期: 09/10/2014 15:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Secure].[Position](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：职位信息唯一标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Position', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：组织标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Position', @level2type=N'COLUMN',@level2name=N'OrganizationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Position'
GO
/****** 对象:  Table [Secure].[ParttimeRelation]    脚本日期: 09/10/2014 15:43:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Secure].[ParttimeRelation](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[StaffID] [uniqueidentifier] NOT NULL,
	[PositionID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ParttimeRelation] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：兼职关系唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'ParttimeRelation', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：人员标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'ParttimeRelation', @level2type=N'COLUMN',@level2name=N'StaffID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：兼职职位标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'ParttimeRelation', @level2type=N'COLUMN',@level2name=N'PositionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员兼职关系表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'ParttimeRelation'
GO
/****** 对象:  Table [Secure].[Organization]    脚本日期: 09/10/2014 15:43:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Secure].[Organization](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[PrincipalStaffID] [uniqueidentifier] NULL DEFAULT (NULL),
	[PrincipalPositionID] [uniqueidentifier] NULL DEFAULT (NULL),
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：组织唯一标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：此组织的主要负责人标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'PrincipalStaffID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：主要负责的职位标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'PrincipalPositionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Organization'
GO
/****** 对象:  Table [Secure].[SignInLogTrace]    脚本日期: 09/10/2014 15:43:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[SignInLogTrace](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[IOFlag] [char](1) NOT NULL DEFAULT ('I'),
 CONSTRAINT [PK_SignInLogTrace] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：日志行为唯一标识（关联到BaseLogTrace及ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInLogTrace', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录、登出标记：I（登录）；O（登出）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInLogTrace', @level2type=N'COLUMN',@level2name=N'IOFlag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录、登出日志信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInLogTrace'
GO
/****** 对象:  Table [Secure].[SqlLogTrace]    脚本日期: 09/10/2014 15:43:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[SqlLogTrace](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[Command] [varchar](max) NOT NULL,
	[CommandType] [char](1) NOT NULL DEFAULT ('T'),
 CONSTRAINT [PK_SqlLogTrace] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：日志行为唯一标识（关联到BaseLogTrace及ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SqlLogTrace', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SQL命令文本。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SqlLogTrace', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'命令类型：T（SQL命令串）；S（存储过程）；F（函数）' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SqlLogTrace', @level2type=N'COLUMN',@level2name=N'CommandType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SQL命令执行日志表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SqlLogTrace'
GO
/****** 对象:  Table [Secure].[SignInAction]    脚本日期: 09/10/2014 15:43:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[SignInAction](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[ClientIP] [varchar](64) NULL DEFAULT (NULL),
	[HostName] [varchar](256) NULL DEFAULT (NULL),
	[Platform] [int] NOT NULL DEFAULT ((1)),
	[IsSucceed] [char](1) NOT NULL DEFAULT ('Y'),
	[FailedReasonCodeID] [uniqueidentifier] NULL DEFAULT (NULL),
	[AccountID] [uniqueidentifier] NULL DEFAULT (NULL),
	[UnknownUserID] [varchar](max) NULL DEFAULT (NULL),
 CONSTRAINT [PK_SignInAction] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：登录动作唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户端IP地址。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主机名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'HostName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'平台类型：1：PC；2：WP移动设备；3：Android移动设备；4：iOS移动设备；5：Firefox OS移动设备；6：Windows Mobile平台移动设备；7：塞班移动设备；8：MeeGo移动设备；9：黑莓移动设备；-1：未知类型的移动设备。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'Platform'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否成功：Y：（成功的）；N（失败的）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'IsSucceed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：失败原因代码（关联到PredefinedCode表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'FailedReasonCodeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：登录时所用的账户唯一标识（关联到Account表）。如果为NULL，则表示不是已知的账户。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'AccountID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'如果AccountID为NULL，则此字段保存错误的账户名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'UnknownUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录动作表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction'
GO
/****** 对象:  Table [Secure].[BaseLogTrace]    脚本日期: 09/10/2014 15:43:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[BaseLogTrace](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[MethodName] [varchar](512) NOT NULL DEFAULT ('ctor'),
	[TypeName] [varchar](max) NOT NULL,
	[Version] [varchar](36) NOT NULL DEFAULT ('1.0'),
	[CallAccountID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_BaseLog] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：日志行为唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'BaseLogTrace', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用的方法名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'BaseLogTrace', @level2type=N'COLUMN',@level2name=N'MethodName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包含方法的类型名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'BaseLogTrace', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版本号。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'BaseLogTrace', @level2type=N'COLUMN',@level2name=N'Version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：调用者标识（关联到Account表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'BaseLogTrace', @level2type=N'COLUMN',@level2name=N'CallAccountID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基础日志信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'BaseLogTrace'
GO
/****** 对象:  Table [Secure].[Administrator]    脚本日期: 09/10/2014 15:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[Administrator](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[IsDefault] [char](1) NOT NULL DEFAULT ('N'),
	[WindowsIntergrated] [char](1) NOT NULL DEFAULT ('Y'),
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：系统管理员唯一标识（关联到Account、ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Administrator', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为默认系统管理员账户：Y（是）；N（否）。默认的系统管理员不可删除。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Administrator', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否集成Windows账户：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Administrator', @level2type=N'COLUMN',@level2name=N'WindowsIntergrated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统管理员账户表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Administrator'
GO
/****** 对象:  Table [Secure].[AccountExpirationPolicy]    脚本日期: 09/10/2014 15:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Secure].[AccountExpirationPolicy](
	[AccountID] [uniqueidentifier] NOT NULL,
	[PolicyID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AccountExpirationPolicy] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[PolicyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：账户标识（关联到Account表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'AccountExpirationPolicy', @level2type=N'COLUMN',@level2name=N'AccountID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：策略标识（关联到PassExpirationPolicy表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'AccountExpirationPolicy', @level2type=N'COLUMN',@level2name=N'PolicyID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户过期策略。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'AccountExpirationPolicy'
GO
/****** 对象:  Table [Basic].[HotfixRelease]    脚本日期: 09/10/2014 15:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Basic].[HotfixRelease](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[CodeID] [uniqueidentifier] NOT NULL,
	[BlockID] [uniqueidentifier] NOT NULL,
	[Version] [varchar](16) NOT NULL DEFAULT ('1.0'),
	[FeatureSummary] [nvarchar](256) NULL DEFAULT (NULL),
	[ReleaseDate] [datetime] NOT NULL,
	[IsImportant] [char](1) NOT NULL DEFAULT ('Y'),
 CONSTRAINT [PK_HotfixRelease] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK & FK：更新补丁唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：更新代码ID（关联到PredefinedCode表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'CodeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：需要更新的模块标识（关联到ApplicationBlock表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'BlockID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新补丁的版本号。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'Version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能概述。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'FeatureSummary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布日期。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'ReleaseDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为重要更新：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'IsImportant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新补丁发布信息表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease'
GO
/****** 对象:  Table [Basic].[PredefinedCode]    脚本日期: 09/10/2014 15:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Basic].[PredefinedCode](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[BlockID] [uniqueidentifier] NULL,
	[Code] [varchar](64) NOT NULL DEFAULT ('ERROR_00000001'),
 CONSTRAINT [PK_PredefinedCode] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK & FK：系统预定义代码唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'PredefinedCode', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：应用模块唯一标识（关联到ObjectBase、ApplicationBlock表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'PredefinedCode', @level2type=N'COLUMN',@level2name=N'BlockID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'PredefinedCode', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统预定义代码表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'PredefinedCode'
GO
/****** 对象:  Table [Basic].[GlobalRegion]    脚本日期: 09/10/2014 15:42:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Basic].[GlobalRegion](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[RegionName] [nvarchar](256) NOT NULL DEFAULT ('中华人民共和国'),
	[ParentRegionID] [uniqueidentifier] NULL DEFAULT (NULL),
 CONSTRAINT [PK_GlobalRegion] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：区域唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'GlobalRegion', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域名称。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'GlobalRegion', @level2type=N'COLUMN',@level2name=N'RegionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父区域标识。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'GlobalRegion', @level2type=N'COLUMN',@level2name=N'ParentRegionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全球区域定义表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'GlobalRegion'
GO
/****** 对象:  Table [Secure].[Account]    脚本日期: 09/10/2014 15:43:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[Account](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[UserID] [varchar](512) NOT NULL DEFAULT ('Administrator'),
	[Passphrase] [varchar](max) NULL DEFAULT (NULL),
	[EmptyPass] [char](1) NOT NULL DEFAULT ('N'),
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Account_Account] UNIQUE NONCLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK：系统账户唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'口令。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'Passphrase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为空密码：Y（是）、N（否）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'EmptyPass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统账户基本信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Account'
GO
/****** 对象:  Table [Secure].[OrganizationObject]    脚本日期: 09/10/2014 15:43:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Secure].[OrganizationObject](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[ObjectName] [nvarchar](512) NOT NULL,
	[ParentObjectID] [uniqueidentifier] NULL DEFAULT (NULL),
	[Category] [int] NOT NULL DEFAULT ((1)),
	[SortID] [int] NOT NULL DEFAULT ((0)),
	[VirtualName] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PK_OrganizationObjectBase] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_OrganizationObject_VirtualName] UNIQUE NONCLUSTERED 
(
	[VirtualName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：组织机构对象唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构对象名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject', @level2type=N'COLUMN',@level2name=N'ObjectName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父组织机构对象ID。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject', @level2type=N'COLUMN',@level2name=N'ParentObjectID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构对象类别：1：组织；2：人员组；3：职位；4：人员。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序标识。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象虚名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject', @level2type=N'COLUMN',@level2name=N'VirtualName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构对象基础属性表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject'
GO
/****** 对象:  Table [Secure].[Role]    脚本日期: 09/10/2014 15:43:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[Role](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](512) NOT NULL,
	[RoleCode] [varchar](256) NOT NULL,
	[SysID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：角色唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'RoleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色代码。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'RoleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：子系统标识（关联到Subsystem表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'SysID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Role'
GO
/****** 对象:  Table [Basic].[CredentialsType]    脚本日期: 09/10/2014 15:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Basic].[CredentialsType](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[TypeName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_CredentialsType] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_CredentialsType_TypeName] UNIQUE NONCLUSTERED 
(
	[TypeName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：证件类型唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'CredentialsType', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证件类型名称。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'CredentialsType', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证件类型表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'CredentialsType'
GO
/****** 对象:  Table [Basic].[ApplicationBlock]    脚本日期: 09/10/2014 15:42:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Basic].[ApplicationBlock](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[BlockName] [nvarchar](128) NOT NULL DEFAULT ('基础数据模块'),
	[ParentBlockID] [uniqueidentifier] NULL DEFAULT (NULL),
	[Code] [varchar](128) NOT NULL DEFAULT ('BASIC'),
	[XExpando] [xml] NULL DEFAULT (NULL),
 CONSTRAINT [PK_ApplicationBlock] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_ApplicationBlock_BlockName] UNIQUE NONCLUSTERED 
(
	[BlockName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_ApplicationBlock_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：系统模块唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ApplicationBlock', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用模块名称（简体中文）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ApplicationBlock', @level2type=N'COLUMN',@level2name=N'BlockName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级模块ID（关联到ApplicationBlock、ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ApplicationBlock', @level2type=N'COLUMN',@level2name=N'ParentBlockID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用模块代码。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ApplicationBlock', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展信息。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ApplicationBlock', @level2type=N'COLUMN',@level2name=N'XExpando'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统模块表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ApplicationBlock'
GO
/****** 对象:  Table [Secure].[PassExpirationPolicy]    脚本日期: 09/10/2014 15:43:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[PassExpirationPolicy](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NOT NULL,
	[ExpirationUnit] [char](1) NOT NULL DEFAULT ('D'),
	[ExpirationValue] [int] NOT NULL DEFAULT ((90)),
 CONSTRAINT [PK_PassExpirationPolicy] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：策略唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PassExpirationPolicy', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'策略描述信息。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PassExpirationPolicy', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过期计算单位：N(无过期）；M（按月计算）；D（按日计算）；W（按周计算）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PassExpirationPolicy', @level2type=N'COLUMN',@level2name=N'ExpirationUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过期值。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PassExpirationPolicy', @level2type=N'COLUMN',@level2name=N'ExpirationValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'口令过期策略。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PassExpirationPolicy'
GO
/****** 对象:  Table [Basic].[FileObject]    脚本日期: 09/10/2014 15:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Basic].[FileObject](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[RawName] [nvarchar](512) NOT NULL,
	[ExtensionName] [varchar](16) NULL DEFAULT (NULL),
	[MimeType] [varchar](64) NOT NULL,
	[FileSize] [bigint] NOT NULL DEFAULT ((0)),
	[SaveToDB] [char](1) NOT NULL DEFAULT ('N'),
	[SaveToDisk] [char](1) NOT NULL DEFAULT ('Y'),
	[PhysicalPath] [nvarchar](2048) NULL DEFAULT (NULL),
 CONSTRAINT [PK_FileObject] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK & FK：文件对象唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件原始名称。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'RawName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件扩展名。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'ExtensionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件类型对应的Http Mime类型。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'MimeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件长度。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'FileSize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否保存到数据库：Y（以保存到数据库）；N（未保存到数据库）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'SaveToDB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否保存到服务器物理硬盘中：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'SaveToDisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件的物理路径。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'PhysicalPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件对象信息表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject'
GO
/****** 对象:  Table [Basic].[FileMapRelation]    脚本日期: 09/10/2014 15:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Basic].[FileMapRelation](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[FileID] [uniqueidentifier] NOT NULL,
	[AssociatedObjectID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_FileMapRelation] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：关系唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileMapRelation', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：文件对象标识（关联到FileObject表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileMapRelation', @level2type=N'COLUMN',@level2name=N'FileID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：关联的对象唯一标识。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileMapRelation', @level2type=N'COLUMN',@level2name=N'AssociatedObjectID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件对象映射关系表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileMapRelation'
GO
/****** 对象:  Table [Secure].[Permission]    脚本日期: 09/10/2014 15:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[Permission](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[PermissionCode] [varchar](512) NOT NULL,
	[SysID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：权限唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Permission', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限代码。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Permission', @level2type=N'COLUMN',@level2name=N'PermissionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：子系统标识（关联到Subsystem表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Permission', @level2type=N'COLUMN',@level2name=N'SysID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Permission'
GO
/****** 对象:  Table [Secure].[Subsystem]    脚本日期: 09/10/2014 15:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Secure].[Subsystem](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[SysName] [nvarchar](512) NOT NULL,
	[SysCode] [varchar](256) NOT NULL,
	[ParentSysID] [uniqueidentifier] NULL,
	[InheritFromParent] [char](1) NOT NULL DEFAULT ('Y'),
 CONSTRAINT [PK_Subsystem] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Subsystem_SysCode] UNIQUE NONCLUSTERED 
(
	[SysCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Subsystem_SysName] UNIQUE NONCLUSTERED 
(
	[SysName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：应用系统唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Subsystem', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子系统名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Subsystem', @level2type=N'COLUMN',@level2name=N'SysName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子系统编码。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Subsystem', @level2type=N'COLUMN',@level2name=N'SysCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父系统标识。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Subsystem', @level2type=N'COLUMN',@level2name=N'ParentSysID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否继承父应用所有属性：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Subsystem', @level2type=N'COLUMN',@level2name=N'InheritFromParent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子系统定义表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Subsystem'
GO
/****** 对象:  Table [Basic].[FileStream]    脚本日期: 09/10/2014 15:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Basic].[FileStream](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[Stream] [varbinary](max) NULL DEFAULT (NULL),
 CONSTRAINT [PK_FileStream] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK & FK：文件对象唯一标识（关联到FileObject表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileStream', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件流数据。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileStream', @level2type=N'COLUMN',@level2name=N'Stream'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件流表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileStream'
GO
/****** 对象:  View [Secure].[StaffAccountExpandoPropertyCollection]    脚本日期: 09/10/2014 15:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [Secure].[StaffAccountExpandoPropertyCollection]
As
	Select
			Acc.UniqueID As 'StaffAccountUniqueID',
			Acc.StaffID As 'BoundStaffUniqueID',
			Acc.IsLocked As 'StaffAccountWasLocked',
			P.ExpirationUnit As 'ExpirationCycleUnit',
			P.ExpirationValue As 'ExpirationCycleLength',
			P.UniqueID As 'ExpirationPolicyUniqueID',
			A.UserID As 'UserName',
			A.Passphrase As 'Password'
		From Secure.StaffAccount Acc
		Left Join Secure.AccountExpirationPolicy AEP On Acc.UniqueID = AEP.AccountID
		Left Join Secure.PassExpirationPolicy P On AEP.PolicyID = P.UniqueID
		Left Join Secure.Account A On Acc.UniqueID = A.UniqueID
GO
/****** 对象:  View [Secure].[OrganizationObjectCollection]    脚本日期: 09/10/2014 15:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有组织机构对象（基本信息）
*/

CREATE View [Secure].[OrganizationObjectCollection]
As
	Select
			Org.UniqueID As 'OrganizationObjectUniqueID',
			Org.ObjectName As 'OrganizationDisplayName',
			Org.ParentObjectID As 'ParentOrganizationObjectID',
			Org.Category As 'OrganizationCategory',
			Org.SortID As 'OrganizationSortID',
			Org.VirtualName As 'OrganizationVirtualName',
			Obj.ObjectID As 'OrganizationObjectID',
			Obj.IsRemoved As 'OrganizationWasRemoved',
			Obj.Enabled As 'OrganizationEnabledState',
			Obj.Visible As 'OrganizationVisibleState',
			Obj.OpenID As 'OrganizationOpenID',
			Obj.IsCreatedTime As 'OrganizationCreatedTime',
			Obj.LastModifiedTime As 'OrganizationModifiedTime',
			Obj.Comments
		From Secure.OrganizationObject Org
		Left Join Basic.ObjectBase Obj On Org.UniqueID = Obj.ObjectID
GO
/****** 对象:  UserDefinedFunction [Fn].[GetOrgObjectVirtualPath]    脚本日期: 09/10/2014 15:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取组织机构对象的虚拟名称路径。
*/

Create Function [Fn].[GetOrgObjectVirtualPath](
	@uniqueID As Uniqueidentifier
)
Returns Nvarchar(Max)
As
Begin
	Declare @parentID As Uniqueidentifier

	Declare @vPath As Nvarchar(Max)

	Declare @vName As Nvarchar(1024)

	Select @vName = VirtualName, @parentID = ParentObjectID From Secure.OrganizationObject Where UniqueID = @uniqueID
	
	Set @vPath = @vName
	Set @uniqueID = @parentID

	While (@uniqueID Is Not NULL) Begin
		Select @vName = VirtualName, @parentID = ParentObjectID From Secure.OrganizationObject Where UniqueID = @uniqueID

		Set @vPath = @vName + '/' + @vPath

		Set @uniqueID = @parentID
	End
	
	Return @vPath
End
GO
/****** 对象:  UserDefinedFunction [Fn].[BuiltOrgObjectVirtualName]    脚本日期: 09/10/2014 15:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取组织机构对象的虚拟名称。
*/

Create Function [Fn].[BuiltOrgObjectVirtualName](
	@name As Nvarchar(512)
)
Returns NVarchar(1024)
As
Begin
	Declare @count As Int
	Select @count = Count(UniqueID) From Secure.OrganizationObject
	
	Declare @prefix As Varchar(3)
	Set @prefix = Fn.PadLeft(Cast(@count + 1 As Varchar(Max)), 3, '0')

	Return @prefix + '_' + @name
End
GO
/****** 对象:  StoredProcedure [Sp].[UpgradeOrganizationBase]    脚本日期: 09/10/2014 15:42:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	更新组织机构对象的基本信息
*/

CREATE Procedure [Sp].[UpgradeOrganizationBase]
	@uniqueID As Uniqueidentifier,
	@name As Nvarchar(512),
	@enabled As Char(1) = 'Y',
	@removed As Char(1) = 'N'
As
Begin
	Begin Try
		Update Secure.OrganizationObject Set
				ObjectName = @name,
				VirtualName = Fn.RebuiltOrgObjectVirtualName(@name, VirtualName)
			Where
				UniqueID = @uniqueID

		Update Basic.ObjectBase Set
				[Enabled] = Upper(@enabled),
				IsRemoved = Upper(@removed),
				LastModifiedTime = Getdate(),
				IsModifiedTimes = IsModifiedTimes + 1
			Where
				ObjectID = @uniqueID
	End Try
	Begin Catch
		RaisError('When we try to update basic information of the organization object, and throws an exception!', 16, 1)
	End Catch
End
GO
/****** 对象:  View [Secure].[AdministratorCollection]    脚本日期: 09/10/2014 15:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	用于获取所有的系统管理员。
*/

CREATE View [Secure].[AdministratorCollection]
As
	Select
			SysAdmin.UniqueID As 'AdministratorID',
			SysAdmin.IsDefault As 'IsDefaultAdministrator',
			SysAdmin.WindowsIntergrated As 'NTAdministrator',
			Acc.EmptyPass As 'AllowEmptyPassword',
			Acc.Passphrase As 'AdministratorPassword',
			Acc.UserID As 'AdministratorAccount',
			Acc.UniqueID As 'AdministratorAccountID',
			Obj.ObjectID As 'AdministratorObjectID',
			Obj.IsRemoved As 'AdminstratorWasRemoved',
			Obj.Enabled As 'AdministratorEnableState',
			Obj.Visible As 'AdministratorVisibleState',
			Obj.OpenID As 'AdministratorOpenID',
			Obj.IsCreatedTime As 'AdministratorCreateTime',
			Obj.LastModifiedTime As 'AdministratorLastUpdateTime'
		From Secure.Administrator SysAdmin
		Left Join Secure.Account Acc On SysAdmin.UniqueID = Acc.UniqueID
		Left Join Basic.ObjectBase Obj On Acc.UniqueID = Obj.ObjectID
GO
/****** 对象:  View [Secure].[AccountCollection]    脚本日期: 09/10/2014 15:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有账户的视图。
*/

Create View [Secure].[AccountCollection]
As
	Select
			Accounts.UniqueID As 'AccountUniqueID',
			Accounts.UserID As 'UserName',
			Obj.ObjectID As 'AccountObjectID',
			Obj.IsRemoved As 'AccountRemovedState',
			Obj.Enabled As 'AccountEnabledState',
			Obj.Visible As 'AccountVisibleState',
			Obj.OpenID As 'AccountOpenID',
			Obj.IsCreatedTime As 'AccountWasCreatedTime',
			Obj.LastModifiedTime As 'AccountLastUpdateTime',
			Obj.Comments As 'AccountComments'
		From Secure.Account Accounts
		Left Join Basic.ObjectBase Obj On Obj.ObjectID = Accounts.UniqueID
GO
/****** 对象:  UserDefinedFunction [Fn].[GetAccountUniqueID]    脚本日期: 09/10/2014 15:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取账户的唯一标识。
*/

Create Function [Fn].[GetAccountUniqueID](
	@userName As Varchar(512)
)
Returns Uniqueidentifier
As
Begin
	Declare @accountID As Uniqueidentifier
	Set @accountID = (
			Select Accounts.UniqueID From Secure.Account Accounts
				Where Upper(Accounts.UserID) = Upper(@userName)
		)
	Return @accountID
End
GO
/****** 对象:  UserDefinedFunction [Fn].[GetDateTimeString]    脚本日期: 09/10/2014 15:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取日期时间的字符串表达式。
*/

Create Function [Fn].[GetDateTimeString](
	@dateTime As DateTime
)
Returns Varchar(64)
As
Begin
	Declare @yearStr As Varchar(4); Set @yearStr = Cast(Year(@dateTime) As Varchar(4));

	Declare @monthStr As Varchar(2); Set @monthStr = Fn.PadLeft(Cast(Month(@dateTime) As Varchar(2)), 2, '0');

	Declare @dayStr As Varchar(2); Set @dayStr = Fn.PadLeft(Cast(Day(@dateTime) As Varchar(2)), 2, '0');

	Declare @hourStr As Varchar(2); Set @hourStr = Fn.PadLeft(Cast(DatePart(hh, @dateTime) As Varchar(2)), 2, '0');

	Declare @minStr As Varchar(2); Set @minStr = Fn.PadLeft(Cast(DatePart(mi, @dateTime) As Varchar(2)), 2, '0');

	Declare @secStr As Varchar(2); Set @secStr = Fn.PadLeft(Cast(DatePart(ss, @dateTime) As Varchar(2)), 2, '0');

	Return @yearStr + '-' + @monthStr + '-' + @dayStr + ' ' + @hourStr + ':' + @minStr + ':' + @secStr
End
GO
/****** 对象:  UserDefinedFunction [Fn].[GetPredefinedCodeUniqueID]    脚本日期: 09/10/2014 15:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取预定义代码的唯一标识。
*/

Create Function [Fn].[GetPredefinedCodeUniqueID](
	@code As Varchar(64)
)
Returns Uniqueidentifier
As
Begin
	Declare @uniqueID As Uniqueidentifier
	Set @uniqueID = (
			Select Codes.UniqueID From Basic.PredefinedCode Codes
				Where Upper(Codes.Code) = Upper(@code)
		)
	Return @uniqueID
End
GO
/****** 对象:  View [Basic].[GlobalRegionCollection]    脚本日期: 09/10/2014 15:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有区域信息。
*/

Create View [Basic].[GlobalRegionCollection]
As
	Select
			R.UniqueID As 'RegionUniqueID',
			R.RegionName,
			R.ParentRegionID As 'ParentRegionUniqueID',
			Obj.OpenID As 'RegionOpenID'
		From Basic.GlobalRegion R
		Left Join Basic.ObjectBase Obj On Obj.ObjectID = R.UniqueID
GO
/****** 对象:  View [Basic].[CredentialsTypeCollection]    脚本日期: 09/10/2014 15:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有的证件类型
*/

CREATE View [Basic].[CredentialsTypeCollection]
As
	Select
			CT.UniqueID As 'CredentialsTypeUniqueID',
			CT.TypeName As 'CredentialsTypeDisplayName',
			Obj.OpenID As 'CredentialsTypeOpenID'
		From Basic.CredentialsType CT
		Left Join Basic.ObjectBase Obj On CT.UniqueID = Obj.ObjectID
GO
/****** 对象:  View [Basic].[ApplicationBlockCollection]    脚本日期: 09/10/2014 15:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	应用模块视图。

	获取所有的应用模块。
*/

CREATE View [Basic].[ApplicationBlockCollection]
As
	Select 
			App.UniqueID As 'ApplicationBlockID',
			App.BlockName As 'ApplicationBlockName',
			App.ParentBlockID As 'ParentApplicationBlockID',
			App.Code As 'ApplicationBlockCode',
			App.XExpando As 'ApplicationBlockExpandoObject',
			Obj.ObjectID As 'ApplicationBlockObjectID',
			Obj.IsRemoved As 'ApplicationBlockWasRemoved',
			Obj.Enabled As 'ApplicationBlockEnabledState',
			Obj.Visible As 'ApplicationBlockVisibleState',
			Obj.OpenID As 'ApplicationBlockOpenID',
			Obj.Comments As 'ApplicationBlockComments',
			Obj.IsCreatedTime As 'ApplicationBlockCreateTime',
			Obj.LastModifiedTime As 'ApplicationBlockLastUpdatedTime'
		From Basic.ApplicationBlock App
		Left Join Basic.ObjectBase Obj On App.UniqueID = Obj.ObjectID
GO
/****** 对象:  UserDefinedFunction [Fn].[TransferUniqueID]    脚本日期: 09/10/2014 15:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	根据开放标识获取唯一标识。
*/

Create Function [Fn].[TransferUniqueID](
	@openID As Varchar(256)
)
Returns Uniqueidentifier
As
Begin
	Declare @uniqueID As Uniqueidentifier
	Select @uniqueID = ObjectID From Basic.ObjectBase Where OpenID = @openID
	Return @uniqueID
End
GO
/****** 对象:  UserDefinedFunction [Fn].[CetRegionDisplayName]    脚本日期: 09/10/2014 15:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	根据ID获取区域全名。
*/

Create Function [Fn].[CetRegionDisplayName](
	@uniqueID As Uniqueidentifier
)
Returns NVarchar(Max)
As
Begin
	Declare @displayName As NVarchar(Max); Set @displayName = '';

	Declare @parentID As Uniqueidentifier; Set @parentID = NULL
	
	Declare @name As Nvarchar(256)

	Select @name = RegionName, @parentID = ParentRegionID From Basic.GlobalRegion Where UniqueID = @uniqueID

	Set @displayName = @name

	Set @uniqueID = @parentID

	While (@uniqueID Is Not NULL) Begin
		Select @name = RegionName, @parentID = ParentRegionID From Basic.GlobalRegion Where UniqueID = @uniqueID
		Set @uniqueID = @parentID
		Set @displayName = @name + '/' + @displayName
	End
	Return @displayName
End
GO
/****** 对象:  View [Secure].[StaffCollection]    脚本日期: 09/10/2014 15:43:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有的用户。
*/

CREATE View [Secure].[StaffCollection]
As
	Select
			S.UniqueID As 'StaffUniqueID',
			S.LastName As 'StaffLastName',
			S.FirstName As 'StaffFirstName',
			S.OrganizationID As 'StaffOwnedOrganizationID',
			S.Gender As 'StaffGender',
			S.BirthDate As 'StaffBirthDay',
			S.BirthPlaceID As 'StaffBirthPlaceRegionID',
			R.RegionName As 'StaffBirthPlaceRegionName',
			Fn.CetRegionDisplayName(S.BirthPlaceID) As 'StaffBirthPlaceRegionFullName',
			S.ResidenceAddress As 'StaffResidenceAddress',
			S.CredentialsTypeID As 'StaffCredentialsType',
			CT.CredentialsTypeDisplayName As 'StaffCredentialsTypeName',
			CT.CredentialsTypeOpenID As 'StaffCredentialsTypeOpenID',
			S.CredentialsNO As 'StaffCredentialsNO',
			S.PositionID As 'StaffPosition',
			S.OfficePhoneNO As 'StaffOfficePhone',
			S.MobileNO As 'StaffMobile',
			S.EmailAddress As 'StaffEmail',
			S.InductionDate As 'StaffInductionDate',
			S.IsProbationary As 'StaffProbationaryState',
			S.ProbationLength As 'StaffProbationLength',
			S.AutoRegularized As 'StaffAutoRegularized',
			Fn.GetOrgObjectVirtualPath(S.UniqueID) As 'OrganizationVirtualPath',
			Org.*
		From Secure.Staff S
		Left Join Basic.GlobalRegionCollection R On R.RegionUniqueID = S.BirthPlaceID
		Left Join Basic.CredentialsTypeCollection CT On CT.CredentialsTypeUniqueID = S.CredentialsTypeID
		Left Join Secure.OrganizationObjectCollection Org On S.UniqueID = Org.OrganizationObjectUniqueID
GO
/****** 对象:  StoredProcedure [Sp].[GetStaffAccountExpandoProperties]    脚本日期: 09/10/2014 15:42:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取指定员工的账户信息。
*/

CREATE Procedure [Sp].[GetStaffAccountExpandoProperties]
	@openID As Varchar(256)
As
Begin
	Declare @uniqueID As Uniqueidentifier; Set @uniqueID = Fn.TransferUniqueID(@openID)
	Select * From Secure.StaffAccountExpandoPropertyCollection
		Where BoundStaffUniqueID = @uniqueID
End
GO
/****** 对象:  View [Secure].[SigninTokenCollection]    脚本日期: 09/10/2014 15:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有的登录令牌信息。
*/

Create View [Secure].[SigninTokenCollection]
As
	Select
			Token.UniqueID As 'TokenID',
			Token.ActionID As 'SigninActionID',
			Token.[Token] As 'TokenExpression',
			Token.ExpiredTime As 'TokenAbsoluteExpiration',
			Act.UniqueID As 'SigninActionUniqueID',
			Act.ClientIP As 'ClientIPAddress',
			Act.HostName As 'ClientHostName',
			Act.[Platform] As 'PlatformID',
			Act.AccountID As 'SigninAccountID',
			Accounts.*,
			Obj.ObjectID As 'TokenObjectID',
			Obj.OpenID As 'TokenOpenID'
		From Secure.SignInToken Token
		Left Join Secure.SignInAction Act On Token.ActionID = Act.UniqueID
		Left Join Secure.AccountCollection Accounts On Act.AccountID = Accounts.AccountUniqueID
		Left Join Basic.ObjectBase Obj On Obj.ObjectID = Token.UniqueID
GO
/****** 对象:  View [Secure].[PositionCollection]    脚本日期: 09/10/2014 15:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有的职位信息。
*/

CREATE View [Secure].[PositionCollection]
As
	Select
			P.UniqueID As 'PositionUniqueID',
			P.OrganizationID As 'AssociatedOrganizationUniqueID',
			Fn.GetOrgObjectVirtualPath(P.UniqueID) As 'OrganizationVirtualPath',
			Org.*
		From Secure.Position P
		Left Join Secure.OrganizationObjectCollection Org On Org.OrganizationObjectUniqueID = P.UniqueID
GO
/****** 对象:  StoredProcedure [Sp].[UpgradeOrganization]    脚本日期: 09/10/2014 15:42:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	更新组织机构信息
*/

CREATE Procedure [Sp].[UpgradeOrganization]
	@openID As Varchar(256),
	@name As Nvarchar(512),
	@enabled As Char(1) = 'Y',
	@remove As Char(1) = 'N',
	@isVirtual As Char(1) = 'N'
As
Begin
	Declare @uniqueID As Uniqueidentifier; Set @uniqueID = Fn.TransferUniqueID(@openID)

	Begin Tran ModifyOrgTrans
	Begin Try
		Update Secure.OrganizationObject Set
				Category = (Case When Upper(@isVirtual) = 'Y' Then 2 Else 1 End)
			Where
				UniqueID = @uniqueID

		Exec Sp.UpgradeOrganizationBase @uniqueID, @name, @enabled, @remove

		Commit Tran ModifyOrgTrans
	End Try
	Begin Catch
		Rollback Tran ModifyOrgTrans
	End Catch
End
GO
/****** 对象:  View [Secure].[OrganizationCollection]    脚本日期: 09/10/2014 15:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有的组织机构。
*/

CREATE View [Secure].[OrganizationCollection]
As
	Select
			O.UniqueID As 'OrganizationUniqueID',
			O.PrincipalStaffID As 'OrganizationPrincipalSID',
			O.PrincipalPositionID As 'OrganizationPrincipalPID',
			Fn.GetOrgObjectVirtualPath(O.UniqueID) As 'OrganizationVirtualPath',
			Org.*
		From Secure.Organization O
		Left Join Secure.OrganizationObjectCollection Org On Org.OrganizationObjectUniqueID = O.UniqueID
GO
/****** 对象:  View [Basic].[PredefinedCodeCollection]    脚本日期: 09/10/2014 15:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	用于获取所有的预定义代码
*/

Create View [Basic].[PredefinedCodeCollection]
As
	Select
			Codes.Code As 'PredefinedCode',
			Codes.BlockID As 'PredefinedCodeOwnedApplicationBlockID',
			Codes.UniqueID As 'PredefinedCodeUniqueID',
			Obj.ObjectID As 'PredefinedCodeObjectID',
			Obj.IsRemoved As 'PredefinedCodeWasRemoved',
			Obj.Enabled As 'PredefinedCodeEnabledState',
			Obj.Visible As 'PredefinedCodeVisibleState',
			Obj.OpenID As 'PredefinedCodeOpenID',
			Blocks.*
		From Basic.PredefinedCode Codes
		Left Join Basic.ObjectBase Obj On Codes.UniqueID = Obj.ObjectID
		Left Join Basic.ApplicationBlockCollection Blocks On Codes.BlockID = Blocks.ApplicationBlockID
GO
/****** 对象:  UserDefinedFunction [Fn].[CreateOpenID]    脚本日期: 09/10/2014 15:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	创建一个开放的标识。
*/

CREATE Function [Fn].[CreateOpenID](
	@objectID As Uniqueidentifier
)
Returns Varchar(256)
As
Begin
	Declare @objIDStr As Varchar(36); Set @objIDStr = Cast(@objectID As Varchar(36));

	Declare @str As Varchar(128); Set @str = '{' + @objIDStr + '}-{' + Fn.GetDateTimeString(GetDate()) + '}';

	Declare @hashStr As Varchar(Max); Set @hashStr = sys.Fn_VarBinToHexStr(Hashbytes('SHA1', @str));

	Return Substring(@hashStr, 0, 256)
End
GO
/****** 对象:  UserDefinedFunction [Fn].[GetHashPassword]    脚本日期: 09/10/2014 15:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	用于对密码进行加密。
*/

CREATE Function [Fn].[GetHashPassword](
	@userID As Varchar(512),
	@password As Varchar(Max)
)
Returns Varchar(Max)
As
Begin
	Declare @now As DateTime; Set @now = Getdate()

	Set @userID = @userID + @password + Fn.GetDateTimeString(@now)	

	Declare @data As Varbinary(Max)

	Set @data = EncryptByPassPhrase(@userID, @password)

	Set @data = HashBytes('SHA1', @data)

	Set @password = sys.Fn_VarBinToHexStr(@data)

	Return @password
End
GO
/****** 对象:  StoredProcedure [Sp].[RemoveObject]    脚本日期: 09/10/2014 15:42:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	逻辑删除对象。
*/

Create Procedure [Sp].[RemoveObject]
	@openID As Varchar(256)
As
Begin
	Update Basic.ObjectBase
		Set IsRemoved = 'Y', [Enabled] = 'N', Visible = 'N', LastModifiedTime = Getdate(), IsModifiedTimes = IsModifiedTimes + 1
		Where 
			ObjectID = Fn.TransferUniqueID(@openID)
End
GO
/****** 对象:  View [Basic].[ApplicationBlockEnabledCollection]    脚本日期: 09/10/2014 15:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有可用的应用模块。
*/

Create View [Basic].[ApplicationBlockEnabledCollection]
As
	Select * From Basic.ApplicationBlockCollection
		Where
			Upper(ApplicationBlockWasRemoved) = 'N'
			And
			Upper(ApplicationBlockEnabledState) = 'Y'
GO
/****** 对象:  View [Secure].[AdministratorEnabledCollection]    脚本日期: 09/10/2014 15:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有可用的系统管理员。
*/

CREATE View [Secure].[AdministratorEnabledCollection]
As
	Select * From Secure.AdministratorCollection
		Where
			Upper(AdminstratorWasRemoved) = 'N'
			And
			Upper(AdministratorEnableState) = 'Y'
GO
/****** 对象:  View [Secure].[AccountEnabledCollection]    脚本日期: 09/10/2014 15:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有的可用的账户信息。
*/

Create View [Secure].[AccountEnabledCollection]
As
	Select * From Secure.AccountCollection
		Where
			Upper(AccountRemovedState) = 'N'
			And
			Upper(AccountEnabledState) = 'Y'
GO
/****** 对象:  StoredProcedure [Sp].[GetSubOrganizationObjects]    脚本日期: 09/10/2014 15:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取指定开放标识组织机构对象的子级组织机构对象。
*/

CREATE Procedure [Sp].[GetSubOrganizationObjects]
	@openID As Varchar(256)
As
Begin
	Declare @uniqueID As Uniqueidentifier; Set @uniqueID = Fn.TransferUniqueID(@openID)

	Select
			*,
			Fn.GetOrgObjectVirtualPath(OrganizationObjectUniqueID) As OrganizationVirtualPath
		From Secure.OrganizationObjectCollection
		Where
			ParentOrganizationObjectID = @uniqueID
			And
			Upper(OrganizationWasRemoved) = 'N'
		Order By
			OrganizationVirtualName Asc,
			OrganizationCreatedTime Desc
End
GO
/****** 对象:  StoredProcedure [Sp].[CreateSignInToken]    脚本日期: 09/10/2014 15:42:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	创建登录
*/

CREATE Procedure [Sp].[CreateSignInToken]
	@clientIP As Varchar(64) = NULL,
	@hostName As Varchar(64) = NULL,
	@actionID As Varchar(64) = NULL,
	@expired As Datetime,
	@token As Varchar(Max) = NULL Output
As
Begin
	If @clientIP Is Null Or @clientIP = '' Begin
		Set @clientIP = '127.0.0.1'
	End

	If @hostName Is Null Or @hostName = '' Begin
		Set @hostName = @clientIP
	End

	Declare @tokenID As Uniqueidentifier; Set @tokenID = Newid()
	
	Declare @openID As Varchar(256); Set @openID = Fn.CreateOpenID(@tokenID)

	Begin Tran CreateTokenTrans
	Begin Try
		Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@tokenID, @openID)

		Set @token = '{' + @clientIP + '};{' + @hostName + '};{' + Cast(@actionID As Varchar(36)) + '};{' + Cast(@tokenID As Varchar(36)) + '};{' + @openID + '}'
		
		Declare @expiredTime As Varchar(64); Set @expiredTime = Fn.GetDateTimeString(@expired)

		Set @token = sys.fn_varbintohexstr(EncryptByPassPhrase(Cast(@tokenID As Varchar(36)), @token))

		Insert Into Secure.SignInToken Values (@tokenID, @actionID, @token, @expired)

		Commit Tran CreateTokenTrans
	End Try
	Begin Catch
		Rollback Tran CreateTokenTrans
	End Catch
End
GO
/****** 对象:  StoredProcedure [Sp].[CreateSigninLogEvent]    脚本日期: 09/10/2014 15:42:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
创建登录、登出日志。
*/

CREATE Procedure [Sp].[CreateSigninLogEvent]
	@methodName As Varchar(512),
	@typeName As Varchar(Max),
	@version As Varchar(36),
	@userID As Varchar(512),
	@io As Char(1) = 'I'
As
Begin
	Begin Tran CreateLogTrans
	Begin Try
		Declare @uniqueID As Uniqueidentifier; Set @uniqueID = Newid();Select @uniqueID

		Declare @openID As Varchar(256); Set @openID = Fn.CreateOpenID(@uniqueID)

		Declare @accountID As Uniqueidentifier; Set @accountID = Fn.GetAccountUniqueID(@userID)

		Insert Into Basic.ObjectBase (ObjectID, OpenID, Comments) Values (@uniqueID, @openID, Case When @io = 'I' Then 'User Sign-In Log' Else 'User Sign-Out Log' End)

		Insert Into Secure.BaseLogTrace Values (@uniqueID, @methodName, @typeName, @version, @accountID)

		Insert Into Secure.SignInLogTrace Values (@uniqueID, @io)

		Commit Tran CreateLogTrans
	End Try
	Begin Catch
		Rollback Tran CreateLogTrans
	End Catch
End
GO
/****** 对象:  StoredProcedure [Sp].[CreateSignInAction]    脚本日期: 09/10/2014 15:42:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	创建一个登录动作。
*/

CREATE Procedure [Sp].[CreateSignInAction]
	@clientIP As Varchar(64) = NULL,
	@hostName As Varchar(64) = NULL,
	@platform As Int = 1,
	@succeedTag As Char(1) = 'N',
	@code As Varchar(64) = NULL,
	@userName As Varchar(512),
	@actionID As Uniqueidentifier = NULL Output
As
Begin
	Set @actionID = NewID()

	Declare @openID As Varchar(256)
	Set @openID = Fn.CreateOpenID(@actionID)

	Begin Tran CreateSignInActionTrans
	Begin Try
		Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@actionID, @openID)

		Declare @accountID As Uniqueidentifier
		Set @accountID = Fn.GetAccountUniqueID(@userName)

		Declare @reasonCodeID As Uniqueidentifier
		Set @reasonCodeID = Fn.GetPredefinedCodeUniqueID(@code)

		Insert Into Secure.SignInAction Values (@actionID, @clientIP, @hostName, @platform, @succeedTag, @reasonCodeID, @accountID, @userName)

		Commit Tran CreateSignInActionTrans
	End Try
	Begin Catch
		Rollback Tran CreateSignInActionTrans
	End Catch
End
GO
/****** 对象:  StoredProcedure [Sp].[UpgradePosition]    脚本日期: 09/10/2014 15:42:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	更新职位信息.
*/

CREATE Procedure [Sp].[UpgradePosition]
	@xData As Xml
As
Begin
	Set @xData = @xData.query('
			declare namespace eh="urn:Masterduner@Yeah.net";
			eh:EnterpriseServices/eh:SqlServerDatabase/eh:VariableDeclarations/eh:StoredProcedure[@Name="Sp.UpgradePosition"]/eh:Parameter[@Name="xData"]
		')

	Declare @positionName As NVarchar(512)
	Set @positionName = @xData.value('
			declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:Parameter/eh:PositionName/@Value)[1]
		', 
		'Nvarchar(512)')

	Declare @uniqueID As Uniqueidentifier
	Set @uniqueID = @xData.value('
			declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:Parameter/eh:UniqueID/@Value)[1]
		', 
		'Uniqueidentifier')

	Declare @enabled As Char(1)
	Set @enabled = @xData.value('
			declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:Parameter/eh:Enabled/@Value)[1]
		', 
		'Char(1)')

	Declare @removed As Char(1)
	Set @removed = @xData.value('
			declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:Parameter/eh:Removed/@Value)[1]
		', 
		'Char(1)')

	Declare @upState As Int
	Set @upState = @xData.value('
			declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:Parameter/eh:UpdateLevel/@Value)[1]
		', 
		'Int')

	Begin Tran UpdatePositionTrans
	Begin Try
		Exec Sp.UpgradeOrganizationBase @uniqueID, @positionName, @enabled, @removed

		If (@upState = 1) Begin
			Declare @prinSettingState As Int
			Set @prinSettingState = @xData.value(
				'
					declare namespace eh="urn:Masterduner@Yeah.net";
					(eh:Parameter/eh:PrincipalSettingState/eh:State/@Value)[1]
				',
				'Int')
			If @prinSettingState In (0, 2) Begin
				Declare @orgID As Uniqueidentifier
				Select @orgID = ParentOrganizationObjectID From Secure.PositionCollection
					Where PositionUniqueID = @uniqueID

				Update Secure.Organization Set
					PrincipalPositionID = @uniqueID
					Where
						UniqueID = @orgID
			End

			Declare @superiorID As Uniqueidentifier
			Set @superiorID = @xData.value(
				'declare namespace eh="urn:Masterduner@Yeah.net"; (eh:Parameter/eh:ReportLineSetting/eh:SuperiorPositionID/@Value)[1]',
				'Uniqueidentifier'
				)

			If (Fn.IsEmptyGuid(@superiorID) = 0)  Begin
				Delete From Secure.PositionRelation Where CurrentID = @uniqueID

				Declare @rUniqueID As Uniqueidentifier; Set @rUniqueID = Newid()
			
				Declare @openID As Varchar(256); Set @openID = Fn.CreateOpenID(@rUniqueID)

				Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@rUniqueID, @openID)

				Insert Into Secure.PositionRelation Values (@rUniqueID, @superiorID, @uniqueID)
			End

		End

		Commit Tran UpdatePositionTrans
	End Try
	Begin Catch
		Rollback Tran UpdatePositionTrans
	End Catch
End
GO
/****** 对象:  StoredProcedure [Sp].[CreateOrganizationObject]    脚本日期: 09/10/2014 15:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	创建组织机构对象。
*/

CREATE Procedure [Sp].[CreateOrganizationObject]
	@uniqueID As Uniqueidentifier Output,
	@name As NVarchar(512),
	@parentID As Uniqueidentifier = NULL,
	@category As Int = 1
As
Begin
	Set @uniqueID = Newid()

	Declare @openID As Varchar(256); Set @openID = Fn.CreateOpenID(@uniqueID)

	Begin Try
		Declare @vName As Nvarchar(1024); Set @vName = Fn.BuiltOrgObjectVirtualName(@name)

		Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)

		Insert Into Secure.OrganizationObject (UniqueID, ObjectName, ParentObjectID, Category, VirtualName) Values (@uniqueID, @name, @parentID, @category, @vName)
	End Try
	Begin Catch
		RaisError('Create an organization object error!', 16, 1)
	End Catch
End
GO
/****** 对象:  StoredProcedure [Sp].[CreateUserOperateBehavior]    脚本日期: 09/10/2014 15:42:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	创建用户操作日志。
*/

CREATE Procedure [Sp].[CreateUserOperateBehavior]
	@userID As Uniqueidentifier,
	@methodName As Varchar(512),
	@typeName As Varchar(Max),
	@version As Varchar(36)
As
Begin
	Begin Tran TraceOperateTrans
	Begin Try
		Declare @uniqueID As Uniqueidentifier; SEt @uniqueID = Newid()
		
		Declare @openID As VArchar(256); Set @openID = Fn.CreateOpenID(@uniqueID)

		Insert Into Basic.ObjectBase (ObjectID, OpenID, Comments) Values (@uniqueID, @openID, 'User operation behavior trace!')

		Insert Into Secure.BaseLogTrace Values (@uniqueID, @methodName, @typeName, @version, @userID)

		Commit Tran TraceOperateTrans
	End Try
	Begin Catch
		Rollback Tran TraceOperateTrans
	End Catch
End
GO
/****** 对象:  View [Secure].[StaffAccountCollection]    脚本日期: 09/10/2014 15:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有的人员账户。
*/

Create View [Secure].[StaffAccountCollection]
As
	Select
			SC.UniqueID As 'StaffAccountUniqueID',
			SC.StaffID As 'AssociatedStaffUniqueID',
			SC.IsLocked As 'AccountLockState',
			Codes.PredefinedCode,
			SC.LockedTime As 'AccountWasLockedTime',
			SC.UnlockTime As 'AccountUnlockedTime',
			A.UniqueID As 'AccountUniqueID',
			A.UserID As 'UserName',
			A.Passphrase As 'Password',
			A.EmptyPass As 'AllowEmptyPassword',
			Obj.ObjectID As 'StaffAccountObjectID',
			U.*
		From Secure.StaffAccount SC
		Left Join Basic.PredefinedCodeCollection Codes On Codes.PredefinedCodeUniqueID = SC.LockReason
		Left Join Secure.Account A On A.UniqueID = SC.UniqueID
		Left Join Basic.ObjectBase Obj On Obj.ObjectID = SC.UniqueID
		Left Join Secure.StaffCollection U On U.StaffUniqueID = SC.StaffID
GO
/****** 对象:  StoredProcedure [Sp].[CreateSystemCode]    脚本日期: 09/10/2014 15:42:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	用于创建系统预定义代码。
*/

CREATE Procedure [Sp].[CreateSystemCode]
	@blockID As Uniqueidentifier,
	@code As Varchar(64),
	@uniqueID As Uniqueidentifier = NULL Output,
	@openID As Varchar(256) = NULL Output
As
Begin
	If @uniqueID Is Null
		Set @uniqueID = NewID()
	
	Set @openID = Fn.CreateOpenID(@uniqueID)

	Begin Tran CreateCodeTrans
	Begin Try
		Insert Into Basic.ObjectBase (
				ObjectID, OpenID
			)
			Values (
				@uniqueID, @openID
			)

		Insert Into Basic.PredefinedCode Values (@uniqueID, @blockID, @code)

		Commit Tran CreateCodeTrans
	End Try
	Begin Catch
		Rollback Tran CreateCodeTrans
	End Catch
End
GO
/****** 对象:  StoredProcedure [Sp].[InitializeRegions]    脚本日期: 09/10/2014 15:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	初始化区域信息
*/

CREATE Procedure [Sp].[InitializeRegions]
As
Begin
	Declare @uniqueID As Uniqueidentifier
	
	Declare @openID As Varchar(256)

	Declare @rootID As Uniqueidentifier

	Set @uniqueID = Newid(); 
	Set @rootID = @uniqueID
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@rootID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '中华人民共和国', NULL)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '北京市', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '天津市', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '上海市', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '重庆市', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '黑龙江省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '吉林省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '辽宁省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '江苏省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '山东省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '安徽省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '河北省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '河南省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '湖北省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '湖南省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '江西省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '山西省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '陕西省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '四川省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '青海省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '海南省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '广东省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '贵州省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '浙江省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '福建省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '台湾省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '甘肃省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '云南省', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '内蒙古自治区', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '新疆维吾尔族自治区', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '宁夏回族自治区', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '广西壮族自治区', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '西藏自治区', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '香港特别行政区', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, '澳门特别行政区', @rootID)
End
GO
/****** 对象:  StoredProcedure [Sp].[InitializeCredentialsTypes]    脚本日期: 09/10/2014 15:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	初始化证件类型
*/

Create Procedure [Sp].[InitializeCredentialsTypes]
As
Begin
	Declare @uniqueID As Uniqueidentifier
	Declare @openID As Varchar(256)

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, '居民身份证')

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, '护照')

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, '港澳通行证')

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, '驾驶执照')

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, '居民户口本')

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, '军官证')

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, '警官证')
End
GO
/****** 对象:  StoredProcedure [Sp].[CreateAdministrator]    脚本日期: 09/10/2014 15:42:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	创建一个系统管理员。
*/

CREATE Procedure [Sp].[CreateAdministrator]
	@userID Varchar(512) = 'Administrator',
	@password Varchar(Max) = NULL,
	@isNTUser Char(1) = 'N',
	@isDefault Char(1) = 'N',
	@emptyPWD Char(1) = 'N',
	@uniqueID As Uniqueidentifier = NULL Output,
	@openID As Varchar(256) = NULL Output
As
Begin
	Set @uniqueID = NewID()

	Set @openID = Fn.CreateOpenID(@uniqueID)

	If (Upper(@emptyPWD) = 'N') And (@password Is Not Null) And (@password <> '') Begin
		Set @password = Fn.GetHashPassword(@userID, @password)
	End

	Begin Tran CreateAdminTrans
	Begin Try
		Declare @countTag As Int; Set @countTag = 0
		Set @countTag = (
				Select Count(AdministratorAccount) From Secure.AdministratorCollection
					Where
						Upper(AdministratorAccount) = Upper(@userID)
			)
	
		If @countTag = 0 Begin
			Insert Into Secure.AdministratorCollection (
					AdministratorObjectID,
					AdministratorOpenID
				)
				Values (
					@uniqueID, @openID
				)

			Insert Into Secure.AdministratorCollection (
					AdministratorAccountID,
					AdministratorAccount,
					AdministratorPassword,
					AllowEmptyPassword
				)
				Values (
					@uniqueID, @userID, @password, @emptyPWD
				)

			Insert Into Secure.AdministratorCollection (
					NTAdministrator,
					IsDefaultAdministrator,
					AdministratorID
				)
				Values (
					@isNTUser, @isDefault, @uniqueID
				)
		End Else Begin
			Update Secure.AdministratorCollection Set
					AdministratorPassword = @password
				Where
					Upper(AdministratorAccount) = Upper(@userID)
		End

		Commit Tran CreateAdminTrans
	End Try
	Begin Catch
		Rollback Tran CreateAdminTrans
	End Catch
End
GO
/****** 对象:  StoredProcedure [Sp].[CreateApplicationBlock]    脚本日期: 09/10/2014 15:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	创建一个应用模块。
*/

CREATE Procedure [Sp].[CreateApplicationBlock]
	@blockName As Nvarchar(128),
	@blockCode As Varchar(128),
	@blockParentID As Uniqueidentifier = NULL,
	@xExpandoObject As Xml = NULL,
	@uniqueID As Uniqueidentifier = NULL Output,
	@openID As Varchar(256) = NULL Output
As
Begin
	If @uniqueID Is Null Begin
		Set @uniqueID = NewID();
	End

	Set @openID = Fn.CreateOpenID(@uniqueID)

	Begin Tran CreateApplicationBlockTrans
	Begin Try

		Insert Into Basic.ApplicationBlockCollection (
				ApplicationBlockObjectID,
				ApplicationBlockOpenID
			) Values (
				@uniqueID,
				@openID
			)

		Insert Into Basic.ApplicationBlockCollection (
				ApplicationBlockID,
				ApplicationBlockName,
				ParentApplicationBlockID,
				ApplicationBlockCode,
				ApplicationBlockExpandoObject
			) Values (
				@uniqueID,
				@blockName,
				@blockParentID,
				@blockCode,
				@xExpandoObject
			)

		Commit Tran CreateApplicationBlockTrans

	End Try
	Begin Catch

		Rollback Tran CreateApplicationBlockTrans

	End Catch
End
GO
/****** 对象:  View [Basic].[ApplicationBlockVisibleCollection]    脚本日期: 09/10/2014 15:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有可见的应用模块信息。
*/

Create View [Basic].[ApplicationBlockVisibleCollection]
As
	Select * From Basic.ApplicationBlockEnabledCollection
		Where 
			Upper(ApplicationBlockVisibleState) = 'Y'
GO
/****** 对象:  View [Secure].[AdministratorVisibleCollection]    脚本日期: 09/10/2014 15:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有可见的系统管理员
*/

CREATE View [Secure].[AdministratorVisibleCollection]
As
	Select * From Secure.AdministratorEnabledCollection
		Where
			Upper(IsDefaultAdministrator) = 'N'
			And
			Upper(AdministratorVisibleState) = 'Y'
GO
/****** 对象:  StoredProcedure [Sp].[GetAccountUseIdentityToken]    脚本日期: 09/10/2014 15:42:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	根据身份令牌获取账户信息。
*/

Create Procedure [Sp].[GetAccountUseIdentityToken]
	@token As Varchar(Max),
	@userName As Varchar(512) = NULL Output,
	@uniqueID As Uniqueidentifier = NULL Output,
	@openID As Varchar(256) = NULL Output
As
Begin
	Select 
			@userName = UserName,
			@uniqueID = SigninAccountID,
			@openID = AccountOpenID
		From Secure.SigninTokenCollection
		Where
			TokenExpression = @token
End
GO
/****** 对象:  StoredProcedure [Sp].[GetStaffCollection]    脚本日期: 09/10/2014 15:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*获取指定职位下的所有人员*/

Create Procedure [Sp].[GetStaffCollection]
	@openID As Varchar(256)
As
Begin
	Declare @positionID As Uniqueidentifier; Set @positionID = Fn.TransferUniqueID(@openID)

	Select * From Secure.StaffCollection 
		Where 
			StaffPosition = @positionID
			And
			Upper(OrganizationWasRemoved) = 'N'
End
GO
/****** 对象:  View [Secure].[PositionVisibleCollection]    脚本日期: 09/10/2014 15:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	获取所有可见的职位信息
*/

Create View [Secure].[PositionVisibleCollection]
As
	Select * From Secure.PositionCollection
		Where
			Upper(OrganizationWasRemoved) = 'N'
			And
			Upper(OrganizationEnabledState) = 'Y'
			And
			Upper(OrganizationVisibleState) = 'Y'
GO
/****** 对象:  StoredProcedure [Sp].[CreateStaff]    脚本日期: 09/10/2014 15:42:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	创建人员信息。
*/

CREATE Procedure [Sp].[CreateStaff]
	@xData As Xml
As
Begin
	Set @xData = @xData.query('
			declare namespace eh="urn:Masterduner@Yeah.net";
			eh:EnterpriseServices/eh:SqlServerDatabase/eh:VariableDeclarations/eh:StoredProcedure[@Name="Sp.CreateStaff"]/eh:Parameter[@Name="xData"]
		')

	Declare @lastName As NVarchar(64);
	Set @lastName = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:BasicInfo/eh:Name/@LastName)[1]
			',
			'NVarchar(64)'
		)

	Declare @firstName As NVarchar(64);
	Set @firstName = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:BasicInfo/eh:Name/@FirstName)[1]
			',
			'NVarchar(64)'
		)

	Declare @name As NVarchar(512); Set @name = @lastName + ' ' + @firstName

	Declare @gender As Char(1);
	Set @gender = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:BasicInfo/eh:Gender/@Value)[1]
			',
			'Char(1)'
		)

	Declare @birthDate As DateTime;
	Set @birthDate = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:BasicInfo/eh:Birth/@Date)[1]
			',
			'DateTime'
		)

	Declare @birthPlaceID As Uniqueidentifier;
	Set @birthPlaceID = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:BasicInfo/eh:Birth/@PlaceID)[1]
			',
			'Uniqueidentifier'
		)
	If (Fn.IsEmptyGuid(@birthPlaceID) = 1)
		Set @birthPlaceID = NULL

	Declare @residentialAddr As Nvarchar(Max)
	Set @residentialAddr = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:ExpandedInfo/eh:HomeAddress/@Value)[1]
			',
			'NVarchar(Max)'
		)

	Declare @credentialsTypeID As Uniqueidentifier;
	Set @credentialsTypeID = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:ExpandedInfo/eh:Credentials/@TypeID)[1]
			',
			'Uniqueidentifier'
		)
	If (Fn.IsEmptyGuid(@credentialsTypeID) = 1)
		Set @credentialsTypeID = NULL

	Declare @credentialsNO As Varchar(128);
	Set @credentialsNO = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:ExpandedInfo/eh:Credentials/@NO)[1]
			',
			'Varchar(128)'
		)

	Declare @officePhoneNO As Varchar(16);
	Set @officePhoneNO = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:ExpandedInfo/eh:ContactMethods/eh:OfficePhone/@NO)[1]
			',
			'Varchar(16)'
		)

	Declare @mobilePhoneNO As Varchar(16)
	Set @mobilePhoneNO = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:ExpandedInfo/eh:ContactMethods/eh:MobilePhone/@NO)[1]
			',
			'Varchar(16)'
		)

	Declare @email As Varchar(512)
	Set @email = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:ExpandedInfo/eh:ContactMethods/eh:EmailAddress/@Value)[1]
			',
			'Varchar(512)'
		)

	Declare @entryDate As DateTime
	Set @entryDate = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:ExpandedInfo/eh:JoinInfo/eh:JoinDate/@Value)[1]
			',
			'DateTime'
		)

	Declare @isProbation As Char(1)
	Set @isProbation = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:ExpandedInfo/eh:JoinInfo/eh:Probation/@InProbation)[1]
			',
			'Char(1)'
		)

	Declare @probationLen As Int
	Set @probationLen = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:ExpandedInfo/eh:JoinInfo/eh:Probation/@ProbationLength)[1]
			',
			'Int'
		)

	Declare @autoConversion As Char(1)
	Set @autoConversion = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:ExpandedInfo/eh:JoinInfo/eh:Probation/@AutomicConversion)[1]
			',
			'Char(1)'
		)

	Declare @positionID As Uniqueidentifier
	Set @positionID = @xData.value('
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:Parameter/eh:Position/@UniqueID)[1]
			',
			'Uniqueidentifier'
		)

	Declare @organizationID As Uniqueidentifier
	Select @organizationID = ParentObjectID From Secure.OrganizationObject
		Where UniqueID = @positionID

	Declare @uniqueID As Uniqueidentifier; Set @uniqueID = Newid()

	Begin Tran CreateStaffTrans
	Begin Try
		Exec Sp.CreateOrganizationObject @uniqueID Output, @name, @positionID, 4

		Insert Into Secure.Staff Values (
				@uniqueID,
				@lastName,
				@firstName,
				@organizationID,
				@gender,
				@birthDate,
				@birthPlaceID,
				@residentialAddr,
				@credentialsTypeID,
				@credentialsNO,
				@positionID,
				@officePhoneNO,
				@mobilePhoneNO,
				@email,
				@entryDate,
				@isProbation,
				@probationLen,
				@autoConversion
			)
		
		Commit Tran CreateStaffTrans
	End Try
	Begin Catch
		Select Error_Message()
		Rollback Tran CreateStaffTrans
	End Catch
End
GO
/****** 对象:  StoredProcedure [Sp].[CreatePosition]    脚本日期: 09/10/2014 15:42:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	创建职位信息。
*/

Create Procedure [Sp].[CreatePosition]
	@name As NVarchar(512),
	@organizationID As Uniqueidentifier,
	@forceCreate As Char(1) = 'N',
	@isPrincipal As Char(1) = 'N'
As
Begin
	Declare @result As Int; Set @result = 0;
	
	If (Upper(@forceCreate) = 'N') And (Upper(@isPrincipal) = 'Y') Begin
		Select @result = Count(UniqueID) From Secure.Organization
			Where
				UniqueID = @organizationID
				And
				PrincipalPositionID Is NOT NULL
	End

	If (@result = 0) Begin
		Begin Tran CreatePositionTrans
		Begin Try
			Declare @uniqueID As Uniqueidentifier

			Exec Sp.CreateOrganizationObject @uniqueID Output, @name, @organizationID, 3

			Insert Into Secure.Position Values (@uniqueID, @organizationID)

			If (Upper(@isPrincipal) = 'Y') Begin
				Update Secure.Organization Set PrincipalPositionID = @uniqueID
					Where UniqueID = @organizationID
			End

			Commit Tran CreatePositionTrans
		End Try
		Begin Catch
			Rollback Tran CreatePositionTrans
		End Catch
	End

	Select @result
End
GO
/****** 对象:  StoredProcedure [Sp].[CreateOrganization]    脚本日期: 09/10/2014 15:42:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	创建组织机构。
*/

CREATE Procedure [Sp].[CreateOrganization]
	@name As NVarchar(512),
	@parentID As Uniqueidentifier = NULL,
	@isVirtual As Char(1) = 'N'
As
Begin
	Begin Tran CreateOrganizationTrans
	Begin Try
		Declare @uniqueID As Uniqueidentifier

		Declare @category As Int; Set @category = (Case When @isVirtual = 'Y' Then 2 Else 1 End)

		Exec Sp.CreateOrganizationObject 
			@uniqueID = @uniqueID Output, 
			@name = @name,
			@parentID = @parentID,
			@category = @category

		Insert Into Secure.Organization (UniqueID) Values (@uniqueID)

		Commit Tran CreateOrganizationTrans
	End Try
	Begin Catch
		Rollback Tran CreateOrganizationTrans
	End Catch
End
GO
/****** 对象:  StoredProcedure [Sp].[InitializeApplicationBlocks]    脚本日期: 09/10/2014 15:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	用于初始化所有的应用程序模块。
*/

CREATE Procedure [Sp].[InitializeApplicationBlocks]
	@xData As Xml
As
Begin
	If (@xData Is Not Null) Begin
		Declare @xCount As Int; Set @xCount = 0;
		
		Declare @xTempData As Xml; Set @xTempData = NULL;

		Declare @xIndex As Int; Set @xIndex = 0;

		Declare @xUniqueID As Uniqueidentifier;

		Declare @xName As Nvarchar(128);

		Declare @xCode As Varchar(128);

		Declare @xParentID As Varchar(36);

		Declare @parentID As Uniqueidentifier;
		
		Set @xCount = @xData.value(
				'
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:EnterpriseServices/eh:InitializationUtil/eh:ApplicationBlockDeclaration/eh:ApplicationBlocks/@Count)[1]
				',
				'Int'
			)
		If (@xCount > 0) Begin
			Set @xIndex = 0
			While (@xIndex < @xCount) Begin
				Set @xTempData = @xData.query(
						'
						declare namespace eh="urn:Masterduner@Yeah.net";
						eh:EnterpriseServices/eh:InitializationUtil/eh:ApplicationBlockDeclaration/eh:ApplicationBlocks/eh:Item[@Index=sql:variable("@xIndex")]
						'
					)
				Set @xUniqueID = @xTempData.value(
						'
						declare namespace eh="urn:Masterduner@Yeah.net";
						(eh:Item/@UniqueID)[1]
						',
						'Uniqueidentifier'
					)
				Set @xName = @xTempData.value(
						'
						declare namespace eh="urn:Masterduner@Yeah.net";
						(eh:Item/@Name)[1]
						',
						'Nvarchar(128)'
					)
				Set @xCode = @xTempData.value(
						'
						declare namespace eh="urn:Masterduner@Yeah.net";
						(eh:Item/@Code)[1]
						',
						'Varchar(128)'
					)
				Set @xParentID = @xTempData.value(
						'
						declare namespace eh="urn:Masterduner@Yeah.net";
						(eh:Item/@Parent)[1]
						',
						'Varchar(36)'
					)
				
				If (@xParentID Is NULL) Or (@xParentID = '(none)') Or (@xParentID = '') 
					Set @parentID = NULL
				Else
					Set @parentID = Cast(@xParentID As Uniqueidentifier)

				Exec Sp.CreateApplicationBlock 
					@blockName = @xName,
					@blockCode = @xCode,
					@blockParentID = @parentID,
					@uniqueID = @xUniqueID Output
				Set @xIndex = @xIndex + 1
			End
		End
	End
End
GO
/****** 对象:  StoredProcedure [Sp].[ExecuteWinNTAuthentication]    脚本日期: 09/10/2014 15:42:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Windows 身份认证
*/

CREATE Procedure [Sp].[ExecuteWinNTAuthentication]
	@xData As Xml,
	@token As Varchar(Max) = NULL Output,
	@state As Varchar(64) = NULL Output
As
Begin
	Declare @clientIP As Varchar(64)
	Set @clientIP = @xData.value(
			'declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:EnterpriseServices/eh:SqlServerDatabase/eh:VariableDeclarations/eh:StoredProcedure[@Name="Sp.ExecuteWinNTAuthentication"]/eh:Parameter[@Name="xData"]/eh:Client/@IPAddress)[1]
			',
			'Varchar(64)'
		)

	Declare @hostName As Varchar(64)
	Set @hostName = @xData.value(
			'declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:EnterpriseServices/eh:SqlServerDatabase/eh:VariableDeclarations/eh:StoredProcedure[@Name="Sp.ExecuteWinNTAuthentication"]/eh:Parameter[@Name="xData"]/eh:Client/@HostName)[1]
			',
			'Varchar(64)'
		)

	Declare @userID As Varchar(512)
	Set @userID = @xData.value(
			'declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:EnterpriseServices/eh:SqlServerDatabase/eh:VariableDeclarations/eh:StoredProcedure[@Name="Sp.ExecuteWinNTAuthentication"]/eh:Parameter[@Name="xData"]/eh:UserID/@Value)[1]
			',
			'Varchar(512)'
		)

	Declare @expiration As DateTime
	Set @expiration = @xData.value(
			'declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:EnterpriseServices/eh:SqlServerDatabase/eh:VariableDeclarations/eh:StoredProcedure[@Name="Sp.ExecuteWinNTAuthentication"]/eh:Parameter[@Name="xData"]/eh:Expiration/@Value)[1]
			',
			'DateTime'
		)

	Declare @exists As Int;
	Set @exists = (
			Select Count(Admins.AdministratorID) From Secure.AdministratorCollection Admins
				Where 
					Upper(Admins.AdministratorAccount) = Upper(@userID)
					And
					Upper(Admins.NTAdministrator) = 'Y'
		)
	If (@exists Is Null) Or (@exists = 0) Begin
		Set @state = 'ERROR::00000008'
		
		Exec Sp.CreateSignInAction @clientIP = @clientIP, @hostName = @hostName, @platform = 1, @succeedTag = 'N', @code = @state, @userName = @userID
	End
	Else Begin
		Declare @enabled As Int;
		Set @enabled = (
				Select Count(Admins.AdministratorID) From Secure.AdministratorEnabledCollection Admins
					Where
						Upper(Admins.AdministratorAccount) = Upper(@userID)
						And
						Upper(Admins.NTAdministrator) = 'Y'
			)
		If (@enabled Is Null) Or (@enabled = 0) Begin
			Set @state = 'ERROR::00000007'
			
			Exec Sp.CreateSignInAction @clientIP = @clientIP, @hostName = @hostName, @platform = 1, @succeedTag = 'N', @code = @state, @userName = @userID
		End
		Else Begin
			Declare @actionID As Uniqueidentifier

			Exec Sp.CreateSignInAction @clientIP = @clientIP, @hostName = @hostName, @platform = 1, @succeedTag = 'Y', @code = '0', @userName = @userID, @actionID = @actionID Output

			Exec Sp.CreateSignInToken @clientIP = @clientIP, @hostName = @hostName, @actionID = @actionID, @expired = @expiration, @token = @token Output
		End
	End
End
GO
/****** 对象:  StoredProcedure [Sp].[InitializeCodes]    脚本日期: 09/10/2014 15:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	用于初始化系统预定义代码。
*/

CREATE Procedure [Sp].[InitializeCodes]
	@xData As Xml
As
Begin
	If @xData Is Not Null Begin
		Declare @xCount As Int
		Set @xCount = @xData.value(
				'
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:EnterpriseServices/eh:InitializationUtil/eh:SystemCodesDeclaration/eh:Codes/@Count)[1]
				',
				'Int'
			)
		
		Declare @xIndex As Int; Set @xIndex = 0
		
		Declare @xTempData As Xml

		Declare @xCode As Varchar(64)

		Declare @xBlockID As Uniqueidentifier

		While (@xIndex < @xCount) Begin
			Set @xTempData = @xData.query(
					'
					declare namespace eh="urn:Masterduner@Yeah.net";
					eh:EnterpriseServices/eh:InitializationUtil/eh:SystemCodesDeclaration/eh:Codes/eh:Item[@Index=sql:variable("@xIndex")]
					'
				)

			Set @xCode = @xTempData.value('declare namespace eh="urn:Masterduner@Yeah.net";(eh:Item/@Code)[1]', 'Varchar(64)')

			Set @xBlockID = @xTempData.value('declare namespace eh="urn:Masterduner@Yeah.net";(eh:Item/@BlockID)[1]', 'Uniqueidentifier')

			Exec Sp.CreateSystemCode 
				@code = @xCode,
				@blockID = @xBlockID

			Set @xIndex = @xIndex + 1
		End
	End
End
GO
/****** 对象:  StoredProcedure [Sp].[ResetDatabase]    脚本日期: 09/10/2014 15:42:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	用于清空数据库。
*/

CREATE Procedure [Sp].[ResetDatabase]
As
Begin
	--首先：禁用所有表的外键约束
	Exec sp_MSforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL'
	--之后：删除所有表的数据
	Exec sp_MSforeachtable 'Delete From ?'
	--最后：启用所有表的外键约束
	Exec sp_MSforeachtable 'ALTER TABLE ? CHECK CONSTRAINT ALL'

	Exec Sp.InitializeRegions

	Exec Sp.InitializeCredentialsTypes
End
GO
/****** 对象:  ForeignKey [FK_ApplicationBlock_ObjectBase]    脚本日期: 09/10/2014 15:42:49 ******/
ALTER TABLE [Basic].[ApplicationBlock]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationBlock_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[ApplicationBlock] CHECK CONSTRAINT [FK_ApplicationBlock_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_ApplicationBlock_ObjectBase_02]    脚本日期: 09/10/2014 15:42:49 ******/
ALTER TABLE [Basic].[ApplicationBlock]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationBlock_ObjectBase_02] FOREIGN KEY([ParentBlockID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[ApplicationBlock] CHECK CONSTRAINT [FK_ApplicationBlock_ObjectBase_02]
GO
/****** 对象:  ForeignKey [FK_CredentialsType_ObjectBase]    脚本日期: 09/10/2014 15:42:50 ******/
ALTER TABLE [Basic].[CredentialsType]  WITH NOCHECK ADD  CONSTRAINT [FK_CredentialsType_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[CredentialsType] CHECK CONSTRAINT [FK_CredentialsType_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_FileMapRelation_FileObject]    脚本日期: 09/10/2014 15:42:52 ******/
ALTER TABLE [Basic].[FileMapRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_FileMapRelation_FileObject] FOREIGN KEY([FileID])
REFERENCES [Basic].[FileObject] ([UniqueID])
GO
ALTER TABLE [Basic].[FileMapRelation] CHECK CONSTRAINT [FK_FileMapRelation_FileObject]
GO
/****** 对象:  ForeignKey [FK_FileMapRelation_ObjectBase]    脚本日期: 09/10/2014 15:42:52 ******/
ALTER TABLE [Basic].[FileMapRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_FileMapRelation_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[FileMapRelation] CHECK CONSTRAINT [FK_FileMapRelation_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_FileObject_ObjectBase]    脚本日期: 09/10/2014 15:42:55 ******/
ALTER TABLE [Basic].[FileObject]  WITH NOCHECK ADD  CONSTRAINT [FK_FileObject_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[FileObject] CHECK CONSTRAINT [FK_FileObject_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_FileStream_FileObject]    脚本日期: 09/10/2014 15:42:56 ******/
ALTER TABLE [Basic].[FileStream]  WITH NOCHECK ADD  CONSTRAINT [FK_FileStream_FileObject] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[FileObject] ([UniqueID])
GO
ALTER TABLE [Basic].[FileStream] CHECK CONSTRAINT [FK_FileStream_FileObject]
GO
/****** 对象:  ForeignKey [FK_GlobalRegion_ObjectBase]    脚本日期: 09/10/2014 15:42:57 ******/
ALTER TABLE [Basic].[GlobalRegion]  WITH NOCHECK ADD  CONSTRAINT [FK_GlobalRegion_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[GlobalRegion] CHECK CONSTRAINT [FK_GlobalRegion_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_HotfixRelease_ApplicationBlock]    脚本日期: 09/10/2014 15:42:59 ******/
ALTER TABLE [Basic].[HotfixRelease]  WITH NOCHECK ADD  CONSTRAINT [FK_HotfixRelease_ApplicationBlock] FOREIGN KEY([BlockID])
REFERENCES [Basic].[ApplicationBlock] ([UniqueID])
GO
ALTER TABLE [Basic].[HotfixRelease] CHECK CONSTRAINT [FK_HotfixRelease_ApplicationBlock]
GO
/****** 对象:  ForeignKey [FK_HotfixRelease_ObjectBase]    脚本日期: 09/10/2014 15:42:59 ******/
ALTER TABLE [Basic].[HotfixRelease]  WITH NOCHECK ADD  CONSTRAINT [FK_HotfixRelease_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[HotfixRelease] CHECK CONSTRAINT [FK_HotfixRelease_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_HotfixRelease_PredefinedCode]    脚本日期: 09/10/2014 15:43:00 ******/
ALTER TABLE [Basic].[HotfixRelease]  WITH NOCHECK ADD  CONSTRAINT [FK_HotfixRelease_PredefinedCode] FOREIGN KEY([CodeID])
REFERENCES [Basic].[PredefinedCode] ([UniqueID])
GO
ALTER TABLE [Basic].[HotfixRelease] CHECK CONSTRAINT [FK_HotfixRelease_PredefinedCode]
GO
/****** 对象:  ForeignKey [FK_PredefinedCode_ApplicationBlock]    脚本日期: 09/10/2014 15:43:04 ******/
ALTER TABLE [Basic].[PredefinedCode]  WITH NOCHECK ADD  CONSTRAINT [FK_PredefinedCode_ApplicationBlock] FOREIGN KEY([BlockID])
REFERENCES [Basic].[ApplicationBlock] ([UniqueID])
GO
ALTER TABLE [Basic].[PredefinedCode] CHECK CONSTRAINT [FK_PredefinedCode_ApplicationBlock]
GO
/****** 对象:  ForeignKey [FK_PredefinedCode_ObjectBase]    脚本日期: 09/10/2014 15:43:04 ******/
ALTER TABLE [Basic].[PredefinedCode]  WITH NOCHECK ADD  CONSTRAINT [FK_PredefinedCode_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[PredefinedCode] CHECK CONSTRAINT [FK_PredefinedCode_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PredefinedCode_ObjectBase_02]    脚本日期: 09/10/2014 15:43:04 ******/
ALTER TABLE [Basic].[PredefinedCode]  WITH NOCHECK ADD  CONSTRAINT [FK_PredefinedCode_ObjectBase_02] FOREIGN KEY([BlockID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[PredefinedCode] CHECK CONSTRAINT [FK_PredefinedCode_ObjectBase_02]
GO
/****** 对象:  ForeignKey [FK_Account_ObjectBase]    脚本日期: 09/10/2014 15:43:06 ******/
ALTER TABLE [Secure].[Account]  WITH NOCHECK ADD  CONSTRAINT [FK_Account_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Account] CHECK CONSTRAINT [FK_Account_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_AccountExpirationPolicy_Account]    脚本日期: 09/10/2014 15:43:07 ******/
ALTER TABLE [Secure].[AccountExpirationPolicy]  WITH NOCHECK ADD  CONSTRAINT [FK_AccountExpirationPolicy_Account] FOREIGN KEY([AccountID])
REFERENCES [Secure].[Account] ([UniqueID])
GO
ALTER TABLE [Secure].[AccountExpirationPolicy] CHECK CONSTRAINT [FK_AccountExpirationPolicy_Account]
GO
/****** 对象:  ForeignKey [FK_AccountExpirationPolicy_PassExpirationPolicy]    脚本日期: 09/10/2014 15:43:07 ******/
ALTER TABLE [Secure].[AccountExpirationPolicy]  WITH NOCHECK ADD  CONSTRAINT [FK_AccountExpirationPolicy_PassExpirationPolicy] FOREIGN KEY([PolicyID])
REFERENCES [Secure].[PassExpirationPolicy] ([UniqueID])
GO
ALTER TABLE [Secure].[AccountExpirationPolicy] CHECK CONSTRAINT [FK_AccountExpirationPolicy_PassExpirationPolicy]
GO
/****** 对象:  ForeignKey [FK_Administrator_Account]    脚本日期: 09/10/2014 15:43:08 ******/
ALTER TABLE [Secure].[Administrator]  WITH NOCHECK ADD  CONSTRAINT [FK_Administrator_Account] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[Account] ([UniqueID])
GO
ALTER TABLE [Secure].[Administrator] CHECK CONSTRAINT [FK_Administrator_Account]
GO
/****** 对象:  ForeignKey [FK_Administrator_ObjectBase]    脚本日期: 09/10/2014 15:43:09 ******/
ALTER TABLE [Secure].[Administrator]  WITH NOCHECK ADD  CONSTRAINT [FK_Administrator_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Administrator] CHECK CONSTRAINT [FK_Administrator_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_BaseLogTrace_Account]    脚本日期: 09/10/2014 15:43:10 ******/
ALTER TABLE [Secure].[BaseLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseLogTrace_Account] FOREIGN KEY([CallAccountID])
REFERENCES [Secure].[Account] ([UniqueID])
GO
ALTER TABLE [Secure].[BaseLogTrace] CHECK CONSTRAINT [FK_BaseLogTrace_Account]
GO
/****** 对象:  ForeignKey [FK_BaseLogTrace_ObjectBase]    脚本日期: 09/10/2014 15:43:11 ******/
ALTER TABLE [Secure].[BaseLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseLogTrace_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[BaseLogTrace] CHECK CONSTRAINT [FK_BaseLogTrace_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Organization_OrganizationObject]    脚本日期: 09/10/2014 15:43:12 ******/
ALTER TABLE [Secure].[Organization]  WITH NOCHECK ADD  CONSTRAINT [FK_Organization_OrganizationObject] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Organization] CHECK CONSTRAINT [FK_Organization_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_Organization_OrganizationObject_02]    脚本日期: 09/10/2014 15:43:12 ******/
ALTER TABLE [Secure].[Organization]  WITH NOCHECK ADD  CONSTRAINT [FK_Organization_OrganizationObject_02] FOREIGN KEY([PrincipalStaffID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Organization] CHECK CONSTRAINT [FK_Organization_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_Organization_OrganizationObject_03]    脚本日期: 09/10/2014 15:43:12 ******/
ALTER TABLE [Secure].[Organization]  WITH NOCHECK ADD  CONSTRAINT [FK_Organization_OrganizationObject_03] FOREIGN KEY([PrincipalPositionID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Organization] CHECK CONSTRAINT [FK_Organization_OrganizationObject_03]
GO
/****** 对象:  ForeignKey [FK_OrganizationObject_ObjectBase]    脚本日期: 09/10/2014 15:43:15 ******/
ALTER TABLE [Secure].[OrganizationObject]  WITH NOCHECK ADD  CONSTRAINT [FK_OrganizationObject_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[OrganizationObject] CHECK CONSTRAINT [FK_OrganizationObject_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_ParttimeRelation_ObjectBase]    脚本日期: 09/10/2014 15:43:16 ******/
ALTER TABLE [Secure].[ParttimeRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_ParttimeRelation_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[ParttimeRelation] CHECK CONSTRAINT [FK_ParttimeRelation_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_ParttimeRelation_OrganizationObject]    脚本日期: 09/10/2014 15:43:16 ******/
ALTER TABLE [Secure].[ParttimeRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_ParttimeRelation_OrganizationObject] FOREIGN KEY([StaffID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[ParttimeRelation] CHECK CONSTRAINT [FK_ParttimeRelation_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_ParttimeRelation_OrganizationObject_02]    脚本日期: 09/10/2014 15:43:16 ******/
ALTER TABLE [Secure].[ParttimeRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_ParttimeRelation_OrganizationObject_02] FOREIGN KEY([PositionID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[ParttimeRelation] CHECK CONSTRAINT [FK_ParttimeRelation_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_PassExpirationPolicy_ObjectBase]    脚本日期: 09/10/2014 15:43:18 ******/
ALTER TABLE [Secure].[PassExpirationPolicy]  WITH NOCHECK ADD  CONSTRAINT [FK_PassExpirationPolicy_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[PassExpirationPolicy] CHECK CONSTRAINT [FK_PassExpirationPolicy_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Permission_ObjectBase]    脚本日期: 09/10/2014 15:43:19 ******/
ALTER TABLE [Secure].[Permission]  WITH NOCHECK ADD  CONSTRAINT [FK_Permission_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Permission] CHECK CONSTRAINT [FK_Permission_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Permission_Subsystem]    脚本日期: 09/10/2014 15:43:19 ******/
ALTER TABLE [Secure].[Permission]  WITH NOCHECK ADD  CONSTRAINT [FK_Permission_Subsystem] FOREIGN KEY([SysID])
REFERENCES [Secure].[Subsystem] ([UniqueID])
GO
ALTER TABLE [Secure].[Permission] CHECK CONSTRAINT [FK_Permission_Subsystem]
GO
/****** 对象:  ForeignKey [FK_PermissionOrgSetting_ObjectBase]    脚本日期: 09/10/2014 15:43:20 ******/
ALTER TABLE [Secure].[PermissionOrgSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionOrgSetting_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[PermissionOrgSetting] CHECK CONSTRAINT [FK_PermissionOrgSetting_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PermissionOrgSetting_OrganizationObject]    脚本日期: 09/10/2014 15:43:20 ******/
ALTER TABLE [Secure].[PermissionOrgSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionOrgSetting_OrganizationObject] FOREIGN KEY([OrganizationID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[PermissionOrgSetting] CHECK CONSTRAINT [FK_PermissionOrgSetting_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_PermissionOrgSetting_Permission]    脚本日期: 09/10/2014 15:43:20 ******/
ALTER TABLE [Secure].[PermissionOrgSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionOrgSetting_Permission] FOREIGN KEY([PermissionID])
REFERENCES [Secure].[Permission] ([UniqueID])
GO
ALTER TABLE [Secure].[PermissionOrgSetting] CHECK CONSTRAINT [FK_PermissionOrgSetting_Permission]
GO
/****** 对象:  ForeignKey [FK_PermissionRoleSetting_ObjectBase]    脚本日期: 09/10/2014 15:43:22 ******/
ALTER TABLE [Secure].[PermissionRoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionRoleSetting_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[PermissionRoleSetting] CHECK CONSTRAINT [FK_PermissionRoleSetting_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PermissionRoleSetting_Permission]    脚本日期: 09/10/2014 15:43:22 ******/
ALTER TABLE [Secure].[PermissionRoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionRoleSetting_Permission] FOREIGN KEY([PermissionID])
REFERENCES [Secure].[Permission] ([UniqueID])
GO
ALTER TABLE [Secure].[PermissionRoleSetting] CHECK CONSTRAINT [FK_PermissionRoleSetting_Permission]
GO
/****** 对象:  ForeignKey [FK_PermissionRoleSetting_Role]    脚本日期: 09/10/2014 15:43:22 ******/
ALTER TABLE [Secure].[PermissionRoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionRoleSetting_Role] FOREIGN KEY([RoleID])
REFERENCES [Secure].[Role] ([UniqueID])
GO
ALTER TABLE [Secure].[PermissionRoleSetting] CHECK CONSTRAINT [FK_PermissionRoleSetting_Role]
GO
/****** 对象:  ForeignKey [FK_Position_OrganizationObject]    脚本日期: 09/10/2014 15:43:23 ******/
ALTER TABLE [Secure].[Position]  WITH NOCHECK ADD  CONSTRAINT [FK_Position_OrganizationObject] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Position] CHECK CONSTRAINT [FK_Position_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_Position_OrganizationObject_02]    脚本日期: 09/10/2014 15:43:23 ******/
ALTER TABLE [Secure].[Position]  WITH NOCHECK ADD  CONSTRAINT [FK_Position_OrganizationObject_02] FOREIGN KEY([OrganizationID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Position] CHECK CONSTRAINT [FK_Position_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_PositionRelation_ObjectBase]    脚本日期: 09/10/2014 15:43:24 ******/
ALTER TABLE [Secure].[PositionRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_PositionRelation_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[PositionRelation] CHECK CONSTRAINT [FK_PositionRelation_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PositionRelation_OrganizationObject]    脚本日期: 09/10/2014 15:43:24 ******/
ALTER TABLE [Secure].[PositionRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_PositionRelation_OrganizationObject] FOREIGN KEY([SuperiorID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[PositionRelation] CHECK CONSTRAINT [FK_PositionRelation_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_PositionRelation_OrganizationObject_02]    脚本日期: 09/10/2014 15:43:24 ******/
ALTER TABLE [Secure].[PositionRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_PositionRelation_OrganizationObject_02] FOREIGN KEY([CurrentID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[PositionRelation] CHECK CONSTRAINT [FK_PositionRelation_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_Role_ObjectBase]    脚本日期: 09/10/2014 15:43:26 ******/
ALTER TABLE [Secure].[Role]  WITH NOCHECK ADD  CONSTRAINT [FK_Role_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Role] CHECK CONSTRAINT [FK_Role_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Role_Subsystem]    脚本日期: 09/10/2014 15:43:26 ******/
ALTER TABLE [Secure].[Role]  WITH NOCHECK ADD  CONSTRAINT [FK_Role_Subsystem] FOREIGN KEY([SysID])
REFERENCES [Secure].[Subsystem] ([UniqueID])
GO
ALTER TABLE [Secure].[Role] CHECK CONSTRAINT [FK_Role_Subsystem]
GO
/****** 对象:  ForeignKey [FK_RoleSetting_ObjectBase]    脚本日期: 09/10/2014 15:43:27 ******/
ALTER TABLE [Secure].[RoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleSetting_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[RoleSetting] CHECK CONSTRAINT [FK_RoleSetting_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_RoleSetting_OrganizationObject]    脚本日期: 09/10/2014 15:43:28 ******/
ALTER TABLE [Secure].[RoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleSetting_OrganizationObject] FOREIGN KEY([OrganizationID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[RoleSetting] CHECK CONSTRAINT [FK_RoleSetting_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_RoleSetting_Role]    脚本日期: 09/10/2014 15:43:28 ******/
ALTER TABLE [Secure].[RoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleSetting_Role] FOREIGN KEY([RoleID])
REFERENCES [Secure].[Role] ([UniqueID])
GO
ALTER TABLE [Secure].[RoleSetting] CHECK CONSTRAINT [FK_RoleSetting_Role]
GO
/****** 对象:  ForeignKey [FK_SignInAction_Account]    脚本日期: 09/10/2014 15:43:31 ******/
ALTER TABLE [Secure].[SignInAction]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInAction_Account] FOREIGN KEY([AccountID])
REFERENCES [Secure].[Account] ([UniqueID])
GO
ALTER TABLE [Secure].[SignInAction] CHECK CONSTRAINT [FK_SignInAction_Account]
GO
/****** 对象:  ForeignKey [FK_SignInAction_ObjectBase]    脚本日期: 09/10/2014 15:43:31 ******/
ALTER TABLE [Secure].[SignInAction]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInAction_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[SignInAction] CHECK CONSTRAINT [FK_SignInAction_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_SignInLogTrace_BaseLogTrace]    脚本日期: 09/10/2014 15:43:32 ******/
ALTER TABLE [Secure].[SignInLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInLogTrace_BaseLogTrace] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[BaseLogTrace] ([UniqueID])
GO
ALTER TABLE [Secure].[SignInLogTrace] CHECK CONSTRAINT [FK_SignInLogTrace_BaseLogTrace]
GO
/****** 对象:  ForeignKey [FK_SignInLogTrace_ObjectBase]    脚本日期: 09/10/2014 15:43:32 ******/
ALTER TABLE [Secure].[SignInLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInLogTrace_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[SignInLogTrace] CHECK CONSTRAINT [FK_SignInLogTrace_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_SignInToken_ObjectBase]    脚本日期: 09/10/2014 15:43:33 ******/
ALTER TABLE [Secure].[SignInToken]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInToken_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[SignInToken] CHECK CONSTRAINT [FK_SignInToken_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_SignInToken_SignInAction]    脚本日期: 09/10/2014 15:43:34 ******/
ALTER TABLE [Secure].[SignInToken]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInToken_SignInAction] FOREIGN KEY([ActionID])
REFERENCES [Secure].[SignInAction] ([UniqueID])
GO
ALTER TABLE [Secure].[SignInToken] CHECK CONSTRAINT [FK_SignInToken_SignInAction]
GO
/****** 对象:  ForeignKey [FK_SqlLogTrace_BaseLogTrace]    脚本日期: 09/10/2014 15:43:35 ******/
ALTER TABLE [Secure].[SqlLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_SqlLogTrace_BaseLogTrace] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[BaseLogTrace] ([UniqueID])
GO
ALTER TABLE [Secure].[SqlLogTrace] CHECK CONSTRAINT [FK_SqlLogTrace_BaseLogTrace]
GO
/****** 对象:  ForeignKey [FK_SqlLogTrace_ObjectBase]    脚本日期: 09/10/2014 15:43:35 ******/
ALTER TABLE [Secure].[SqlLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_SqlLogTrace_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[SqlLogTrace] CHECK CONSTRAINT [FK_SqlLogTrace_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Staff_CredentialsType]    脚本日期: 09/10/2014 15:43:41 ******/
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_CredentialsType] FOREIGN KEY([CredentialsTypeID])
REFERENCES [Basic].[CredentialsType] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_CredentialsType]
GO
/****** 对象:  ForeignKey [FK_Staff_GlobalRegion]    脚本日期: 09/10/2014 15:43:41 ******/
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_GlobalRegion] FOREIGN KEY([BirthPlaceID])
REFERENCES [Basic].[GlobalRegion] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_GlobalRegion]
GO
/****** 对象:  ForeignKey [FK_Staff_ObjectBase]    脚本日期: 09/10/2014 15:43:41 ******/
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Staff_OrganizationObject]    脚本日期: 09/10/2014 15:43:41 ******/
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_OrganizationObject] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_Staff_OrganizationObject_02]    脚本日期: 09/10/2014 15:43:42 ******/
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_OrganizationObject_02] FOREIGN KEY([OrganizationID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_Staff_OrganizationObject_03]    脚本日期: 09/10/2014 15:43:42 ******/
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_OrganizationObject_03] FOREIGN KEY([PositionID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_OrganizationObject_03]
GO
/****** 对象:  ForeignKey [FK_StaffAccount_ObjectBase]    脚本日期: 09/10/2014 15:43:45 ******/
ALTER TABLE [Secure].[StaffAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_StaffAccount_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[StaffAccount] CHECK CONSTRAINT [FK_StaffAccount_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_StaffAccount_OrganizationObject]    脚本日期: 09/10/2014 15:43:45 ******/
ALTER TABLE [Secure].[StaffAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_StaffAccount_OrganizationObject] FOREIGN KEY([StaffID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[StaffAccount] CHECK CONSTRAINT [FK_StaffAccount_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_StaffAccount_PredefinedCode]    脚本日期: 09/10/2014 15:43:45 ******/
ALTER TABLE [Secure].[StaffAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_StaffAccount_PredefinedCode] FOREIGN KEY([LockReason])
REFERENCES [Basic].[PredefinedCode] ([UniqueID])
GO
ALTER TABLE [Secure].[StaffAccount] CHECK CONSTRAINT [FK_StaffAccount_PredefinedCode]
GO
/****** 对象:  ForeignKey [FK_SubsysAdministrator_OrganizationObject]    脚本日期: 09/10/2014 15:43:46 ******/
ALTER TABLE [Secure].[SubsysAdministrator]  WITH NOCHECK ADD  CONSTRAINT [FK_SubsysAdministrator_OrganizationObject] FOREIGN KEY([StaffID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[SubsysAdministrator] CHECK CONSTRAINT [FK_SubsysAdministrator_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_SubsysAdministrator_Subsystem]    脚本日期: 09/10/2014 15:43:46 ******/
ALTER TABLE [Secure].[SubsysAdministrator]  WITH NOCHECK ADD  CONSTRAINT [FK_SubsysAdministrator_Subsystem] FOREIGN KEY([SysID])
REFERENCES [Secure].[Subsystem] ([UniqueID])
GO
ALTER TABLE [Secure].[SubsysAdministrator] CHECK CONSTRAINT [FK_SubsysAdministrator_Subsystem]
GO
/****** 对象:  ForeignKey [FK_Subsystem_ObjectBase]    脚本日期: 09/10/2014 15:43:48 ******/
ALTER TABLE [Secure].[Subsystem]  WITH NOCHECK ADD  CONSTRAINT [FK_Subsystem_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Subsystem] CHECK CONSTRAINT [FK_Subsystem_ObjectBase]
GO
