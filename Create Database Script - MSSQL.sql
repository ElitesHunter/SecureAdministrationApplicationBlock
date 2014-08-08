USE [HunterDatabase]
GO
/****** 对象:  User [DBUser]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'DBUser')
CREATE USER [DBUser] FOR LOGIN [Hunter] WITH DEFAULT_SCHEMA=[Basic]
GO
/****** 对象:  Schema [Sp]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Sp')
EXEC sys.sp_executesql N'CREATE SCHEMA [Sp] AUTHORIZATION [DBUser]'
GO
/****** 对象:  Schema [Secure]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Secure')
EXEC sys.sp_executesql N'CREATE SCHEMA [Secure] AUTHORIZATION [DBUser]'
GO
/****** 对象:  Schema [Fn]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Fn')
EXEC sys.sp_executesql N'CREATE SCHEMA [Fn] AUTHORIZATION [DBUser]'
GO
/****** 对象:  Schema [Basic]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Basic')
EXEC sys.sp_executesql N'CREATE SCHEMA [Basic] AUTHORIZATION [DBUser]'
GO
/****** 对象:  Table [Secure].[OrganizationObject]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[OrganizationObject]') AND type in (N'U'))
BEGIN
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
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'OrganizationObject', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：组织机构对象唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'OrganizationObject', N'COLUMN',N'ObjectName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构对象名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject', @level2type=N'COLUMN',@level2name=N'ObjectName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'OrganizationObject', N'COLUMN',N'ParentObjectID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父组织机构对象ID。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject', @level2type=N'COLUMN',@level2name=N'ParentObjectID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'OrganizationObject', N'COLUMN',N'Category'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构对象类别：1：组织；2：人员组；3：职位；4：人员。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject', @level2type=N'COLUMN',@level2name=N'Category'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'OrganizationObject', N'COLUMN',N'SortID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序标识。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject', @level2type=N'COLUMN',@level2name=N'SortID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'OrganizationObject', N'COLUMN',N'VirtualName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象虚名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject', @level2type=N'COLUMN',@level2name=N'VirtualName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'OrganizationObject', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构对象基础属性表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'OrganizationObject'
GO
/****** 对象:  UserDefinedFunction [Fn].[PadLeft]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[PadLeft]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'/*
	补全字符串（左）。
*/

CREATE Function [Fn].[PadLeft](
	@str As Varchar(Max),
	@length As Int = 2,
	@char As Char(1) = ''0''
)
Returns Varchar(Max)
As
Begin
	If (@char Is Null Or @char = '''') Begin
		Set @char = ''0''
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
End' 
END
GO
/****** 对象:  UserDefinedFunction [Fn].[PadRight]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[PadRight]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'/*
	补全字符串（右）。
*/

Create Function [Fn].[PadRight](
	@str As Varchar(Max),
	@length As Int = 2,
	@char As Char(1) = ''0''
)
Returns Varchar(Max)
As
Begin
	If (@char Is Null Or @char = '''') Begin
		Set @char = ''0''
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
End' 
END
GO
/****** 对象:  Table [Basic].[ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[ObjectBase]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ObjectBase', N'COLUMN',N'ObjectID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK：对象唯一标识。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'ObjectID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ObjectBase', N'COLUMN',N'IsRemoved'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已经被逻辑删除：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'IsRemoved'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ObjectBase', N'COLUMN',N'Enabled'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否被启用：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ObjectBase', N'COLUMN',N'Visible'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可见：Y（可见的）；N（隐藏的）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'Visible'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ObjectBase', N'COLUMN',N'OpenID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对外公开的唯一标识。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'OpenID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ObjectBase', N'COLUMN',N'IsCreatedTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象被创建的时间。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'IsCreatedTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ObjectBase', N'COLUMN',N'LastModifiedTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后一次被修改的时间。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ObjectBase', N'COLUMN',N'IsModifiedTimes'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象被修改的次数。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'IsModifiedTimes'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ObjectBase', N'COLUMN',N'Comments'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象的备注信息。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ObjectBase', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象基本属性表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ObjectBase'
GO
/****** 对象:  StoredProcedure [Sp].[ResetDatabase]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[ResetDatabase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
	用于清空数据库。
*/

CREATE Procedure [Sp].[ResetDatabase]
As
Begin
	--首先：禁用所有表的外键约束
	Exec sp_MSforeachtable ''ALTER TABLE ? NOCHECK CONSTRAINT ALL''
	--之后：删除所有表的数据
	Exec sp_MSforeachtable ''Delete From ?''
	--最后：启用所有表的外键约束
	Exec sp_MSforeachtable ''ALTER TABLE ? CHECK CONSTRAINT ALL''
End
' 
END
GO
/****** 对象:  Table [Secure].[SignInToken]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SignInToken]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInToken', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：登录票据唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInToken', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInToken', N'COLUMN',N'ActionID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：登录动作标识（关联到SignInAction表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInToken', @level2type=N'COLUMN',@level2name=N'ActionID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInToken', N'COLUMN',N'Token'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录令牌字符串。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInToken', @level2type=N'COLUMN',@level2name=N'Token'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInToken', N'COLUMN',N'ExpiredTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录令牌失效时间。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInToken', @level2type=N'COLUMN',@level2name=N'ExpiredTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInToken', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录令牌表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInToken'
GO
/****** 对象:  Table [Secure].[RoleSetting]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[RoleSetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[RoleSetting](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_RoleSetting] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'RoleSetting', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：角色设置唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'RoleSetting', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'RoleSetting', N'COLUMN',N'RoleID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：角色标识（关联到Role表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'RoleSetting', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'RoleSetting', N'COLUMN',N'OrganizationID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：授权的组织机构对象标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'RoleSetting', @level2type=N'COLUMN',@level2name=N'OrganizationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'RoleSetting', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色设置表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'RoleSetting'
GO
/****** 对象:  Table [Secure].[PermissionRoleSetting]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[PermissionRoleSetting](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[PermissionID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_PermissionRoleSetting] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PermissionRoleSetting', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：角色、权限设置关系唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionRoleSetting', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PermissionRoleSetting', N'COLUMN',N'PermissionID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：权限标识（关联到Permission表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionRoleSetting', @level2type=N'COLUMN',@level2name=N'PermissionID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PermissionRoleSetting', N'COLUMN',N'RoleID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：角色标识（关联到Role表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionRoleSetting', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PermissionRoleSetting', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限设置（关于角色）表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionRoleSetting'
GO
/****** 对象:  Table [Secure].[PermissionOrgSetting]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[PermissionOrgSetting](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[PermissionID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PermissionOrgSetting] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PermissionOrgSetting', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：设置关系唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionOrgSetting', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PermissionOrgSetting', N'COLUMN',N'PermissionID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：权限标识（关联到Permission表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionOrgSetting', @level2type=N'COLUMN',@level2name=N'PermissionID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PermissionOrgSetting', N'COLUMN',N'OrganizationID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：被授权的组织机构对象标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionOrgSetting', @level2type=N'COLUMN',@level2name=N'OrganizationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PermissionOrgSetting', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限设置表（关于组织机构）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PermissionOrgSetting'
GO
/****** 对象:  Table [Secure].[SubsysAdministrator]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SubsysAdministrator]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[SubsysAdministrator](
	[StaffID] [uniqueidentifier] NOT NULL,
	[SysID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SubsysAdministrator] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC,
	[SysID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SubsysAdministrator', N'COLUMN',N'StaffID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：人员对象标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SubsysAdministrator', @level2type=N'COLUMN',@level2name=N'StaffID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SubsysAdministrator', N'COLUMN',N'SysID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：应用系统标识（关联到Subsystem表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SubsysAdministrator', @level2type=N'COLUMN',@level2name=N'SysID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SubsysAdministrator', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子系统管理员表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SubsysAdministrator'
GO
/****** 对象:  Table [Secure].[StaffAccount]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[StaffAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[StaffAccount](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[StaffID] [uniqueidentifier] NOT NULL,
	[IsLocked] [char](1) NOT NULL DEFAULT ('N'),
	[LockReason] [uniqueidentifier] NOT NULL,
	[LockedTime] [datetime] NULL DEFAULT (NULL),
	[UnlockTime] [bigint] NULL DEFAULT (NULL),
 CONSTRAINT [PK_StaffAccount] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'StaffAccount', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：人员帐户表（关联到Account）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'StaffAccount', N'COLUMN',N'StaffID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：人员标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount', @level2type=N'COLUMN',@level2name=N'StaffID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'StaffAccount', N'COLUMN',N'IsLocked'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户是否被锁定：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount', @level2type=N'COLUMN',@level2name=N'IsLocked'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'StaffAccount', N'COLUMN',N'LockReason'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：锁定原因代码标识（关联到PredefinedCode表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount', @level2type=N'COLUMN',@level2name=N'LockReason'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'StaffAccount', N'COLUMN',N'LockedTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'锁定时间。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount', @level2type=N'COLUMN',@level2name=N'LockedTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'StaffAccount', N'COLUMN',N'UnlockTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'解锁时间。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount', @level2type=N'COLUMN',@level2name=N'UnlockTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'StaffAccount', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员账户表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'StaffAccount'
GO
/****** 对象:  Table [Secure].[Staff]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Staff]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：人员对象唯一标识（关联到OrganizationObject和ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'LastName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓氏' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'LastName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'FirstName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名字。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'OrganizationID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：人员的主要任职组织标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'OrganizationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'Gender'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员性别：M（男）；W（女）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'Gender'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'BirthDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员出生日期。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'BirthDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'BirthPlaceID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：出生地标识（关联到GlobalRegion表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'BirthPlaceID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'ResidenceAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'居住地址。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'ResidenceAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'CredentialsTypeID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：证件类型标识（关联到CredentialsType表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'CredentialsTypeID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'CredentialsNO'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证件编号。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'CredentialsNO'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'PositionID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：主要职位ID（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'PositionID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'OfficePhoneNO'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'办公电话号码。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'OfficePhoneNO'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'MobileNO'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话号码。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'MobileNO'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'EmailAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮件地址。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'EmailAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'InductionDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入职日期。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'InductionDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'IsProbationary'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为试用期员工：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'IsProbationary'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'ProbationLength'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试用期长度（单位：月）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'ProbationLength'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', N'COLUMN',N'AutoRegularized'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动转正：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'AutoRegularized'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Staff', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Staff'
GO
/****** 对象:  Table [Secure].[Position]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Position]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[Position](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Position', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：职位信息唯一标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Position', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Position', N'COLUMN',N'OrganizationID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：组织标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Position', @level2type=N'COLUMN',@level2name=N'OrganizationID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Position', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Position'
GO
/****** 对象:  Table [Secure].[ParttimeRelation]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[ParttimeRelation](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[StaffID] [uniqueidentifier] NOT NULL,
	[PositionID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ParttimeRelation] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'ParttimeRelation', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：兼职关系唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'ParttimeRelation', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'ParttimeRelation', N'COLUMN',N'StaffID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：人员标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'ParttimeRelation', @level2type=N'COLUMN',@level2name=N'StaffID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'ParttimeRelation', N'COLUMN',N'PositionID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：兼职职位标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'ParttimeRelation', @level2type=N'COLUMN',@level2name=N'PositionID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'ParttimeRelation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员兼职关系表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'ParttimeRelation'
GO
/****** 对象:  Table [Secure].[Organization]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Organization]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[Organization](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[PrincipalStaffID] [uniqueidentifier] NULL DEFAULT (NULL),
	[PrincipalPositionID] [uniqueidentifier] NULL DEFAULT (NULL),
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Organization', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：组织唯一标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Organization', N'COLUMN',N'PrincipalStaffID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：此组织的主要负责人标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'PrincipalStaffID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Organization', N'COLUMN',N'PrincipalPositionID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：主要负责的职位标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'PrincipalPositionID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Organization', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Organization'
GO
/****** 对象:  Table [Secure].[PositionRelation]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[PositionRelation]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[PositionRelation](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[SuperiorID] [uniqueidentifier] NOT NULL,
	[CurrentID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PositionRelation] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PositionRelation', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：汇报关系唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PositionRelation', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PositionRelation', N'COLUMN',N'SuperiorID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：上一级职位标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PositionRelation', @level2type=N'COLUMN',@level2name=N'SuperiorID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PositionRelation', N'COLUMN',N'CurrentID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：当前职位标识（关联到OrganizationObject表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PositionRelation', @level2type=N'COLUMN',@level2name=N'CurrentID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PositionRelation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位汇报关系表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PositionRelation'
GO
/****** 对象:  Table [Secure].[SignInLogTrace]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SignInLogTrace]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[SignInLogTrace](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[IOFlag] [char](1) NOT NULL DEFAULT ('I'),
 CONSTRAINT [PK_SignInLogTrace] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInLogTrace', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：日志行为唯一标识（关联到BaseLogTrace及ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInLogTrace', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInLogTrace', N'COLUMN',N'IOFlag'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录、登出标记：I（登录）；O（登出）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInLogTrace', @level2type=N'COLUMN',@level2name=N'IOFlag'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInLogTrace', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录、登出日志信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInLogTrace'
GO
/****** 对象:  Table [Secure].[SqlLogTrace]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SqlLogTrace]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[SqlLogTrace](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[Command] [varchar](max) NOT NULL,
	[CommandType] [char](1) NOT NULL DEFAULT ('T'),
 CONSTRAINT [PK_SqlLogTrace] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SqlLogTrace', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：日志行为唯一标识（关联到BaseLogTrace及ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SqlLogTrace', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SqlLogTrace', N'COLUMN',N'Command'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SQL命令文本。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SqlLogTrace', @level2type=N'COLUMN',@level2name=N'Command'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SqlLogTrace', N'COLUMN',N'CommandType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'命令类型：T（SQL命令串）；S（存储过程）；F（函数）' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SqlLogTrace', @level2type=N'COLUMN',@level2name=N'CommandType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SqlLogTrace', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SQL命令执行日志表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SqlLogTrace'
GO
/****** 对象:  Table [Secure].[SignInAction]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SignInAction]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInAction', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：登录动作唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInAction', N'COLUMN',N'ClientIP'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户端IP地址。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInAction', N'COLUMN',N'HostName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主机名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'HostName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInAction', N'COLUMN',N'Platform'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'平台类型：1：PC；2：WP移动设备；3：Android移动设备；4：iOS移动设备；5：Firefox OS移动设备；6：Windows Mobile平台移动设备；7：塞班移动设备；8：MeeGo移动设备；9：黑莓移动设备；-1：未知类型的移动设备。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'Platform'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInAction', N'COLUMN',N'IsSucceed'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否成功：Y：（成功的）；N（失败的）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'IsSucceed'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInAction', N'COLUMN',N'FailedReasonCodeID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：失败原因代码（关联到PredefinedCode表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'FailedReasonCodeID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInAction', N'COLUMN',N'AccountID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：登录时所用的账户唯一标识（关联到Account表）。如果为NULL，则表示不是已知的账户。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'AccountID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInAction', N'COLUMN',N'UnknownUserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'如果AccountID为NULL，则此字段保存错误的账户名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction', @level2type=N'COLUMN',@level2name=N'UnknownUserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'SignInAction', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录动作表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'SignInAction'
GO
/****** 对象:  Table [Secure].[BaseLogTrace]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'BaseLogTrace', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：日志行为唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'BaseLogTrace', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'BaseLogTrace', N'COLUMN',N'MethodName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用的方法名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'BaseLogTrace', @level2type=N'COLUMN',@level2name=N'MethodName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'BaseLogTrace', N'COLUMN',N'TypeName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包含方法的类型名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'BaseLogTrace', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'BaseLogTrace', N'COLUMN',N'Version'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版本号。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'BaseLogTrace', @level2type=N'COLUMN',@level2name=N'Version'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'BaseLogTrace', N'COLUMN',N'CallAccountID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：调用者标识（关联到Account表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'BaseLogTrace', @level2type=N'COLUMN',@level2name=N'CallAccountID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'BaseLogTrace', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基础日志信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'BaseLogTrace'
GO
/****** 对象:  Table [Secure].[Administrator]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Administrator]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[Administrator](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[IsDefault] [char](1) NOT NULL DEFAULT ('N'),
	[WindowsIntergrated] [char](1) NOT NULL DEFAULT ('Y'),
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Administrator', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：系统管理员唯一标识（关联到Account、ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Administrator', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Administrator', N'COLUMN',N'IsDefault'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为默认系统管理员账户：Y（是）；N（否）。默认的系统管理员不可删除。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Administrator', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Administrator', N'COLUMN',N'WindowsIntergrated'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否集成Windows账户：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Administrator', @level2type=N'COLUMN',@level2name=N'WindowsIntergrated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Administrator', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统管理员账户表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Administrator'
GO
/****** 对象:  Table [Secure].[AccountExpirationPolicy]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[AccountExpirationPolicy]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[AccountExpirationPolicy](
	[AccountID] [uniqueidentifier] NOT NULL,
	[PolicyID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AccountExpirationPolicy] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[PolicyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'AccountExpirationPolicy', N'COLUMN',N'AccountID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：账户标识（关联到Account表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'AccountExpirationPolicy', @level2type=N'COLUMN',@level2name=N'AccountID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'AccountExpirationPolicy', N'COLUMN',N'PolicyID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：策略标识（关联到PassExpirationPolicy表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'AccountExpirationPolicy', @level2type=N'COLUMN',@level2name=N'PolicyID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'AccountExpirationPolicy', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户过期策略。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'AccountExpirationPolicy'
GO
/****** 对象:  Table [Basic].[HotfixRelease]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[HotfixRelease]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'HotfixRelease', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK & FK：更新补丁唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'HotfixRelease', N'COLUMN',N'CodeID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：更新代码ID（关联到PredefinedCode表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'CodeID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'HotfixRelease', N'COLUMN',N'BlockID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：需要更新的模块标识（关联到ApplicationBlock表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'BlockID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'HotfixRelease', N'COLUMN',N'Version'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新补丁的版本号。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'Version'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'HotfixRelease', N'COLUMN',N'FeatureSummary'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能概述。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'FeatureSummary'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'HotfixRelease', N'COLUMN',N'ReleaseDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布日期。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'ReleaseDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'HotfixRelease', N'COLUMN',N'IsImportant'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为重要更新：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease', @level2type=N'COLUMN',@level2name=N'IsImportant'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'HotfixRelease', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新补丁发布信息表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'HotfixRelease'
GO
/****** 对象:  Table [Secure].[Role]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Role]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Role', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：角色唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Role', N'COLUMN',N'RoleName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'RoleName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Role', N'COLUMN',N'RoleCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色代码。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'RoleCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Role', N'COLUMN',N'SysID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：子系统标识（关联到Subsystem表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'SysID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Role', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Role'
GO
/****** 对象:  Table [Secure].[Account]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Account]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Account', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK：系统账户唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Account', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Account', N'COLUMN',N'Passphrase'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'口令。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'Passphrase'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Account', N'COLUMN',N'EmptyPass'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为空密码：Y（是）、N（否）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'EmptyPass'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Account', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统账户基本信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Account'
GO
/****** 对象:  Table [Basic].[PredefinedCode]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[PredefinedCode]') AND type in (N'U'))
BEGIN
CREATE TABLE [Basic].[PredefinedCode](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[BlockID] [uniqueidentifier] NULL,
	[Code] [varchar](64) NOT NULL DEFAULT ('ERROR_00000001'),
 CONSTRAINT [PK_PredefinedCode] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'PredefinedCode', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK & FK：系统预定义代码唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'PredefinedCode', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'PredefinedCode', N'COLUMN',N'BlockID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：应用模块唯一标识（关联到ObjectBase、ApplicationBlock表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'PredefinedCode', @level2type=N'COLUMN',@level2name=N'BlockID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'PredefinedCode', N'COLUMN',N'Code'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'PredefinedCode', @level2type=N'COLUMN',@level2name=N'Code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'PredefinedCode', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统预定义代码表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'PredefinedCode'
GO
/****** 对象:  Table [Basic].[CredentialsType]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[CredentialsType]') AND type in (N'U'))
BEGIN
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
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'CredentialsType', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：证件类型唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'CredentialsType', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'CredentialsType', N'COLUMN',N'TypeName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证件类型名称。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'CredentialsType', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'CredentialsType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证件类型表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'CredentialsType'
GO
/****** 对象:  Table [Basic].[ApplicationBlock]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ApplicationBlock', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：系统模块唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ApplicationBlock', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ApplicationBlock', N'COLUMN',N'BlockName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用模块名称（简体中文）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ApplicationBlock', @level2type=N'COLUMN',@level2name=N'BlockName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ApplicationBlock', N'COLUMN',N'ParentBlockID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级模块ID（关联到ApplicationBlock、ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ApplicationBlock', @level2type=N'COLUMN',@level2name=N'ParentBlockID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ApplicationBlock', N'COLUMN',N'Code'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用模块代码。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ApplicationBlock', @level2type=N'COLUMN',@level2name=N'Code'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ApplicationBlock', N'COLUMN',N'XExpando'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展信息。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ApplicationBlock', @level2type=N'COLUMN',@level2name=N'XExpando'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'ApplicationBlock', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统模块表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'ApplicationBlock'
GO
/****** 对象:  Table [Secure].[PassExpirationPolicy]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[PassExpirationPolicy]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PassExpirationPolicy', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：策略唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PassExpirationPolicy', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PassExpirationPolicy', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'策略描述信息。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PassExpirationPolicy', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PassExpirationPolicy', N'COLUMN',N'ExpirationUnit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过期计算单位：N(无过期）；M（按月计算）；D（按日计算）；W（按周计算）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PassExpirationPolicy', @level2type=N'COLUMN',@level2name=N'ExpirationUnit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PassExpirationPolicy', N'COLUMN',N'ExpirationValue'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过期值。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PassExpirationPolicy', @level2type=N'COLUMN',@level2name=N'ExpirationValue'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'PassExpirationPolicy', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'口令过期策略。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'PassExpirationPolicy'
GO
/****** 对象:  Table [Basic].[FileObject]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[FileObject]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileObject', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK & FK：文件对象唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileObject', N'COLUMN',N'RawName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件原始名称。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'RawName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileObject', N'COLUMN',N'ExtensionName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件扩展名。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'ExtensionName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileObject', N'COLUMN',N'MimeType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件类型对应的Http Mime类型。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'MimeType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileObject', N'COLUMN',N'FileSize'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件长度。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'FileSize'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileObject', N'COLUMN',N'SaveToDB'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否保存到数据库：Y（以保存到数据库）；N（未保存到数据库）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'SaveToDB'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileObject', N'COLUMN',N'SaveToDisk'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否保存到服务器物理硬盘中：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'SaveToDisk'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileObject', N'COLUMN',N'PhysicalPath'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件的物理路径。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject', @level2type=N'COLUMN',@level2name=N'PhysicalPath'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileObject', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件对象信息表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileObject'
GO
/****** 对象:  Table [Basic].[FileMapRelation]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[FileMapRelation]') AND type in (N'U'))
BEGIN
CREATE TABLE [Basic].[FileMapRelation](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[FileID] [uniqueidentifier] NOT NULL,
	[AssociatedObjectID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_FileMapRelation] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileMapRelation', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：关系唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileMapRelation', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileMapRelation', N'COLUMN',N'FileID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：文件对象标识（关联到FileObject表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileMapRelation', @level2type=N'COLUMN',@level2name=N'FileID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileMapRelation', N'COLUMN',N'AssociatedObjectID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：关联的对象唯一标识。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileMapRelation', @level2type=N'COLUMN',@level2name=N'AssociatedObjectID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileMapRelation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件对象映射关系表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileMapRelation'
GO
/****** 对象:  Table [Basic].[GlobalRegion]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[GlobalRegion]') AND type in (N'U'))
BEGIN
CREATE TABLE [Basic].[GlobalRegion](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[RegionName] [nvarchar](256) NOT NULL DEFAULT ('中华人民共和国'),
	[ParentRegionID] [uniqueidentifier] NULL DEFAULT (NULL),
 CONSTRAINT [PK_GlobalRegion] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'GlobalRegion', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：区域唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'GlobalRegion', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'GlobalRegion', N'COLUMN',N'RegionName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域名称。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'GlobalRegion', @level2type=N'COLUMN',@level2name=N'RegionName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'GlobalRegion', N'COLUMN',N'ParentRegionID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父区域标识。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'GlobalRegion', @level2type=N'COLUMN',@level2name=N'ParentRegionID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'GlobalRegion', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全球区域定义表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'GlobalRegion'
GO
/****** 对象:  Table [Secure].[Permission]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Permission]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[Permission](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[PermissionCode] [varchar](512) NOT NULL,
	[SysID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Permission', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：权限唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Permission', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Permission', N'COLUMN',N'PermissionCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限代码。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Permission', @level2type=N'COLUMN',@level2name=N'PermissionCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Permission', N'COLUMN',N'SysID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK：子系统标识（关联到Subsystem表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Permission', @level2type=N'COLUMN',@level2name=N'SysID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Permission', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限信息表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Permission'
GO
/****** 对象:  Table [Secure].[Subsystem]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Subsystem]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Subsystem', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK&FK：应用系统唯一标识（关联到ObjectBase表）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Subsystem', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Subsystem', N'COLUMN',N'SysName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子系统名称。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Subsystem', @level2type=N'COLUMN',@level2name=N'SysName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Subsystem', N'COLUMN',N'SysCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子系统编码。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Subsystem', @level2type=N'COLUMN',@level2name=N'SysCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Subsystem', N'COLUMN',N'ParentSysID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父系统标识。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Subsystem', @level2type=N'COLUMN',@level2name=N'ParentSysID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Subsystem', N'COLUMN',N'InheritFromParent'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否继承父应用所有属性：Y（是）；N（否）。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Subsystem', @level2type=N'COLUMN',@level2name=N'InheritFromParent'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Secure', N'TABLE',N'Subsystem', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子系统定义表。' , @level0type=N'SCHEMA',@level0name=N'Secure', @level1type=N'TABLE',@level1name=N'Subsystem'
GO
/****** 对象:  Table [Basic].[FileStream]    脚本日期: 08/08/2014 16:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[FileStream]') AND type in (N'U'))
BEGIN
CREATE TABLE [Basic].[FileStream](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[Stream] [varbinary](max) NULL DEFAULT (NULL),
 CONSTRAINT [PK_FileStream] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileStream', N'COLUMN',N'UniqueID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PK & FK：文件对象唯一标识（关联到FileObject表）。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileStream', @level2type=N'COLUMN',@level2name=N'UniqueID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileStream', N'COLUMN',N'Stream'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件流数据。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileStream', @level2type=N'COLUMN',@level2name=N'Stream'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'Basic', N'TABLE',N'FileStream', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件流表。' , @level0type=N'SCHEMA',@level0name=N'Basic', @level1type=N'TABLE',@level1name=N'FileStream'
GO
/****** 对象:  View [Secure].[AdministratorCollection]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[AdministratorCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	用于获取所有的系统管理员。
*/

CREATE View [Secure].[AdministratorCollection]
As
	Select
			SysAdmin.UniqueID As ''AdministratorID'',
			SysAdmin.IsDefault As ''IsDefaultAdministrator'',
			SysAdmin.WindowsIntergrated As ''NTAdministrator'',
			Acc.EmptyPass As ''AllowEmptyPassword'',
			Acc.Passphrase As ''AdministratorPassword'',
			Acc.UserID As ''AdministratorAccount'',
			Acc.UniqueID As ''AdministratorAccountID'',
			Obj.ObjectID As ''AdministratorObjectID'',
			Obj.IsRemoved As ''AdminstratorWasRemoved'',
			Obj.Enabled As ''AdministratorEnableState'',
			Obj.Visible As ''AdministratorVisibleState'',
			Obj.OpenID As ''AdministratorOpenID'',
			Obj.IsCreatedTime As ''AdministratorCreateTime'',
			Obj.LastModifiedTime As ''AdministratorLastUpdateTime''
		From Secure.Administrator SysAdmin
		Left Join Secure.Account Acc On SysAdmin.UniqueID = Acc.UniqueID
		Left Join Basic.ObjectBase Obj On Acc.UniqueID = Obj.ObjectID'
GO
/****** 对象:  UserDefinedFunction [Fn].[GetDateTimeString]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[GetDateTimeString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'/*
	获取日期时间的字符串表达式。
*/

Create Function [Fn].[GetDateTimeString](
	@dateTime As DateTime
)
Returns Varchar(64)
As
Begin
	Declare @yearStr As Varchar(4); Set @yearStr = Cast(Year(@dateTime) As Varchar(4));

	Declare @monthStr As Varchar(2); Set @monthStr = Fn.PadLeft(Cast(Month(@dateTime) As Varchar(2)), 2, ''0'');

	Declare @dayStr As Varchar(2); Set @dayStr = Fn.PadLeft(Cast(Day(@dateTime) As Varchar(2)), 2, ''0'');

	Declare @hourStr As Varchar(2); Set @hourStr = Fn.PadLeft(Cast(DatePart(hh, @dateTime) As Varchar(2)), 2, ''0'');

	Declare @minStr As Varchar(2); Set @minStr = Fn.PadLeft(Cast(DatePart(mi, @dateTime) As Varchar(2)), 2, ''0'');

	Declare @secStr As Varchar(2); Set @secStr = Fn.PadLeft(Cast(DatePart(ss, @dateTime) As Varchar(2)), 2, ''0'');

	Return @yearStr + ''-'' + @monthStr + ''-'' + @dayStr + '' '' + @hourStr + '':'' + @minStr + '':'' + @secStr
End
' 
END
GO
/****** 对象:  View [Basic].[ApplicationBlockCollection]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Basic].[ApplicationBlockCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	应用模块视图。

	获取所有的应用模块。
*/

CREATE View [Basic].[ApplicationBlockCollection]
As
	Select 
			App.UniqueID As ''ApplicationBlockID'',
			App.BlockName As ''ApplicationBlockName'',
			App.ParentBlockID As ''ParentApplicationBlockID'',
			App.Code As ''ApplicationBlockCode'',
			App.XExpando As ''ApplicationBlockExpandoObject'',
			Obj.ObjectID As ''ApplicationBlockObjectID'',
			Obj.IsRemoved As ''ApplicationBlockWasRemoved'',
			Obj.Enabled As ''ApplicationBlockEnabledState'',
			Obj.Visible As ''ApplicationBlockVisibleState'',
			Obj.OpenID As ''ApplicationBlockOpenID'',
			Obj.Comments As ''ApplicationBlockComments'',
			Obj.IsCreatedTime As ''ApplicationBlockCreateTime'',
			Obj.LastModifiedTime As ''ApplicationBlockLastUpdatedTime''
		From Basic.ApplicationBlock App
		Left Join Basic.ObjectBase Obj On App.UniqueID = Obj.ObjectID'
GO
/****** 对象:  View [Basic].[PredefinedCodeCollection]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Basic].[PredefinedCodeCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	用于获取所有的预定义代码
*/

Create View [Basic].[PredefinedCodeCollection]
As
	Select
			Codes.Code As ''PredefinedCode'',
			Codes.BlockID As ''PredefinedCodeOwnedApplicationBlockID'',
			Codes.UniqueID As ''PredefinedCodeUniqueID'',
			Obj.ObjectID As ''PredefinedCodeObjectID'',
			Obj.IsRemoved As ''PredefinedCodeWasRemoved'',
			Obj.Enabled As ''PredefinedCodeEnabledState'',
			Obj.Visible As ''PredefinedCodeVisibleState'',
			Obj.OpenID As ''PredefinedCodeOpenID'',
			Blocks.*
		From Basic.PredefinedCode Codes
		Left Join Basic.ObjectBase Obj On Codes.UniqueID = Obj.ObjectID
		Left Join Basic.ApplicationBlockCollection Blocks On Codes.BlockID = Blocks.ApplicationBlockID'
GO
/****** 对象:  UserDefinedFunction [Fn].[GetHashPassword]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[GetHashPassword]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'/*
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

	Set @data = HashBytes(''SHA1'', @data)

	Set @password = sys.Fn_VarBinToHexStr(@data)

	Return @password
End
' 
END
GO
/****** 对象:  UserDefinedFunction [Fn].[CreateOpenID]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[CreateOpenID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'/*
	创建一个开放的标识。
*/

CREATE Function [Fn].[CreateOpenID](
	@objectID As Uniqueidentifier
)
Returns Varchar(256)
As
Begin
	Declare @objIDStr As Varchar(36); Set @objIDStr = Cast(@objectID As Varchar(36));

	Declare @str As Varchar(128); Set @str = ''{'' + @objIDStr + ''}-{'' + Fn.GetDateTimeString(GetDate()) + ''}'';

	Declare @hashStr As Varchar(Max); Set @hashStr = sys.Fn_VarBinToHexStr(Hashbytes(''SHA1'', @str));

	Return Substring(@hashStr, 0, 256)
End
' 
END
GO
/****** 对象:  View [Basic].[ApplicationBlockEnabledCollection]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Basic].[ApplicationBlockEnabledCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有可用的应用模块。
*/

Create View [Basic].[ApplicationBlockEnabledCollection]
As
	Select * From Basic.ApplicationBlockCollection
		Where
			Upper(ApplicationBlockWasRemoved) = ''N''
			And
			Upper(ApplicationBlockEnabledState) = ''Y'''
GO
/****** 对象:  View [Secure].[AdministratorEnabledCollection]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[AdministratorEnabledCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有可用的系统管理员。
*/

CREATE View [Secure].[AdministratorEnabledCollection]
As
	Select * From Secure.AdministratorCollection
		Where
			Upper(AdminstratorWasRemoved) = ''N''
			And
			Upper(AdministratorEnableState) = ''Y'''
GO
/****** 对象:  StoredProcedure [Sp].[CreateSystemCode]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateSystemCode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
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
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[CreateApplicationBlock]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateApplicationBlock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
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
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[CreateAdministrator]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateAdministrator]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
	创建一个系统管理员。
*/

CREATE Procedure [Sp].[CreateAdministrator]
	@userID Varchar(512) = ''Administrator'',
	@password Varchar(Max) = NULL,
	@isNTUser Char(1) = ''N'',
	@isDefault Char(1) = ''N'',
	@emptyPWD Char(1) = ''N'',
	@uniqueID As Uniqueidentifier = NULL Output,
	@openID As Varchar(256) = NULL Output
As
Begin
	Set @uniqueID = NewID()

	Set @openID = Fn.CreateOpenID(@uniqueID)

	If (Upper(@emptyPWD) = ''N'') And (@password Is Not Null) And (@password <> '''') Begin
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
' 
END
GO
/****** 对象:  View [Basic].[ApplicationBlockVisibleCollection]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Basic].[ApplicationBlockVisibleCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有可见的应用模块信息。
*/

Create View [Basic].[ApplicationBlockVisibleCollection]
As
	Select * From Basic.ApplicationBlockEnabledCollection
		Where 
			Upper(ApplicationBlockVisibleState) = ''Y'''
GO
/****** 对象:  View [Secure].[AdministratorVisibleCollection]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[AdministratorVisibleCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有可见的系统管理员
*/

CREATE View [Secure].[AdministratorVisibleCollection]
As
	Select * From Secure.AdministratorEnabledCollection
		Where
			Upper(IsDefaultAdministrator) = ''N''
			And
			Upper(AdministratorVisibleState) = ''Y'''
GO
/****** 对象:  StoredProcedure [Sp].[InitializeApplicationBlocks]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[InitializeApplicationBlocks]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
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
				''
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:EnterpriseServices/eh:InitializationUtil/eh:ApplicationBlockDeclaration/eh:ApplicationBlocks/@Count)[1]
				'',
				''Int''
			)
		If (@xCount > 0) Begin
			Set @xIndex = 0
			While (@xIndex < @xCount) Begin
				Set @xTempData = @xData.query(
						''
						declare namespace eh="urn:Masterduner@Yeah.net";
						eh:EnterpriseServices/eh:InitializationUtil/eh:ApplicationBlockDeclaration/eh:ApplicationBlocks/eh:Item[@Index=sql:variable("@xIndex")]
						''
					)
				Set @xUniqueID = @xTempData.value(
						''
						declare namespace eh="urn:Masterduner@Yeah.net";
						(eh:Item/@UniqueID)[1]
						'',
						''Uniqueidentifier''
					)
				Set @xName = @xTempData.value(
						''
						declare namespace eh="urn:Masterduner@Yeah.net";
						(eh:Item/@Name)[1]
						'',
						''Nvarchar(128)''
					)
				Set @xCode = @xTempData.value(
						''
						declare namespace eh="urn:Masterduner@Yeah.net";
						(eh:Item/@Code)[1]
						'',
						''Varchar(128)''
					)
				Set @xParentID = @xTempData.value(
						''
						declare namespace eh="urn:Masterduner@Yeah.net";
						(eh:Item/@Parent)[1]
						'',
						''Varchar(36)''
					)
				
				If (@xParentID Is NULL) Or (@xParentID = ''(none)'') Or (@xParentID = '''') 
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
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[InitializeCodes]    脚本日期: 08/08/2014 16:59:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[InitializeCodes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
	用于初始化系统预定义代码。
*/

CREATE Procedure [Sp].[InitializeCodes]
	@xData As Xml
As
Begin
	If @xData Is Not Null Begin
		Declare @xCount As Int
		Set @xCount = @xData.value(
				''
				declare namespace eh="urn:Masterduner@Yeah.net";
				(eh:EnterpriseServices/eh:InitializationUtil/eh:SystemCodesDeclaration/eh:Codes/@Count)[1]
				'',
				''Int''
			)
		
		Declare @xIndex As Int; Set @xIndex = 0
		
		Declare @xTempData As Xml

		Declare @xCode As Varchar(64)

		Declare @xBlockID As Uniqueidentifier

		While (@xIndex < @xCount) Begin
			Set @xTempData = @xData.query(
					''
					declare namespace eh="urn:Masterduner@Yeah.net";
					eh:EnterpriseServices/eh:InitializationUtil/eh:SystemCodesDeclaration/eh:Codes/eh:Item[@Index=sql:variable("@xIndex")]
					''
				)

			Set @xCode = @xTempData.value(''declare namespace eh="urn:Masterduner@Yeah.net";(eh:Item/@Code)[1]'', ''Varchar(64)'')

			Set @xBlockID = @xTempData.value(''declare namespace eh="urn:Masterduner@Yeah.net";(eh:Item/@BlockID)[1]'', ''Uniqueidentifier'')

			Exec Sp.CreateSystemCode 
				@code = @xCode,
				@blockID = @xBlockID

			Set @xIndex = @xIndex + 1
		End
	End
End
' 
END
GO
/****** 对象:  ForeignKey [FK_ApplicationBlock_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_ApplicationBlock_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
ALTER TABLE [Basic].[ApplicationBlock]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationBlock_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[ApplicationBlock] CHECK CONSTRAINT [FK_ApplicationBlock_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_ApplicationBlock_ObjectBase_02]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_ApplicationBlock_ObjectBase_02]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
ALTER TABLE [Basic].[ApplicationBlock]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationBlock_ObjectBase_02] FOREIGN KEY([ParentBlockID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[ApplicationBlock] CHECK CONSTRAINT [FK_ApplicationBlock_ObjectBase_02]
GO
/****** 对象:  ForeignKey [FK_CredentialsType_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_CredentialsType_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[CredentialsType]'))
ALTER TABLE [Basic].[CredentialsType]  WITH NOCHECK ADD  CONSTRAINT [FK_CredentialsType_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[CredentialsType] CHECK CONSTRAINT [FK_CredentialsType_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_FileMapRelation_FileObject]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_FileMapRelation_FileObject]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileMapRelation]'))
ALTER TABLE [Basic].[FileMapRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_FileMapRelation_FileObject] FOREIGN KEY([FileID])
REFERENCES [Basic].[FileObject] ([UniqueID])
GO
ALTER TABLE [Basic].[FileMapRelation] CHECK CONSTRAINT [FK_FileMapRelation_FileObject]
GO
/****** 对象:  ForeignKey [FK_FileMapRelation_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_FileMapRelation_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileMapRelation]'))
ALTER TABLE [Basic].[FileMapRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_FileMapRelation_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[FileMapRelation] CHECK CONSTRAINT [FK_FileMapRelation_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_FileObject_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_FileObject_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
ALTER TABLE [Basic].[FileObject]  WITH NOCHECK ADD  CONSTRAINT [FK_FileObject_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[FileObject] CHECK CONSTRAINT [FK_FileObject_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_FileStream_FileObject]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_FileStream_FileObject]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileStream]'))
ALTER TABLE [Basic].[FileStream]  WITH NOCHECK ADD  CONSTRAINT [FK_FileStream_FileObject] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[FileObject] ([UniqueID])
GO
ALTER TABLE [Basic].[FileStream] CHECK CONSTRAINT [FK_FileStream_FileObject]
GO
/****** 对象:  ForeignKey [FK_GlobalRegion_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_GlobalRegion_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[GlobalRegion]'))
ALTER TABLE [Basic].[GlobalRegion]  WITH NOCHECK ADD  CONSTRAINT [FK_GlobalRegion_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[GlobalRegion] CHECK CONSTRAINT [FK_GlobalRegion_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_HotfixRelease_ApplicationBlock]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_HotfixRelease_ApplicationBlock]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
ALTER TABLE [Basic].[HotfixRelease]  WITH NOCHECK ADD  CONSTRAINT [FK_HotfixRelease_ApplicationBlock] FOREIGN KEY([BlockID])
REFERENCES [Basic].[ApplicationBlock] ([UniqueID])
GO
ALTER TABLE [Basic].[HotfixRelease] CHECK CONSTRAINT [FK_HotfixRelease_ApplicationBlock]
GO
/****** 对象:  ForeignKey [FK_HotfixRelease_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_HotfixRelease_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
ALTER TABLE [Basic].[HotfixRelease]  WITH NOCHECK ADD  CONSTRAINT [FK_HotfixRelease_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[HotfixRelease] CHECK CONSTRAINT [FK_HotfixRelease_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_HotfixRelease_PredefinedCode]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_HotfixRelease_PredefinedCode]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
ALTER TABLE [Basic].[HotfixRelease]  WITH NOCHECK ADD  CONSTRAINT [FK_HotfixRelease_PredefinedCode] FOREIGN KEY([CodeID])
REFERENCES [Basic].[PredefinedCode] ([UniqueID])
GO
ALTER TABLE [Basic].[HotfixRelease] CHECK CONSTRAINT [FK_HotfixRelease_PredefinedCode]
GO
/****** 对象:  ForeignKey [FK_PredefinedCode_ApplicationBlock]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_PredefinedCode_ApplicationBlock]') AND parent_object_id = OBJECT_ID(N'[Basic].[PredefinedCode]'))
ALTER TABLE [Basic].[PredefinedCode]  WITH NOCHECK ADD  CONSTRAINT [FK_PredefinedCode_ApplicationBlock] FOREIGN KEY([BlockID])
REFERENCES [Basic].[ApplicationBlock] ([UniqueID])
GO
ALTER TABLE [Basic].[PredefinedCode] CHECK CONSTRAINT [FK_PredefinedCode_ApplicationBlock]
GO
/****** 对象:  ForeignKey [FK_PredefinedCode_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_PredefinedCode_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[PredefinedCode]'))
ALTER TABLE [Basic].[PredefinedCode]  WITH NOCHECK ADD  CONSTRAINT [FK_PredefinedCode_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[PredefinedCode] CHECK CONSTRAINT [FK_PredefinedCode_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PredefinedCode_ObjectBase_02]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_PredefinedCode_ObjectBase_02]') AND parent_object_id = OBJECT_ID(N'[Basic].[PredefinedCode]'))
ALTER TABLE [Basic].[PredefinedCode]  WITH NOCHECK ADD  CONSTRAINT [FK_PredefinedCode_ObjectBase_02] FOREIGN KEY([BlockID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[PredefinedCode] CHECK CONSTRAINT [FK_PredefinedCode_ObjectBase_02]
GO
/****** 对象:  ForeignKey [FK_Account_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Account_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Account]'))
ALTER TABLE [Secure].[Account]  WITH NOCHECK ADD  CONSTRAINT [FK_Account_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Account] CHECK CONSTRAINT [FK_Account_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_AccountExpirationPolicy_Account]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_AccountExpirationPolicy_Account]') AND parent_object_id = OBJECT_ID(N'[Secure].[AccountExpirationPolicy]'))
ALTER TABLE [Secure].[AccountExpirationPolicy]  WITH NOCHECK ADD  CONSTRAINT [FK_AccountExpirationPolicy_Account] FOREIGN KEY([AccountID])
REFERENCES [Secure].[Account] ([UniqueID])
GO
ALTER TABLE [Secure].[AccountExpirationPolicy] CHECK CONSTRAINT [FK_AccountExpirationPolicy_Account]
GO
/****** 对象:  ForeignKey [FK_AccountExpirationPolicy_PassExpirationPolicy]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_AccountExpirationPolicy_PassExpirationPolicy]') AND parent_object_id = OBJECT_ID(N'[Secure].[AccountExpirationPolicy]'))
ALTER TABLE [Secure].[AccountExpirationPolicy]  WITH NOCHECK ADD  CONSTRAINT [FK_AccountExpirationPolicy_PassExpirationPolicy] FOREIGN KEY([PolicyID])
REFERENCES [Secure].[PassExpirationPolicy] ([UniqueID])
GO
ALTER TABLE [Secure].[AccountExpirationPolicy] CHECK CONSTRAINT [FK_AccountExpirationPolicy_PassExpirationPolicy]
GO
/****** 对象:  ForeignKey [FK_Administrator_Account]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Administrator_Account]') AND parent_object_id = OBJECT_ID(N'[Secure].[Administrator]'))
ALTER TABLE [Secure].[Administrator]  WITH NOCHECK ADD  CONSTRAINT [FK_Administrator_Account] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[Account] ([UniqueID])
GO
ALTER TABLE [Secure].[Administrator] CHECK CONSTRAINT [FK_Administrator_Account]
GO
/****** 对象:  ForeignKey [FK_Administrator_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Administrator_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Administrator]'))
ALTER TABLE [Secure].[Administrator]  WITH NOCHECK ADD  CONSTRAINT [FK_Administrator_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Administrator] CHECK CONSTRAINT [FK_Administrator_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_BaseLogTrace_Account]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_BaseLogTrace_Account]') AND parent_object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]'))
ALTER TABLE [Secure].[BaseLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseLogTrace_Account] FOREIGN KEY([CallAccountID])
REFERENCES [Secure].[Account] ([UniqueID])
GO
ALTER TABLE [Secure].[BaseLogTrace] CHECK CONSTRAINT [FK_BaseLogTrace_Account]
GO
/****** 对象:  ForeignKey [FK_BaseLogTrace_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_BaseLogTrace_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]'))
ALTER TABLE [Secure].[BaseLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseLogTrace_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[BaseLogTrace] CHECK CONSTRAINT [FK_BaseLogTrace_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Organization_OrganizationObject]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Organization_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
ALTER TABLE [Secure].[Organization]  WITH NOCHECK ADD  CONSTRAINT [FK_Organization_OrganizationObject] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Organization] CHECK CONSTRAINT [FK_Organization_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_Organization_OrganizationObject_02]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Organization_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
ALTER TABLE [Secure].[Organization]  WITH NOCHECK ADD  CONSTRAINT [FK_Organization_OrganizationObject_02] FOREIGN KEY([PrincipalStaffID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Organization] CHECK CONSTRAINT [FK_Organization_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_Organization_OrganizationObject_03]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Organization_OrganizationObject_03]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
ALTER TABLE [Secure].[Organization]  WITH NOCHECK ADD  CONSTRAINT [FK_Organization_OrganizationObject_03] FOREIGN KEY([PrincipalPositionID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Organization] CHECK CONSTRAINT [FK_Organization_OrganizationObject_03]
GO
/****** 对象:  ForeignKey [FK_ParttimeRelation_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_ParttimeRelation_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]'))
ALTER TABLE [Secure].[ParttimeRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_ParttimeRelation_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[ParttimeRelation] CHECK CONSTRAINT [FK_ParttimeRelation_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_ParttimeRelation_OrganizationObject]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_ParttimeRelation_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]'))
ALTER TABLE [Secure].[ParttimeRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_ParttimeRelation_OrganizationObject] FOREIGN KEY([StaffID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[ParttimeRelation] CHECK CONSTRAINT [FK_ParttimeRelation_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_ParttimeRelation_OrganizationObject_02]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_ParttimeRelation_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]'))
ALTER TABLE [Secure].[ParttimeRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_ParttimeRelation_OrganizationObject_02] FOREIGN KEY([PositionID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[ParttimeRelation] CHECK CONSTRAINT [FK_ParttimeRelation_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_PassExpirationPolicy_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PassExpirationPolicy_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[PassExpirationPolicy]'))
ALTER TABLE [Secure].[PassExpirationPolicy]  WITH NOCHECK ADD  CONSTRAINT [FK_PassExpirationPolicy_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[PassExpirationPolicy] CHECK CONSTRAINT [FK_PassExpirationPolicy_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Permission_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Permission_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Permission]'))
ALTER TABLE [Secure].[Permission]  WITH NOCHECK ADD  CONSTRAINT [FK_Permission_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Permission] CHECK CONSTRAINT [FK_Permission_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Permission_Subsystem]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Permission_Subsystem]') AND parent_object_id = OBJECT_ID(N'[Secure].[Permission]'))
ALTER TABLE [Secure].[Permission]  WITH NOCHECK ADD  CONSTRAINT [FK_Permission_Subsystem] FOREIGN KEY([SysID])
REFERENCES [Secure].[Subsystem] ([UniqueID])
GO
ALTER TABLE [Secure].[Permission] CHECK CONSTRAINT [FK_Permission_Subsystem]
GO
/****** 对象:  ForeignKey [FK_PermissionOrgSetting_ObjectBase]    脚本日期: 08/08/2014 16:59:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionOrgSetting_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]'))
ALTER TABLE [Secure].[PermissionOrgSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionOrgSetting_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[PermissionOrgSetting] CHECK CONSTRAINT [FK_PermissionOrgSetting_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PermissionOrgSetting_OrganizationObject]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionOrgSetting_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]'))
ALTER TABLE [Secure].[PermissionOrgSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionOrgSetting_OrganizationObject] FOREIGN KEY([OrganizationID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[PermissionOrgSetting] CHECK CONSTRAINT [FK_PermissionOrgSetting_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_PermissionOrgSetting_Permission]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionOrgSetting_Permission]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]'))
ALTER TABLE [Secure].[PermissionOrgSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionOrgSetting_Permission] FOREIGN KEY([PermissionID])
REFERENCES [Secure].[Permission] ([UniqueID])
GO
ALTER TABLE [Secure].[PermissionOrgSetting] CHECK CONSTRAINT [FK_PermissionOrgSetting_Permission]
GO
/****** 对象:  ForeignKey [FK_PermissionRoleSetting_ObjectBase]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionRoleSetting_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]'))
ALTER TABLE [Secure].[PermissionRoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionRoleSetting_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[PermissionRoleSetting] CHECK CONSTRAINT [FK_PermissionRoleSetting_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PermissionRoleSetting_Permission]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionRoleSetting_Permission]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]'))
ALTER TABLE [Secure].[PermissionRoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionRoleSetting_Permission] FOREIGN KEY([PermissionID])
REFERENCES [Secure].[Permission] ([UniqueID])
GO
ALTER TABLE [Secure].[PermissionRoleSetting] CHECK CONSTRAINT [FK_PermissionRoleSetting_Permission]
GO
/****** 对象:  ForeignKey [FK_PermissionRoleSetting_Role]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionRoleSetting_Role]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]'))
ALTER TABLE [Secure].[PermissionRoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionRoleSetting_Role] FOREIGN KEY([RoleID])
REFERENCES [Secure].[Role] ([UniqueID])
GO
ALTER TABLE [Secure].[PermissionRoleSetting] CHECK CONSTRAINT [FK_PermissionRoleSetting_Role]
GO
/****** 对象:  ForeignKey [FK_Position_OrganizationObject]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Position_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[Position]'))
ALTER TABLE [Secure].[Position]  WITH NOCHECK ADD  CONSTRAINT [FK_Position_OrganizationObject] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Position] CHECK CONSTRAINT [FK_Position_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_Position_OrganizationObject_02]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Position_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[Position]'))
ALTER TABLE [Secure].[Position]  WITH NOCHECK ADD  CONSTRAINT [FK_Position_OrganizationObject_02] FOREIGN KEY([OrganizationID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Position] CHECK CONSTRAINT [FK_Position_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_PositionRelation_ObjectBase]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PositionRelation_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[PositionRelation]'))
ALTER TABLE [Secure].[PositionRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_PositionRelation_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[PositionRelation] CHECK CONSTRAINT [FK_PositionRelation_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PositionRelation_OrganizationObject]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PositionRelation_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[PositionRelation]'))
ALTER TABLE [Secure].[PositionRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_PositionRelation_OrganizationObject] FOREIGN KEY([SuperiorID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[PositionRelation] CHECK CONSTRAINT [FK_PositionRelation_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_PositionRelation_OrganizationObject_02]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PositionRelation_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[PositionRelation]'))
ALTER TABLE [Secure].[PositionRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_PositionRelation_OrganizationObject_02] FOREIGN KEY([CurrentID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[PositionRelation] CHECK CONSTRAINT [FK_PositionRelation_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_Role_ObjectBase]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Role_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Role]'))
ALTER TABLE [Secure].[Role]  WITH NOCHECK ADD  CONSTRAINT [FK_Role_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Role] CHECK CONSTRAINT [FK_Role_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Role_Subsystem]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Role_Subsystem]') AND parent_object_id = OBJECT_ID(N'[Secure].[Role]'))
ALTER TABLE [Secure].[Role]  WITH NOCHECK ADD  CONSTRAINT [FK_Role_Subsystem] FOREIGN KEY([SysID])
REFERENCES [Secure].[Subsystem] ([UniqueID])
GO
ALTER TABLE [Secure].[Role] CHECK CONSTRAINT [FK_Role_Subsystem]
GO
/****** 对象:  ForeignKey [FK_RoleSetting_ObjectBase]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_RoleSetting_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[RoleSetting]'))
ALTER TABLE [Secure].[RoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleSetting_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[RoleSetting] CHECK CONSTRAINT [FK_RoleSetting_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_RoleSetting_OrganizationObject]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_RoleSetting_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[RoleSetting]'))
ALTER TABLE [Secure].[RoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleSetting_OrganizationObject] FOREIGN KEY([OrganizationID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[RoleSetting] CHECK CONSTRAINT [FK_RoleSetting_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_RoleSetting_Role]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_RoleSetting_Role]') AND parent_object_id = OBJECT_ID(N'[Secure].[RoleSetting]'))
ALTER TABLE [Secure].[RoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleSetting_Role] FOREIGN KEY([RoleID])
REFERENCES [Secure].[Role] ([UniqueID])
GO
ALTER TABLE [Secure].[RoleSetting] CHECK CONSTRAINT [FK_RoleSetting_Role]
GO
/****** 对象:  ForeignKey [FK_SignInAction_Account]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInAction_Account]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
ALTER TABLE [Secure].[SignInAction]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInAction_Account] FOREIGN KEY([AccountID])
REFERENCES [Secure].[Account] ([UniqueID])
GO
ALTER TABLE [Secure].[SignInAction] CHECK CONSTRAINT [FK_SignInAction_Account]
GO
/****** 对象:  ForeignKey [FK_SignInAction_ObjectBase]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInAction_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
ALTER TABLE [Secure].[SignInAction]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInAction_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[SignInAction] CHECK CONSTRAINT [FK_SignInAction_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_SignInLogTrace_BaseLogTrace]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInLogTrace_BaseLogTrace]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInLogTrace]'))
ALTER TABLE [Secure].[SignInLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInLogTrace_BaseLogTrace] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[BaseLogTrace] ([UniqueID])
GO
ALTER TABLE [Secure].[SignInLogTrace] CHECK CONSTRAINT [FK_SignInLogTrace_BaseLogTrace]
GO
/****** 对象:  ForeignKey [FK_SignInLogTrace_ObjectBase]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInLogTrace_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInLogTrace]'))
ALTER TABLE [Secure].[SignInLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInLogTrace_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[SignInLogTrace] CHECK CONSTRAINT [FK_SignInLogTrace_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_SignInToken_ObjectBase]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInToken_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInToken]'))
ALTER TABLE [Secure].[SignInToken]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInToken_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[SignInToken] CHECK CONSTRAINT [FK_SignInToken_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_SignInToken_SignInAction]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInToken_SignInAction]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInToken]'))
ALTER TABLE [Secure].[SignInToken]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInToken_SignInAction] FOREIGN KEY([ActionID])
REFERENCES [Secure].[SignInAction] ([UniqueID])
GO
ALTER TABLE [Secure].[SignInToken] CHECK CONSTRAINT [FK_SignInToken_SignInAction]
GO
/****** 对象:  ForeignKey [FK_SqlLogTrace_BaseLogTrace]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SqlLogTrace_BaseLogTrace]') AND parent_object_id = OBJECT_ID(N'[Secure].[SqlLogTrace]'))
ALTER TABLE [Secure].[SqlLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_SqlLogTrace_BaseLogTrace] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[BaseLogTrace] ([UniqueID])
GO
ALTER TABLE [Secure].[SqlLogTrace] CHECK CONSTRAINT [FK_SqlLogTrace_BaseLogTrace]
GO
/****** 对象:  ForeignKey [FK_SqlLogTrace_ObjectBase]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SqlLogTrace_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[SqlLogTrace]'))
ALTER TABLE [Secure].[SqlLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_SqlLogTrace_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[SqlLogTrace] CHECK CONSTRAINT [FK_SqlLogTrace_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Staff_CredentialsType]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_CredentialsType]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_CredentialsType] FOREIGN KEY([CredentialsTypeID])
REFERENCES [Basic].[CredentialsType] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_CredentialsType]
GO
/****** 对象:  ForeignKey [FK_Staff_GlobalRegion]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_GlobalRegion]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_GlobalRegion] FOREIGN KEY([BirthPlaceID])
REFERENCES [Basic].[GlobalRegion] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_GlobalRegion]
GO
/****** 对象:  ForeignKey [FK_Staff_ObjectBase]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Staff_OrganizationObject]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_OrganizationObject] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_Staff_OrganizationObject_02]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_OrganizationObject_02] FOREIGN KEY([OrganizationID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_Staff_OrganizationObject_03]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_OrganizationObject_03]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_OrganizationObject_03] FOREIGN KEY([PositionID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_OrganizationObject_03]
GO
/****** 对象:  ForeignKey [FK_StaffAccount_ObjectBase]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_StaffAccount_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
ALTER TABLE [Secure].[StaffAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_StaffAccount_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[StaffAccount] CHECK CONSTRAINT [FK_StaffAccount_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_StaffAccount_OrganizationObject]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_StaffAccount_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
ALTER TABLE [Secure].[StaffAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_StaffAccount_OrganizationObject] FOREIGN KEY([StaffID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[StaffAccount] CHECK CONSTRAINT [FK_StaffAccount_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_StaffAccount_PredefinedCode]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_StaffAccount_PredefinedCode]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
ALTER TABLE [Secure].[StaffAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_StaffAccount_PredefinedCode] FOREIGN KEY([LockReason])
REFERENCES [Basic].[PredefinedCode] ([UniqueID])
GO
ALTER TABLE [Secure].[StaffAccount] CHECK CONSTRAINT [FK_StaffAccount_PredefinedCode]
GO
/****** 对象:  ForeignKey [FK_SubsysAdministrator_OrganizationObject]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SubsysAdministrator_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[SubsysAdministrator]'))
ALTER TABLE [Secure].[SubsysAdministrator]  WITH NOCHECK ADD  CONSTRAINT [FK_SubsysAdministrator_OrganizationObject] FOREIGN KEY([StaffID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[SubsysAdministrator] CHECK CONSTRAINT [FK_SubsysAdministrator_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_SubsysAdministrator_Subsystem]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SubsysAdministrator_Subsystem]') AND parent_object_id = OBJECT_ID(N'[Secure].[SubsysAdministrator]'))
ALTER TABLE [Secure].[SubsysAdministrator]  WITH NOCHECK ADD  CONSTRAINT [FK_SubsysAdministrator_Subsystem] FOREIGN KEY([SysID])
REFERENCES [Secure].[Subsystem] ([UniqueID])
GO
ALTER TABLE [Secure].[SubsysAdministrator] CHECK CONSTRAINT [FK_SubsysAdministrator_Subsystem]
GO
/****** 对象:  ForeignKey [FK_Subsystem_ObjectBase]    脚本日期: 08/08/2014 16:59:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Subsystem_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Subsystem]'))
ALTER TABLE [Secure].[Subsystem]  WITH NOCHECK ADD  CONSTRAINT [FK_Subsystem_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Subsystem] CHECK CONSTRAINT [FK_Subsystem_ObjectBase]
GO
