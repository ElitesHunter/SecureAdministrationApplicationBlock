/****** 对象:  ForeignKey [FK_ApplicationBlock_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_ApplicationBlock_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
ALTER TABLE [Basic].[ApplicationBlock] DROP CONSTRAINT [FK_ApplicationBlock_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_ApplicationBlock_ObjectBase_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_ApplicationBlock_ObjectBase_02]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
ALTER TABLE [Basic].[ApplicationBlock] DROP CONSTRAINT [FK_ApplicationBlock_ObjectBase_02]
GO
/****** 对象:  ForeignKey [FK_CredentialsType_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_CredentialsType_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[CredentialsType]'))
ALTER TABLE [Basic].[CredentialsType] DROP CONSTRAINT [FK_CredentialsType_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_FileMapRelation_FileObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_FileMapRelation_FileObject]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileMapRelation]'))
ALTER TABLE [Basic].[FileMapRelation] DROP CONSTRAINT [FK_FileMapRelation_FileObject]
GO
/****** 对象:  ForeignKey [FK_FileMapRelation_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_FileMapRelation_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileMapRelation]'))
ALTER TABLE [Basic].[FileMapRelation] DROP CONSTRAINT [FK_FileMapRelation_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_FileObject_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_FileObject_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
ALTER TABLE [Basic].[FileObject] DROP CONSTRAINT [FK_FileObject_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_FileStream_FileObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_FileStream_FileObject]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileStream]'))
ALTER TABLE [Basic].[FileStream] DROP CONSTRAINT [FK_FileStream_FileObject]
GO
/****** 对象:  ForeignKey [FK_GlobalRegion_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_GlobalRegion_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[GlobalRegion]'))
ALTER TABLE [Basic].[GlobalRegion] DROP CONSTRAINT [FK_GlobalRegion_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_HotfixRelease_ApplicationBlock]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_HotfixRelease_ApplicationBlock]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
ALTER TABLE [Basic].[HotfixRelease] DROP CONSTRAINT [FK_HotfixRelease_ApplicationBlock]
GO
/****** 对象:  ForeignKey [FK_HotfixRelease_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_HotfixRelease_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
ALTER TABLE [Basic].[HotfixRelease] DROP CONSTRAINT [FK_HotfixRelease_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_HotfixRelease_PredefinedCode]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_HotfixRelease_PredefinedCode]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
ALTER TABLE [Basic].[HotfixRelease] DROP CONSTRAINT [FK_HotfixRelease_PredefinedCode]
GO
/****** 对象:  ForeignKey [FK_PredefinedCode_ApplicationBlock]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_PredefinedCode_ApplicationBlock]') AND parent_object_id = OBJECT_ID(N'[Basic].[PredefinedCode]'))
ALTER TABLE [Basic].[PredefinedCode] DROP CONSTRAINT [FK_PredefinedCode_ApplicationBlock]
GO
/****** 对象:  ForeignKey [FK_PredefinedCode_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_PredefinedCode_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[PredefinedCode]'))
ALTER TABLE [Basic].[PredefinedCode] DROP CONSTRAINT [FK_PredefinedCode_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PredefinedCode_ObjectBase_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_PredefinedCode_ObjectBase_02]') AND parent_object_id = OBJECT_ID(N'[Basic].[PredefinedCode]'))
ALTER TABLE [Basic].[PredefinedCode] DROP CONSTRAINT [FK_PredefinedCode_ObjectBase_02]
GO
/****** 对象:  ForeignKey [FK_Account_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Account_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Account]'))
ALTER TABLE [Secure].[Account] DROP CONSTRAINT [FK_Account_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_AccountExpirationPolicy_Account]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_AccountExpirationPolicy_Account]') AND parent_object_id = OBJECT_ID(N'[Secure].[AccountExpirationPolicy]'))
ALTER TABLE [Secure].[AccountExpirationPolicy] DROP CONSTRAINT [FK_AccountExpirationPolicy_Account]
GO
/****** 对象:  ForeignKey [FK_AccountExpirationPolicy_PassExpirationPolicy]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_AccountExpirationPolicy_PassExpirationPolicy]') AND parent_object_id = OBJECT_ID(N'[Secure].[AccountExpirationPolicy]'))
ALTER TABLE [Secure].[AccountExpirationPolicy] DROP CONSTRAINT [FK_AccountExpirationPolicy_PassExpirationPolicy]
GO
/****** 对象:  ForeignKey [FK_Administrator_Account]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Administrator_Account]') AND parent_object_id = OBJECT_ID(N'[Secure].[Administrator]'))
ALTER TABLE [Secure].[Administrator] DROP CONSTRAINT [FK_Administrator_Account]
GO
/****** 对象:  ForeignKey [FK_Administrator_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Administrator_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Administrator]'))
ALTER TABLE [Secure].[Administrator] DROP CONSTRAINT [FK_Administrator_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_BaseLogTrace_Account]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_BaseLogTrace_Account]') AND parent_object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]'))
ALTER TABLE [Secure].[BaseLogTrace] DROP CONSTRAINT [FK_BaseLogTrace_Account]
GO
/****** 对象:  ForeignKey [FK_BaseLogTrace_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_BaseLogTrace_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]'))
ALTER TABLE [Secure].[BaseLogTrace] DROP CONSTRAINT [FK_BaseLogTrace_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Organization_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Organization_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
ALTER TABLE [Secure].[Organization] DROP CONSTRAINT [FK_Organization_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_Organization_OrganizationObject_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Organization_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
ALTER TABLE [Secure].[Organization] DROP CONSTRAINT [FK_Organization_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_Organization_OrganizationObject_03]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Organization_OrganizationObject_03]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
ALTER TABLE [Secure].[Organization] DROP CONSTRAINT [FK_Organization_OrganizationObject_03]
GO
/****** 对象:  ForeignKey [FK_OrganizationObject_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_OrganizationObject_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[OrganizationObject]'))
ALTER TABLE [Secure].[OrganizationObject] DROP CONSTRAINT [FK_OrganizationObject_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_ParttimeRelation_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_ParttimeRelation_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]'))
ALTER TABLE [Secure].[ParttimeRelation] DROP CONSTRAINT [FK_ParttimeRelation_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_ParttimeRelation_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_ParttimeRelation_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]'))
ALTER TABLE [Secure].[ParttimeRelation] DROP CONSTRAINT [FK_ParttimeRelation_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_ParttimeRelation_OrganizationObject_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_ParttimeRelation_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]'))
ALTER TABLE [Secure].[ParttimeRelation] DROP CONSTRAINT [FK_ParttimeRelation_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_PassExpirationPolicy_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PassExpirationPolicy_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[PassExpirationPolicy]'))
ALTER TABLE [Secure].[PassExpirationPolicy] DROP CONSTRAINT [FK_PassExpirationPolicy_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Permission_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Permission_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Permission]'))
ALTER TABLE [Secure].[Permission] DROP CONSTRAINT [FK_Permission_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Permission_Subsystem]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Permission_Subsystem]') AND parent_object_id = OBJECT_ID(N'[Secure].[Permission]'))
ALTER TABLE [Secure].[Permission] DROP CONSTRAINT [FK_Permission_Subsystem]
GO
/****** 对象:  ForeignKey [FK_PermissionOrgSetting_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionOrgSetting_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]'))
ALTER TABLE [Secure].[PermissionOrgSetting] DROP CONSTRAINT [FK_PermissionOrgSetting_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PermissionOrgSetting_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionOrgSetting_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]'))
ALTER TABLE [Secure].[PermissionOrgSetting] DROP CONSTRAINT [FK_PermissionOrgSetting_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_PermissionOrgSetting_Permission]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionOrgSetting_Permission]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]'))
ALTER TABLE [Secure].[PermissionOrgSetting] DROP CONSTRAINT [FK_PermissionOrgSetting_Permission]
GO
/****** 对象:  ForeignKey [FK_PermissionRoleSetting_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionRoleSetting_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]'))
ALTER TABLE [Secure].[PermissionRoleSetting] DROP CONSTRAINT [FK_PermissionRoleSetting_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PermissionRoleSetting_Permission]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionRoleSetting_Permission]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]'))
ALTER TABLE [Secure].[PermissionRoleSetting] DROP CONSTRAINT [FK_PermissionRoleSetting_Permission]
GO
/****** 对象:  ForeignKey [FK_PermissionRoleSetting_Role]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionRoleSetting_Role]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]'))
ALTER TABLE [Secure].[PermissionRoleSetting] DROP CONSTRAINT [FK_PermissionRoleSetting_Role]
GO
/****** 对象:  ForeignKey [FK_Position_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Position_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[Position]'))
ALTER TABLE [Secure].[Position] DROP CONSTRAINT [FK_Position_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_Position_OrganizationObject_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Position_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[Position]'))
ALTER TABLE [Secure].[Position] DROP CONSTRAINT [FK_Position_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_PositionRelation_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PositionRelation_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[PositionRelation]'))
ALTER TABLE [Secure].[PositionRelation] DROP CONSTRAINT [FK_PositionRelation_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PositionRelation_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PositionRelation_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[PositionRelation]'))
ALTER TABLE [Secure].[PositionRelation] DROP CONSTRAINT [FK_PositionRelation_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_PositionRelation_OrganizationObject_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PositionRelation_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[PositionRelation]'))
ALTER TABLE [Secure].[PositionRelation] DROP CONSTRAINT [FK_PositionRelation_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_Role_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Role_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Role]'))
ALTER TABLE [Secure].[Role] DROP CONSTRAINT [FK_Role_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Role_Subsystem]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Role_Subsystem]') AND parent_object_id = OBJECT_ID(N'[Secure].[Role]'))
ALTER TABLE [Secure].[Role] DROP CONSTRAINT [FK_Role_Subsystem]
GO
/****** 对象:  ForeignKey [FK_RoleSetting_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_RoleSetting_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[RoleSetting]'))
ALTER TABLE [Secure].[RoleSetting] DROP CONSTRAINT [FK_RoleSetting_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_RoleSetting_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_RoleSetting_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[RoleSetting]'))
ALTER TABLE [Secure].[RoleSetting] DROP CONSTRAINT [FK_RoleSetting_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_RoleSetting_Role]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_RoleSetting_Role]') AND parent_object_id = OBJECT_ID(N'[Secure].[RoleSetting]'))
ALTER TABLE [Secure].[RoleSetting] DROP CONSTRAINT [FK_RoleSetting_Role]
GO
/****** 对象:  ForeignKey [FK_SignInAction_Account]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInAction_Account]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
ALTER TABLE [Secure].[SignInAction] DROP CONSTRAINT [FK_SignInAction_Account]
GO
/****** 对象:  ForeignKey [FK_SignInAction_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInAction_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
ALTER TABLE [Secure].[SignInAction] DROP CONSTRAINT [FK_SignInAction_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_SignInLogTrace_BaseLogTrace]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInLogTrace_BaseLogTrace]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInLogTrace]'))
ALTER TABLE [Secure].[SignInLogTrace] DROP CONSTRAINT [FK_SignInLogTrace_BaseLogTrace]
GO
/****** 对象:  ForeignKey [FK_SignInLogTrace_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInLogTrace_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInLogTrace]'))
ALTER TABLE [Secure].[SignInLogTrace] DROP CONSTRAINT [FK_SignInLogTrace_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_SignInToken_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInToken_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInToken]'))
ALTER TABLE [Secure].[SignInToken] DROP CONSTRAINT [FK_SignInToken_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_SignInToken_SignInAction]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInToken_SignInAction]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInToken]'))
ALTER TABLE [Secure].[SignInToken] DROP CONSTRAINT [FK_SignInToken_SignInAction]
GO
/****** 对象:  ForeignKey [FK_SqlLogTrace_BaseLogTrace]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SqlLogTrace_BaseLogTrace]') AND parent_object_id = OBJECT_ID(N'[Secure].[SqlLogTrace]'))
ALTER TABLE [Secure].[SqlLogTrace] DROP CONSTRAINT [FK_SqlLogTrace_BaseLogTrace]
GO
/****** 对象:  ForeignKey [FK_SqlLogTrace_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SqlLogTrace_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[SqlLogTrace]'))
ALTER TABLE [Secure].[SqlLogTrace] DROP CONSTRAINT [FK_SqlLogTrace_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Staff_CredentialsType]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_CredentialsType]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [FK_Staff_CredentialsType]
GO
/****** 对象:  ForeignKey [FK_Staff_GlobalRegion]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_GlobalRegion]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [FK_Staff_GlobalRegion]
GO
/****** 对象:  ForeignKey [FK_Staff_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [FK_Staff_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Staff_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [FK_Staff_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_Staff_OrganizationObject_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [FK_Staff_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_Staff_OrganizationObject_03]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_OrganizationObject_03]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [FK_Staff_OrganizationObject_03]
GO
/****** 对象:  ForeignKey [FK_StaffAccount_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_StaffAccount_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
ALTER TABLE [Secure].[StaffAccount] DROP CONSTRAINT [FK_StaffAccount_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_StaffAccount_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_StaffAccount_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
ALTER TABLE [Secure].[StaffAccount] DROP CONSTRAINT [FK_StaffAccount_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_StaffAccount_PredefinedCode]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_StaffAccount_PredefinedCode]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
ALTER TABLE [Secure].[StaffAccount] DROP CONSTRAINT [FK_StaffAccount_PredefinedCode]
GO
/****** 对象:  ForeignKey [FK_SubsysAdministrator_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SubsysAdministrator_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[SubsysAdministrator]'))
ALTER TABLE [Secure].[SubsysAdministrator] DROP CONSTRAINT [FK_SubsysAdministrator_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_SubsysAdministrator_Subsystem]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SubsysAdministrator_Subsystem]') AND parent_object_id = OBJECT_ID(N'[Secure].[SubsysAdministrator]'))
ALTER TABLE [Secure].[SubsysAdministrator] DROP CONSTRAINT [FK_SubsysAdministrator_Subsystem]
GO
/****** 对象:  ForeignKey [FK_Subsystem_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Subsystem_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Subsystem]'))
ALTER TABLE [Secure].[Subsystem] DROP CONSTRAINT [FK_Subsystem_ObjectBase]
GO
/****** 对象:  Default [DF__Applicati__Block__5070F446]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__Applicati__Block__5070F446]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
Begin
ALTER TABLE [Basic].[ApplicationBlock] DROP CONSTRAINT [DF__Applicati__Block__5070F446]

End
GO
/****** 对象:  Default [DF__Applicati__Paren__5165187F]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__Applicati__Paren__5165187F]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
Begin
ALTER TABLE [Basic].[ApplicationBlock] DROP CONSTRAINT [DF__Applicati__Paren__5165187F]

End
GO
/****** 对象:  Default [DF__Applicatio__Code__52593CB8]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__Applicatio__Code__52593CB8]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
Begin
ALTER TABLE [Basic].[ApplicationBlock] DROP CONSTRAINT [DF__Applicatio__Code__52593CB8]

End
GO
/****** 对象:  Default [DF__Applicati__XExpa__534D60F1]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__Applicati__XExpa__534D60F1]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
Begin
ALTER TABLE [Basic].[ApplicationBlock] DROP CONSTRAINT [DF__Applicati__XExpa__534D60F1]

End
GO
/****** 对象:  Default [DF__FileObjec__Exten__48CFD27E]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__FileObjec__Exten__48CFD27E]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
Begin
ALTER TABLE [Basic].[FileObject] DROP CONSTRAINT [DF__FileObjec__Exten__48CFD27E]

End
GO
/****** 对象:  Default [DF__FileObjec__FileS__49C3F6B7]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__FileObjec__FileS__49C3F6B7]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
Begin
ALTER TABLE [Basic].[FileObject] DROP CONSTRAINT [DF__FileObjec__FileS__49C3F6B7]

End
GO
/****** 对象:  Default [DF__FileObjec__SaveT__4AB81AF0]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__FileObjec__SaveT__4AB81AF0]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
Begin
ALTER TABLE [Basic].[FileObject] DROP CONSTRAINT [DF__FileObjec__SaveT__4AB81AF0]

End
GO
/****** 对象:  Default [DF__FileObjec__SaveT__4BAC3F29]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__FileObjec__SaveT__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
Begin
ALTER TABLE [Basic].[FileObject] DROP CONSTRAINT [DF__FileObjec__SaveT__4BAC3F29]

End
GO
/****** 对象:  Default [DF__FileObjec__Physi__4CA06362]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__FileObjec__Physi__4CA06362]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
Begin
ALTER TABLE [Basic].[FileObject] DROP CONSTRAINT [DF__FileObjec__Physi__4CA06362]

End
GO
/****** 对象:  Default [DF__FileStrea__Strea__46E78A0C]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__FileStrea__Strea__46E78A0C]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileStream]'))
Begin
ALTER TABLE [Basic].[FileStream] DROP CONSTRAINT [DF__FileStrea__Strea__46E78A0C]

End
GO
/****** 对象:  Default [DF__GlobalReg__Regio__440B1D61]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__GlobalReg__Regio__440B1D61]') AND parent_object_id = OBJECT_ID(N'[Basic].[GlobalRegion]'))
Begin
ALTER TABLE [Basic].[GlobalRegion] DROP CONSTRAINT [DF__GlobalReg__Regio__440B1D61]

End
GO
/****** 对象:  Default [DF__GlobalReg__Paren__44FF419A]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__GlobalReg__Paren__44FF419A]') AND parent_object_id = OBJECT_ID(N'[Basic].[GlobalRegion]'))
Begin
ALTER TABLE [Basic].[GlobalRegion] DROP CONSTRAINT [DF__GlobalReg__Paren__44FF419A]

End
GO
/****** 对象:  Default [DF__HotfixRel__Versi__403A8C7D]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__HotfixRel__Versi__403A8C7D]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
Begin
ALTER TABLE [Basic].[HotfixRelease] DROP CONSTRAINT [DF__HotfixRel__Versi__403A8C7D]

End
GO
/****** 对象:  Default [DF__HotfixRel__Featu__412EB0B6]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__HotfixRel__Featu__412EB0B6]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
Begin
ALTER TABLE [Basic].[HotfixRelease] DROP CONSTRAINT [DF__HotfixRel__Featu__412EB0B6]

End
GO
/****** 对象:  Default [DF__HotfixRel__IsImp__4222D4EF]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__HotfixRel__IsImp__4222D4EF]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
Begin
ALTER TABLE [Basic].[HotfixRelease] DROP CONSTRAINT [DF__HotfixRel__IsImp__4222D4EF]

End
GO
/****** 对象:  Default [DF__ObjectBas__Objec__37A5467C]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__Objec__37A5467C]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] DROP CONSTRAINT [DF__ObjectBas__Objec__37A5467C]

End
GO
/****** 对象:  Default [DF__ObjectBas__IsRem__38996AB5]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__IsRem__38996AB5]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] DROP CONSTRAINT [DF__ObjectBas__IsRem__38996AB5]

End
GO
/****** 对象:  Default [DF__ObjectBas__Enabl__398D8EEE]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__Enabl__398D8EEE]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] DROP CONSTRAINT [DF__ObjectBas__Enabl__398D8EEE]

End
GO
/****** 对象:  Default [DF__ObjectBas__Visib__3A81B327]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__Visib__3A81B327]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] DROP CONSTRAINT [DF__ObjectBas__Visib__3A81B327]

End
GO
/****** 对象:  Default [DF__ObjectBas__IsCre__3B75D760]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__IsCre__3B75D760]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] DROP CONSTRAINT [DF__ObjectBas__IsCre__3B75D760]

End
GO
/****** 对象:  Default [DF__ObjectBas__LastM__3C69FB99]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__LastM__3C69FB99]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] DROP CONSTRAINT [DF__ObjectBas__LastM__3C69FB99]

End
GO
/****** 对象:  Default [DF__ObjectBas__IsMod__3D5E1FD2]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__IsMod__3D5E1FD2]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] DROP CONSTRAINT [DF__ObjectBas__IsMod__3D5E1FD2]

End
GO
/****** 对象:  Default [DF__ObjectBas__Comme__3E52440B]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__Comme__3E52440B]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] DROP CONSTRAINT [DF__ObjectBas__Comme__3E52440B]

End
GO
/****** 对象:  Default [DF__Predefined__Code__35BCFE0A]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__Predefined__Code__35BCFE0A]') AND parent_object_id = OBJECT_ID(N'[Basic].[PredefinedCode]'))
Begin
ALTER TABLE [Basic].[PredefinedCode] DROP CONSTRAINT [DF__Predefined__Code__35BCFE0A]

End
GO
/****** 对象:  Default [DF__Account__UserID__31EC6D26]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Account__UserID__31EC6D26]') AND parent_object_id = OBJECT_ID(N'[Secure].[Account]'))
Begin
ALTER TABLE [Secure].[Account] DROP CONSTRAINT [DF__Account__UserID__31EC6D26]

End
GO
/****** 对象:  Default [DF__Account__Passphr__32E0915F]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Account__Passphr__32E0915F]') AND parent_object_id = OBJECT_ID(N'[Secure].[Account]'))
Begin
ALTER TABLE [Secure].[Account] DROP CONSTRAINT [DF__Account__Passphr__32E0915F]

End
GO
/****** 对象:  Default [DF__Account__EmptyPa__33D4B598]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Account__EmptyPa__33D4B598]') AND parent_object_id = OBJECT_ID(N'[Secure].[Account]'))
Begin
ALTER TABLE [Secure].[Account] DROP CONSTRAINT [DF__Account__EmptyPa__33D4B598]

End
GO
/****** 对象:  Default [DF__Administr__IsDef__2F10007B]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Administr__IsDef__2F10007B]') AND parent_object_id = OBJECT_ID(N'[Secure].[Administrator]'))
Begin
ALTER TABLE [Secure].[Administrator] DROP CONSTRAINT [DF__Administr__IsDef__2F10007B]

End
GO
/****** 对象:  Default [DF__Administr__Windo__300424B4]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Administr__Windo__300424B4]') AND parent_object_id = OBJECT_ID(N'[Secure].[Administrator]'))
Begin
ALTER TABLE [Secure].[Administrator] DROP CONSTRAINT [DF__Administr__Windo__300424B4]

End
GO
/****** 对象:  Default [DF__BaseLogTr__Metho__2C3393D0]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__BaseLogTr__Metho__2C3393D0]') AND parent_object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]'))
Begin
ALTER TABLE [Secure].[BaseLogTrace] DROP CONSTRAINT [DF__BaseLogTr__Metho__2C3393D0]

End
GO
/****** 对象:  Default [DF__BaseLogTr__Versi__2D27B809]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__BaseLogTr__Versi__2D27B809]') AND parent_object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]'))
Begin
ALTER TABLE [Secure].[BaseLogTrace] DROP CONSTRAINT [DF__BaseLogTr__Versi__2D27B809]

End
GO
/****** 对象:  Default [DF__Organizat__Princ__29572725]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Organizat__Princ__29572725]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
Begin
ALTER TABLE [Secure].[Organization] DROP CONSTRAINT [DF__Organizat__Princ__29572725]

End
GO
/****** 对象:  Default [DF__Organizat__Princ__2A4B4B5E]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Organizat__Princ__2A4B4B5E]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
Begin
ALTER TABLE [Secure].[Organization] DROP CONSTRAINT [DF__Organizat__Princ__2A4B4B5E]

End
GO
/****** 对象:  Default [DF__Organizat__Paren__25869641]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Organizat__Paren__25869641]') AND parent_object_id = OBJECT_ID(N'[Secure].[OrganizationObject]'))
Begin
ALTER TABLE [Secure].[OrganizationObject] DROP CONSTRAINT [DF__Organizat__Paren__25869641]

End
GO
/****** 对象:  Default [DF__Organizat__Categ__267ABA7A]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Organizat__Categ__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[Secure].[OrganizationObject]'))
Begin
ALTER TABLE [Secure].[OrganizationObject] DROP CONSTRAINT [DF__Organizat__Categ__267ABA7A]

End
GO
/****** 对象:  Default [DF__Organizat__SortI__276EDEB3]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Organizat__SortI__276EDEB3]') AND parent_object_id = OBJECT_ID(N'[Secure].[OrganizationObject]'))
Begin
ALTER TABLE [Secure].[OrganizationObject] DROP CONSTRAINT [DF__Organizat__SortI__276EDEB3]

End
GO
/****** 对象:  Default [DF__PassExpir__Expir__489AC854]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__PassExpir__Expir__489AC854]') AND parent_object_id = OBJECT_ID(N'[Secure].[PassExpirationPolicy]'))
Begin
ALTER TABLE [Secure].[PassExpirationPolicy] DROP CONSTRAINT [DF__PassExpir__Expir__489AC854]

End
GO
/****** 对象:  Default [DF__PassExpir__Expir__498EEC8D]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__PassExpir__Expir__498EEC8D]') AND parent_object_id = OBJECT_ID(N'[Secure].[PassExpirationPolicy]'))
Begin
ALTER TABLE [Secure].[PassExpirationPolicy] DROP CONSTRAINT [DF__PassExpir__Expir__498EEC8D]

End
GO
/****** 对象:  Default [DF__SignInAct__Clien__1A14E395]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__Clien__1A14E395]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] DROP CONSTRAINT [DF__SignInAct__Clien__1A14E395]

End
GO
/****** 对象:  Default [DF__SignInAct__HostN__1B0907CE]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__HostN__1B0907CE]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] DROP CONSTRAINT [DF__SignInAct__HostN__1B0907CE]

End
GO
/****** 对象:  Default [DF__SignInAct__Platf__1BFD2C07]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__Platf__1BFD2C07]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] DROP CONSTRAINT [DF__SignInAct__Platf__1BFD2C07]

End
GO
/****** 对象:  Default [DF__SignInAct__IsSuc__1CF15040]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__IsSuc__1CF15040]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] DROP CONSTRAINT [DF__SignInAct__IsSuc__1CF15040]

End
GO
/****** 对象:  Default [DF__SignInAct__Faile__1DE57479]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__Faile__1DE57479]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] DROP CONSTRAINT [DF__SignInAct__Faile__1DE57479]

End
GO
/****** 对象:  Default [DF__SignInAct__Accou__1ED998B2]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__Accou__1ED998B2]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] DROP CONSTRAINT [DF__SignInAct__Accou__1ED998B2]

End
GO
/****** 对象:  Default [DF__SignInAct__Unkno__1FCDBCEB]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__Unkno__1FCDBCEB]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] DROP CONSTRAINT [DF__SignInAct__Unkno__1FCDBCEB]

End
GO
/****** 对象:  Default [DF__SignInLog__IOFla__182C9B23]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInLog__IOFla__182C9B23]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInLogTrace]'))
Begin
ALTER TABLE [Secure].[SignInLogTrace] DROP CONSTRAINT [DF__SignInLog__IOFla__182C9B23]

End
GO
/****** 对象:  Default [DF__SignInTok__Expir__164452B1]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInTok__Expir__164452B1]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInToken]'))
Begin
ALTER TABLE [Secure].[SignInToken] DROP CONSTRAINT [DF__SignInTok__Expir__164452B1]

End
GO
/****** 对象:  Default [DF__SqlLogTra__Comma__145C0A3F]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SqlLogTra__Comma__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[Secure].[SqlLogTrace]'))
Begin
ALTER TABLE [Secure].[SqlLogTrace] DROP CONSTRAINT [DF__SqlLogTra__Comma__145C0A3F]

End
GO
/****** 对象:  Default [DF__Staff__LastName__07020F21]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__LastName__07020F21]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__LastName__07020F21]

End
GO
/****** 对象:  Default [DF__Staff__FirstName__07F6335A]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__FirstName__07F6335A]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__FirstName__07F6335A]

End
GO
/****** 对象:  Default [DF__Staff__Gender__08EA5793]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__Gender__08EA5793]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__Gender__08EA5793]

End
GO
/****** 对象:  Default [DF__Staff__BirthDate__09DE7BCC]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__BirthDate__09DE7BCC]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__BirthDate__09DE7BCC]

End
GO
/****** 对象:  Default [DF__Staff__Residence__0AD2A005]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__Residence__0AD2A005]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__Residence__0AD2A005]

End
GO
/****** 对象:  Default [DF__Staff__Credentia__0BC6C43E]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__Credentia__0BC6C43E]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__Credentia__0BC6C43E]

End
GO
/****** 对象:  Default [DF__Staff__OfficePho__0CBAE877]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__OfficePho__0CBAE877]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__OfficePho__0CBAE877]

End
GO
/****** 对象:  Default [DF__Staff__MobileNO__0DAF0CB0]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__MobileNO__0DAF0CB0]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__MobileNO__0DAF0CB0]

End
GO
/****** 对象:  Default [DF__Staff__EmailAddr__0EA330E9]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__EmailAddr__0EA330E9]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__EmailAddr__0EA330E9]

End
GO
/****** 对象:  Default [DF__Staff__Induction__0F975522]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__Induction__0F975522]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__Induction__0F975522]

End
GO
/****** 对象:  Default [DF__Staff__IsProbati__108B795B]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__IsProbati__108B795B]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__IsProbati__108B795B]

End
GO
/****** 对象:  Default [DF__Staff__Probation__117F9D94]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__Probation__117F9D94]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__Probation__117F9D94]

End
GO
/****** 对象:  Default [DF__Staff__AutoRegul__1273C1CD]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__AutoRegul__1273C1CD]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] DROP CONSTRAINT [DF__Staff__AutoRegul__1273C1CD]

End
GO
/****** 对象:  Default [DF__StaffAcco__IsLoc__03317E3D]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__StaffAcco__IsLoc__03317E3D]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
Begin
ALTER TABLE [Secure].[StaffAccount] DROP CONSTRAINT [DF__StaffAcco__IsLoc__03317E3D]

End
GO
/****** 对象:  Default [DF__StaffAcco__Locke__0425A276]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__StaffAcco__Locke__0425A276]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
Begin
ALTER TABLE [Secure].[StaffAccount] DROP CONSTRAINT [DF__StaffAcco__Locke__0425A276]

End
GO
/****** 对象:  Default [DF__StaffAcco__Unloc__0519C6AF]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__StaffAcco__Unloc__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
Begin
ALTER TABLE [Secure].[StaffAccount] DROP CONSTRAINT [DF__StaffAcco__Unloc__0519C6AF]

End
GO
/****** 对象:  Default [DF__Subsystem__Inher__00551192]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Subsystem__Inher__00551192]') AND parent_object_id = OBJECT_ID(N'[Secure].[Subsystem]'))
Begin
ALTER TABLE [Secure].[Subsystem] DROP CONSTRAINT [DF__Subsystem__Inher__00551192]

End
GO
/****** 对象:  StoredProcedure [Sp].[ResetDatabase]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[ResetDatabase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[ResetDatabase]
GO
/****** 对象:  StoredProcedure [Sp].[InitializeCodes]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[InitializeCodes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[InitializeCodes]
GO
/****** 对象:  StoredProcedure [Sp].[ExecuteWinNTAuthentication]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[ExecuteWinNTAuthentication]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[ExecuteWinNTAuthentication]
GO
/****** 对象:  StoredProcedure [Sp].[InitializeApplicationBlocks]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[InitializeApplicationBlocks]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[InitializeApplicationBlocks]
GO
/****** 对象:  StoredProcedure [Sp].[CreateOrganization]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateOrganization]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[CreateOrganization]
GO
/****** 对象:  StoredProcedure [Sp].[GetAccountUseIdentityToken]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[GetAccountUseIdentityToken]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[GetAccountUseIdentityToken]
GO
/****** 对象:  View [Secure].[AdministratorVisibleCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[AdministratorVisibleCollection]'))
DROP VIEW [Secure].[AdministratorVisibleCollection]
GO
/****** 对象:  View [Basic].[ApplicationBlockVisibleCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Basic].[ApplicationBlockVisibleCollection]'))
DROP VIEW [Basic].[ApplicationBlockVisibleCollection]
GO
/****** 对象:  StoredProcedure [Sp].[CreateAdministrator]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateAdministrator]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[CreateAdministrator]
GO
/****** 对象:  StoredProcedure [Sp].[CreateApplicationBlock]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateApplicationBlock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[CreateApplicationBlock]
GO
/****** 对象:  StoredProcedure [Sp].[InitializeRegions]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[InitializeRegions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[InitializeRegions]
GO
/****** 对象:  StoredProcedure [Sp].[InitializeCredentialsTypes]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[InitializeCredentialsTypes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[InitializeCredentialsTypes]
GO
/****** 对象:  StoredProcedure [Sp].[CreateSystemCode]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateSystemCode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[CreateSystemCode]
GO
/****** 对象:  StoredProcedure [Sp].[CreateUserOperateBehavior]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateUserOperateBehavior]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[CreateUserOperateBehavior]
GO
/****** 对象:  StoredProcedure [Sp].[CreateOrganizationObject]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateOrganizationObject]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[CreateOrganizationObject]
GO
/****** 对象:  StoredProcedure [Sp].[CreateSignInAction]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateSignInAction]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[CreateSignInAction]
GO
/****** 对象:  StoredProcedure [Sp].[CreateSigninLogEvent]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateSigninLogEvent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[CreateSigninLogEvent]
GO
/****** 对象:  StoredProcedure [Sp].[CreateSignInToken]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateSignInToken]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[CreateSignInToken]
GO
/****** 对象:  View [Secure].[StaffAccountCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[StaffAccountCollection]'))
DROP VIEW [Secure].[StaffAccountCollection]
GO
/****** 对象:  StoredProcedure [Sp].[GetSubOrganizationObjects]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[GetSubOrganizationObjects]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[GetSubOrganizationObjects]
GO
/****** 对象:  View [Secure].[AccountEnabledCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[AccountEnabledCollection]'))
DROP VIEW [Secure].[AccountEnabledCollection]
GO
/****** 对象:  View [Secure].[AdministratorEnabledCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[AdministratorEnabledCollection]'))
DROP VIEW [Secure].[AdministratorEnabledCollection]
GO
/****** 对象:  View [Basic].[ApplicationBlockEnabledCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Basic].[ApplicationBlockEnabledCollection]'))
DROP VIEW [Basic].[ApplicationBlockEnabledCollection]
GO
/****** 对象:  UserDefinedFunction [Fn].[CreateOpenID]    脚本日期: 08/26/2014 17:57:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[CreateOpenID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Fn].[CreateOpenID]
GO
/****** 对象:  UserDefinedFunction [Fn].[GetHashPassword]    脚本日期: 08/26/2014 17:57:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[GetHashPassword]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Fn].[GetHashPassword]
GO
/****** 对象:  View [Basic].[PredefinedCodeCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Basic].[PredefinedCodeCollection]'))
DROP VIEW [Basic].[PredefinedCodeCollection]
GO
/****** 对象:  View [Secure].[OrganizationCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[OrganizationCollection]'))
DROP VIEW [Secure].[OrganizationCollection]
GO
/****** 对象:  StoredProcedure [Sp].[UpgradeOrganization]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[UpgradeOrganization]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[UpgradeOrganization]
GO
/****** 对象:  View [Secure].[PositionCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[PositionCollection]'))
DROP VIEW [Secure].[PositionCollection]
GO
/****** 对象:  View [Secure].[SigninTokenCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[SigninTokenCollection]'))
DROP VIEW [Secure].[SigninTokenCollection]
GO
/****** 对象:  View [Secure].[StaffCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[StaffCollection]'))
DROP VIEW [Secure].[StaffCollection]
GO
/****** 对象:  UserDefinedFunction [Fn].[CetRegionDisplayName]    脚本日期: 08/26/2014 17:57:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[CetRegionDisplayName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Fn].[CetRegionDisplayName]
GO
/****** 对象:  UserDefinedFunction [Fn].[TransferUniqueID]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[TransferUniqueID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Fn].[TransferUniqueID]
GO
/****** 对象:  View [Basic].[ApplicationBlockCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Basic].[ApplicationBlockCollection]'))
DROP VIEW [Basic].[ApplicationBlockCollection]
GO
/****** 对象:  View [Basic].[CredentialsTypeCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Basic].[CredentialsTypeCollection]'))
DROP VIEW [Basic].[CredentialsTypeCollection]
GO
/****** 对象:  View [Basic].[GlobalRegionCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Basic].[GlobalRegionCollection]'))
DROP VIEW [Basic].[GlobalRegionCollection]
GO
/****** 对象:  UserDefinedFunction [Fn].[GetPredefinedCodeUniqueID]    脚本日期: 08/26/2014 17:57:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[GetPredefinedCodeUniqueID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Fn].[GetPredefinedCodeUniqueID]
GO
/****** 对象:  UserDefinedFunction [Fn].[GetDateTimeString]    脚本日期: 08/26/2014 17:57:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[GetDateTimeString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Fn].[GetDateTimeString]
GO
/****** 对象:  UserDefinedFunction [Fn].[GetAccountUniqueID]    脚本日期: 08/26/2014 17:57:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[GetAccountUniqueID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Fn].[GetAccountUniqueID]
GO
/****** 对象:  View [Secure].[AccountCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[AccountCollection]'))
DROP VIEW [Secure].[AccountCollection]
GO
/****** 对象:  View [Secure].[AdministratorCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[AdministratorCollection]'))
DROP VIEW [Secure].[AdministratorCollection]
GO
/****** 对象:  UserDefinedFunction [Fn].[BuiltOrgObjectVirtualName]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[BuiltOrgObjectVirtualName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Fn].[BuiltOrgObjectVirtualName]
GO
/****** 对象:  StoredProcedure [Sp].[UpgradeOrganizationBase]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[UpgradeOrganizationBase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Sp].[UpgradeOrganizationBase]
GO
/****** 对象:  UserDefinedFunction [Fn].[GetOrgObjectVirtualPath]    脚本日期: 08/26/2014 17:57:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[GetOrgObjectVirtualPath]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Fn].[GetOrgObjectVirtualPath]
GO
/****** 对象:  View [Secure].[OrganizationObjectCollection]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[OrganizationObjectCollection]'))
DROP VIEW [Secure].[OrganizationObjectCollection]
GO
/****** 对象:  Table [Basic].[FileStream]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[FileStream]') AND type in (N'U'))
DROP TABLE [Basic].[FileStream]
GO
/****** 对象:  Table [Basic].[FileMapRelation]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[FileMapRelation]') AND type in (N'U'))
DROP TABLE [Basic].[FileMapRelation]
GO
/****** 对象:  Table [Basic].[FileObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[FileObject]') AND type in (N'U'))
DROP TABLE [Basic].[FileObject]
GO
/****** 对象:  Table [Basic].[HotfixRelease]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[HotfixRelease]') AND type in (N'U'))
DROP TABLE [Basic].[HotfixRelease]
GO
/****** 对象:  Table [Secure].[AccountExpirationPolicy]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[AccountExpirationPolicy]') AND type in (N'U'))
DROP TABLE [Secure].[AccountExpirationPolicy]
GO
/****** 对象:  Table [Secure].[PassExpirationPolicy]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[PassExpirationPolicy]') AND type in (N'U'))
DROP TABLE [Secure].[PassExpirationPolicy]
GO
/****** 对象:  Table [Secure].[Administrator]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Administrator]') AND type in (N'U'))
DROP TABLE [Secure].[Administrator]
GO
/****** 对象:  Table [Secure].[SqlLogTrace]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SqlLogTrace]') AND type in (N'U'))
DROP TABLE [Secure].[SqlLogTrace]
GO
/****** 对象:  Table [Secure].[SignInLogTrace]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SignInLogTrace]') AND type in (N'U'))
DROP TABLE [Secure].[SignInLogTrace]
GO
/****** 对象:  Table [Secure].[BaseLogTrace]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]') AND type in (N'U'))
DROP TABLE [Secure].[BaseLogTrace]
GO
/****** 对象:  Table [Secure].[ParttimeRelation]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]') AND type in (N'U'))
DROP TABLE [Secure].[ParttimeRelation]
GO
/****** 对象:  Table [Secure].[Position]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Position]') AND type in (N'U'))
DROP TABLE [Secure].[Position]
GO
/****** 对象:  Table [Secure].[PositionRelation]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[PositionRelation]') AND type in (N'U'))
DROP TABLE [Secure].[PositionRelation]
GO
/****** 对象:  Table [Secure].[Organization]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Organization]') AND type in (N'U'))
DROP TABLE [Secure].[Organization]
GO
/****** 对象:  Table [Secure].[Staff]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Staff]') AND type in (N'U'))
DROP TABLE [Secure].[Staff]
GO
/****** 对象:  Table [Basic].[CredentialsType]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[CredentialsType]') AND type in (N'U'))
DROP TABLE [Basic].[CredentialsType]
GO
/****** 对象:  Table [Basic].[GlobalRegion]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[GlobalRegion]') AND type in (N'U'))
DROP TABLE [Basic].[GlobalRegion]
GO
/****** 对象:  Table [Secure].[StaffAccount]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[StaffAccount]') AND type in (N'U'))
DROP TABLE [Secure].[StaffAccount]
GO
/****** 对象:  Table [Basic].[PredefinedCode]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[PredefinedCode]') AND type in (N'U'))
DROP TABLE [Basic].[PredefinedCode]
GO
/****** 对象:  Table [Basic].[ApplicationBlock]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]') AND type in (N'U'))
DROP TABLE [Basic].[ApplicationBlock]
GO
/****** 对象:  Table [Secure].[SubsysAdministrator]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SubsysAdministrator]') AND type in (N'U'))
DROP TABLE [Secure].[SubsysAdministrator]
GO
/****** 对象:  Table [Secure].[PermissionOrgSetting]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]') AND type in (N'U'))
DROP TABLE [Secure].[PermissionOrgSetting]
GO
/****** 对象:  Table [Secure].[PermissionRoleSetting]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]') AND type in (N'U'))
DROP TABLE [Secure].[PermissionRoleSetting]
GO
/****** 对象:  Table [Secure].[Permission]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Permission]') AND type in (N'U'))
DROP TABLE [Secure].[Permission]
GO
/****** 对象:  Table [Secure].[RoleSetting]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[RoleSetting]') AND type in (N'U'))
DROP TABLE [Secure].[RoleSetting]
GO
/****** 对象:  Table [Secure].[OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[OrganizationObject]') AND type in (N'U'))
DROP TABLE [Secure].[OrganizationObject]
GO
/****** 对象:  Table [Secure].[Role]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Role]') AND type in (N'U'))
DROP TABLE [Secure].[Role]
GO
/****** 对象:  Table [Secure].[Subsystem]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Subsystem]') AND type in (N'U'))
DROP TABLE [Secure].[Subsystem]
GO
/****** 对象:  Table [Secure].[SignInToken]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SignInToken]') AND type in (N'U'))
DROP TABLE [Secure].[SignInToken]
GO
/****** 对象:  Table [Secure].[SignInAction]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SignInAction]') AND type in (N'U'))
DROP TABLE [Secure].[SignInAction]
GO
/****** 对象:  Table [Secure].[Account]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Account]') AND type in (N'U'))
DROP TABLE [Secure].[Account]
GO
/****** 对象:  UserDefinedFunction [Fn].[RebuiltOrgObjectVirtualName]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[RebuiltOrgObjectVirtualName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Fn].[RebuiltOrgObjectVirtualName]
GO
/****** 对象:  Table [Basic].[ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[ObjectBase]') AND type in (N'U'))
DROP TABLE [Basic].[ObjectBase]
GO
/****** 对象:  UserDefinedFunction [Fn].[PadRight]    脚本日期: 08/26/2014 17:57:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[PadRight]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Fn].[PadRight]
GO
/****** 对象:  UserDefinedFunction [Fn].[PadLeft]    脚本日期: 08/26/2014 17:57:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[PadLeft]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Fn].[PadLeft]
GO
/****** 对象:  Schema [Basic]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'Basic')
DROP SCHEMA [Basic]
GO
/****** 对象:  Schema [Fn]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'Fn')
DROP SCHEMA [Fn]
GO
/****** 对象:  Schema [Secure]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'Secure')
DROP SCHEMA [Secure]
GO
/****** 对象:  Schema [Sp]    脚本日期: 08/26/2014 17:57:46 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'Sp')
DROP SCHEMA [Sp]
GO
/****** 对象:  Role [DBUser]    脚本日期: 08/26/2014 17:57:46 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'DBUser')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'DBUser' AND type = 'R')
CREATE ROLE [DBUser]

END
GO
/****** 对象:  Schema [Basic]    脚本日期: 08/26/2014 17:57:46 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Basic')
EXEC sys.sp_executesql N'CREATE SCHEMA [Basic] AUTHORIZATION [DBUser]'
GO
/****** 对象:  Schema [Fn]    脚本日期: 08/26/2014 17:57:46 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Fn')
EXEC sys.sp_executesql N'CREATE SCHEMA [Fn] AUTHORIZATION [DBUser]'
GO
/****** 对象:  Schema [Secure]    脚本日期: 08/26/2014 17:57:46 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Secure')
EXEC sys.sp_executesql N'CREATE SCHEMA [Secure] AUTHORIZATION [DBUser]'
GO
/****** 对象:  Schema [Sp]    脚本日期: 08/26/2014 17:57:46 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Sp')
EXEC sys.sp_executesql N'CREATE SCHEMA [Sp] AUTHORIZATION [DBUser]'
GO
/****** 对象:  UserDefinedFunction [Fn].[PadLeft]    脚本日期: 08/26/2014 17:57:45 ******/
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
/****** 对象:  UserDefinedFunction [Fn].[PadRight]    脚本日期: 08/26/2014 17:57:45 ******/
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
/****** 对象:  Table [Basic].[ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[ObjectBase]') AND type in (N'U'))
BEGIN
CREATE TABLE [Basic].[ObjectBase](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[IsRemoved] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Enabled] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Visible] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OpenID] [varchar](256) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[IsCreatedTime] [datetime] NOT NULL,
	[LastModifiedTime] [datetime] NULL,
	[IsModifiedTimes] [int] NOT NULL,
	[Comments] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_ObjectBase] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
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
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'dfb46f20-602a-408c-a104-001925c1b524', N'N', N'Y', N'Y', N'0xfc3ba9347d0e748f71176ff3d98ca9001eca57ec', CAST(0x0000A39300E94416 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'10dcd7db-a591-47c9-9323-0087e66cc2ac', N'N', N'Y', N'Y', N'0x0d975b81f707b27763277728bbcad62eda1a2ad0', CAST(0x0000A39301163140 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0b3fc8c2-701e-49aa-9f8a-0102e4aef6be', N'N', N'Y', N'Y', N'0xba472699d8745b5d791016bab8c585e8b9b50f31', CAST(0x0000A38E010B57E5 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'28e9bee6-b874-46a5-a9ed-01243ba11a52', N'N', N'Y', N'Y', N'0x7fa5621c7315b58fc334d9ff9e364346b9139d57', CAST(0x0000A38E010722C6 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b843f0bb-e999-4881-a99f-01771ce72077', N'N', N'Y', N'Y', N'0x53fc799609f1e81913f49061994f3173b45f11ae', CAST(0x0000A38E00BDA749 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd764fb9e-abc4-4f3e-8c89-033961608d49', N'N', N'Y', N'Y', N'0xade910b0e2e02fe07852dc56050cf3423e9b1a5b', CAST(0x0000A38C009DCC61 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'12eaf588-03f3-46ff-b672-03e31dc9938d', N'N', N'Y', N'Y', N'0x93b1aa000f9fd99ba96b1958028544dbf33eb1fb', CAST(0x0000A38C00AC2A8C AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b0627d17-74a6-44ae-b1ec-0710fa3e2dfa', N'N', N'Y', N'Y', N'0x5e154e89865945822a53c12963499587f25fa139', CAST(0x0000A38E00B9E077 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'07462b51-7f9f-46f4-be8e-073ae7b602c9', N'N', N'Y', N'Y', N'0xc9ce3f19ae819343eb0149b8588ef0e2102be230', CAST(0x0000A39300FD1C01 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ec45f6ab-efff-4409-9589-08ab8c7e11a8', N'N', N'Y', N'Y', N'0xa53c9e5d62478ccb89c8e3cffcf30caeff112262', CAST(0x0000A38B00EE8D09 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'701516f5-4eca-4e9a-b011-08cb1560d9cd', N'N', N'Y', N'Y', N'0xfa7236dbebfc5ae95c8223324ae3b28f5bc14a76', CAST(0x0000A38C00F0A6F9 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9816ef3b-7d2a-4276-b97a-08d8dd9e2a6b', N'N', N'Y', N'Y', N'0x1bcb230b2e47b1b85869a6e40c6baf55866e7e0e', CAST(0x0000A38B01144063 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9ddfc914-3cd3-4e8b-ac21-08ddaa86f8d2', N'N', N'Y', N'Y', N'0x2cb7fcae3aa118e99e1482b41d26e39e405256e9', CAST(0x0000A39300E74968 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5f734010-f6eb-47a0-b739-097c2ae4f4b0', N'N', N'Y', N'Y', N'0x074b0ee427f8552c05ce981e0c7a21a1181059d2', CAST(0x0000A38B00E52457 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'af89e405-c741-45a4-b3e2-0a25605e6826', N'N', N'Y', N'Y', N'0x18d9205399956b9dae99cccb10094e944f7c2a69', CAST(0x0000A38B00E61289 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f5112b3d-9f34-4924-aa5b-0a5f6ebcade7', N'N', N'Y', N'Y', N'0x643fe4784efd6a44094e017c4004f5fe34b6038d', CAST(0x0000A38E00F28607 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0b37a91b-d3e5-4cdc-9655-0ab33bc1deec', N'N', N'Y', N'Y', N'0x03d642a1bc64b87f06c17b96851b81dd6a26cdf8', CAST(0x0000A38B00EEE760 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'755ff4cb-1654-48d7-9b53-0af2c8105e26', N'N', N'Y', N'Y', N'0x182b88f131ac365df4361831d3480473fcc7c9b1', CAST(0x0000A38B00E5CEBA AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'bce67a45-7fba-4584-a7a9-0be41211df9b', N'N', N'Y', N'Y', N'0x5c8f387a35519e8489f67aec8c07e615bf7688a0', CAST(0x0000A38700EDDA5D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'29718d04-450c-4502-b784-0c235686bcee', N'N', N'Y', N'Y', N'0x690dd7fb6c42d51fef9ddd9e8748c8c7170b9af9', CAST(0x0000A38E00F622FB AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'76d76e2d-a34b-4f90-b099-0cb55270f67d', N'N', N'Y', N'Y', N'0x5c9be609aa6e49d40417db6346460a26f4da16fc', CAST(0x0000A38C00EBABA0 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'a6437305-b9aa-45a3-9e9a-0cf380504f5d', N'N', N'Y', N'Y', N'0x5c0e73e2ab749fb6f93e488862a1b195b7b6fe4f', CAST(0x0000A393010419B6 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8be92157-d8b1-4584-829c-0d213e8ed895', N'N', N'Y', N'Y', N'0x019487614b42d374f45f725cc3dccc8009428aba', CAST(0x0000A39300FE7897 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'94ad5843-0e85-4aae-9c22-0d2c5269e920', N'N', N'Y', N'Y', N'0x8127b2ff4283b37d16ea017b37ca71fac4732048', CAST(0x0000A39300FD483A AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'7d667e80-56b6-4e40-be5b-0e042c694b52', N'N', N'Y', N'Y', N'0xd333afb30e7b51b1adb24d849c94cffc7fb7174c', CAST(0x0000A38C00EBAC22 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c2e1b404-dfc3-4163-a9bf-0f6398adc37c', N'N', N'Y', N'Y', N'0xcf46d29e58ece0b76b71bd52f75abcbcb441c6db', CAST(0x0000A38B0119BDBE AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'2c48cf87-5ac2-4b16-9851-1091d6013846', N'N', N'Y', N'Y', N'0x20b2ae736eec1cfd56bbb6a7cb9f74cf11873ad4', CAST(0x0000A39300FD9369 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'a7aa9596-230c-4bee-8a00-112698adcdce', N'N', N'Y', N'Y', N'0xaae690a965ec42b91bf030a931ccb1817bdf1d0e', CAST(0x0000A38700EC1D38 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'bf3ab2fd-19d3-43ae-bf87-12470ab69aa1', N'N', N'Y', N'Y', N'0xe728bc719290afb642a69d556937bbeee7f76e70', CAST(0x0000A38E00E68CB0 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'13467114-f91b-4846-8f05-131d786a19e5', N'N', N'Y', N'Y', N'0x3e72061a617912be4e9f74bf4c66953218269df3', CAST(0x0000A39300FD52ED AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ff559641-25b6-4576-9813-13a7d917e519', N'N', N'Y', N'Y', N'0xb6b5f39235e87b313f00469311647f88d875dcdf', CAST(0x0000A38C00BA9295 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9d3cbefe-3ffe-4839-a5bf-16b9d752521b', N'N', N'Y', N'Y', N'0x227124e34dc1d10d9b029b6956943fbbd352cb09', CAST(0x0000A393010C2186 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'04bec334-83de-48e9-b9e3-16c2965b8d45', N'N', N'Y', N'Y', N'0x20f45828ded211b797f1f9650f28a9173b25422b', CAST(0x0000A38C00EBAC1F AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b9b18bb9-8be4-46e0-80d3-1768c9e1864e', N'N', N'Y', N'Y', N'0xaab64c496611d487b09c44e057be07faac915943', CAST(0x0000A38E00E735CE AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e4fbf3c9-e79a-4d8a-b1b7-181585dc3841', N'N', N'Y', N'Y', N'0x6cecb209f5eac81feefb772b2f60447b85b9b1c9', CAST(0x0000A38E00F622FB AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'dcd99f1a-e1ae-4421-899e-188e1ada9f43', N'N', N'Y', N'Y', N'0x73660794616c32c60f9295db5da88837ded8ea31', CAST(0x0000A38E01020A2D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c9123537-f303-4587-b60e-18a8276cc583', N'N', N'Y', N'Y', N'0x37ee270428a51a1f17f0c3fd7b1230a7a5a95fb4', CAST(0x0000A38E00E6410A AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9461d557-6f94-4513-9656-18dde968db76', N'N', N'Y', N'Y', N'0x32e9ee1ab490ccbf5972e0b6992f48371cdb2f67', CAST(0x0000A38B00EE8D08 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'820ac8c1-b175-49bf-af30-1920b36760a1', N'N', N'Y', N'Y', N'0xe5c44078977e4be0aeee5813d17e66df4b0b94c0', CAST(0x0000A38E00BC594C AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'980638ec-d932-4634-a56c-19bb484ece46', N'N', N'Y', N'Y', N'0x3ca984415626b459f05aeae991d6208914cc087a', CAST(0x0000A39300FC73E8 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c0bfcb11-091e-486e-8f0c-19ef7984449e', N'N', N'Y', N'Y', N'0x307de7941fc30d0ad4e4e8e64fce280b2efeecb7', CAST(0x0000A39300E93B98 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'906d51ac-5b31-4013-b31e-1a812640690f', N'N', N'Y', N'Y', N'0xde48f763b1388050ee2cff03d98e58c4f2abba42', CAST(0x0000A38E00EA96B5 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'287de0a7-61a3-461a-bc0b-1ac3f33925cc', N'N', N'Y', N'Y', N'0x8c56d0ec53d3cba3697fe97767ffd2879308d3a3', CAST(0x0000A38700B8CD9A AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5c1f23f0-4f61-48ed-9dd4-1addc6cfcd16', N'N', N'Y', N'Y', N'0x1ece829a31c5ecc2312f8af70b01275fda4ec0f3', CAST(0x0000A38E0108406B AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e8f6b937-305e-4b65-b085-1b0b12880a0e', N'N', N'Y', N'Y', N'0xb48e28b07a4ccbf0dc35e43f1cf8a2cda2e30d0f', CAST(0x0000A38E01020A29 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'94af40e5-c060-44a9-a4d4-1b7011d9fcbc', N'N', N'Y', N'Y', N'0x5f934288eb2877f874d6d8127d49e1fc58d39144', CAST(0x0000A38B011507BA AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f687ad10-28ee-49eb-8048-1c7a96fc51c6', N'N', N'Y', N'Y', N'0xe8539043b63e88802322419cad4851a896818036', CAST(0x0000A38C00EBABA1 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c07068f6-838e-48c1-97be-1cbbfeca05ee', N'N', N'Y', N'Y', N'0x517fe151ae46a97a8e052991d6d5fe9c9b047644', CAST(0x0000A38B00EEE5B2 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5b56701d-42f3-4162-b810-1cee87e69020', N'N', N'Y', N'Y', N'0x5b3a5687010f6a1f68631f17ee411dc68c2436e9', CAST(0x0000A38C00EBAC07 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'cd797705-39d0-4a1b-adc1-1d2f0c762b26', N'N', N'Y', N'Y', N'0x4a7ab250ea4fdc623770f0b48a190e1d32426069', CAST(0x0000A38C00F0A6F3 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f776ce4f-4112-4445-96bd-1d9c706dcfcc', N'N', N'Y', N'Y', N'0x6673866ffd141f5ed07124d8671a483c49923fa6', CAST(0x0000A39300FFE29E AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'fd079541-ac6a-42af-9e67-21023700bbc1', N'N', N'Y', N'Y', N'0xcb743c8e01835fcf2919aae1fe2a02bdc5352aec', CAST(0x0000A38E00BC5949 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'7a1a1967-de27-4d6c-8af6-2166d0209432', N'N', N'Y', N'Y', N'0x9453d5295aaa6206757f43cb9c5a42a8c2fe08a9', CAST(0x0000A39300FDCE1E AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ae8adfec-145e-4ff4-929b-22d890d52f3c', N'N', N'Y', N'Y', N'0xd13c15c5f49f993b1a0c6fa4aa57357ae2cc36f7', CAST(0x0000A38700EC959E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'adc5334d-2c74-4b9e-b34c-22e9b472c639', N'N', N'Y', N'Y', N'0x01ca1a34e0af548aa3eb8cff399e8bc86b6316eb', CAST(0x0000A38C00B35D74 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'bb83823c-a18a-4a21-88db-22eb9e20f11f', N'N', N'Y', N'Y', N'0x154e43da718b5916be952c752879a7abd5e2722a', CAST(0x0000A39300EB08FE AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ccc2ca80-cf0a-4f4c-81b0-23cb3cae7d6b', N'N', N'Y', N'Y', N'0x7ade63679ee3507645676ea558ce2e82b618d4c6', CAST(0x0000A38E010B5A03 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'79244096-a00d-4e7e-b90b-248775eec951', N'N', N'Y', N'Y', N'0xffb3088d75d9848e352c7583a931ccc9279a62c0', CAST(0x0000A38C00ACBB85 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'3559ff25-52b6-47b7-9822-256637d2c981', N'N', N'Y', N'Y', N'0x509efc1e4b35cf99cc1b927491cbe76a3f673e38', CAST(0x0000A38700ECAEF2 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9e6e1d4a-bd50-4441-a448-25a583488a40', N'N', N'Y', N'Y', N'0x90bfbad5bf88ed6177b69b8c40e842f750189d92', CAST(0x0000A38C00ABE36D AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f9261b17-16d0-4d54-a5ce-25ac48502d3c', N'N', N'Y', N'Y', N'0xa87ab48349bbe772fe1be9d3f3066351edc20bc6', CAST(0x0000A38C00A6CD3D AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b05e8eb8-e46f-429c-8922-27b019f0a1fe', N'N', N'Y', N'Y', N'0x5be737e6f8602942ecccd6b9090993a9f36fc126', CAST(0x0000A38C00AC285A AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e31a9b6f-3211-465c-878f-27bc588afef6', N'N', N'Y', N'Y', N'0xe218e41f59a84feacd7c7a8b593a39075e182717', CAST(0x0000A38E010707A4 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'42e29350-3d50-4ba6-ad60-27f52b9a9fde', N'N', N'Y', N'Y', N'0xd9ab6faadbd918785b3f71a451129f280965dc05', CAST(0x0000A38E00F5327E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd8eaf925-5bd5-4127-a73d-29e23a4ba09d', N'N', N'Y', N'Y', N'0x16fed1edc9242abdaf8771fd30833aae320825ec', CAST(0x0000A38C00EBAC06 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8d792189-b343-41fd-8266-29ecdf43c489', N'N', N'Y', N'Y', N'0x8c7ad9642d89c0133b0c0efbbd73de80396b8a0c', CAST(0x0000A38E00BA8B6D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'879c0feb-702e-430c-95ca-2b8ef6df9c16', N'N', N'Y', N'Y', N'0xd1f96a72a8088177f8449002876a58e42928a968', CAST(0x0000A38C00EBAC17 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'4dc3b9de-f597-463c-acea-2c299b841110', N'N', N'Y', N'Y', N'0xa26f7f2721beef48d03acfc03dad5564013a9a07', CAST(0x0000A39301044E7E AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'a8802fa4-ba50-47ac-b565-2c5b47979de7', N'N', N'Y', N'Y', N'0x0cda2975e7f0a244d14ebdae892aeed436844459', CAST(0x0000A39300FD6FC8 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'44ea0c2f-445b-408a-bdbc-2c835f7392d5', N'N', N'Y', N'Y', N'0x794a0e5a66e19c607d8dd527b251f6cd9c37a7fb', CAST(0x0000A38C00C13EBA AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'021dfaba-d22d-4c8b-81cc-2db6022b2340', N'N', N'Y', N'Y', N'0x0823c02a97af297a48e7b88ff2c31cf4701ddc63', CAST(0x0000A38C00C13EB4 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9b49b58f-1156-46cd-892e-2e74d3b97209', N'N', N'Y', N'Y', N'0xd396e54937ed0afce0bd3812416589e1fbef3731', CAST(0x0000A39300B7DA8A AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'199ab831-6323-454a-8695-2f2a2db26766', N'N', N'Y', N'Y', N'0x8d751c3491f22c6fe8678149558fcea92f78c58d', CAST(0x0000A39300E939CB AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'1f21744a-519f-413d-a77f-2f2d1b2d468d', N'N', N'Y', N'Y', N'0xd2e8871743210cd576379731afc7b49024cca298', CAST(0x0000A39300E81362 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e4163090-1783-4037-b4d7-2fea4815352c', N'N', N'Y', N'Y', N'0xa5c16084c69a0f07dfa966d2ea824657a58573f8', CAST(0x0000A38E00E64699 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b6011293-2fa5-4356-b7b6-305a2bbc77a1', N'N', N'Y', N'Y', N'0x9a572c23a77826dc244585ea7da258c01c125bcb', CAST(0x0000A38B00E89D6D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'32658cab-7b16-4528-a887-30ff2f7b4489', N'N', N'Y', N'Y', N'0x198baad504042ee82a0502bd67711866e3a98cf0', CAST(0x0000A38C011A447A AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'56ebdf69-2b57-4af9-a3a8-31228b7b5e74', N'N', N'Y', N'Y', N'0x0ffe1de5be169751ea8a04e6200f91d8b5e97cbc', CAST(0x0000A38C00C258BA AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'1174311b-8031-4acc-aa44-314d4db193f2', N'N', N'Y', N'Y', N'0x09dad62db5fb8b0274c9d006b22b14cdd19f8733', CAST(0x0000A38700B8CA03 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'bd1d55d9-948a-4f54-9007-324a3b41d336', N'N', N'Y', N'Y', N'0x70e840bbc700fd44d9d4243efbe10578edbf284f', CAST(0x0000A38E0101B592 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd2d81276-3884-465d-967b-327c083edd4c', N'N', N'Y', N'Y', N'0x1a3a1be593b655fee3a5d5354cbd88f5c404fffc', CAST(0x0000A38E00EA96B5 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b71a6d66-3b1c-4d75-926d-327e43cbbe91', N'N', N'Y', N'Y', N'0x638d60d81641e4d57ea28ba7b81acddd8d0eb501', CAST(0x0000A38C00EBAB9F AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6ae58a5d-92b1-44a2-81ae-32e9bbeff891', N'N', N'Y', N'Y', N'0x792adc37cad6bfe52ee7ed5b97e1d871b60c5946', CAST(0x0000A38C00EBAC22 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'adcacc3e-b4f7-44e5-b299-35f4cd150e5e', N'N', N'Y', N'Y', N'0xffb6b4444c3345d385c59531101176725ad28bc3', CAST(0x0000A38E00F4600D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'11d91141-0688-4c93-9a59-3611b3a64e5b', N'N', N'Y', N'Y', N'0x5d83f38156082ccc29d96237c2701e406545d937', CAST(0x0000A38B00EE27DB AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f9c8969f-9723-4333-bd95-36e1b6688479', N'N', N'Y', N'Y', N'0x2947999bac8e4c938719139e11e482c1465f4c6b', CAST(0x0000A38E010E9FBA AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b7a49e1b-e4f4-4602-97f5-38b48e8c84ff', N'N', N'Y', N'Y', N'0xbdc0f7d267602876cc4a64a1f5b8d257cd3d5994', CAST(0x0000A39300E74728 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'cb4aee8d-08c0-4300-89f0-38b7f37c0030', N'N', N'Y', N'Y', N'0x9d56361afe4577fbcdc2b76d0fc3a5179dea3467', CAST(0x0000A38C00EBAC15 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5ac3716e-6af9-4120-bd4a-38c1dea1d39f', N'N', N'Y', N'Y', N'0x95825be3576312593ebbf82cae01831ac3d53f30', CAST(0x0000A38C011A41C0 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'a2fb1d95-ab53-4bb9-9a9b-38de8cf321aa', N'N', N'Y', N'Y', N'0x6769221ac4ab1c732390399b9d238b143acfcc9a', CAST(0x0000A38C0119B179 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ce397b76-094e-4343-bce3-391acee62247', N'N', N'Y', N'Y', N'0x00f6392c274facfdb72455b0d19db20809f605eb', CAST(0x0000A38E010B2E76 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'eb517e96-db24-4986-ba7c-3a597deee42c', N'N', N'Y', N'Y', N'0xad08758e2d552dfc9ecb615bd354dff51bd46055', CAST(0x0000A39300EB613D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'cc114e47-5b29-4ce7-ab86-3a70fcb5ee0c', N'N', N'Y', N'Y', N'0xfe5b4d20b478b44aedb4fe63f6f301ed01c1734d', CAST(0x0000A38B00EE9136 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5d5e0013-0a76-4ac8-b2f0-3ad0b7931a7d', N'N', N'Y', N'Y', N'0x92bf765dee69457e362f66771ebd211963d5fa97', CAST(0x0000A393010C1ED5 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'1a9498dd-0801-4ac0-9838-3b590ea687da', N'N', N'Y', N'Y', N'0x4a24c7fe8be02f343bc9308ac59751d421b215a2', CAST(0x0000A38B01145C8E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b14a15b1-8343-49f5-84f8-3bd37a93478c', N'N', N'Y', N'Y', N'0x5731f92bd705bfe70b7a395cdfb91d5ede492a2f', CAST(0x0000A39300E93433 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'2d765adb-2006-43d5-90b1-3bec2b793f67', N'N', N'Y', N'Y', N'0x66a708cf86bf0bf7c03600f6f9b1c11a782adb6b', CAST(0x0000A38C00EBABCC AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6316f3c3-8426-4f03-a222-3bff62bb09e9', N'N', N'Y', N'Y', N'0xb34756ef1668ef4f47a4dbb8986b75889135a801', CAST(0x0000A38700B8CD99 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c96635fa-c26d-4d52-ac78-3cbd0f45828a', N'N', N'Y', N'Y', N'0x78a0bf1b2bc9d6f064fe6cf1f60d5a73102dd0fa', CAST(0x0000A38B01145C8E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c2f75e43-e4ed-4acc-9c39-3e2322050b6a', N'N', N'Y', N'Y', N'0x997f22ff168a6bca26a4f3bde1c1c5e1e509d962', CAST(0x0000A39301061F33 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'2678c02e-d58e-4f72-a4f2-3e2f3dee3168', N'N', N'Y', N'Y', N'0xb890d1c198afe3ebf40432471a61c233a1abe46a', CAST(0x0000A38C00ACB958 AS DateTime), NULL, 0, NULL)
GO
print 'Processed 100 total records'
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'84b6956e-b708-407f-af3b-3e421d597f9b', N'N', N'Y', N'Y', N'0x553955cf274743aa167bcc89000d2fc279530fa4', CAST(0x0000A38E00EC8122 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b181857f-3af2-46be-b14e-3e904fa2ae6d', N'N', N'Y', N'Y', N'0x69e2a1ab97aa41def3e49d1897a572baf6d6ad18', CAST(0x0000A38C00B55628 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'53bfa0ee-5bce-4f17-93c7-3eaee2f50548', N'N', N'Y', N'Y', N'0x96b4a9c0cf909f1a0e091c161d3bc8f1b4363caa', CAST(0x0000A38C01189389 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ef387020-1924-4ef9-8b3e-3f223c34d121', N'N', N'Y', N'Y', N'0x0a1e5578932cf90634546f3c90f84464f795de02', CAST(0x0000A39300FD1BF9 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'7da0e565-16b4-4486-89c8-3f516d5f1872', N'N', N'Y', N'Y', N'0x9f1482e794f4c6f1778eaaeec3f426baaf01250f', CAST(0x0000A38E0107DA0B AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'a41db1be-e892-4f6b-9932-3f597285a942', N'N', N'Y', N'Y', N'0xcdb65b3fa19f6b23f3e9a3700a2a69050d750f1b', CAST(0x0000A38C01076211 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0a37d323-84f7-4c84-8eac-40678e6ac5ef', N'N', N'Y', N'Y', N'0x3a3068680755cada033ce03520b1f96d97cbc65e', CAST(0x0000A38E0108620F AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'27b6f677-1e22-4342-9e0a-40df67d97d18', N'N', N'Y', N'Y', N'0x624cad04a7573c953b52718899f1be54ca968b2b', CAST(0x0000A38B00EED76B AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'a3df9da0-b1b6-49bd-8a29-4130416fd601', N'N', N'Y', N'Y', N'0x12ff95742c3a551da836224d145e822f073b42c2', CAST(0x0000A39300E75C2E AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'86b19bf4-25ab-4ee9-9cee-417d373684ac', N'N', N'Y', N'Y', N'0xa692195df1882c333712458fc525da17ba917ab1', CAST(0x0000A39300FDAE42 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'fe4df503-8747-4373-8579-41a04b27ace5', N'N', N'Y', N'Y', N'0xa65995ee1efae8b2773d7a0a5f65efefde738ba0', CAST(0x0000A38B01143640 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'1189d758-ee5b-4a41-9dd8-41f728bc281b', N'N', N'Y', N'Y', N'0x49e32a083fbbb91fb85510e59b295fa6a150e007', CAST(0x0000A38C0119B465 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9de539da-85e7-4370-871e-42fca7cbafb6', N'N', N'Y', N'Y', N'0xdd394ca8cf409ac9cbcc2490b2623fbb53b5a055', CAST(0x0000A38C011A41C2 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'53f1e2cd-785a-4e36-bc13-4335016f6250', N'N', N'Y', N'Y', N'0x1a2f22a49c4e8e62fd94c009bdca86e35b268fd3', CAST(0x0000A38700B8CA05 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e1b651bd-167d-4987-b8bf-44155039e904', N'N', N'Y', N'Y', N'0x77f31b20dc9642906df929cd432e845336198c54', CAST(0x0000A38E01020C3B AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5be30746-225e-4570-b08a-44194246f9e3', N'N', N'Y', N'Y', N'0x0db5661c4a620b55617316c8bd353a05b436668c', CAST(0x0000A38B00E3E0BC AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd3c372c1-a467-4307-bcc5-44285ab031ab', N'N', N'Y', N'Y', N'0x786292d2333766a2ca209658a6256747c8f95cc4', CAST(0x0000A38C00EBABFD AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'36acef7a-47b0-4ff1-a0d0-44d523cfeff0', N'N', N'Y', N'Y', N'0xd1360ba99b5bbfbee05406fdbd24c18d1418aa01', CAST(0x0000A38B00EEE760 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5d08b596-5c54-453e-ab45-45c326e72f5e', N'N', N'Y', N'Y', N'0x0a9eaa8e42200bff3452ae7bb3fcea961527be10', CAST(0x0000A38700B8CA05 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8f266695-6b83-4873-9f5c-4634c00c59fc', N'N', N'Y', N'Y', N'0x98a6897243c22b5e2b2376a176c3a42b8bb5e964', CAST(0x0000A39300E81364 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c1371159-6e29-4a5c-9452-464f49047acc', N'N', N'Y', N'Y', N'0x908dd13758ca5e1b14a9de52014aa3de5ecbee02', CAST(0x0000A38E010E53EC AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'01e7d153-ac2c-457e-8467-46e7dc1ed2a1', N'N', N'Y', N'Y', N'0x40a223ecc2cf34208af2f7db40f819920a931b3a', CAST(0x0000A38E00BDA98A AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'66862ade-da26-4331-b1ba-46fc4e6a6ea3', N'N', N'Y', N'Y', N'0xb1adbcb8a0d0f3335c3aa72978d9105ebed81138', CAST(0x0000A38B00E89D68 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'01991527-73cd-48c9-9fdf-4779a1d1e0b1', N'N', N'Y', N'Y', N'0x8ea0824fb34554d9e536cd47ef746d6adb797acb', CAST(0x0000A38C00EBAC14 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'304ad93e-d8b5-4294-89c5-479b28dcf3a3', N'N', N'Y', N'Y', N'0x86de8903eb6a523940da76d3ea03c891402d997c', CAST(0x0000A39300E91F75 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'09d1c8ab-ad9d-4908-b6d2-47f66739d05d', N'N', N'Y', N'Y', N'0x8d950cb081183281ebfaab5b98d2553c14666dc7', CAST(0x0000A38E00BCD862 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'96652507-ff3f-4bf9-833d-480d1cdb97f5', N'N', N'Y', N'Y', N'0x4d5871e32bd3f7cb51ff0033e5ef4058a1601579', CAST(0x0000A38C00ACB958 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'07878a8a-99f2-4fd5-85c1-49587d7926a7', N'N', N'Y', N'Y', N'0x244a580e5048683b0e6e58f8dba47ad9f2602205', CAST(0x0000A3930102A5A7 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'20cf7ef8-3942-4fbf-bb22-49624aca7994', N'N', N'Y', N'Y', N'0x1d529a284a458c01ad24c1551cb115956ee5dc5c', CAST(0x0000A38E0107DC4A AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b26bab5b-34ee-42fd-a8d7-49ec2c6393f2', N'N', N'Y', N'Y', N'0x65bd1466ed153deb0ff9d98f6a713a99510e361e', CAST(0x0000A39300EAF2D5 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'04141fb6-5513-4de8-8a5b-4a099cb5c05b', N'N', N'Y', N'Y', N'0xcce366a8f70e9c46bc2c766d3fde4e3e07b516bd', CAST(0x0000A38C00EBAC16 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'928804fc-3d01-41b3-a6c7-4a15aa12d7ef', N'N', N'Y', N'Y', N'0xc4b60b0e8c81ba06dba9de96d338c707fbd5c223', CAST(0x0000A39300FFBFF1 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c8417f28-a8d6-4020-8f61-4aed76b6709e', N'N', N'Y', N'Y', N'0x83d5de02b5fe454d150bd73431f16e53ecb96237', CAST(0x0000A38E010E5606 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e2405a0f-9260-4963-9890-4b6aa1ae5d90', N'N', N'Y', N'Y', N'0x4e9bcaac8b56722f7c584ed6c1f26b52d5191bde', CAST(0x0000A39300FC700E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8f7e1e03-4f44-4b83-a2e0-4cbe01f14f2d', N'N', N'Y', N'Y', N'0x96f184c252ce90b1638f1324d150c72703ba09e8', CAST(0x0000A38C00AC6766 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'61b4224b-0342-47c1-81dd-4ce71afeb9d6', N'N', N'Y', N'Y', N'0x334412fe2a038f91db5966a39d17990c6061f220', CAST(0x0000A38C00B8A3A0 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e7be1bff-5038-4dd2-beba-4d0393b2c97c', N'N', N'Y', N'Y', N'0xeafe155b8e0901b8cc023e393f672967690a1fac', CAST(0x0000A39300B7DAB8 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0079ca70-c15a-4699-8da2-4e00118f0d9a', N'N', N'Y', N'Y', N'0xe61a1014f28f02819a671095d9ef87784e857d44', CAST(0x0000A38B01146150 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'923461b6-946b-448a-bfb0-4ee31a1a1df8', N'N', N'Y', N'Y', N'0x04046ec4fefa975397282a2302e2df8de320da6f', CAST(0x0000A38E010E9FBA AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'24d36da4-3799-403c-a6a8-4f00da0e779a', N'N', N'Y', N'Y', N'0x993d7b2ac08c66c3d18ac260ff9b7d38c33360f1', CAST(0x0000A38E00BC1713 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'de8f10af-1d2e-46d0-ade1-50651b83f5a4', N'N', N'Y', N'Y', N'0xe967c31b6b6a8c2508fe33c64d9bd3f8803ed726', CAST(0x0000A38C009DD6CA AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f7a6590f-232b-4ccc-92a3-50bde43b4d16', N'N', N'Y', N'Y', N'0x9b694fef5970d4245540db204e25584741f9aa72', CAST(0x0000A38E00BDF87C AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'030f9596-2a99-474e-b50d-515be30edc9b', N'N', N'Y', N'Y', N'0x02cc8331d09ca69a1d81aa9bab61edc0e2abb043', CAST(0x0000A38C00B490D7 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e4e7b066-a6ab-4f86-baf3-51bbccf30e5b', N'N', N'Y', N'Y', N'0xb12de6bef8e4569744c20a01444a2a1cd9e40fab', CAST(0x0000A38C01189052 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd2ecc60d-cce0-46c2-b0ef-52467032efe6', N'N', N'Y', N'Y', N'0xbf52e4e9dbdd8a3c8226fe9bd188af902ece3b12', CAST(0x0000A39300FFBDB5 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'afc6ebca-5623-4ae0-afac-52849bd772f0', N'N', N'Y', N'Y', N'0x6e49629df1c0d654338a40acb463fdb812cf89da', CAST(0x0000A38B011BBBE8 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e932a3f4-58ec-44c3-81dc-53b0a1e21a09', N'N', N'Y', N'Y', N'0x1d1715714b5cc5afc985daeb0c4bdcb6e66b30c4', CAST(0x0000A38B011C02CF AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'cb70dadd-5077-4879-b14b-5475c7c9876c', N'N', N'Y', N'Y', N'0x10578920b24f4dcbda61401ed6732f8da1148feb', CAST(0x0000A39300FE7632 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9516d29b-920b-45ed-b71e-54b2348ba16e', N'N', N'Y', N'Y', N'0x8b4930d8341b8bcb8a4594938ad4fed1f2489fba', CAST(0x0000A39300FDAADD AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'87477132-b67d-4980-bdb0-54be5e335f60', N'N', N'Y', N'Y', N'0x888485740614ebbb6af04b5b1a4b7e29b38c03f2', CAST(0x0000A38B01146129 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'17ebe72e-888a-45c0-a9f2-54de05b197b7', N'N', N'Y', N'Y', N'0x2b67a24548dd32ebc3f2e5921412b8d84532dca5', CAST(0x0000A38C00ABE148 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'2d9b7bbc-871e-4f51-aaf6-55451b224e74', N'N', N'Y', N'Y', N'0x1dab323d9ce3b8dcfbc3247851fe47b3ccb2f32d', CAST(0x0000A38C00AC6766 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'4c6ecc11-6cf9-49db-a012-554a45d3569f', N'N', N'Y', N'Y', N'0xe99c48ea1ccc022aee22c9541d0d58ea63e33f6a', CAST(0x0000A38E01055B1D AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'42022481-2b6d-451e-ada4-5593a2332e49', N'N', N'Y', N'Y', N'0x47627e728a1fd1089fb4f5731f8ba4c2d55db785', CAST(0x0000A38C00F0A6FD AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f20d9c4c-5dab-4007-9c38-55d4224e738f', N'N', N'Y', N'Y', N'0x0cfc1f442c1523766179c9ba4aa9810fe7341266', CAST(0x0000A38C00A6CAF7 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'2b4138f7-373e-4fe9-b2a7-55eeb3bb0dfb', N'N', N'Y', N'Y', N'0x2ca4bd22349efd1032a7569f297e029937242fd5', CAST(0x0000A38E00B9E073 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'05ea4c2f-6251-418e-a9dc-5621f5472573', N'N', N'Y', N'Y', N'0xb3c4e8a889080bb50b7e4191eaeb2088b37e9174', CAST(0x0000A3930102D832 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'85c61c3e-182e-415b-bb8f-56447ceabf63', N'N', N'Y', N'Y', N'0xf4a4c916bda9ce5062afc3cb1c3e84a53fad3450', CAST(0x0000A38C00B492F0 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c3e382b5-c8a7-4e3c-9105-5700ede2ad8b', N'N', N'Y', N'Y', N'0xf139d7aaafb6119840ff357b6dcb4f86429fc190', CAST(0x0000A39300FD1E4A AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'4d0c4d7b-d4bc-4a40-953a-5ab9db62b8af', N'N', N'Y', N'Y', N'0xff4aee54ea52d020ddbc5f9fc455bdb37b87ca14', CAST(0x0000A39300E75065 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6a13d652-6648-4288-ad72-5b9505f31c06', N'N', N'Y', N'Y', N'0xa4dde0222fe044b52495d3a99fd41056b8bab571', CAST(0x0000A38E00B8D235 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6135fb18-6174-4261-9b89-5c2fc20f8035', N'N', N'Y', N'Y', N'0xd11e1559b1516205e43816a9a292bd397090c01f', CAST(0x0000A38B01143BCA AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'63a1fe18-d7ff-40bb-bc15-5c603388b965', N'N', N'Y', N'Y', N'0x34e0cbc7d5a82794b66da0455e232b205d327416', CAST(0x0000A38700B8CA04 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'96ba5cd4-2383-4407-9a9c-5ca0376d3329', N'N', N'Y', N'Y', N'0xbe9ded88cab2d7e729d5f74610e587b747ffbf0b', CAST(0x0000A39300E3E15B AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ad859c42-9c3b-4b9a-8d1b-5cfefe801764', N'N', N'Y', N'Y', N'0x71a54370090b45e0b1f6f5456c5fe5d95ecb930a', CAST(0x0000A38E00F5885D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'24c1016b-ffdc-447b-9fe0-5d7609bb2bee', N'N', N'Y', N'Y', N'0x6e46a01eaa622c3dc2cb0eff411a5cace30bfb0f', CAST(0x0000A38700B8CDA9 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f711fd7e-5c77-4f03-9f99-5da1580a7c31', N'N', N'Y', N'Y', N'0xbaba795ea209ae559ab989de8f10c768075a03fc', CAST(0x0000A38B00E7FD7D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8f11aa65-1c8f-4c1b-b939-5f0b0e4b2db9', N'N', N'Y', N'Y', N'0xc725234384d197921034e24402dbf8f10cd33300', CAST(0x0000A38700B8CDA0 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'25ee852c-b191-496a-8cef-5f1d3c7568e1', N'N', N'Y', N'Y', N'0x1bcf889916118d4a93ca6ccdc2212296121b0d44', CAST(0x0000A38B01146128 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8a4df6ed-d0b7-4db2-a932-5fd392f215c4', N'N', N'Y', N'Y', N'0x74e9ae4cd122e72b07ce1780fea705352371f555', CAST(0x0000A38C00B55366 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'7cef969b-2b3b-4a55-910e-607b3196e5cf', N'N', N'Y', N'Y', N'0xbfebda07bb789ed35599494cb8ffd3735901b704', CAST(0x0000A38B00E76C08 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'bbbedcca-ca1a-4b1c-9ef3-611fd33ae4d9', N'N', N'Y', N'Y', N'0x49ce10f5867a6fba6ba5ed776b470ab4f34ac4d1', CAST(0x0000A38E00B96784 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'4215608d-ef8a-4bf1-8416-61be425135ed', N'N', N'Y', N'Y', N'0x37758702ee5ce4d79b69eef04a5ab05bc44f8f14', CAST(0x0000A38E0102BABF AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'87b74f9f-d119-4a07-a56a-61d163d119bf', N'N', N'Y', N'Y', N'0x5c307984a1c12e18346c0a0e697b27379bc2b1cd', CAST(0x0000A38C00B35D76 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'68bd14c0-3303-4316-bd3d-61ebf9ef3442', N'N', N'Y', N'Y', N'0xd6ead9826f1aef7a1d1e2f83d24ca0c57e025ffd', CAST(0x0000A38E010707A3 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'76357c95-716e-44d4-9282-625c7833d944', N'N', N'Y', N'Y', N'0xfc23134f194e8deabc3640d047c66f50f6e8d351', CAST(0x0000A38E0107DA10 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'55aff8d6-b0b3-4ac3-a509-627d16e4bbdd', N'N', N'Y', N'Y', N'0x440b6c45949d3bcbd0fbb662219a6a748c89bb56', CAST(0x0000A38E00B8D265 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9911ea86-2fbe-49f6-8fc9-627dc114940a', N'N', N'Y', N'Y', N'0x4d006acb0fbe911937c3f429f7fd13789b49217e', CAST(0x0000A38C00EBABD4 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ed70cd01-11e6-443a-806f-632069d7f0a0', N'N', N'Y', N'Y', N'0x802ebd32ad6bae142532d83086b43e0470acb2d3', CAST(0x0000A38B00EF5251 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'fa46f4e7-910f-416f-9004-6339d1d3a9b4', N'N', N'Y', N'Y', N'0x605c51b2dcafbaba8b8d3b3599a6139e886dcfc8', CAST(0x0000A38700ECD93B AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'079715c2-e174-4b85-aaa0-643d867d657d', N'N', N'Y', N'Y', N'0x50bfcb84c31ebd6c8a50c39467560bba11856528', CAST(0x0000A38B01150308 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'91c0aa23-b2a3-4b71-a2a0-64787d55c798', N'N', N'Y', N'Y', N'0xcb57abaa3fb49efbdebca2ebb5162950f2c713dd', CAST(0x0000A38E00BEBE1F AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ed4577d4-e74c-4632-8c70-6524673ff94e', N'N', N'Y', N'Y', N'0xd611f24dc0ef6f8bf20cdbf721d715303fa32474', CAST(0x0000A39300FD482F AS DateTime), CAST(0x0000A39300FD9365 AS DateTime), 2, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd8eb8cdf-944d-4138-a248-66671e7eb5d5', N'N', N'Y', N'Y', N'0x400a5b6d3f9215cdfd1b1267f3c3cc9a03829a1d', CAST(0x0000A38C00EBABED AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'887ca38e-9a94-4999-9ea2-6757f691f137', N'N', N'Y', N'Y', N'0xae7083df66d9da5ca631b6368712ab7cfd1753f6', CAST(0x0000A38700ECC3C6 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f19ab020-db72-4461-9a9b-676f3986867d', N'N', N'Y', N'Y', N'0x3cabf875e8accb77c6336243ea60b5d08c008882', CAST(0x0000A39300EAF025 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'17e15b0f-63df-452d-8a64-6783c60f4da7', N'N', N'Y', N'Y', N'0x8e1b358944fd53f1a7c4f52a683f3816261bc4ef', CAST(0x0000A38C01055C09 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9a323fff-7df3-43e0-9d58-6834d3874749', N'N', N'Y', N'Y', N'0xcb963581366ec060a1b3a28ad98087dc9a2068da', CAST(0x0000A38E00BEBBCF AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'dcb327ca-57fc-49af-8707-691025316c17', N'N', N'Y', N'Y', N'0x6bbf28eba08611119dd2ce4fbf7f2bc559ce972b', CAST(0x0000A38700B8CA06 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ed6ae24a-698c-477c-9d1e-698a8d1661ed', N'N', N'Y', N'Y', N'0x93ae29f4e34c8131ed3d7df6583bd92d4cb4101b', CAST(0x0000A38C00EBAC14 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0a2ce839-50c2-446a-846b-69d8c4cb5535', N'N', N'Y', N'Y', N'0x7b2317300a907325f919065b8922dc2c7a2c4134', CAST(0x0000A38B00EE27DB AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8c422333-e81b-43a9-9268-6a2a7c30b737', N'N', N'Y', N'Y', N'0xef6bef1e6495dc70d8d4e1d667a40e47789978f2', CAST(0x0000A39300E78396 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'4eb07f2e-960a-4b79-9f53-6a6dc1f64942', N'N', N'Y', N'Y', N'0x531226912eb0e66c411fd98f94f51ef3a2bf83a9', CAST(0x0000A38E00EA98C9 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'aef9f982-c3c6-49a6-9ef6-6b8affcd35d4', N'N', N'Y', N'Y', N'0xe53a4c65441e0514bee9137aaf99975ff180f7e4', CAST(0x0000A38E00BCC16C AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b59c605b-6ab9-4f7b-9d65-6bc15808e132', N'N', N'Y', N'Y', N'0x8fa689cae23e01eb779cd2d603401fa96e489e44', CAST(0x0000A38C01055C12 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'4ad30a07-b130-4c8f-96f0-6c5bbd59cfb7', N'N', N'Y', N'Y', N'0xaa4005adf147cc010d2a841fe35e72e5e3175f3d', CAST(0x0000A38E00EC8340 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'604d3aca-808e-45de-a7a7-6c8bf10ed9e7', N'N', N'Y', N'Y', N'0xa933a46f71e335fc7f3e8c917a3c5a75749c23cb', CAST(0x0000A38C00F0A6E5 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0b90e704-15be-47c1-bdc0-6cd05f690cd2', N'N', N'Y', N'Y', N'0xbe3ba8a81ce6459960e93ab41e43d785a4a3c000', CAST(0x0000A393010585CE AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'cf2e8822-50bd-4af8-a2b1-6d9fd6652405', N'N', N'Y', N'Y', N'0xe2566b9c84fa3ce7f2a9d56b8eb2d81583058452', CAST(0x0000A39300FD741F AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'52e3890c-9923-49fd-a543-6ddd2ec7e26d', N'N', N'Y', N'Y', N'0x574d8907d39b0742eb9dc9bcaeb9b18c8119c8bf', CAST(0x0000A39300E815D3 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'1fc6e215-fc99-43dd-9487-6de546c06b4d', N'N', N'Y', N'Y', N'0x42b6efed4edef9f9626cbcef00dd55f83ae93355', CAST(0x0000A3930102A0DA AS DateTime), NULL, 0, NULL)
GO
print 'Processed 200 total records'
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'fc97162b-348b-40dd-8fa2-6e7f615938cb', N'N', N'Y', N'Y', N'0xa747bb81975752bf81713a5c4a9310eeb4737e29', CAST(0x0000A38E010558EC AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'db3d887c-fc98-4eb2-ab1b-6eb8e34dd65d', N'N', N'Y', N'Y', N'0x69d9a27371f109236e575aebdb1322c761563d4a', CAST(0x0000A38700B8CD8E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0811340d-7279-4bf0-a4e7-6ed4a9717fa2', N'N', N'Y', N'Y', N'0xbe67470aef0f3ab10a44fbde4ed5b2c03575bd6a', CAST(0x0000A39301046F1E AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6ae45435-dbc7-4fae-a9b5-6f4d72b62f89', N'N', N'Y', N'Y', N'0x2653866d0ebb42318e9ed5db302686ba3a90ea5d', CAST(0x0000A38E00BCC165 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'3454b2e9-19bf-4be9-976c-6f6f20917dc3', N'N', N'Y', N'Y', N'0xb5512ac57ddf70faa3dbbaaaa9c63b90557daae3', CAST(0x0000A38700B8CA06 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8267909c-1c98-4c5d-9fba-6fda3443acc8', N'N', N'Y', N'Y', N'0x43c83109a19facc20d7d201b5be915d0881d8c99', CAST(0x0000A38B00EAE3DE AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0123744c-2efb-4bd4-b507-6ff5abc9225f', N'N', N'Y', N'Y', N'0xd3883995e7229604697fd39ec52584dfa3b6708d', CAST(0x0000A38C00F0A6FD AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'463f4cef-449b-4764-a9ed-7004bb5d44ec', N'N', N'Y', N'Y', N'0x96b5d6b2eec21e14a7ee7ae1c5999ecb5026032a', CAST(0x0000A38B00E7FD85 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ae84cbbc-33a0-4d40-9b53-7088320b314f', N'N', N'Y', N'Y', N'0x8d31ca6bb703a25d3f18332d1cb826484541e478', CAST(0x0000A38700B8CD98 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'1666f2b3-b2da-4446-8489-70b38e73caf1', N'N', N'Y', N'Y', N'0x820626fcf9e4fac2c23ac5c791e44abbcea75784', CAST(0x0000A393010C41AF AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'871f57da-f73a-4c71-9799-71aa9b397c80', N'N', N'Y', N'Y', N'0x65ea1329250b831e1ace969aa5e2b63a3a1b11c8', CAST(0x0000A38C00B5E885 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'eff3bf67-7b1f-4170-92ed-72a43522a696', N'N', N'Y', N'Y', N'0xb747d9edcc446130910861c4a3d82d4a86768f77', CAST(0x0000A38C0118904B AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9b90b332-7864-4041-be99-73ccd85f5530', N'N', N'Y', N'Y', N'0xb9b920adb23d0b38e8f7bdb6c5310a809aa4f00f', CAST(0x0000A38C00EBAC17 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'2cf50779-09a1-4c08-b25b-75b53b4a6beb', N'N', N'Y', N'Y', N'0xdb20ec4520e6cc209b5e83f54456628ac9c71577', CAST(0x0000A38B011BB9A7 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'716edff6-9c58-41ac-a9b8-769b4169b320', N'N', N'Y', N'Y', N'0xb39496ff157262547a20332cf5d6df4de3178eb5', CAST(0x0000A39300B7DF50 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f2d5ef9f-647c-472a-bf50-770625442eac', N'N', N'Y', N'Y', N'0xb42596465099e74f7cfec99c59d331516075cab4', CAST(0x0000A38E00BC1719 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6169954c-ecec-48cf-b6f2-7727c269d367', N'N', N'Y', N'Y', N'0xdaeff0f7eea2f3f54aa461a95226e505940e31c9', CAST(0x0000A393010585D1 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f34da811-78a5-47d6-af01-77ed0403940b', N'N', N'Y', N'Y', N'0x0212210f0e74234aabb192ed2ae562c08f783fb0', CAST(0x0000A38C00B5E88B AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f4ae69fa-6856-41d1-ab68-792d7da38e6e', N'N', N'Y', N'Y', N'0x8bfdda617e8729a14b20d4c957009861a509fe65', CAST(0x0000A39300FFBDB5 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'479d7af2-3076-4e16-9217-7aa5f5bd7429', N'N', N'Y', N'Y', N'0x2bf5a0c7f2c4411a724de0e4d9b425e0b14a45e3', CAST(0x0000A39300E94059 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e8145a32-a4e7-48dd-93ca-7ad9bba7c135', N'N', N'Y', N'Y', N'0x1f45de59c80388fc265aa742a2c04f510e50228a', CAST(0x0000A38E0101B190 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e815b841-0724-4528-b88f-7b0f88e124f3', N'N', N'Y', N'Y', N'0x3bef044ef1f923f888662a474247734234a3fc8d', CAST(0x0000A38B00EEE777 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'a542eab4-7aaa-4e49-a5db-7cb467ed68a8', N'N', N'Y', N'Y', N'0x800337c75a362c75a8a42683061ba09e32781949', CAST(0x0000A38E00BE59ED AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8949f361-4628-433b-bb01-7d1f4aa9c6f9', N'N', N'Y', N'Y', N'0xeff33a027e0f1b6aa6890a69942f63faee91eb64', CAST(0x0000A38B011BB9A5 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'fd78d29b-dbb9-4281-95ae-7e5d53ea2f5c', N'N', N'Y', N'Y', N'0x84a521a1b228f19066c93b7b07ecb88ad520b0e5', CAST(0x0000A39300FF174D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c26fcd59-6514-47ff-aded-7f6f73b45dde', N'N', N'Y', N'Y', N'0x23cdd073e7b1c487b428c922aae26031f115564f', CAST(0x0000A39301058A39 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5d2b5528-0952-4cbf-b724-7f8c66940875', N'N', N'Y', N'Y', N'0x7e342f91fba3e474f699d52630ef5fea37c57d07', CAST(0x0000A38C00C25B14 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c53cecc5-36ce-458f-9f6d-80cab3e413a6', N'N', N'Y', N'Y', N'0xff230a54ac3814a8e5ef306c71ff3df8d70275ba', CAST(0x0000A39301162E94 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0d2a7520-54eb-4436-b2f8-810f11e5cabf', N'N', N'Y', N'Y', N'0x8cbe121d55b3bb33b1d8fd7720f35b8107acb44e', CAST(0x0000A38C00C140F6 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'18404ad6-b119-47d2-adda-814e1a5322c2', N'N', N'Y', N'Y', N'0x166b9b20ddf0ce6ea9310ed1ff9c3f4c4e501873', CAST(0x0000A38C00F0A6FA AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8e6e86a3-1994-424b-b43c-82006de107cf', N'N', N'Y', N'Y', N'0xf9b5b800a0fff2d2bed578fb6c8a0893a3626ebd', CAST(0x0000A38E00F5327A AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'200bed20-3dac-40e7-9e82-8208f2c0f0c6', N'N', N'Y', N'Y', N'0xf2a62d809be49010fbd1b551f0b52ccd533c6ac8', CAST(0x0000A38B00EEE5B2 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'adcaada3-4938-4536-9efd-8318d60a4555', N'N', N'Y', N'Y', N'0xf7550a14267b05c405ec118a7597f8462a80b6f6', CAST(0x0000A38E00E6F2AA AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'bf10e53a-a847-4678-8570-83404accc136', N'N', N'Y', N'Y', N'0x284a1bd346e494771ccc4a0cf931400b6d7e809c', CAST(0x0000A3930104174E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8717d93a-ccff-4ce3-add8-83d64883fa0e', N'N', N'Y', N'Y', N'0xa0ab2c896cce9898e74bd5fd60cd87ff3ce0a57f', CAST(0x0000A3930102A0D1 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'07c9bda6-9308-4fb7-ae35-849f9f03cde9', N'N', N'Y', N'Y', N'0x2655ff94e96ceaf97ca3ccf51ecee0c048f285ae', CAST(0x0000A39300FF1990 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'07c5f76f-12ab-45f6-9914-84cf49410ffa', N'N', N'Y', N'Y', N'0xa10b421f5d541ef1d5ec9ad3052abf058f51e870', CAST(0x0000A38B00EEE5CD AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd23acdea-2e90-4217-bdfc-850f1d4ceda6', N'N', N'Y', N'Y', N'0x38928615eee815b2165a4e9c7e22d776e22c7f55', CAST(0x0000A38700B8CD9D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'N', N'Y', N'Y', N'0x897390788427d7c6f93c288dbdce98a9cea9712d', CAST(0x0000A38700B8CA04 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6866baaa-f5ce-41cc-8786-854c6f73b4a3', N'N', N'Y', N'Y', N'0x064486c9ecfe81f0c77c3ad104982c2cb99fea88', CAST(0x0000A38E0104AD6C AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'21f04d15-7b5c-4659-b2a8-856330a3acb8', N'N', N'Y', N'Y', N'0x8e98780134727ec5404422e6931399f153df8e0e', CAST(0x0000A38C00ABE157 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e62b99cf-8b45-4cf1-968e-86fb88f24627', N'N', N'Y', N'Y', N'0x0b5a2f8bd988aa327841d9a4d2f38082d4790bc1', CAST(0x0000A39301041768 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6c00e8eb-1ee5-4687-aec7-88c347f94b02', N'N', N'Y', N'Y', N'0x129570a2076b28cb9d9c61a44f011a28c27bc92a', CAST(0x0000A38C00BA929A AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8bdf3bf3-45be-4b95-be7a-89ae94aba9a3', N'N', N'Y', N'Y', N'0xd08ca0cba6b5d51c1ca361711a1f5279b03f9911', CAST(0x0000A38E00E6414F AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'edaf8e76-04cc-43b3-94fb-8a524a74b195', N'N', N'Y', N'Y', N'0x01df50e67c5709bd3955c345d17746f7cc1baee3', CAST(0x0000A38C01075F69 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0f32eab0-23a0-454d-b380-8bc3bc5ba067', N'N', N'Y', N'Y', N'0xabaeef24ef178a323bf11c50e17b1f0afd7dd6fe', CAST(0x0000A393011636D9 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'53226473-b2b8-4a97-a29c-8c579b32d6b1', N'N', N'Y', N'Y', N'0x470120b58693b0d8e7443c08856c25b61ffb85bf', CAST(0x0000A38C0119B16D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0b38ae2b-df9c-4da3-a2d8-8c7d326b937f', N'N', N'Y', N'Y', N'0xf46627eb82a12038a8738b48ee35642263804939', CAST(0x0000A38700B8CDA7 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8a18a450-b97f-45b2-a6e2-8c8833c8bc7a', N'N', N'Y', N'Y', N'0x98a9c9470e385f0a02b213260e29b0581fa3673a', CAST(0x0000A38E010EA1C3 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c8727f9d-616d-4a52-bb9c-8d71c3b6fc90', N'N', N'Y', N'Y', N'0x82510d5c606fd3351059c1cd384d84949fdf7fb1', CAST(0x0000A38B0119BDC1 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6d9ae615-17d9-462d-aeed-8ed3ddec77b7', N'N', N'Y', N'Y', N'0x8daf5661fcc14ed82b5231457f7ece5d936992a2', CAST(0x0000A38E00F285F7 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'44086f54-0380-456f-a809-8eff695afc26', N'N', N'Y', N'Y', N'0x08086ddd16b2aaa2c15e84aceda344a145666623', CAST(0x0000A38E0108620A AS DateTime), CAST(0x0000A39300FDCB39 AS DateTime), 2, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'cc3f1a76-d0a3-41d2-91df-8f17ac44d7d4', N'N', N'Y', N'Y', N'0xfc4e31f70308c51e1c2f6d09202f5992c3455f02', CAST(0x0000A39300EB7DB9 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'3296258e-40af-4ce5-ae46-8f781bbc9000', N'N', N'Y', N'Y', N'0x864290d7f562ddef13a348772e8d5cf9fd5788d7', CAST(0x0000A39300E74731 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f6f43ff0-e172-4be5-a7d7-8fc0fc8aa7a2', N'N', N'Y', N'Y', N'0x3de765f0cb112db0d80d4d12b4d7a23232d3b3c5', CAST(0x0000A38700B8C5E5 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b55c1b9c-6199-4eb9-a928-903fb2c1c6f2', N'N', N'Y', N'Y', N'0x93c2513fb2b4117ee65b54fe191a8459e33a55bf', CAST(0x0000A38E00BEBBB0 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'2504aa74-f268-4261-9495-90a905dc467d', N'N', N'Y', N'Y', N'0xbe644e21523d8f6b2acffb1c51a88eff1039295e', CAST(0x0000A3930102F9D9 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'425d140b-17bb-4064-80ec-9137ef7d62c6', N'N', N'Y', N'Y', N'0x0f0d5fbffa58b4f6b997b347ef874442e8178a8b', CAST(0x0000A38B00E52454 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ec007533-8790-48bd-8259-9210821e1744', N'N', N'Y', N'Y', N'0xa9185a0d6c2e1fe81da9445cbd0b3a8de163b350', CAST(0x0000A38E0101B193 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'45cda007-ce13-42a8-895d-923cafdc2509', N'N', N'Y', N'Y', N'0x464ea102e300f62fb495055f5fcd9e5625839b71', CAST(0x0000A38C00EBAB9E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd0b6d60a-85db-4f6f-a5c1-934b6f7682ee', N'N', N'Y', N'Y', N'0x255d306e47431061561f6f0a098198f1c7385b53', CAST(0x0000A38E00F46232 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b803bc75-17b3-4d91-b79b-944950172a36', N'N', N'Y', N'Y', N'0x75f94a10bd381f776e65e683ee7373fa13a5a44f', CAST(0x0000A38E00E6F09B AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c5e1e50b-b40a-4311-8188-95b4eb434a35', N'N', N'Y', N'Y', N'0x063fb86d2c76d19d29682a8353b8aa112a95a1b1', CAST(0x0000A38E00F58863 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0909af5b-b38b-496a-a480-95b81f81f9b4', N'N', N'Y', N'Y', N'0x24949363c182632f9fbffe3833ef4fa77bf78a99', CAST(0x0000A38E010B2E76 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8eb78543-5d7f-4db9-81cb-9777c6c5ee03', N'N', N'Y', N'Y', N'0x78c84122673e2af8d98740762171b680e3341a3d', CAST(0x0000A39300FC6FFE AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ed4fed22-82bd-4844-915c-989ab114f1cd', N'N', N'Y', N'Y', N'0xdfff7b4ed250f22344fa1f017e02b5c6ee19f0e9', CAST(0x0000A38E0104AD6C AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'dcda6684-3b52-4f0d-9dd7-98ac538c75bf', N'N', N'Y', N'Y', N'0xc4407a52c558addbbfeb9eb36cad4f6886993500', CAST(0x0000A38C00B490D7 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'53b50ae0-0f9d-4da9-b857-98b44e09ed6e', N'N', N'Y', N'Y', N'0xbf214013dfe6b66b4635f659e62895ee4331adde', CAST(0x0000A39300FD9681 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'bf9052af-bde8-46ea-a663-98bdf160614a', N'N', N'Y', N'Y', N'0xb281e23bb1336e4aa75175d69a389950bf6e5af9', CAST(0x0000A38B00EA9330 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'2e059e37-58fa-4508-99ad-99d3d0d79fc3', N'N', N'Y', N'Y', N'0xf7443c82f6184751cb760c73b269d7404ccae0f1', CAST(0x0000A38E00BA8B71 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd7cd80f0-fc7a-4eb0-a870-9a85b160dc1b', N'N', N'Y', N'Y', N'0x57003c0eb099daeb3ac0637b85422ac353757cfc', CAST(0x0000A39300FD4FCC AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'fcc58e26-1aaa-46a1-b778-9b8d5ba2dbc9', N'N', N'Y', N'Y', N'0xf2e91972a4f107d1e8863883d279737a4c629a11', CAST(0x0000A38700B8CD9E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'54c16d18-997c-4a11-8420-9c8149bbab8c', N'N', N'Y', N'Y', N'0x1d2cebc29608ac514234f45f3c1d3b45ad4c7d44', CAST(0x0000A3930106351B AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5cabbe08-9440-461d-b833-9d140a67d89d', N'N', N'Y', N'Y', N'0x350d11f450902145a05f0d5b0d8f0fcf5482fcff', CAST(0x0000A38E010709C6 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c165e5c2-0f5f-44d7-927c-9f8c1f1f16a5', N'N', N'Y', N'Y', N'0xfb4b729884bbf3acaa97775487a9d2e653fa6ab1', CAST(0x0000A38700B8CDA8 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'a10556ce-7044-4e89-ae4d-a126216d7e7c', N'N', N'Y', N'Y', N'0xc8e85b9a4095ec707e31ace8c0ff946652003d11', CAST(0x0000A38C00EBAC1F AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c1d82df8-d15b-414f-a315-a141822c215a', N'N', N'Y', N'Y', N'0x5e9ba02d145f2566c7f82ee8a2f417d25a68fa69', CAST(0x0000A38C00B8A5B6 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8e4af890-c8cf-444e-b636-a1be75a2a359', N'N', N'Y', N'Y', N'0x89c77980950cd1cf623c8e0ed903d5c1825297ec', CAST(0x0000A38E00EC8121 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'aa510fdd-5d4e-455a-980a-a2cd384f0b01', N'N', N'Y', N'Y', N'0x59d0053fb0b1e68ddaab9809b421beb42be553e9', CAST(0x0000A38E0102BAF3 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6bf1d42f-f12e-4602-ae96-a32d1e4519d0', N'N', N'Y', N'Y', N'0xaa6d5e674246be2c2f6cb5a2d6dd147e83d75bfb', CAST(0x0000A38E00E733DE AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'24a733bb-04af-4ba9-87c7-a4c8b8970506', N'N', N'Y', N'Y', N'0xdf71a1fd5b094319bbaae7d7df7693e238f2ea8a', CAST(0x0000A38C00F0A6F4 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8e929455-5943-43ba-bf6a-a54377e48b94', N'N', N'Y', N'Y', N'0x8580f6b4782fb338b33db41237f69c3daef0e878', CAST(0x0000A38B011C04F9 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5c991459-9b75-4a97-b199-a56189c81e01', N'N', N'Y', N'Y', N'0x9538ad38b4d93685e3c9bfb8c75580e46902cc71', CAST(0x0000A38B00EF56BC AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'7b1c46af-395b-4b3b-8f2d-a6c9110b196f', N'N', N'Y', N'Y', N'0xacafd6a19b75f2af5362e172f72b666969f8e6f4', CAST(0x0000A38E00BBB4F3 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'84c01303-d069-4e30-8939-a6daa7e93017', N'N', N'Y', N'Y', N'0x4df36c0fad1acac9a0c9462288d46cab92870997', CAST(0x0000A38C00C258BF AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'a87008e7-db8d-408c-a1c0-a79393b3d43e', N'N', N'Y', N'Y', N'0xfe475700beec39ce0134849fbd235e1616996e36', CAST(0x0000A38700B8CD8E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8cd3fee0-4b9b-446c-ad29-a7adcca7a9f3', N'N', N'Y', N'Y', N'0x59cd3bd9db52d3179aeed45f913878d0e687c760', CAST(0x0000A38700EDFF0C AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9b91eced-ccaa-4bfb-9310-a7d69bd4075d', N'N', N'Y', N'Y', N'0x7aead16a452152815c5d675d11f445586d69e431', CAST(0x0000A39300E77CCB AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'81468ee3-517f-4fb7-becf-a7df40dc7e56', N'N', N'Y', N'Y', N'0xf96abcda81c65102f701d13fb6ecc58569c3b47f', CAST(0x0000A39300E81CD7 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'fb508bac-de0e-49c1-9455-a85543bbd3d6', N'N', N'Y', N'Y', N'0x12319de11c06446cabd1092c7fb3cf1ec5b778aa', CAST(0x0000A39300E82BF9 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c4169ba8-cfe1-4c2c-9793-a9549500bc96', N'N', N'Y', N'Y', N'0x92bf189eb77028dd0232d8ceacbc194bde5210fb', CAST(0x0000A393010C1EDA AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd7d1bf97-7906-48c1-a37b-a9ef871bfb36', N'N', N'Y', N'Y', N'0xce5c07ec7c6ed922a48a6f19e2082b8f9113ca1a', CAST(0x0000A38B00EAE61E AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f270b35e-c4d1-42f0-a2d0-aa529eb27177', N'N', N'Y', N'Y', N'0x5234fbaabdc677d192aafc970a1beaff260353be', CAST(0x0000A38700B8CD96 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'3c2fff2d-3b7d-43df-a0a7-ab03d48b733b', N'N', N'Y', N'Y', N'0xd246a464c864a3039dc01adc3fc24fa293b91f0b', CAST(0x0000A38700EE3CC0 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8fbaca47-c918-4527-8399-ab169845b49c', N'N', N'Y', N'Y', N'0x239b80f72bf69e00e8e1b542a4e79177e83051f7', CAST(0x0000A38B00E61287 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ccf2267b-6629-4caa-b401-abc085406f4c', N'N', N'Y', N'Y', N'0xdf14784f45c49545aa497930a6966f63137e9380', CAST(0x0000A38C00EBABA5 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b9ebf131-e100-4378-8742-ad0964b9fc75', N'N', N'Y', N'Y', N'0x67678ef0dbf21a23d8a6bb65b98c9024731903f3', CAST(0x0000A38C00EBAC16 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'390f7599-16cd-47ca-8110-ad137f551d74', N'N', N'Y', N'Y', N'0x03c63e652db64f3555c9fa5e001ccb89c5e99f35', CAST(0x0000A38E00BE57C4 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'700d7f3c-9ca5-47c1-9405-adacff7e03d8', N'N', N'Y', N'Y', N'0xa277e64def720788644b61a9d67dd988a746eb19', CAST(0x0000A38B00EF5251 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b7d35702-834b-4ab4-a15a-ae966a5f927c', N'N', N'Y', N'Y', N'0xa94c9f31eed911c9a598045d8833f5635a70d673', CAST(0x0000A38C00EBAC16 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'7f1b0593-1eb4-44ff-b677-aedc9760ef53', N'N', N'Y', N'Y', N'0x45b565329323b82d175a125f4f0342206e2375b8', CAST(0x0000A38700B8CD93 AS DateTime), NULL, 0, NULL)
GO
print 'Processed 300 total records'
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'db07f215-c865-454c-80c0-b163bb710a57', N'N', N'Y', N'Y', N'0xeeeb07d08b7f51d0bffe2eae84e334a8977251d5', CAST(0x0000A38C00EBAC1E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0d98b76c-3ac4-485f-bb2d-b1806cee9f4b', N'N', N'Y', N'Y', N'0xebe55644541b45b525d9880ee07ec4aa92eece23', CAST(0x0000A38B00E59612 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'20919cb5-b4c4-4060-8d5c-b36a112cce66', N'N', N'Y', N'Y', N'0x77ed09a7dc3671962494571456a791d00e95e3d4', CAST(0x0000A3930105F91E AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd8339e83-056d-404c-b887-b509197346c8', N'N', N'Y', N'Y', N'0x385d5f30aafe34ff950bb53df0d892b65d2965ca', CAST(0x0000A39301162E8D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'468b3957-c18e-41cb-8811-b597ef339218', N'N', N'Y', N'Y', N'0x83070907d027112de45926428db1b8fb5ae2cd36', CAST(0x0000A39300EB767B AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b20d974c-22cf-4938-9f4c-b5f299fe5e03', N'N', N'Y', N'Y', N'0xa41c9680c32c21467733a592ad28da8243e48cd5', CAST(0x0000A38700B8CDA4 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5f42adc3-1cbf-4189-9645-b63f34f393d4', N'N', N'Y', N'Y', N'0xcdf31b11413ef6b6e53a88ed0f4ca3ec16ecf90a', CAST(0x0000A38C00EBABB5 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6d410480-7499-4adc-85c1-b69e608acf42', N'N', N'Y', N'Y', N'0x993e894486707d6c596843545c18ee3ccdab0570', CAST(0x0000A38E010558E9 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'298fa650-4e10-488e-90cc-b7047ccf47cc', N'N', N'Y', N'Y', N'0xd1bf0868384b8dc38d76b48793319f4be2a59936', CAST(0x0000A38B01144063 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd08be02a-ca44-4a08-9ae8-b7d6a0cf2439', N'N', N'Y', N'Y', N'0xbd25a65930875d4759f1d5c0c6d271fc95f2182f', CAST(0x0000A38B011C02CF AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b17b3506-9be0-4fbb-8dc6-b7e1e28a45c1', N'N', N'Y', N'Y', N'0x9a4a5e1439d51bcf3c93751d997502cffae2e310', CAST(0x0000A38C00EBAB9F AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'723ebacd-0e2b-4ff2-93b6-b7f332017d82', N'N', N'Y', N'Y', N'0x07cca5f104334bde5c15495809cca5f366643c80', CAST(0x0000A38E010722D4 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'82392680-c0cf-4b55-8a11-b93ff8a0c634', N'N', N'Y', N'Y', N'0xbf659c5c4831cfe9e0463aa66344274fe45f876b', CAST(0x0000A38E010E53E9 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e7e50007-f045-4169-82df-b987ec9ab797', N'N', N'Y', N'Y', N'0xa89e78b1cfc80fda7ac61c5596f4ccdc7477de74', CAST(0x0000A38B00EAE3DE AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'324d107d-68f1-43ed-8cc2-bc68e09f66af', N'N', N'Y', N'Y', N'0xb4f8ac139ac31c0412565c417caa2c97067165cf', CAST(0x0000A38E01084069 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6366142f-a84c-483f-9caa-bc90f929262b', N'N', N'Y', N'Y', N'0x056433cac6cada70f548f70774543f172b552f49', CAST(0x0000A38700EE3CBF AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b48b209a-7667-4581-be9e-bec0f7bc3a5d', N'N', N'Y', N'Y', N'0xdb7b9a565cd04017dce2400e0f713f132937f786', CAST(0x0000A39300E921A1 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9b50afdd-57cf-47c0-b9b8-c002a0f47b7f', N'N', N'Y', N'Y', N'0x74ca45c868cd0accc559a62a20d83b4f5ad4b207', CAST(0x0000A38E00F2882B AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'eba80855-939d-4cc2-b388-c01b41ebcd1c', N'N', N'Y', N'Y', N'0xfeb0084a38e570d16e0c1cb9672e0a2ea307a135', CAST(0x0000A3930105B911 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'221fc148-3466-457b-919b-c16269aebef3', N'N', N'Y', N'Y', N'0xafd383a92de50bc8b92ac0735a68d510bf83f888', CAST(0x0000A38C00B55373 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'22d6f5be-25eb-4052-ae93-c24d6cb1049a', N'N', N'Y', N'Y', N'0x34824cb7654ad4d19b25c70156a12ba8f137f3e5', CAST(0x0000A38E00E733DD AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ef46d56f-005c-4bff-860e-c28064e55163', N'N', N'Y', N'Y', N'0x21ce65c83228b4dfa9aa8ef5604ef437f2c8a00d', CAST(0x0000A39300E3DD0E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b695a675-4ffa-4115-ab1e-c3eb699725f2', N'N', N'Y', N'Y', N'0xd4f4c30035e8001fd0df3b389f2d0946892b41cb', CAST(0x0000A38B00EE2C0F AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'676dc484-e982-4434-baa7-c44d04095c9e', N'N', N'Y', N'Y', N'0x59e267e6b47c39431b16e723d9fb2152d9cab33e', CAST(0x0000A38700B8CDA9 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'60b3d909-1bbf-45c3-9c1f-c466677a230e', N'N', N'Y', N'Y', N'0x584d19a927ea11e5ddde87763edfb0429db34fa2', CAST(0x0000A38E0104AF77 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'82006566-459f-4891-b5dd-c5d67b1a1e4b', N'N', N'Y', N'Y', N'0x72f46955c60d6ac3de3c30ea37bdafc1bdd6adb3', CAST(0x0000A39300FDCB3D AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'4e0ff5e4-575a-4711-8c8f-c5fd9f82dca7', N'N', N'Y', N'Y', N'0xc5e80ffd0367b2c2a3c11727ea3b25dc6ccfa3cd', CAST(0x0000A39300EB637D AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'79ea78a2-abce-4ae7-a243-c6b0f29dbcd7', N'N', N'Y', N'Y', N'0x736ba5dcd3ef41e6c4f62de5425bc1cb92485bb9', CAST(0x0000A393010605A7 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'34ae8d1e-c696-4114-bf14-c70caa7a974f', N'N', N'Y', N'Y', N'0x6c046e28e39c5fc0d1aec1e51527123e8673bbf6', CAST(0x0000A38C00B35F8F AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'991c4a43-ce88-4321-a15c-c7bd69e55619', N'N', N'Y', N'Y', N'0x90120c23cda504bebb279bc967f97bfcae9324b3', CAST(0x0000A38E00BDF657 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5d7fe9d5-d328-45c0-9a6f-c89ab48c7ff9', N'N', N'Y', N'Y', N'0xc085680123ec53a847f27dccbd7238eba9950c85', CAST(0x0000A39300E3EADF AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'3a141276-4509-493e-b19d-c93aec23471b', N'N', N'Y', N'Y', N'0x05c37c7292c25d29389383dff48134b02f6c2f11', CAST(0x0000A38B0114407F AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'af345d4d-ffb0-4fd7-bc47-c9e549da6f2a', N'N', N'Y', N'Y', N'0xa54a0d54234ca3460bfdeeb79117d3d9ce6296c6', CAST(0x0000A39300E932D2 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd29e3e3f-6af1-444e-b667-caba8b99364d', N'N', N'Y', N'Y', N'0xfd6bc6e9fc1637302adc2adca3fe5d449b36af39', CAST(0x0000A38B00EED3B4 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'51b4f253-5652-4cf8-a9bf-cb69d040100f', N'N', N'Y', N'Y', N'0x66aa359f98da8e0ad97fa186d99f0e927faf89e2', CAST(0x0000A39300FF174E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'64e1539e-9e68-442c-b664-cba4a5863657', N'N', N'Y', N'Y', N'0x589c4222394a42a07bd4bf1d8a5766ea776b69f7', CAST(0x0000A39300FE7635 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e84c3be0-ec26-4f5f-8bd7-cbe8aa5704b9', N'N', N'Y', N'Y', N'0x8b97840108806bd1088a8e2c635d5559d072d2a2', CAST(0x0000A38C00EBAC17 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5eeabb12-990e-4fc6-aa5d-cd23467e428e', N'N', N'Y', N'Y', N'0x2e1759b8b167aae26a5d3f1d846e958ab2d4c9ed', CAST(0x0000A38C00EBAC10 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'573a25a0-7609-4368-be70-cd24f2a8fa18', N'N', N'Y', N'Y', N'0x8212fc04d49ddf713ce6c565ef2ebf55241b80df', CAST(0x0000A39300FF4191 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ae9a5ddd-ce7e-46af-a482-cebfb28900d1', N'N', N'Y', N'Y', N'0xcc9218a0599886562c18d378a691ab0f6354b4aa', CAST(0x0000A3930106280B AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'31753913-8288-4697-bdcc-cf3b4ff75137', N'N', N'Y', N'Y', N'0x39f80907efa82f60843fc739de68e0f9b956ccd6', CAST(0x0000A38700B8CD8D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ee10e6dd-c852-42e4-91ef-d14e9c202a0a', N'N', N'Y', N'Y', N'0x04f38a67881a61a1bffb81c418d4f7392413e28b', CAST(0x0000A38B01150307 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'33b0bbfe-7a12-4c5c-a44b-d1ba810c639d', N'N', N'Y', N'Y', N'0xf46c6f7c9c07957b7005854e3bcb9df00e934ed4', CAST(0x0000A38B00E76C08 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'eacf2e0c-fc4c-4bde-a447-d1bea0cd7b61', N'N', N'Y', N'Y', N'0xf6df7e1c28e23282b0838e8c0507afb5947cb9a8', CAST(0x0000A38E00BE57C0 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c32d110a-d70b-42fa-9a5d-d1fa88d26052', N'N', N'Y', N'Y', N'0x943f0d1e888821d61a11b0c701325f476961ca18', CAST(0x0000A38B00E5CEBF AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6a4a2776-fd49-434a-9819-d381f9e3beb3', N'N', N'Y', N'Y', N'0xea9b58eb1c591eb3cef400a0aced130d19911ba9', CAST(0x0000A38C01056007 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ce2ecaa7-655a-43be-9422-d40bc2886b16', N'N', N'Y', N'Y', N'0x2e0fe8a1f6d64aa1b7991e5ec06d5153b7c0b0a4', CAST(0x0000A38E0102BD0E AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'4af7fc25-e9f3-489a-8384-d46d14579df6', N'N', N'Y', N'Y', N'0xd8a5a387a9423e973e03e7c45b8e849311fe038e', CAST(0x0000A38B00E43B3A AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9c8d3a79-b4cd-4a35-b071-d5b19122921b', N'N', N'Y', N'Y', N'0xbe9bfb8e5466949425a58e51b71f57b5bdae5f86', CAST(0x0000A38C00A6CAFA AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'fa146c36-d54c-4316-ab3d-d68d5d077e0c', N'N', N'Y', N'Y', N'0xf031a91c8254104e2be1a4ee39eac67fce6a4db2', CAST(0x0000A38C009DCC67 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'09831471-d492-46b2-9723-d6d06cb58f1f', N'N', N'Y', N'Y', N'0xba56942170ccd39618ac729c9f36cb0be781bc0e', CAST(0x0000A38B0119C280 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'667bde75-4cdc-4bb9-9d56-d7ee5e6896ca', N'N', N'Y', N'Y', N'0xb35d67372751b2e1102b0914b0848c8388f7cfe7', CAST(0x0000A39300FC911C AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f67432d6-318c-4387-a623-da2b14bf818c', N'N', N'Y', N'Y', N'0xc86354170da1f8fbb155223b2c397705767ecf8b', CAST(0x0000A38700B8CD91 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'6eb91dc0-3aae-470f-bf6f-da30da58f656', N'N', N'Y', N'Y', N'0x10cdb41f992ea935ba2952bf13bc4c4334f005e1', CAST(0x0000A38C00AC285A AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'db47a931-8050-47db-97a6-da8f910b8b31', N'N', N'Y', N'Y', N'0xbcde662db2d8d387780bfc79d3a6b8bce85791b0', CAST(0x0000A38E00F46016 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'66d5f230-154b-4401-9a92-db241aecb1c5', N'N', N'Y', N'Y', N'0x870e793f4f06bd28a1e6a2fe4e271dc2c105f9e9', CAST(0x0000A38C00EBAC1E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'dcd77e11-820a-4ba9-8813-dbb06aee2ceb', N'N', N'Y', N'Y', N'0xaf9fcc100783086dbc5a0333eed26099105487f4', CAST(0x0000A3930102F38C AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'38c9dd2e-a7e2-4b6b-9575-dbe790bacbc8', N'N', N'Y', N'Y', N'0xaa7d6431bed8ab5c479f33dda017d746b0145f54', CAST(0x0000A38B00E3E06B AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'460c7642-412a-4fbc-ade9-dc2fab76c6e2', N'N', N'Y', N'Y', N'0x341e0b1ce21a8a8dcc474afaf7c14054d8f99dcc', CAST(0x0000A38E00F5349B AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'2e155a26-bc1a-4db9-99ca-dc7084cce9cf', N'N', N'Y', N'Y', N'0xccaa661abee6e254969b073e195121fe871c25bf', CAST(0x0000A38E010B306B AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c809985e-d0c6-4fe9-916f-dd347ff71259', N'N', N'Y', N'Y', N'0x849960d79308ccc3f6fb3f44ff034202aea7e9d7', CAST(0x0000A38B01145CB5 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'1d7e4d65-1774-4c6c-a156-ddaf225f48ca', N'N', N'Y', N'Y', N'0xad06fe9d839893e68404e84db68558bd9aea9562', CAST(0x0000A38E00E68C88 AS DateTime), CAST(0x0000A39301063501 AS DateTime), 13, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'51da0383-9a90-4ad0-b0de-de1b57c8a8ba', N'N', N'Y', N'Y', N'0xb31c7e566dc65ff6b48229f04f8bbb27013b10a9', CAST(0x0000A38700B8CDA8 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'508c8fe3-2f76-42c2-8946-ded8ef3ce520', N'N', N'Y', N'Y', N'0x22ebdc0149ff72d2f9930f8462a2e5a206af086b', CAST(0x0000A38700B8CD9A AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9cfbc833-5913-46cc-8106-deee804e8591', N'N', N'Y', N'Y', N'0x6e02cbf82387a92174c671d71270789f981f3c19', CAST(0x0000A39300E91F76 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f45a6280-4ea9-467b-8ddd-dfa21b5a44e1', N'N', N'Y', N'Y', N'0x3ae961687b38191f0ee9c7661a613a768318c237', CAST(0x0000A38B00E43B3D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'b1aa7d27-e0ea-4c49-a6ea-dfb2ddea8ed6', N'N', N'Y', N'Y', N'0x869aecf500c26ea1fbaedc8af5487c310908d5fb', CAST(0x0000A39300FE9B25 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'2db6958f-9e87-4624-b722-dfd00c8c1f2b', N'N', N'Y', N'Y', N'0x28183470297bfc57b551045b447aed6471cde300', CAST(0x0000A38C01075F68 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'495e4c6c-072f-447a-8be6-e1208502690b', N'N', N'Y', N'Y', N'0x18cd41c0195916df47c1ec62ad52a5544c627a44', CAST(0x0000A38C00BA94C6 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'5d5dc236-80d1-446a-82d0-e579c52c9749', N'N', N'Y', N'Y', N'0x00c116b6ac70a5ade91cfcce58b44e61b3ff3e12', CAST(0x0000A38C00EBAC15 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0d35c36e-708c-4b4f-8230-e697cda6ef11', N'N', N'Y', N'Y', N'0x7a6cfbae30c157e6fd7eeffb914e1e1fb982297b', CAST(0x0000A38C00EBABBC AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e5737838-4e89-4cac-b0b0-e7867a65b112', N'N', N'Y', N'Y', N'0x61a3517894717bfefefe0e3d5c809918953eaf6a', CAST(0x0000A38700ECF3F0 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'N', N'Y', N'Y', N'0x5db01b054150dcda437ef64916d2dfa6394d81a5', CAST(0x0000A38700B8C31F AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'f4483be1-ae26-45b0-9951-e83f67808bd5', N'N', N'Y', N'Y', N'0xd9f8773b2fbe5abdea2420bb06a9ecf7af3dc59f', CAST(0x0000A38C00EBAB7D AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c6f10261-dae2-4c57-8c53-e9bec04d638f', N'N', N'Y', N'Y', N'0xd1f4b67bc6442e1997c9a9117cd08381c7c3160f', CAST(0x0000A38700EDFF0A AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'58546f36-10e5-4aed-bfd8-e9dec753d609', N'N', N'Y', N'Y', N'0x33e2cd05adba23e9b1fd752fa9f65fa2551a5ef3', CAST(0x0000A38E00BDF656 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'8df59861-af9b-4371-8b8e-ea312e522b79', N'N', N'Y', N'Y', N'0xbb1ae29dc5685124a586c51c94fd2eafc77f9510', CAST(0x0000A38C00AC6978 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ce20f514-0bf2-43c2-b9f5-ea4780c3307f', N'N', N'Y', N'Y', N'0x9e7e68adf62337b66a6e48917afa257489991c24', CAST(0x0000A38E00B9677F AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'1ac5aeb8-7b90-4ea0-be9d-ecaaf7f2ee5b', N'N', N'Y', N'Y', N'0xfd9cd9a44d6761b10c652e7ce9e120cdc0c3b7a4', CAST(0x0000A38C00EBAC16 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'87d07b8d-fe8b-4267-a8e1-ed5cb9404659', N'N', N'Y', N'Y', N'0x7e1eb7359b8104f2d54641b4d03ea153ce2feabd', CAST(0x0000A38C00B5EAAA AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd0312274-8c20-49ca-87c8-ed78b6a05631', N'N', N'Y', N'Y', N'0xfe0f651574110571021c6b8e66ed78cd5730bfb3', CAST(0x0000A39300FD4A4F AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'915a38ee-11b7-4591-81dc-edb522155ea6', N'N', N'Y', N'Y', N'0x5eacfdb522775a05ea83affb12d27be0798f99b1', CAST(0x0000A38E01084288 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ad093a9f-0f93-4b5d-b485-eed9072ee5c5', N'N', N'Y', N'Y', N'0x574997ee51c81ba814603a22e85e9e20b64c7473', CAST(0x0000A38C00B8A3A0 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e40c0ba3-737f-49fb-b0f3-f0b3fe2dd47f', N'N', N'Y', N'Y', N'0x7d9e041dde3c12dd8989c6755d8a9d4e4c3f3130', CAST(0x0000A38700ED9051 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'148f1e9b-d96e-4383-9c80-f17b6aacf9da', N'N', N'Y', N'Y', N'0xade7691e2fdceb552b9377acb200418085b9e401', CAST(0x0000A38E00BBB4F7 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c7320421-af8e-42bb-a539-f22353ef8514', N'N', N'Y', N'Y', N'0xb3714b593e3a9aa61f452d84385fc59d0611731b', CAST(0x0000A38700B8CD9E AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'4e5df848-abaa-42dd-a894-f56ac43358a5', N'N', N'Y', N'Y', N'0xd67d84688a3f6ffa121df98986b8947e127458b5', CAST(0x0000A38E010B57E4 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'86778b5a-aebd-43f0-832a-f56d321f6117', N'N', N'Y', N'Y', N'0xaf08fbdd9148cbb5de7951e515a05946d04b6892', CAST(0x0000A38E00F62500 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'a27c1b04-7715-43ba-8d8a-f5b47059f8b1', N'N', N'Y', N'Y', N'0xfc49960f1825e3e6b21bfbea7197867f3a48e13e', CAST(0x0000A39300EB6146 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'e3ce6485-5a0a-49dc-990b-f69fe346287a', N'N', N'Y', N'Y', N'0xa80fff943b4a90b09b38ef14c3cd36e7470f09c4', CAST(0x0000A38B01143605 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'bfce4dcc-3a87-4928-8552-f78c88de776c', N'N', N'Y', N'Y', N'0x84fc1c5ee42abf01dad55fcacdc8252ebc550ac0', CAST(0x0000A39300FD4EA1 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'd3d2cd32-9306-45ec-a605-fa0491b008d5', N'N', N'Y', N'Y', N'0xe1d23a95111e027915242fcdc01bd25aa376979a', CAST(0x0000A38B00E5960C AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'ca04121f-4c68-46c0-b9f1-faae48a1b1e8', N'N', N'Y', N'Y', N'0x528baa051a085df13940b16e1bcd3e73f101c62f', CAST(0x0000A39300EAF045 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'3677254c-d074-4364-9a21-fba8dbbb6079', N'N', N'Y', N'Y', N'0x51e06229ccfedf528b73b72c4ca2e8145ee795e5', CAST(0x0000A38C00EBAC14 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'377c0ab3-5c73-4640-a62a-fbd346b09a73', N'N', N'Y', N'Y', N'0x1f6eff6ec37c2362a10bf934865137babcd7e646', CAST(0x0000A38E00F58A57 AS DateTime), NULL, 0, N'User Sign-In Log')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'9f742c26-5fd3-46ba-a4a0-fc731d9641f2', N'N', N'Y', N'Y', N'0xb628a1f79fe3e46c7f29d917fc997570ab5f87a6', CAST(0x0000A38B00EED3B4 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'c182b456-86f6-4a27-b349-fd19d8c69d5e', N'N', N'Y', N'Y', N'0xf93970bc3f195198d498f64e4bc078eb042c41f8', CAST(0x0000A38C00EBAC08 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'2b18a40f-25d6-41c5-bf17-fdc14fcc1f32', N'N', N'Y', N'Y', N'0x48df2e77dfc0482feca0add93d6783da0593ae5b', CAST(0x0000A39300E3DCBD AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'197db78d-ba53-471d-89ba-fec0436d2d50', N'N', N'Y', N'Y', N'0x160cbf95c78105bbd8cbc9d7df58dab71ccc3c09', CAST(0x0000A39300FC9F80 AS DateTime), NULL, 0, N'User operation behavior trace!')
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'3f9038bb-7f9c-495d-b956-fef04e5eb7f1', N'N', N'Y', N'Y', N'0xba7be7e28a5a4004a9780edcc1e17e1a784105ee', CAST(0x0000A38E00BDA751 AS DateTime), NULL, 0, NULL)
INSERT [Basic].[ObjectBase] ([ObjectID], [IsRemoved], [Enabled], [Visible], [OpenID], [IsCreatedTime], [LastModifiedTime], [IsModifiedTimes], [Comments]) VALUES (N'a49a71ee-be5c-4754-ba91-ffb76d345127', N'N', N'Y', N'Y', N'0xd88c1838032bc5ae9b6b3096272adc1cab3b4614', CAST(0x0000A38E00E6F09E AS DateTime), NULL, 0, NULL)
GO
print 'Processed 400 total records'
/****** 对象:  UserDefinedFunction [Fn].[RebuiltOrgObjectVirtualName]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[RebuiltOrgObjectVirtualName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'/*
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

	Declare @index As Int; Set @index = Charindex(''_'', @oldVirtualName)

	Set @newVirtualName = Substring(@oldVirtualName, 1, @index - 1) + ''_'' + @newName

	Return @newVirtualName
End
' 
END
GO
/****** 对象:  Table [Secure].[Account]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[Account](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[UserID] [varchar](512) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Passphrase] [varchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[EmptyPass] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ_Account_Account] UNIQUE NONCLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Account]') AND name = N'IXFK_Account_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_Account_ObjectBase] ON [Secure].[Account] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
INSERT [Secure].[Account] ([UniqueID], [UserID], [Passphrase], [EmptyPass]) VALUES (N'f6f43ff0-e172-4be5-a7d7-8fc0fc8aa7a2', N'sa', N'0x431cc2d06cbb6e59a0391a5aac28af1d73731fe5', N'N')
INSERT [Secure].[Account] ([UniqueID], [UserID], [Passphrase], [EmptyPass]) VALUES (N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai', N'', N'Y')
/****** 对象:  Table [Secure].[SignInAction]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SignInAction]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[SignInAction](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[ClientIP] [varchar](64) COLLATE Chinese_PRC_CI_AS NULL,
	[HostName] [varchar](256) COLLATE Chinese_PRC_CI_AS NULL,
	[Platform] [int] NOT NULL,
	[IsSucceed] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[FailedReasonCodeID] [uniqueidentifier] NULL,
	[AccountID] [uniqueidentifier] NULL,
	[UnknownUserID] [varchar](max) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_SignInAction] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[SignInAction]') AND name = N'IXFK_SignInAction_Account')
CREATE NONCLUSTERED INDEX [IXFK_SignInAction_Account] ON [Secure].[SignInAction] 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[SignInAction]') AND name = N'IXFK_SignInAction_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_SignInAction_ObjectBase] ON [Secure].[SignInAction] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'b843f0bb-e999-4881-a99f-01771ce72077', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'd764fb9e-abc4-4f3e-8c89-033961608d49', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'9816ef3b-7d2a-4276-b97a-08d8dd9e2a6b', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'755ff4cb-1654-48d7-9b53-0af2c8105e26', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'bce67a45-7fba-4584-a7a9-0be41211df9b', N'127.0.0.1', N'localhost', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'29718d04-450c-4502-b784-0c235686bcee', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'c2e1b404-dfc3-4163-a9bf-0f6398adc37c', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'a7aa9596-230c-4bee-8a00-112698adcdce', N'127.0.0.1', N'localhost', 1, N'N', N'508c8fe3-2f76-42c2-8946-ded8ef3ce520', NULL, N'08 15 2014  2:19PM')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'ff559641-25b6-4576-9813-13a7d917e519', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'c9123537-f303-4587-b60e-18a8276cc583', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'9461d557-6f94-4513-9656-18dde968db76', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'906d51ac-5b31-4013-b31e-1a812640690f', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'e8f6b937-305e-4b65-b085-1b0b12880a0e', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'c07068f6-838e-48c1-97be-1cbbfeca05ee', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'fd079541-ac6a-42af-9e67-21023700bbc1', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'ae8adfec-145e-4ff4-929b-22d890d52f3c', N'127.0.0.1', N'localhost', 1, N'N', N'508c8fe3-2f76-42c2-8946-ded8ef3ce520', NULL, N'08 15 2014  1:56PM')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'adc5334d-2c74-4b9e-b34c-22e9b472c639', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'3559ff25-52b6-47b7-9822-256637d2c981', N'127.0.0.1', N'localhost', 1, N'N', N'508c8fe3-2f76-42c2-8946-ded8ef3ce520', NULL, N'08 15 2014  1:56PM')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'b05e8eb8-e46f-429c-8922-27b019f0a1fe', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'8d792189-b343-41fd-8266-29ecdf43c489', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'021dfaba-d22d-4c8b-81cc-2db6022b2340', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'9b49b58f-1156-46cd-892e-2e74d3b97209', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'1f21744a-519f-413d-a77f-2f2d1b2d468d', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'56ebdf69-2b57-4af9-a3a8-31228b7b5e74', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'adcacc3e-b4f7-44e5-b299-35f4cd150e5e', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'b7a49e1b-e4f4-4602-97f5-38b48e8c84ff', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'5ac3716e-6af9-4120-bd4a-38c1dea1d39f', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'ce397b76-094e-4343-bce3-391acee62247', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'eb517e96-db24-4986-ba7c-3a597deee42c', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'5d5e0013-0a76-4ac8-b2f0-3ad0b7931a7d', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'1a9498dd-0801-4ac0-9838-3b590ea687da', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'ef387020-1924-4ef9-8b3e-3f223c34d121', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'7da0e565-16b4-4486-89c8-3f516d5f1872', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'36acef7a-47b0-4ff1-a0d0-44d523cfeff0', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'66862ade-da26-4331-b1ba-46fc4e6a6ea3', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'304ad93e-d8b5-4294-89c5-479b28dcf3a3', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'96652507-ff3f-4bf9-833d-480d1cdb97f5', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'8f7e1e03-4f44-4b83-a2e0-4cbe01f14f2d', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'61b4224b-0342-47c1-81dd-4ce71afeb9d6', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'923461b6-946b-448a-bfb0-4ee31a1a1df8', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'24d36da4-3799-403c-a6a8-4f00da0e779a', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'030f9596-2a99-474e-b50d-515be30edc9b', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'd2ecc60d-cce0-46c2-b0ef-52467032efe6', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'cb70dadd-5077-4879-b14b-5475c7c9876c', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'17ebe72e-888a-45c0-a9f2-54de05b197b7', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'f20d9c4c-5dab-4007-9c38-55d4224e738f', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'2b4138f7-373e-4fe9-b2a7-55eeb3bb0dfb', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'6a13d652-6648-4288-ad72-5b9505f31c06', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'ad859c42-9c3b-4b9a-8d1b-5cfefe801764', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'f711fd7e-5c77-4f03-9f99-5da1580a7c31', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'25ee852c-b191-496a-8cef-5f1d3c7568e1', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'8a4df6ed-d0b7-4db2-a932-5fd392f215c4', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'4215608d-ef8a-4bf1-8416-61be425135ed', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'68bd14c0-3303-4316-bd3d-61ebf9ef3442', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'ed70cd01-11e6-443a-806f-632069d7f0a0', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'fa46f4e7-910f-416f-9004-6339d1d3a9b4', N'127.0.0.1', N'localhost', 1, N'N', N'508c8fe3-2f76-42c2-8946-ded8ef3ce520', NULL, N'08 15 2014  1:56PM')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'887ca38e-9a94-4999-9ea2-6757f691f137', N'127.0.0.1', N'localhost', 1, N'N', N'508c8fe3-2f76-42c2-8946-ded8ef3ce520', NULL, N'08 15 2014  1:56PM')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'f19ab020-db72-4461-9a9b-676f3986867d', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'17e15b0f-63df-452d-8a64-6783c60f4da7', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'0a2ce839-50c2-446a-846b-69d8c4cb5535', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'0b90e704-15be-47c1-bdc0-6cd05f690cd2', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'6ae45435-dbc7-4fae-a9b5-6f4d72b62f89', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'8267909c-1c98-4c5d-9fba-6fda3443acc8', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'871f57da-f73a-4c71-9799-71aa9b397c80', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'eff3bf67-7b1f-4170-92ed-72a43522a696', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'e8145a32-a4e7-48dd-93ca-7ad9bba7c135', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'8949f361-4628-433b-bb01-7d1f4aa9c6f9', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'fd78d29b-dbb9-4281-95ae-7e5d53ea2f5c', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'8e6e86a3-1994-424b-b43c-82006de107cf', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'bf10e53a-a847-4678-8570-83404accc136', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'8717d93a-ccff-4ce3-add8-83d64883fa0e', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'6866baaa-f5ce-41cc-8786-854c6f73b4a3', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'53226473-b2b8-4a97-a29c-8c579b32d6b1', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'6d9ae615-17d9-462d-aeed-8ed3ddec77b7', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'b55c1b9c-6199-4eb9-a928-903fb2c1c6f2', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'425d140b-17bb-4064-80ec-9137ef7d62c6', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'b803bc75-17b3-4d91-b79b-944950172a36', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'8eb78543-5d7f-4db9-81cb-9777c6c5ee03', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'8e4af890-c8cf-444e-b636-a1be75a2a359', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'7b1c46af-395b-4b3b-8f2d-a6c9110b196f', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'8fbaca47-c918-4527-8399-ab169845b49c', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'd8339e83-056d-404c-b887-b509197346c8', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'6d410480-7499-4adc-85c1-b69e608acf42', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'd08be02a-ca44-4a08-9ae8-b7d6a0cf2439', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'82392680-c0cf-4b55-8a11-b93ff8a0c634', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'324d107d-68f1-43ed-8cc2-bc68e09f66af', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'6366142f-a84c-483f-9caa-bc90f929262b', N'127.0.0.1', N'localhost', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'22d6f5be-25eb-4052-ae93-c24d6cb1049a', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'ee10e6dd-c852-42e4-91ef-d14e9c202a0a', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'33b0bbfe-7a12-4c5c-a44b-d1ba810c639d', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'eacf2e0c-fc4c-4bde-a447-d1bea0cd7b61', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'4af7fc25-e9f3-489a-8384-d46d14579df6', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'38c9dd2e-a7e2-4b6b-9575-dbe790bacbc8', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'2db6958f-9e87-4624-b722-dfd00c8c1f2b', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'e5737838-4e89-4cac-b0b0-e7867a65b112', N'127.0.0.1', N'localhost', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'c6f10261-dae2-4c57-8c53-e9bec04d638f', N'127.0.0.1', N'localhost', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'58546f36-10e5-4aed-bfd8-e9dec753d609', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'ce20f514-0bf2-43c2-b9f5-ea4780c3307f', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'e40c0ba3-737f-49fb-b0f3-f0b3fe2dd47f', N'127.0.0.1', N'localhost', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'4e5df848-abaa-42dd-a894-f56ac43358a5', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'e3ce6485-5a0a-49dc-990b-f69fe346287a', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
GO
print 'Processed 100 total records'
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'd3d2cd32-9306-45ec-a605-fa0491b008d5', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'9f742c26-5fd3-46ba-a4a0-fc731d9641f2', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
INSERT [Secure].[SignInAction] ([UniqueID], [ClientIP], [HostName], [Platform], [IsSucceed], [FailedReasonCodeID], [AccountID], [UnknownUserID]) VALUES (N'2b18a40f-25d6-41c5-bf17-fdc14fcc1f32', N'fe80::f457:d8a2:4d02:59af%11', N'GLCHQWYCWINW7', 1, N'Y', NULL, N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'GUOCOLAND\wangyucai')
/****** 对象:  Table [Secure].[SignInToken]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SignInToken]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[SignInToken](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[ActionID] [uniqueidentifier] NOT NULL,
	[Token] [varchar](max) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ExpiredTime] [datetime] NOT NULL,
 CONSTRAINT [PK_SignInToken] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[SignInToken]') AND name = N'IXFK_SignInToken_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_SignInToken_ObjectBase] ON [Secure].[SignInToken] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[SignInToken]') AND name = N'IXFK_SignInToken_SignInAction')
CREATE NONCLUSTERED INDEX [IXFK_SignInToken_SignInAction] ON [Secure].[SignInToken] 
(
	[ActionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'0b3fc8c2-701e-49aa-9f8a-0102e4aef6be', N'4e5df848-abaa-42dd-a894-f56ac43358a5', N'0x0100000062de1818679922c2512e301bcf0df65a6102ed0d66a9c55767c28b288888fab9fbc8450ccebf7ad8f37944774dff8ac363c7dbc59682f91e7b828848ba3c1a88a71ba64935ecd45bdb14bbc210d9d530d6febeeaabb6a256b8b5a9b357f62b39e32d42bd3ef9cc24035ee923327bd0735e94999612067564492ca8e04bfd5fefd64026c29605bf45ba09d672c89256481ddf4159f24032d8fc4e8c2149c6c506987a49e70d2cede4d5494bec95abd3e4db38bdc317e6f0d82c626fdd3d5cd046', CAST(0x0000A38F010B57D8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'b0627d17-74a6-44ae-b1ec-0710fa3e2dfa', N'2b4138f7-373e-4fe9-b2a7-55eeb3bb0dfb', N'0x010000007acd10040400f31c7dbf9888d5527e83b8ca482fe0a271e106b4c2a1ca7e1a430bd50ae436abcd61708235e18ea6e3366f73a58a7bf443bae4420ff847e77fde931ea3c9a10f6a41187c6f12f22a7b15fc6763e21c80a2a13d2fc37953ab2f8740efe229b915d41918deb021802644ecbbb7eb47440249c334d2c2e8feed94b1c232257312f7ed3205e28c72dcfb8c519d8b75b38e471a8a7a936fbe932a94955df3f03fe89f7cf13711ea8bcfe65f14ceb042a3031488d7b41ef9f32a82a505', CAST(0x0000A38F00B9DFFC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'07462b51-7f9f-46f4-be8e-073ae7b602c9', N'ef387020-1924-4ef9-8b3e-3f223c34d121', N'0x01000000e8042a0e1550388e3bc1064f9bf208723f50e949a6eba24777a4ec978caf90cb544c5a816d0a1fbc44c6a08d15c6ede9c948379532cd4565225aa343aa0d96537f889c78802c2b1f216553765565c27a083f46fa7cd634f325dc416bd54aeba9bd65d23a518f26bce2a4bc6e42eb94f68a4d351051460bd2ada1dc30518e61971175fd3403b84ca81e7ec9529432cca647d6220bc9e4206369e5f6a285b1bb65199e028fde97f6ab50fa1c9692f9cb0daf3f0b177cd0f43132c88be3ea586ec8', CAST(0x0000A39400FD1B50 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'ec45f6ab-efff-4409-9589-08ab8c7e11a8', N'9461d557-6f94-4513-9656-18dde968db76', N'0x01000000fdd684ad9a3d31ea72cb5c4014e8e7841f4955768f019fc1784447667a2df8049cbf8968ff93bb2064672e0c11f566ab45f79e27d6da26f551ca3ede9834b0e7f6845abd2b06cf23d76432824aa8853f8d48d4923297715ee091d82fc72819d697f70158a4b618b6686079b67d6fe7cb5aea387f4ea9e10c90d6c40eee4bc5f4b084a792715b0c993c99c3fb43cb89e887d084e215d47a96316bfa727a8307e0f51419454d4687c16c6a4e57a6c0a98f9548f8d0f52940d201614243cc038982', CAST(0x0000A38C00EE8CC0 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'5f734010-f6eb-47a0-b739-097c2ae4f4b0', N'425d140b-17bb-4064-80ec-9137ef7d62c6', N'0x010000005603996233b8770b87091853043389dd70abf487f4344279eb5a3b962404c44fe34de8745c6e42172695559ca798f7376ba3429e55b50b2f1949ec33bc72577037f4251c04adbb472b99026d612bf8a4ed1971be00c354d8955014624445b5ac2d6e50e6095f5fa03340bac76883b31bbe0df06b63f3741735b0f5716344ca6441c86780b0c9ec4fd816187beb570d6aaf1d88a28148572dd1a5ff8d27479129de6400236a54c6ea5e42686ea64fefa9c466b3e8f03cce6fb0a28cc633f99f91', CAST(0x0000A38C00E52360 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'af89e405-c741-45a4-b3e2-0a25605e6826', N'8fbaca47-c918-4527-8399-ab169845b49c', N'0x0100000004e28bec6b5aed7f031e0ca93f66d25ed53a9705cbcabad4c5cfc6a03820ec84c4f9e3ede3030cff22250489b0dd3d317616c01f640795862a327291062331d8c85f1d3f083abc38de7c88f622585c90b621e0b5e83d8e5e19af5ee081cfe50a208a8b49df0465a0cdc47ea878c7e3b5b96ffaf159b6bdbb47f2ba8f56effc4f8dcd35de60332deb890a1c845b3ca7341d29e8317a75986ff892c00d3de9a8fc7276f2ba2267a8bfed78571e0608e5c7a31c7fc6f13922f101c134c08db84c9a', CAST(0x0000A38C00E61270 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'f5112b3d-9f34-4924-aa5b-0a5f6ebcade7', N'6d9ae615-17d9-462d-aeed-8ed3ddec77b7', N'0x01000000e5550f537ff834672a61c3b4cced890c7935b9c7d5706ded8ba6671561da63c66274708e6d7806e38e4a1dbbf18c028c03b36e5650b9e59129da9e28758b94b966fc4a509abd56e9742f19987811caeace4ea1ff8763e1e15c0a7142cd54f76c9d948570a57e1ee07c4ff33840a342037b5a72d718c7aca2984e13550955244d7337b8414684870b0e2df20cd5ce80b9a25571e1eeb237a6c5c864db1f169b34e22c0790fc79b89d3fae7579912f63edbb36fdf5d8f21742b9edbe24f374fb40', CAST(0x0000A38F00F284C4 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'0b37a91b-d3e5-4cdc-9655-0ab33bc1deec', N'36acef7a-47b0-4ff1-a0d0-44d523cfeff0', N'0x0100000080ec58b9e0d3a16126e9c760b13a73c7163303809822dfacd653f066da55cdedf7c796a34e8c3ba2249556d3db63a3dff0399e778aad4b20eec3d84ddcd2e2208318ae3f0de5ebd286870d718d98c373bb615dd0448d34797c23a2c5ccec05eea4f363f6a6121adfea31a14f4b3d0bbd253fa6204253a90069ba9359a23a264ba29c822547f8e598fe35b8647415022aa08f3b945627d941548fda3a0d452ff059cd790bf2ae06dad4fc6fe1d00770911315ed31e76e1fc0bd462e7f87bfad1e', CAST(0x0000A38C00EEE6FC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'e4fbf3c9-e79a-4d8a-b1b7-181585dc3841', N'29718d04-450c-4502-b784-0c235686bcee', N'0x01000000b4d23678988eaba0eef9662aea14e11f9b4423d4494db63be1a4e9a8676a8442b067ea9ea249e2d1dbe5d687834851cdc11f379e39eb9c0501cb483ce4c54b96acd0b9d903ffe9bb773580cdea0a93a453fdce9ad7c33a0d40eecdba171c5bfb6bda61ae7b1dbc1035868dc230fc9eb323f191e4b07341ddcf717cea93a0b91c75fc06e6c0dc511a0bb7d227cb5032d9caeb49ade6db26d97b9ccdd18d707d90f2069b630f9bc680dca0d5b5b9014d5804c81a99465a3f14f9de55f4780a9b6f', CAST(0x0000A38F00F6228C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'dcd99f1a-e1ae-4421-899e-188e1ada9f43', N'e8f6b937-305e-4b65-b085-1b0b12880a0e', N'0x01000000b282dba081c24e0e211b9dacde32fbbd0f95bc0b95f15c7d11fb793699d0f70a32b61e97ae9dc2051f3b35b578c42915f7e991e54d2b9f7b8065fe2a440f2a5b7a48bcd504abe4854d79f077c576a3d9a2b8f5d99bc12fee29d2bf10a9d66247dfb6a02552384748ebdb2524716c82f46f9bd4d7b1e32a6fb101c8bf28ad256e75dc11c4f0ab22ca2c39516cbed8b4c9b038e2a3f53445357b28de6e1a9ca4cda316fc65333260bb0f8c1c5bca0f62694ba8b6ed51a9dbe1b6058ad9da1c2e69', CAST(0x0000A38F0102096C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'820ac8c1-b175-49bf-af30-1920b36760a1', N'fd079541-ac6a-42af-9e67-21023700bbc1', N'0x01000000ebfefc56f419f27af906ee7e86c40dcb979998504ab299d740d9a0328db94fe61796d71ec4b63250c22af2a0e7f9f1d0555a4d76b8327cca342ef568eff07db411ca1b93a8a34656260500326383b2df4052f21133744a606d5199a91856b27cd5bd673c92b6d202db3792801794b5adc84d4bb17809072fe04a28ac9ec3a5aefabf45b8126f07b8ab0894061a066668c758788e85431e897093a0adb24fc48529e44656bccc318a05198ed5b7121d5c449de1b0e23f40801b2ce2862ab9a6c1', CAST(0x0000A38F00BC58CC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'5c1f23f0-4f61-48ed-9dd4-1addc6cfcd16', N'324d107d-68f1-43ed-8cc2-bc68e09f66af', N'0x01000000d0f5081bf010e3c9726b89e1f8c300e6f23d5dea9c2e162ab2f76642f1198f17d1b34cf20e7b06c517dff1b48448edcbc80d966746413a152435de203c95c4b161b9cf1449dec45ac12b5cafec79b97a8ee37f6ff140a4f16afbc84e8fb610410844c59de5b5292e491da40385400dae1807d34435b23f2bcd8c06f803961978996c6e8d67318c58851f74bc177f3c34f9d4781847fb78925ff48a5af3da5e4b1226f786cfcb5913f98284891be8445c52f12154d7d830bf11b5f92fe36c3bbd', CAST(0x0000A38F01083FA8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'e31a9b6f-3211-465c-878f-27bc588afef6', N'68bd14c0-3303-4316-bd3d-61ebf9ef3442', N'0x01000000acfce3d54405556f7b3b003bf5e8c614345b1d9b37e4156606e390ddde1c5721683c8744d1328dd258d7279ef9f69014b84e46c5bc56f0d3e766bd9ca9ed8dfab48b1c1e0f366cece6650f5c4a68b37bf6d2c861a80532b8235deac8dbacffbf34e29f52eb0bae549f97af2c584f4d1a2b651450cf03ff089c3036c5f7d4af2e60a6a9bb964b24923850ce80766f3b303d176c96837d0abee836e1432d881f9970e31b4fd9d37a3436845c048c95ac032318ee1fa6779ebf762fefddedc253ee', CAST(0x0000A38F010706C4 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'42e29350-3d50-4ba6-ad60-27f52b9a9fde', N'8e6e86a3-1994-424b-b43c-82006de107cf', N'0x01000000fc852082f6004b89f61c1fceb057cc9f2f839ef773a4ca43543a823a99b98fbed82eb8522fc8b796dd346c2f08dac895a5b9a9b176c34fd6ccbc7f90f77ef472e969bd962bdefd8ae11948c03d18fedff080c04658615401d3c83228bcc048edf891af49da05ad69a396dc887f68a46148907577088550f5b822946fcb50242bc8cdefb5752df20637f320d32f96f04bbb5c22b243d764300e40a81a8395d84e399ef41665ac5b27ce53364b8060db889fdfa7ce87029ceec911354c2ba436c5', CAST(0x0000A38F00F53250 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'44ea0c2f-445b-408a-bdbc-2c835f7392d5', N'021dfaba-d22d-4c8b-81cc-2db6022b2340', N'0x01000000d358e0e27cb7f4b0e5b49c9b5b0c6e6761b03d054f170e329383367d3c9e52d8399542f6f5de6c2528306f5b0fad59a55f112f1167b15f9dea1ac132dbcda33e0110f969e0d8ee620d1d5b53748283570210b0032cc1743f217a2fb568b865905b1659a209cf8fa7d20304d2716effb17ecc45da4b4b829058865b8a99844b49809ca680582528e546b8244b8f54fe950d4537386d3dd5ed4ed95b88a789cef5c5154bef9683d780fba48983aa6e417a5c609e29a31c51e0ff66adc9b0f2e0e9', CAST(0x0000A38D00C13D88 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'b6011293-2fa5-4356-b7b6-305a2bbc77a1', N'66862ade-da26-4331-b1ba-46fc4e6a6ea3', N'0x010000003dd70e7af905d999faafa9e6a09071e7790900b07d1d0afad4c55b38a15bc7ed3dd747a34067f4ada665204904696854e5c78b1f20801842f1d3849f10bddead0e3566147d51d15d9b8238a5a5e6080b54853bc8639cf4ce5be6fbd38463652805d7899ad5f5d571361167ed134919bbadc9cdb4a8ae55a9c2560041c25d67443b17081da3e8e314ca1d22d84668a615ed2a62ab27d47a69ef1579794ee48f45166cec13fb86b79db8b15fa0d6d11a44c2a8fb91cc4539c47d844737a38fb392', CAST(0x0000A38C00E89CD4 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'd2d81276-3884-465d-967b-327c083edd4c', N'906d51ac-5b31-4013-b31e-1a812640690f', N'0x01000000cd1d6a05420a4a8be9f6245adc6c2ee8740f5e5b5daa918f5cdff59a8ad6a3e6d683dcef5a69038176ee19de918a701595208c8e66f34dbd29564e660b7f572c8a4ed8810d29a0decc98e7f203ba2ccb8590853c0817eb321360d4105ec85110bc8e562392c174eac97f73d4f6fc95149d688b69fe03026ded4c0223f7df07eca42238de89be4f162c55ad2738eea15cbb4232482cd4cdee62b919afe1e02c4021460896a35be8d057b35bf64d04172565c20a7fe48eb23f5dfbd7a522be8a7c', CAST(0x0000A38F00EA95E8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'11d91141-0688-4c93-9a59-3611b3a64e5b', N'0a2ce839-50c2-446a-846b-69d8c4cb5535', N'0x01000000cf900bebc9553582c2d5647fc20504251b231bc2760abf482dde2ac0495887df6ad83603560d78f1a201a97ddfd81743320c46dcc7e4346e9d9fc51c749ecab962be6ccff84dae23e59281b514fee9477afafe6020dc0fdf6f42bdb90c7fe045e082eac3d3f5f838cc4f43370c7c330f885276180d8e69dac2ba56603f3256a89680dd115b48f0ff6f44b980a075f072bd8e68b81306b54f56d79d6791fe08c8e57c1f35e739faeb0531eff7292c8c47d1508a1ec9be67497f9e316cdaadb61e', CAST(0x0000A38C00EE26CC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'f9c8969f-9723-4333-bd95-36e1b6688479', N'923461b6-946b-448a-bfb0-4ee31a1a1df8', N'0x01000000bdffefbb1dc3b2fd89bd3d1479462355e88156b032bd9bffab834eecf4ff7c98ab6ba38951d7a7cd85633c52de42b34bfcb5aa2cf74cc0f92d9a52a103dcc3752458f7f8e3c3c370a72a0ab7aec18d04b45a06c1bca90f274bb7c778bcd76efcc32b43ceb61de0631b6d01ce17aa84163bcc3e5dca8e3adf1fe4a689c91859581ae3e1502638e94a060cd961f6acd2b065ec1cdee44f1bbb5e3ee26fdb615e398d68724715f0e9bfb05cac1e8da5bb9f1a6ad4cadfdb26a0babe63ec6d60abec', CAST(0x0000A38F010E9EE8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'a2fb1d95-ab53-4bb9-9a9b-38de8cf321aa', N'53226473-b2b8-4a97-a29c-8c579b32d6b1', N'0x010000008adf78f63cd5936ffb8e21c9cb5eb96222c8e097b163f2b4630d301287e301f7585b81da33ad955bbd3aa24eed80cc8737a25ce8309fb7b19def461f7bc191dd140cffc3e1bac6745803a4d1553d234887231cd60dbea92b534ce7fa33dc2ac784d222c5bae3f00755ee1c0a7f8ce28acf6fd0b84c2c59b8f2184df8cde3072d091ae7a2d5e49cc0eaeac4d75f869178aaa65ad25f58c5a43aea2f70d8a6234576efb4e3db6d522af3c0bccf1f3d31e7a22f137fecd3e6144f0448af92dd7b07', CAST(0x0000A38D0119B080 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'c96635fa-c26d-4d52-ac78-3cbd0f45828a', N'1a9498dd-0801-4ac0-9838-3b590ea687da', N'0x01000000d0b7d0029aabb14fe37dbcfbe1b2a9cf8f4074d921c596a25cb2133762b1c5df55225198f9a4555923a69705d8fd0d7ec1f7aedf29d8a69f1ea33d85ce61bfac43bd9ad8dd636cabe42a4893cbf0a0860b58cd658692232073a6d2c7e3f8d572d1f178d174355677327d64847e2c9df4faba5c562ab72aee1a63bad92e80830061eda095b7cfb443a02b054e091179dcb0aac1d10d1b36a843843a285252e46160a354ec9e7005b70d290657c63e1bd8cbb24172f75b1d194d55634744a9ec10', CAST(0x0000A38C01145C70 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'2678c02e-d58e-4f72-a4f2-3e2f3dee3168', N'96652507-ff3f-4bf9-833d-480d1cdb97f5', N'0x01000000d90ab956492e8f333834e58b620a3a925c922848fadc482e3b7302d376a626c866e203fc3a9e2a107b5528100d5a5c1f1702d47122747ecc8d6f6d9bb78b0a5ab22317aa3a043fd3b95b1c4aecef4ae0ea7486ad919e28bfdb84099b4862037f54b739eac68aef8a29d46cc5bd9c7bda563d4007e853965826f5560e424bf1c8eebe7176880a12a19f2f24029c7e53e1589ef0d364bd956723934714eaaf3237ede39ccbf0dcfaab382e978bb84a957638df2b1afa68ae1a31dff0090c1ea5ee', CAST(0x0000A38D00ACB930 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'84b6956e-b708-407f-af3b-3e421d597f9b', N'8e4af890-c8cf-444e-b636-a1be75a2a359', N'0x010000006ab1ddaa7903fec19fba58b7f4619c8e3c4fb2d67c2c0fcc29bbe7cf51b9ba0b650e94ee41c955540771a9c4a5dd5d98142ae99b6f58833951ca2422bbd3ca0eba511fc7f933d1e2bbb033a870cc0e8f5f2ef2d4ae703f61fcdb1e0cc31116828dd39ed1d17c454e3677120bb95c978586cdb41ab8f1a487322a7598f27e62f17f753c141e384494165212ebe678600a8374438ba2c0151ada346ef2d3906f4325359e59fe1a7324fc5cb8b30544e1a219930bf81f658fa58b0dd137f3b59b09', CAST(0x0000A38F00EC80EC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'fe4df503-8747-4373-8579-41a04b27ace5', N'e3ce6485-5a0a-49dc-990b-f69fe346287a', N'0x01000000c46436e69d8c96aa4bae334f4177911c5f6dd0f4a2d27f5afd608e6799d3a8feefba62f9244034139514d3de9f3d842576a73c314964b38b185a721d8d9c862c22de4a9bdcaf43d39536da1e372acc423070aad575078f9f684bc8402ecc215630272bdab0ed9b7f1fceb799e737ab781dbd85770da9ad85171f3152d56bb8c2be2621c3c0ca47b77844c7f65e87a9eff6504e6be9c417a3e825074e3647f6c93100ba8cd25d60ac2737d21e0232591464be87cd83b91d82af47bb1b0aa273cc', CAST(0x0000A38C01142D90 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'9de539da-85e7-4370-871e-42fca7cbafb6', N'5ac3716e-6af9-4120-bd4a-38c1dea1d39f', N'0x01000000ccab9fafe08adfee60f332999691a7caff29b1a99a51778201bec59d40438b4ee058c5b275485f279395e9674f8d5618fc7827ee98b2b466e6752c6aba104d1484be4c9c557870c99e1e32b0854e846464fd2978cb117506bbd2ac30d23f6631935d545f71fbb79f763c05846db4f4a227b62b76d1922c5868a6a52e8a7a5a530680aff49d8dc1e2a3a7781f333473290872fe41795fb64f00525fe8cad72c424cedb0e7d331272d20945e1c26d057412df6acbb4d0b0449be9774c5e6299c43', CAST(0x0000A38D011A40A4 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'5be30746-225e-4570-b08a-44194246f9e3', N'38c9dd2e-a7e2-4b6b-9575-dbe790bacbc8', N'0x010000006c41827198a37d8292d201590887239b2a19e466998606c273ddcf55b0c15004b0d24c9afb5dcada7314dc0ae19473484bafdfef48cae2df7eadcd0cfe6fac6ada8d58e65c8de4f9e021f4fbe035a9b8c18ef75d0e67320965ace32ae929909f38ed4d2f05262b27d94396124cef9651af48c90ca1e4184349e7de33967a10180cab853a079a611214d38d1355f95a4f5eb4b78af813beab77b0f51cb24942ee5badf821534403829eb57fd785399374aa88b781e02850e577bc00f87a7e5ef4', CAST(0x0000A38C00E3D7BC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'8f266695-6b83-4873-9f5c-4634c00c59fc', N'1f21744a-519f-413d-a77f-2f2d1b2d468d', N'0x01000000062a69124e8a480fa2b7b892afcf1813a58ad318a7a4977bd81a381ddc9d2ec0894443e360b6e3ffa128ce50efdcf869fb406973c87dc9b0376f99b504ec49feffeb11a202de4d46541c31ca198638d9f1e1e3cd010063605ba2847442e865aa0f32a23b39804946bf34d9bc54392526faf9e67d7dee206c0714627153b47692629190206bc16bdb8b6e9d28ba4d3652b699e7518fc4743d3a4f4751d365c73117f535afcd4e55e9c2c0966a922bd0838953c2eb3f258b26382453287bbd53c8', CAST(0x0000A39400E8128C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'c1371159-6e29-4a5c-9452-464f49047acc', N'82392680-c0cf-4b55-8a11-b93ff8a0c634', N'0x0100000024d5d0f4b5d8e37d870c3bf08e67c536aa257d70e4f67cc4ac9471ef572c8a68da7ccff18b8742b7f007b6c10b996fe338d548b2de1dd760380975abf2b09b186321c81962d2e12a73bdf1d37b0f0069fcdac67670527d682e7f7262b28cf861db68df58735a4f436bbcc1150fd36b3de84b9461a407b382fe729365fb670a64b80f637579d8c37e23c47b52095d25f3a97d8bccebcda05f1813c6e7a7d2098f7107f75a8915b54e5a73cccc0bf6a1534e1f5bb71be549996b871490de2e55cb', CAST(0x0000A38F010E52BC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'e2405a0f-9260-4963-9890-4b6aa1ae5d90', N'8eb78543-5d7f-4db9-81cb-9777c6c5ee03', N'0x01000000f3ce9be521a4c60fa4bac2feb95322e861e97166d273ba1b0f68e2e11fa3e6a1c773b867b713ad57426dce5eca2fe961844e9b45055bf293a9bdeeba883c9dc04eca0d61f6c1150aba2d1899238a7d8f95a7f5d2b4d5ceabccc4174552099169c1fa7096904af37430a9d47f1e43afbf972152478a54f58190b1c95ae9660268d51f9f23a12864230b93bd94952be843c2b1e6f4b76dd5e7ec2b8ec36f7618fae3b958089e19c256ab2fff11ac5ba9642ab225866ef708f480a8b4602c09dc68', CAST(0x0000A39400FC6DE0 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'e7be1bff-5038-4dd2-beba-4d0393b2c97c', N'9b49b58f-1156-46cd-892e-2e74d3b97209', N'0x01000000870cb4e2b700b28de8633a35a732958408e7eb7fe4507f4dd772b60e8e23f168f17e80fe4d247cd8d43163fb5ce24cb98bc960ae4a19a2323f3bd5430e2ba3b8db2569caab5bb8c7b88bd804af0a0e52415dc22eed9477311d7ee8baa1e0c5529e86adec5a934600c5538edcfafbf7ede05c0ce779df93ec334f97aca12e454ddf8a78c6e8b71a9e0ffdc93d11b7407238522adca9297cfd843719d7ff40c5124b22ae7c07744669c5b563550764a8b86f4ddbe5ecb960a8bd3a8a1f15669476', CAST(0x0000A39400B7D7AC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'e4e7b066-a6ab-4f86-baf3-51bbccf30e5b', N'eff3bf67-7b1f-4170-92ed-72a43522a696', N'0x010000001a3af8de2c7bd5a710dced35bb870b4c1ee0fd9062d2bc5c18a38c582238dd6141a76afa78281f02525896c77e9b8441f7fc90122891069e3e26098007effa0a7bb03e0cc7ec788cad9d6f98ec4bb6a1cdf8d5d9700313dc44ae9038f671a708763def0f2b75b46c79983a93035612b10c8e7bde5536f69a2830421a8a89a68583a59d3287217a6301abbecb0bac2b76f6793f4758ad175ea7257362a7320b995bf545ea47470da538da642c5addf322a011e1803d3066302c70dd444e17a874', CAST(0x0000A38D01188F0C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'e932a3f4-58ec-44c3-81dc-53b0a1e21a09', N'd08be02a-ca44-4a08-9ae8-b7d6a0cf2439', N'0x010000009322762a2958a3259831607ad791b12dcbeb3ba906cbc7b1989dd0492ac3c65958ac6943e87fbf75310c03324d69ad8c05feb0aed7748726333f8d0a89eab5a7c56d7638fca11cc6e3a6201910766fa69248bda59c1fd4b12b41e0ffa604e2b7718b510d9733e792210e72d4189b637da7ddfb71aed0ffb882e7c63d778aaa0939fc54cc4b7c734fb6361b1d22cb768b404adc26e875c6d803deff349b4b486f0b425fe6a23cfc41b7ac6467fa71137c00cdb9bc15cef457e73f5e49ac939272', CAST(0x0000A38C011C02A4 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'87477132-b67d-4980-bdb0-54be5e335f60', N'25ee852c-b191-496a-8cef-5f1d3c7568e1', N'0x010000006396aebc67ff316a52870f46d92858deef30d8423ebe80fbb69774e602edd68fac66c5f6eebbc7e5645d889f10dab00c2256be36e3876a8dc375c57c92fe09e98d7f64602c7a2d33a5fa9d3243cafc5643992a7b607badf218b7ec2b4e40c64ef7e74017e7e83638fefa12c479a5fb6bdf7d18705a2c19e525ba9bd50e906d9b776b7e521534da6f9c0830a18607d6c50c718948ce071acf52d07bea94e1beea8f1c66439027dbd7c44a9dd426396e64b06e849db0a5eebd107ad2bd5cabd58d', CAST(0x0000A38C01146120 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'2d9b7bbc-871e-4f51-aaf6-55451b224e74', N'8f7e1e03-4f44-4b83-a2e0-4cbe01f14f2d', N'0x01000000a02504b3e509a740ef52f4514a451b013181222b36b62f188ec808cffcac161e6054d1cbc6c897768d726d42e79f45aeb6300587263a50be0d470d1a227dad0d9e48fe37888c0c1e3dfeaf68a5bedc32e2fd4a80356ae44a2f152fea9e55a4b7b0a5dfb55efde9cb47d50d3f4ff070771183c31f08afcfbb8487b50d671554d1d574c31684702c59592a9cf400f3948eb75571b63e0c1068582944c41cecebab943c76e0f1bc49c25e9bae99e553358a17364a5b382a1a7469e974a0ac0e8c40', CAST(0x0000A38D00AC6728 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'7cef969b-2b3b-4a55-910e-607b3196e5cf', N'33b0bbfe-7a12-4c5c-a44b-d1ba810c639d', N'0x0100000009f68797aefb618c12f457ebac7626206f95505f14e199ea9c62d604ecb8af4fd36dff1ef9a4aa6ef9c78a38c82a8e64d6e2f8ceb85a29780c76b1e9a0da673ce90ab91b75545bded6276ca8007be2c853d44918e10a333bc147af4ea4a1dff1848d950e8b713a15a406c690d81c61a3e6772c41912f8cd5bb0e5755d6422db1c608aa61cb1399a87e0958f3486985d542b6c2c40cb2f5566dc981a4826124d3cbe8b00d9486b8a4d8e27982fd269491d85d5400eef3104acee66f51b631db98', CAST(0x0000A38C00E76AF8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'bbbedcca-ca1a-4b1c-9ef3-611fd33ae4d9', N'ce20f514-0bf2-43c2-b9f5-ea4780c3307f', N'0x01000000b22afbb4779eb144ae232fb21c63ab5268ca1523158fa1c834dc8122e0b259b532eabd9cd3b2b0afaf028f8f10f230743ff9f130ce6d7bc101297ed8a303ef494a7e72f26d214258ddefe3b42130e25da956f22e17c31e97da59338e8896be4a840f5442353f04f8847d400abd26b61a7213d31e82a2c4f4c662899d9bc4b197dc721f90dc183bb3b8003ac487af05fe2c05c9598c90491b7b6cbae6a81894900a31b9713b1f69a40abf478321a28fd8603c0dd2221a34c48ed2c6f061c74e48', CAST(0x0000A38F00B9661C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'87b74f9f-d119-4a07-a56a-61d163d119bf', N'adc5334d-2c74-4b9e-b34c-22e9b472c639', N'0x010000002d4056afe379ef07c40bc562424c7bda7b3e12a1911cfcda976991f7c36a82d9d5661bcc2f4b528e1ac6e7b490804edf5835defc15ab79152fff37cbf9cc6e3f5c43cbe782bff41816ea3e40331aefe77ee51bb85890362e87cbd245f9b1697481794643c4c3cd3916dfb4bc144d271a8f8c21d3c487a5768ded0d8a3207bf6f15a562385bc6eede7ec7402e639c26712d38a932bd3e8ad6e6453ada4a2587429854a386f1fb398e5d92d5a96ea88ec88d8d34f1bf74237334a9fce4d3777498', CAST(0x0000A38D00B35C68 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'76357c95-716e-44d4-9282-625c7833d944', N'7da0e565-16b4-4486-89c8-3f516d5f1872', N'0x01000000e4f0fc0afbc2a5523908ff58362cd20563082aa636ab65e1ede30f3a39407d297ffb16c3a5cd96d85b43fbee9de9c488ecb41e38ea7b2c7fc4dbb24cb2c30ceb89f7bb6f19733b975b1cb9bc1000e6c785f48838a632dd40dc3acdddcb02707c2df6a57880ee67a204273911ce7df76d60cd9557a43aba33ee70e273966ef2648a17cc5ab79fd599711ebbe1b51047d0a7f6a51f732a3388625f994a49fa1a376d9993a1bf96aefbb71ad0f4b5a7a5de04fec35ee443872ac344a5f1e10e8530', CAST(0x0000A38F0107D9B4 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'55aff8d6-b0b3-4ac3-a509-627d16e4bbdd', N'6a13d652-6648-4288-ad72-5b9505f31c06', N'0x01000000dcfe3f216726d5c20063bd249e1b722fccaafecedbded24c3e08617c5fde085189728a9a4902efb46ee77f9380a4d06ff0feee882b4697937227a45d190c5c48bebdbdd852aebddc444f8be95d624073e647addb4a442dd9a8da3225623c90cbbb32826680d57cc942c2c74ff685edaa967628fd76f1f84ac242af217cb8d897a8681a2ecbf74480e9a104d9905d320c4941d47d1ccafa09ef8917d99a53ec9b0b5eedbd406835f7acd2374d4a3a91cab088e228009d56c16253f7e04da95e5a', CAST(0x0000A38F00B8CC98 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'079715c2-e174-4b85-aaa0-643d867d657d', N'ee10e6dd-c852-42e4-91ef-d14e9c202a0a', N'0x010000004bf149291bfd5980a6f408b2924663a9b7d756fed88e42d39a553d7700b9f3e41d49d58ebe8fd1493db745a4e7cac2f2d5456d9b769c2e02ca876087da0515556c32352eb65a6f21415eb27d3e437ddcc79be5484555121f4430500b68e7bfee85472662bac633a80b7a089417a9dfd2303db228fd357b4f6de0543e0ef41c1ca5fb39a30077530f7a57301d78dc262af33251815364496df9a61290baf4261aa48c9f1b9b4f45abcd883a93318ca3be1ca69782d89ddc3db25eb11d4abb56e1', CAST(0x0000A38C011502D8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'9a323fff-7df3-43e0-9d58-6834d3874749', N'b55c1b9c-6199-4eb9-a928-903fb2c1c6f2', N'0x01000000ab35a55eeb57864c42b6722410b07fd8650de03386fd4e51031d3fa1c0ca3f6eea1fea7730a28468715d1ddc0ff376ff3080b5e1b094049439e7235b5dd5f051746e9cff69c12739c9eb382d1228c63378af00cd56c7d31b6c19cb05e8209b165f02eeb7010b4c20447a7abb9c56c7cdfc9628b543b9cc6fb754812fb8487b7b61497432cc04289760824de5564dc958f9d37a9383f0cf051075a12e78b5ac86c188cfe20ce59f2457d0afe9c38b46aa3e0db2345fa5bdd99e8f130f18fd742b', CAST(0x0000A38F00BEBB58 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'aef9f982-c3c6-49a6-9ef6-6b8affcd35d4', N'6ae45435-dbc7-4fae-a9b5-6f4d72b62f89', N'0x01000000b4a25eb4fad79df3ab9856e67a225ab28b180477a49a6a1753ec22bda6c6157f7d58018e5cf37f761db1fca645f816db9346243b5ea090ba9d9950a3c446d399c27ae677a3b44cf64a84085f185c9a5b3810e4d3527561737c7a7ebb6ec60411825e52a8a91bc558d026a46bc3ed2723cd3d283a6f180d7c5f5245e53628030f46e9d28b757738aea536a6e6e8f07aa7b3f20d7a35b408ba77fc5204d809c9931778ef82cbd68b70bb19ff343b8d9edea885749c49136e505a5b576b3bf1c8f4', CAST(0x0000A38F00BCC118 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'b59c605b-6ab9-4f7b-9d65-6bc15808e132', N'17e15b0f-63df-452d-8a64-6783c60f4da7', N'0x0100000088839aeb9802cffcd34a73abd3021fec3532fdac018925f9469ba69aec3f488dd0d106649e157d6b996abebe53fd1d89ef88e05c2962363378c28b0d13d0a3a707756d95792a3b9ef9c638e81aaaed67da04604e7b0dfb256e4a670d5be266a24ba02888c244ebaeb0a2a3f71c2531ecf4f8423792b676a4f07b85e721d4352d1a2fbc275f8a278fc07a45314e9a604a07f3ec48cb89ac9ed59e45b23a4646b5d7a7a230c589305a54cdd3df99e426e30908abe9955d452f32a8ca5fdae85257', CAST(0x0000A38D010559DC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'1fc6e215-fc99-43dd-9487-6de546c06b4d', N'8717d93a-ccff-4ce3-add8-83d64883fa0e', N'0x0100000007cadde83dc8afa616c77dc4b303994bf052fcd97ddbb22a532f25bfb57bfc4260b6435bc17cf39de368f592beb9369307b532742c8bf9b4e925985a77f264ac92c4f66624afd972cdf7a090e8d5ece0c482f0ee5b5433547f421a7e35abcdedd3c6cc06726bcf277dc6c2dd9ddc800443023dad57817a079942e3a5d7d56047a8dff40a2a38c755a9df1c33dfdd8d1621107ec63851a7f7986f6545600088295e1e61b9408e716ca9ebb8843761ed55c7557f2b62abedf6eea3b0ccedd4f69e', CAST(0x0000A39401029ABC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'fc97162b-348b-40dd-8fa2-6e7f615938cb', N'6d410480-7499-4adc-85c1-b69e608acf42', N'0x010000002e8a68e9ce3b801bd520824f135551d41f58d981307fb4c47e31746f7f92ad9348996fd5bf94d689df86a7bd484f15dbc3f1eae2143e57d29cf2b48833a5cb80ff74489b10c93830327a38cb9878569c61d38c2524d9138c418c49ca31a5be6630c333922e5cc5af8626c64051b088b205d8f0624dbab5b48a3a1902f0d7e66cd43031811c7aa10ff8a6cb2f7970a1c8e2cd83bfbcf94625e79b7f1b7f0c3c0e8b346fdc15857955cac104d6c18c83ce06653d9de16df524199a45b9de25f5f8', CAST(0x0000A38F010558B0 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'463f4cef-449b-4764-a9ed-7004bb5d44ec', N'f711fd7e-5c77-4f03-9f99-5da1580a7c31', N'0x0100000018a0b51e1b18bcfc191872b8ebd5807c29ff2fdbf60179dfb121b4d1fc8f31da6a76c10a6960c59e24ca5422e1fc9bc171ed044fba1e0053ec04d4a6278404d5ee4aa998bfb48a32ddb9c47db674bcd3eacd4a45f2a14cf1b5b982861d8d9ca23f12ce27f44cd7c7ea580e3f592f363944b184702b2dda4e0bcabcdd5ca22b20f596e65754904896ac7b441c40438f13c05bbaa13e671a9328377aac8e63de7178b9657435efd5168490facf3a02c7dcb774758c5e5303d497741edede49cde1', CAST(0x0000A38C00E7FD74 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'2cf50779-09a1-4c08-b25b-75b53b4a6beb', N'8949f361-4628-433b-bb01-7d1f4aa9c6f9', N'0x0100000084d34c84662f899472473408612a15cb762f12824e71ee56fd10f447b6e2bee50d38d28ce7580ccdb33dbeaca823dd7d0c5765322180526a79eae32807d282ac06beae2fe7094380513e61009695a1fd466a98379ec5744a2fb20d5ee098b0ab3fba88ae9005b0cbb6309f4505a2e71c7f8f92a95a559741191041134f6d56d638ea6ca50da416f0076a0f777ca9f6f94e73d75b99e6ea4a6e9d075f6cf402e55aa56226dd9f52ce9bd967fdf87f963bb6e43baaec3a53940b7356b6310318bd', CAST(0x0000A38C011BB8D0 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'f2d5ef9f-647c-472a-bf50-770625442eac', N'24d36da4-3799-403c-a6a8-4f00da0e779a', N'0x010000003a1f985df98c8ec90feb875a1a5616a57902795ff294a019ae2d86e876048fb4b58ee22de565864f8b9f70c3a2ad34c8ac03797dcbcd5240b22a78d03507dcb6ead9673354473697f80b1de97d0c95ceec72089c18f049a9b5a300bc918a9b1508fbb50bf2b187bfce92901ecc49305e2ffe4d01919a8bc737631fa72b83d401589f689eef3e465898c755bcbabb93c4f11eef181b9da50e4d50045578f6e3c36e1b2cdbcd1cb176f4093f35e6b043df89305cbe85a9061495343e388c1705c8', CAST(0x0000A38F00BC1600 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'6169954c-ecec-48cf-b6f2-7727c269d367', N'0b90e704-15be-47c1-bdc0-6cd05f690cd2', N'0x01000000457439063551f9d028e70f77847683287bfa722354e6b9ba95df1c363944c082e0c171d81fa3149105db84c3109b4ef1cac36b5343710c7db8b6793d7065d12e5d80dfdf9d16302693724ef0c1dd6bf895ec8fb0bed7df2c7bf68bb28d8291c0e0e318ea935de974be0c162134bd9ec9f0af3a8411d21ffe532909de24c8abed98cf6701e4e338157eb79e021345fe0897a13c24b2b85e19990a00182c0a7b4599f75c29c290d70a00578ba52c0f64c9f20586ffd828e582d0205d3624f1430d', CAST(0x0000A39401058538 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'f34da811-78a5-47d6-af01-77ed0403940b', N'871f57da-f73a-4c71-9799-71aa9b397c80', N'0x0100000015b924a78a79742beef11bddc839d16e951fa785d90ee0025ed809478fd408be779b5e36b778d87192a14611cb943aea908f7a76b9fe26eeb30234aa35424b4251ee0c71ffbdfb0b8b7d4cde0c5dc7dc043989967bce695b460f5d0b5abcda1de32cf7fea699c8ca3938bef7443f16c3262d05ff0ff27d1d2f3456dd27ea8b355c84365a8988fff4af192a6b2307e44f36d98b3ce870b3ccb94e3f9d235eaca6b26446701a7cff47db2e6d06d01edb048fdf3292ff2cf414be9e598d04b6f2cc', CAST(0x0000A38D00B5E7F8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'f4ae69fa-6856-41d1-ab68-792d7da38e6e', N'd2ecc60d-cce0-46c2-b0ef-52467032efe6', N'0x01000000b58177d3df924bb65984affc31f55aa867b83d090753edd6c4d0fb06d9a96b92314bf3bbc43edd562f53004eed8cc9123f468812abad3ad98183132d8c7d201e31714a69572e865a427a0df1e7942d31c73d026b4b5f24c30d0366b0dbf621d9698af4b09072760b763bef898a6cbdbfc03b8f0c4e769b77f35427300fe340fddd140e7bf2d7c8fcbf9dfbe4b36d799b186df8194256692ad0b26faba4f088e6829629005305a28fe186dc838f2ef8de367e173668182aafdd246eefe957bf17', CAST(0x0000A39400FFBD24 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'c53cecc5-36ce-458f-9f6d-80cab3e413a6', N'd8339e83-056d-404c-b887-b509197346c8', N'0x010000007dc9c9346019b2fa760da76635a1cf2e619e45d9a4ae1829149d460edf64d97c68ce0b5f990d60e583176f651d77cb7ee4ac950714a8b3e90baa57031e1cc316cc8d2a0b234cfdeb387929ab88b26ae8fc4958fead9e0d31dba887e8657c06350612e6369e1da4f87974006f90c36064f3f7198a8df6d12770da33cf78cd50f22dd5a5fb80b406e24ea40c888eb460d4aa0079e64d719dfc750b8c171cad07c89589e6c9f07897d28e308659d3076f0f1080f375ca741c486e0052c8d0900a6b', CAST(0x0000A39401162DAC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'200bed20-3dac-40e7-9e82-8208f2c0f0c6', N'c07068f6-838e-48c1-97be-1cbbfeca05ee', N'0x0100000041383b14c02706bc30e6fe01593e7071051265c8d341702ad0d128b24020a795db8c21774b7cdc53f1425eafd9caee2b83e4a4c624e08305f592a1891562891e37f450807ffb333306bfd7abe52ed6da0a89324fdf762905f0e5dee57f87bafa67bd8da5b293213775e2eaeb8f7ce2e5ec7629c2ad6e96e1911ce5afc12c671897ccdf3e8921915bc1d50879cab97f8fbd7131531a8dbd4b1a5d382d6b89156619594f2068f8bb594d98792b3e0e6f8d93258e38ca730a682d204412e220f5e1', CAST(0x0000A38C00EEE4A4 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'21f04d15-7b5c-4659-b2a8-856330a3acb8', N'17ebe72e-888a-45c0-a9f2-54de05b197b7', N'0x01000000798ac321207ed320000203247b7ecc6f1319fb2251fbfe267a8ad17b486c57418c885a658d2df4925a8c8af297415a78417dd3c72ee8d647a09bcb35ae135a6696f5fc2024275b9e9847c9219fbbc0c8caf3de16feef23cbb7958f39656122ce743d9c1dfd9b31b129553d41195cf5a1ba5b86be26fb7e060e78230e8d20015ce99cff814c7ab21196f5c5e36eae62d63db60ed165c035f7d55f37ec2aadcb6229bbd22063a6882a94eee253ebe18c1ee73be308e37c7847667567c714f1ca8d', CAST(0x0000A38D00ABE064 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'e62b99cf-8b45-4cf1-968e-86fb88f24627', N'bf10e53a-a847-4678-8570-83404accc136', N'0x01000000299b0a03d3ad9d280ac8466cd2e6c3cee017bcf4fe9327272859c9391c7147dab1e2a6607958e3a3245d92fcdb0562da80f01b70c6737c593de26c9ca6d0075b8adaeb2e47207a1cb1fa8ce61f848bab38ff03657faefbe2a40c614d4bb3b4c2bc5ed0ad7a279eaa557f74d673df5334d07e563e8a60d36d0e054f1d873538fdf7d2b0ea588d0d6646c7acd3ee01da25b09967255bf4d96567e94c047d2d8b966c3fc790d2a56a459a04578740705aa74b3686b10d8ae6a470824e716e23821e', CAST(0x0000A3940104166C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'6c00e8eb-1ee5-4687-aec7-88c347f94b02', N'ff559641-25b6-4576-9813-13a7d917e519', N'0x010000009eae4c04c05aec2a903c08d42d1babf2dd6472824772794c2b7c3df7e29c77d72b6939d451455b6828d97ab9b639ce5466a104660417285a90b99e3ff5ff3d6168add61f76cf4215b4aae630cecd43bf111ccf8f8f2ddb83b8a8ae558bdba64ed588154b40519d8e30015af33b450df87f07ac0e6753016b3480d972131818b77adc9dbd396310c59491c9a42ddc4fc7849393084d8a9d56ea9494f462267b613a416bca2a6700ab2da36afe1e446ca64a249e4be6c2499545b8dec937f0f6a6', CAST(0x0000A38D00BA921C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'8bdf3bf3-45be-4b95-be7a-89ae94aba9a3', N'c9123537-f303-4587-b60e-18a8276cc583', N'0x010000009da8eae8b190ed18c493e4f08288189ef0658ec27fe9f6f4fca197bb08f9e838dc2ae3fd8a3e5ead1ac818ab09ec6956f8a741297556cfa3390dccba508cbe8fd9561ca0442e46484913a2d178701cf66db20add987eaf3564019e82860a8f445fb04d960acc9ef8c9f9dff6ff93050f7d99ac7ced60876ac866dfb044c27922b84f3684f9818945abeb1982f0b8e0ab72dc710e619bc1930850c3d85412212e7a94908b0cb0f0cc63fec4fd5f1556d68d5e7bbfe4d31d889fd15be9d8576237', CAST(0x0000A38F00E63A48 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'edaf8e76-04cc-43b3-94fb-8a524a74b195', N'2db6958f-9e87-4624-b722-dfd00c8c1f2b', N'0x01000000753ed9830956c9c88a41b83b97c22287d818a672a1e9adf99bf3a3bb3214d516171f3f1c91b49a7560cbf631441b6c4a13e8f37ad1e7d5016b05f1525c26ef7775d68be10c610d0c43596bffdcb0b8ca35612e68d709793437bb03b53afdb86e353d80f1eef8139f6d6fbe58e87f3129ce7ba82ae124b941204043e329116115fda5dbc12bac0401a2e46d9a2a850e5673c652cfb84a02d89341e62078d85de9038efefa2e179e72936d5965a93bdabdf42146d52f8067e2c27497d051515cb2', CAST(0x0000A38D01075EA8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'c8727f9d-616d-4a52-bb9c-8d71c3b6fc90', N'c2e1b404-dfc3-4163-a9bf-0f6398adc37c', N'0x010000001cfcc37729cb60df81d26cf30451ef641b65251ea5415490fbcdc0b6a3a17153f76acaeea40a4501642c4a3ca29e93b5f0d42df7d9120b53fd707ac0471ff973ab037086d303a0b54b8e4a09b5103514fddaa8e0f65ac8e37efab3e2a2f99fc03b38fb153663750942109b8df11b1ff86066119283aae0641f59ad6114abfc3181999bca9dbf524a96d7414780f40a6a8157a116f7918a780eba1aba11e08e70830ed99ee89da7b62232f019bfbd9a77cbad86c23a1fb1115c98ee5c36087e13', CAST(0x0000A38C0119BD64 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'3296258e-40af-4ce5-ae46-8f781bbc9000', N'b7a49e1b-e4f4-4602-97f5-38b48e8c84ff', N'0x010000007a2234d0f8f447b31c30a3438d0f52d5d87aaf3224b2c0b0c1f5e2b06aa6519e9460e1aa8f10c47eacc07abe5648dba7c8d7202fb5b69a18f842b5590734d4fba30f3a19025230be730fc24db92ac517228bc922e28f1503530ee7673ccec8c34bcea733b2e5725f253cc47328a1e9321d4f3caf0d460d0d4bfeee07807738314e59cfd6b8ca5909b4c496cbb47e7f14f032a4fc1d908da09ab4199c7e29577978aecbe6b56fb22a74bbbc284feabf8b71c07dfccdb0d3f17db975c0de2b42a4', CAST(0x0000A39400E746A4 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'ec007533-8790-48bd-8259-9210821e1744', N'e8145a32-a4e7-48dd-93ca-7ad9bba7c135', N'0x010000000ecf98b6a60f335a236814a52926ae1f0140d9acea0c79d98539d94e9b47f222bd1e47a6b41a1ff045b8208f9baecf090d6290bde6031387a9b506d41dbd89d2b0e102293582728eff36515c5fcdd494f3de466dc1ea1ce71e07481cb82b0333c0b78af6f21e197533ec83d851597fad7375c57c05e0d59eb6e32cf66e61ae75cd05894ff623c64fcb9ec8d193f7859fc6b5687f433c04c7267412c41b0b1942bb4f732dd259f4f996d008e7fdcba21b999aac30e90b2e68376bb8e67d8910c7', CAST(0x0000A38F0101B05C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'c5e1e50b-b40a-4311-8188-95b4eb434a35', N'ad859c42-9c3b-4b9a-8d1b-5cfefe801764', N'0x010000001c36a3dd6e001342397c66d28a539d006a4d2c2be0bf7bce483b39a90edbbdd8b960d9a31b87db833a5f331f2535c5400278460c86e708e9d2413481c047178a3216456d53d6bcb6cc8261dde1a85dddfc0d956077773bc2a0287e48b9d9bad61ec5ce1c469f8c47e811469708c237b93e57f13909829c8f63bf87bbfdd0f68502bca3b81c982a979c0f95bcf2f21c15f8d799eb6c34717aa287e0eb2fea964146f41e8b682279640cbf44c50b1fff1cbf59eff770e287f123b232f4e845e5f9', CAST(0x0000A38F00F587DC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'0909af5b-b38b-496a-a480-95b81f81f9b4', N'ce397b76-094e-4343-bce3-391acee62247', N'0x01000000fa25bd47b6afaef487c5555f9720650801235c36d0c88ccbb8a3b45464fd100fd1b587ac994cccd58ff811f5e953fb808bcb87f88cdfef59e6b2f27414025469d9073ad5d774c2615c84c7088c9602d7927d6a6798bd92d29c8175bfc3e42c56fb48b634314efc36a6ed8a4372fa6755cc42b7601fb965aa6acebc4f17c79b9aa1875c7e020625f70c0c568aa2d6da5474730e5f72e36d042ea42479b496ef63192da961e18504772dda68e6f0b26fabfc8630ca131629e4e995d8473a46af6f', CAST(0x0000A38F010B2DA8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'ed4fed22-82bd-4844-915c-989ab114f1cd', N'6866baaa-f5ce-41cc-8786-854c6f73b4a3', N'0x010000005d602c2d3f364f4b9631ddb682f4307f0521ecdce6268bf47b4ab303651289e01683c997f73df2add0bdd38e6ee395ad73c8ead88889cf65c96ee11ab32e7f4116ea2f91b19cd5df5f4d3de338209ecb1abcc07b2423b63168595104665c24674b364e59076018ed28f3546e8f05dc9fd569f50b655c0b372bb5d6c5ae10b105adec731295af680e8dad14f39129341fb05ae81c5f5f3eda5d4f4abca48b53dbc781c1c73fe987d4d968b10604020a89c2e0f03280bea8c1971778ea5109bc62', CAST(0x0000A38F0104AC6C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'dcda6684-3b52-4f0d-9dd7-98ac538c75bf', N'030f9596-2a99-474e-b50d-515be30edc9b', N'0x010000005e9c236b432c180b43c13f721b2d656dbfba46c26942b224e6b0a7489f2f8680301b87a20dde5dd84f36516fae7108ac988cead58eb90ead206420a9f763f73dddb5c1b773cece23b37204e9337cc423fec13456b7f331264cb15d56ae7bf8b3d7c303a038e653f5e85056920630ec72bb549de640345bb44b37d13c655064443f521846ab73810ced969f1dd4b2c5745cd6096455cfb2a9f0cfb9997185eceaec96fd33742247c30a53aba877daad3710577b3f135aeeadbc14fe7703fb006b', CAST(0x0000A38D00B4909C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'2e059e37-58fa-4508-99ad-99d3d0d79fc3', N'8d792189-b343-41fd-8266-29ecdf43c489', N'0x010000008f879886bd3c122a8602264af31e23ac46dc7660b40ba1de3b39e085f5a0bd4ad22aa60d8bd56ce8670ae78d34cdc459f47b629433f6f0cb17e948adbc5b8cf72d23d038e7bbbb039a3bc17810f3562ccc63aa80a73b3b43a41f51102cbb2b33a3e10ff54f0c91d9fe573d4fe6ff237392dbda64df5f333ab113bdbf5d68df3facb447d836e0f802db305560be92a99ca41947e5def7e0bc9ddcde17cadfe28cb37089a2da46f035533e0781614093810fd002ac4d8145e4d563cad1e0c8f739', CAST(0x0000A38F00BA8B14 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'aa510fdd-5d4e-455a-980a-a2cd384f0b01', N'4215608d-ef8a-4bf1-8416-61be425135ed', N'0x01000000a4ce65995f7de33f69a4a6eee98e56db6a4ff044f1180cdd6946e4baf472c553be42e0ddad89d69cbec6ffef57907af618f2a5792d364f3b091ca4576ca66f3775e0f436770293c906e7d67126e382c45fad5eb43d18dd651cb7017a3128fb35734a8bb55216ff51e521261e0226d72ce04323c8e43c3b44c7eb43309a4bda141c5ed959bd4344378f3b6feae3cdbaf872691ed95772ec613d3d57ad8f4d652b4864ca12f5ed195ec2a140f149dd8fde3a2acadf9d9be0724a188ebcc990d4e1', CAST(0x0000A38F0102B808 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'6bf1d42f-f12e-4602-ae96-a32d1e4519d0', N'22d6f5be-25eb-4052-ae93-c24d6cb1049a', N'0x01000000f8dea227dd3ad4caaa0cfbb462a01e5d973c93dd4f363a857879081771695497710fbadcc58cad171f48f800928952bf22fef46895ff352dfe441cb064b061ac320874cb3daeafb49449f0242591c6c4c017875d4e64ce35e3d07a0058e7f0306debc620811171091bb2c28876370f8c3cdcc7c1e7de30932e5868ce11762b46b25352621c975da5edca22b6f66328422322389def55b656e3aff7b418dcffde5ac1656b98dc03307fda4c21e4c7b46f61427ea03347973ba7c51a616b2d4883', CAST(0x0000A38F00E732B8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'84c01303-d069-4e30-8939-a6daa7e93017', N'56ebdf69-2b57-4af9-a3a8-31228b7b5e74', N'0x010000005465b05adb9523b5e4e7f74334ab3194f85dbefe649f1289f2b2856153d498f2fcb744ddb675ea7ce6265cbb6e91de8ba88a1b22c8244ffdb6135930f2a52bec6ee00831ffb65d65726b1c6c19276c4687a7a09ef3ec20156d7cdc0b6c8c65ab5e9c2fc8aeb68c0fcd8927206c770d7a30a0285d33e58b6cbc454abaedb5ed648452f963f4696180b1bdadae5be058d7e9b9d7c9a7c3730520919626486029a00e7c1a5152205472b8e9df5684c83eb7a0e5220a266bec6e5f2d2b47e9d18377', CAST(0x0000A38D00C257F4 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'8cd3fee0-4b9b-446c-ad29-a7adcca7a9f3', N'c6f10261-dae2-4c57-8c53-e9bec04d638f', N'0x01000000797353a6cd3c57996efc58bb985899bd609e9c0b3733a3d21129d127af86e51d25131f4aa25e4d0517cce5d49e959985f4c135e37032889b20a3fd6c868b1f0ba623f8e24b200fc3d2fe5f6a1ad7c150748dd16e6bd40fb6eaea79c3c0dd2491ecf67cae8d317e129e67cdfbcad699a1a14e75fbe8c0cca79da38cba7d9a7e03e2baa7f8ed73433b48daeb93088d5e35d36b4e795a37845a22b390842460bce858c64ae65cbd21ab', CAST(0x0000A38800E5A574 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'c4169ba8-cfe1-4c2c-9793-a9549500bc96', N'5d5e0013-0a76-4ac8-b2f0-3ad0b7931a7d', N'0x010000005471da957a45cdd74f6020b5455661e0adf75e2f317c32503541e5130ea36d20eae03f61f94281a9944e4b60edd39a31ff9442ed3f4cd07d047564b91b799634160ee66fd3fbdf0cf9089cfa425be4761f611d1ac6dbf9a0d36340c3a658e917959fb01eba72e3b8cc2aaddbb06deadff62731dbcd7e926b954167ec79110af50ca3ff5cd76401322b7a2858073037b0c2406a7b648fce9666490c8d85b9cd04edade9f28422a029c238b5fd5c03a3b212e36c0a46ec7babdf3b35b669a33088', CAST(0x0000A394010C1DE4 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'3c2fff2d-3b7d-43df-a0a7-ab03d48b733b', N'6366142f-a84c-483f-9caa-bc90f929262b', N'0x01000000048c590431b97f65301ee1767ac9bec7bcab7d421749d433f47416a2ed1df960d1c6d71a11c558ee3191a451da8953e78f714ed72fc27971da8b52ebef7609cf7ea3d7abc146bb37741a75b63f466f82397b28d79187fbdf715c2dc44006f7b5d77db157c497d3058a1800173f2d52e2c7b98871696c0580c80e228e4ca9fc17d44824847a4ae899ed80b1a2983c475632571cb34094229c1bb0a8d8b5f64882ea660ddc953b884a', CAST(0x0000A38800EE3BE4 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'390f7599-16cd-47ca-8110-ad137f551d74', N'eacf2e0c-fc4c-4bde-a447-d1bea0cd7b61', N'0x010000005f4d6e957b4b2a9aa57047c0cacd30a4c7411fe13801a7633e412b14d774b6032e5a41a57913965c22e52e88bde7685d59888a81bc5c7f4b266adf64572383a7d6d9ab8cd8ecd6e6a4d5f83bc3d136a9b154d0bc06c781a935954276e9c93f41ca3429717bd42bee6253dbb51dbc8e9207925e357b30e7f609dd50fdbc3307e49850898640ccc5626ac185471ff33f2deec2be73c00b6a796ffbd868a3268b6f6f48739f71e63884b38c69cfad5d8ae9994f98c5e1e2c82bf7e0572ae26030d3', CAST(0x0000A38F00BE57BC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'700d7f3c-9ca5-47c1-9405-adacff7e03d8', N'ed70cd01-11e6-443a-806f-632069d7f0a0', N'0x01000000d9ca63952a75558cde680678ce0c641cce8ad3adc24f5b2ab9a0fdb9d8b18188fdd623a002d330cccbbde05d335bd4d7ba76699d888b7a7638ceba72328b7970a261f04843c162ee0c2380a24876f0cab7f06176acc1c3fb4306314b04e0abe415b5f09ed85357c54c0f55b68a3e7ab2dcedb860230b9bcb3a697afd2c3fc98028d5832e8ddfea916a6d646000a273233e9511ab9edce912f2dfe5c9c7273bd3964a24ad33cda84ffca8d41d680546891e82e366b98b5b0a4ab8b93582bf86ec', CAST(0x0000A38C00EF51A0 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'0d98b76c-3ac4-485f-bb2d-b1806cee9f4b', N'd3d2cd32-9306-45ec-a605-fa0491b008d5', N'0x0100000021eb3670702c16bb60967b3ce105d9dc96b5b2723a97fa33561e41cd1622da1e6f0d6ec16d40bf903d2af99534d108f871550f1f98bc9664b608d4672161b7833bd4006ffb8321af8f2c28fbbf85fa94ec5c14b1ff5d30706045c25e0e31aca538c3b83033d1e49d226743b6d706fed0c5207474a9378a33192fba05fbc40921d21c1d4e4d08e8aa7e10f118912f140f53b021694f53171cb8a5c5a3ab79903ed7c3fe23350c7872d4b4a9f0fc827adf8c404ed5235cdc8994f7134524572553', CAST(0x0000A38C00E5950C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'298fa650-4e10-488e-90cc-b7047ccf47cc', N'9816ef3b-7d2a-4276-b97a-08d8dd9e2a6b', N'0x01000000c57111c636cb8d9c71157713f9066f3bee4f7fdbd8429bffd73f775812db347275fe46876ee68c2384c8c182ffa27ac2c57dcad3bcb92e2f11953d94dd8e809055cdd456cd7f90535dc994f32286c1beed39beb303f162fa6dd49f1037356def71aa6c0a6be91aaf23cb6af0246f25fd446fa2b00c62a45910fd1731de7349d9189f0bd79a213fb88c2b42e475be31872989a0191b485c05b6bc0381e972502d9c76258a631849f7b7019275e7cfb9d9db41badaeab794a8e2e3147203c1faee', CAST(0x0000A38C01144050 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'e7e50007-f045-4169-82df-b987ec9ab797', N'8267909c-1c98-4c5d-9fba-6fda3443acc8', N'0x01000000d4f750e5bba037a1fbba6050752cba6f756dfa457f82bb392b6683de64fea40aa45db3c5d62f1bbeab2c1359db5359501eeb49de3894081e4954749f1e1553bac99790dd04e2e044fa60b0f58ae227aa24963b32e18b8ac1b95f9092a1e2a27638eb0855502ab508dacd7ec6cf7eebcead19e08aee7a6c9c88787da63ac9528de390389d43ee2d191bf9a4210bec189fa05f3858d337746b45dffbb2afd512f80ed8069e72d22a11ea97eccc3c03602c4e6a1ee6ccfc89755d508757d10999f7', CAST(0x0000A38C00EAE340 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'221fc148-3466-457b-919b-c16269aebef3', N'8a4df6ed-d0b7-4db2-a932-5fd392f215c4', N'0x01000000b533bd2f7feeeabb776ced720eb100d311eac062b53edf0099d5d92a212007639e5ccc33c8d015cc97e86dd51e0cecdd46c952e6a939a59cf8f6b6dc7eda0944463cc1be785eee462a48b7a63d90ca37e2296ef3159ace5e05fc0d48a85e1dc1f1b3f37149ea3f2527b6b04ca7d830d440f5b416a78c52b6b57c2c4133ea1d93891de4f16874cf16ff717729f502c0bd5b725ac5e5d95c8b2754389733a0a19c49b37a9c1368c44d75c9b9db3795c3844bd532f083a80e50b75ef13ea9846b62', CAST(0x0000A38D00B55324 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'ef46d56f-005c-4bff-860e-c28064e55163', N'2b18a40f-25d6-41c5-bf17-fdc14fcc1f32', N'0x010000005b4cf02662156e6bfddf6479169ee0884637a40192b77be3bdc00dea75c02ddcc2cc95a9d88dec68928e21a9b55f037da2ba92fdc19ce1cbcc95a4a36917383257a0bf23ba8124c9cf458b83a894332b5d981d29c47bf415e293b143d1fd88ea112372501ee92435303f14d96ac03ecaef4ade2613b65665f1ff34e88040536143047378c1b0c61a0e36a2629ad70fb848f3660cb65ede09691f9af71e67ed330a65147bdd2991a10bb148a82b8df3f95bab5fef6a6f5440a23af0abb4baf0e4', CAST(0x0000A39400E3D438 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'991c4a43-ce88-4321-a15c-c7bd69e55619', N'58546f36-10e5-4aed-bfd8-e9dec753d609', N'0x01000000c18bb3ca6a3a047c6d9d303c8192671dce3c56a53c2f495dc2c603db2814ffc55926baaef1ef9eb1dea61df8f3f6d01633fd9540b53d3ad881c48ca8772495a78c53ff0c8d96f71b8ec956a7e4521f71dce29a6a23f48804bad10c77a3926530eb9bc5925bc925d076db94074818b66051556545675aec80e9224cfb585b4227b7f71e6a9452128bc1890e2d20674331713b9cba542cf1c1002128822e59bc00e5dce225e2c9c62e289f072d7d2d7b54bd1f0c8253a2f937f05c89ded8d29d7a', CAST(0x0000A38F00BDF54C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'd29e3e3f-6af1-444e-b667-caba8b99364d', N'9f742c26-5fd3-46ba-a4a0-fc731d9641f2', N'0x01000000456b5fb0beb224850ac087ec22b7d8c957a92e7fecfe3d590c32cdf47e9a6ab8c53d94443cce40a613122d183db37de1e20ccf2a5394060f8116dbdb852a3b22db75440a6828404a629bd26e9aa9dfa9a4d6b37fba70d9cbcb182333bbcedd2d23a72de13e60e807f0e0b1c315a7b3d71c49eb024e71c06bae5931f10a87485a2884203569db3c8784e26b0dea7c36dd41832e8bd157b54c72947a6d65d4738f74a73e1b8f5d2ee3f55d676cdc32812d57842c828d1323f98f68d2bd09d2a9f4', CAST(0x0000A38C00EED310 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'51b4f253-5652-4cf8-a9bf-cb69d040100f', N'fd78d29b-dbb9-4281-95ae-7e5d53ea2f5c', N'0x0100000041872d9522c216510fc82a4c60f94a150e1ca8861c753631f9f49fa59d6801376aa86b8d524776af5b0e298ab28fc275489c897bc2dfbdcb8856d395231dd9ec506bb8d61aaa8f842fbd1ba341452d83f7472a0e5eca30140ede84fd704b685aa756fdb257d86138b05e645d80f6fa0d3bee672fc2f7be81aecf42087164403499b31cddc6d7ba2285f35d9cd753f32bb73cc93242ab4c8311c2bf59d0fa76b05596ce58289fe00fc7845f576155556bd4f36c7cd2900b5dcd9ee0fc2a5b3035', CAST(0x0000A39400FF16BC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'64e1539e-9e68-442c-b664-cba4a5863657', N'cb70dadd-5077-4879-b14b-5475c7c9876c', N'0x01000000273afc92c44d11527c6a2c43cb469b05833c0f7b292f671635ed84bac7521dcef832ea8e05ef84241d141ebade2b4c7cef47e161261683657c25c18f9a486a9a12ace038660d66f77c753b528e0dae14877589f7881e465824c8b3a8500f82c58adfee6211b86fc77b4327529e2ab9a625f8c4ce258df735b4fe67f19c5f71968973531e8976a44f78c32b65e89dee5d0e163b54398c6dbda3a48c712e2744c9cbab5e6187a566e7f6369c358148f9aa0fdbfee8612a95449a42b37a1b920e31', CAST(0x0000A39400FE7630 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'c32d110a-d70b-42fa-9a5d-d1fa88d26052', N'755ff4cb-1654-48d7-9b53-0af2c8105e26', N'0x010000003a5d41ba3d2361d681a6ac8be9a2469d0430605baf0db5a984d50bc0cabf6405048829c4c5a8cc59282b853b3345be6c00c3cdd338f4f036db36429ad367a60b67325c1af8fbfed486dc0cd3f146ac479f369210812f364e78b814f8f1649fb4d7552c476b2fba44ef6a26f2d7a10395b6e8ea42b514705ab67344b5c4861314443f26fddf92953451ce630cd6d797febbaade032c9c4d4fc14f671c30348a48f16094f82c2d40dbc80d7c91eaf7a05fc9970eb6b8b497214e1fa2f8b922d299', CAST(0x0000A38C00E5CE78 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'9c8d3a79-b4cd-4a35-b071-d5b19122921b', N'f20d9c4c-5dab-4007-9c38-55d4224e738f', N'0x01000000ee22e6bb172ab3453e224f2965a619acfbe3c4631e38ac50b1a2e6fe773291f4ed730e5922910bdf5004f855599f76b6ccd574d328a7c4a7f29be4ef00ac6a4444aed01b00fbd570b33cb03cb1ffdf3d0c31a9c40928ae1048ce0130a1804ab869774f71817e92795f44827e1e6a6c8e05f36ed8fdfe48b70c89a9d730b58b445a99bd53a0a6a21cb6b4a8566772a955d5c3430e65ffdfb2d9dd04b34fa4f3e3e751925bba826ca04e9c9878d799a19d2d3b91db1bf7f8e9933198500818eb04', CAST(0x0000A38D00A6CA70 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'fa146c36-d54c-4316-ab3d-d68d5d077e0c', N'd764fb9e-abc4-4f3e-8c89-033961608d49', N'0x01000000fe99c0e7ae71840ed231112ecb04d208b35fb8f2ca9f942b147ce4faeab19c40052469bd8f793b736b24e2bd91eaf7ccd14819e46f9d922c50d4eb00a0205833d3c92ee455cdc26cd94c9ef78aa5e36ff092b4f0c5097c7e124ab6e6350d97b36fd4fd550da4d06098aa4615a617875303586a7cbd4270ed0a70add0570a275d972353926f142d5dd396890a44808ad8dd192a1f8626f6a712506b441bd22f0277fb19f15445609f0ceafc3cc7d699578782c2d0dfbb7083147968cbabb808a4', CAST(0x0000A38D009DCA88 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'6eb91dc0-3aae-470f-bf6f-da30da58f656', N'b05e8eb8-e46f-429c-8922-27b019f0a1fe', N'0x010000002ad1f5727c9375729f0766df22666ebb768f7659125afeda6c0829904aba897b9c7a4ee46b089b8855ed0e43fd0e8a23df542923a2b48e8009b83e4be661763c8c896ba46250a62dc70390cb7208afaa1393f94e0216f093445a3b43133bcf78929e8c3c997cad6b86f78fb4a299e7f321c03db1aea2c5e882df43b8d7a018f60f7916cfd6dc6aaec169e7d27cf778d1d0600e3410dcf3c1e31b2b2d5e81d04d182dcb6731fa0734e17bec12793e3b7d687a268c0077bd0ad1d4d0e0f5a2842b', CAST(0x0000A38D00AC27E0 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'db47a931-8050-47db-97a6-da8f910b8b31', N'adcacc3e-b4f7-44e5-b299-35f4cd150e5e', N'0x01000000d572289277616aebe26b71b884880df3cdd440e4c7bdc220653a69d2c2e6055c39c49f399352166327f13677dfcd929fd50d51d4f15b3e3d0ca0354d9516bde95d183ba1568d4a2f069c399ea9fa7bbd5a4853b931460530d6defa2e1aaa0b4f0b813405f4cf11f52dc3c9da686b967eece0e55697f1663349f204787439c35c1a0d7f0c3d667d099943ded4735e9b5ede5438d725270e558e429653175eb28b001cc887137ef2f30b46fcf4b6ead74ba4513c40bd25c6e6a738d8613b58019e', CAST(0x0000A38F00F45F60 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'9cfbc833-5913-46cc-8106-deee804e8591', N'304ad93e-d8b5-4294-89c5-479b28dcf3a3', N'0x01000000e4f5a1f5aeef6edfe82e238b722c555a5feec597d63a5fbe0ce8daff4913d6b5806223c870f305892753b585434ee9846007fd5a9b0012cb45989a0dacb03ce4465c5bf0e2487090b48791719c00091f88a2c30ff904822ea68d074206f1403134c007eeda49c342b46554b37725b736527e8c01630d78faa78fef89419c8e7db7770de516346235415b1d1c0c855dfd171aa2c6b9bc9d146f963e0243dbe5e941888061bbdbb7a3bc33434f767ec4a3789c7715b5f11832a7565fb9085b15cd', CAST(0x0000A39400E91EE8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'f45a6280-4ea9-467b-8ddd-dfa21b5a44e1', N'4af7fc25-e9f3-489a-8384-d46d14579df6', N'0x01000000ba415405b32bcefd2e47d835e9124a4b9cde331061b9405e24bcf48238f5cbc8e784a29182ad8a5330120e6c308e4f1e93bade3a979a7e4a77e8a759a1f5645f0b1ee6c24f1381977732b3a467813323e4b55b0814d485dc312437af85aeb33a5c1ddd8be1cc523b9305410e56247b7766a32379e0a7ba4537d51186b1f197d3a48539b5d70aefe6ba25a96604ef82d5834ffcc86e9df2bd18943a5a2baa63449507737dc12dd6f7a7f3cf34b46c5f979deec492f4b42ed6ca0c95fc1e204403', CAST(0x0000A38C00E43A2C AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'ad093a9f-0f93-4b5d-b485-eed9072ee5c5', N'61b4224b-0342-47c1-81dd-4ce71afeb9d6', N'0x0100000020c316c09c3d5fe4165af4a587107611b18275f0db2da99b982ad773a7374476084aca3cf3d9123b52d1e31745083467b2af34dbe3000860922038e1a9431b8126339683934ffe212780eb6698e5dd04040b06cde32edee1033350f3534eb40f4fb5d668310106fd67d4d57ce2f30f801fad88fc2a011116b039274994ba4c0faede2229e53fc0c997f1fc222ff6326c45116e70607d8e931ddb88cdf37e92ef8e163c03235c5d8947d47fa2cb69cf17d33b75f8c57f32c1299bcd48c497d965', CAST(0x0000A38D00B8A394 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'148f1e9b-d96e-4383-9c80-f17b6aacf9da', N'7b1c46af-395b-4b3b-8f2d-a6c9110b196f', N'0x0100000064021d64fceca30baa21e35d80a4564852efe278be1fbeec0effced28fb4268f257b4a0f4431c2a228b0e0d014125b3cbc32908818e58490630150a09329477060ab932416962e86ab31f1db28b28d1bea5ae9b8886f28a3942662b2c3834c49672df9965d313ceb68ca8f277772ff9b602d26ec8af236ab5e1d5dd75c86100b014b082c50bd90bb2877adc6ba7a56b2a78cdcbd3714ecdfb93bc4fa403615e19dc2ad826a2cfa539cd6393c078416885c6bb17cb790674e87f9e62a8416faef', CAST(0x0000A38F00BBB4BC AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'a27c1b04-7715-43ba-8d8a-f5b47059f8b1', N'eb517e96-db24-4986-ba7c-3a597deee42c', N'0x01000000d0ec2002bb7b420d2dc25bf0efd57d8c06f4d9282dccd2f0ca625d1e1b4d6729538ecee8a74ac4974f356614c52f9f1381f2c2cdcfab78fd1b16cf8934deae353b87f9f3db3f3502d9ee0c30a53f8cdeff72188d08092567abac5d01d8bb85ad991b9b3b0b01d670bdd36df5541d8d57993202356d12e87f761e9a0b6c1aa69bd68c477f5e91d16de25cedb70f4d90127dccdbdf0a10cd0e5559c1ce26c152cb9514073e383b45c42e871d4ceaa6fa5e91f2d935a16a6bd5302f7055226001f2', CAST(0x0000A39400EB60A4 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'ca04121f-4c68-46c0-b9f1-faae48a1b1e8', N'f19ab020-db72-4461-9a9b-676f3986867d', N'0x0100000005beedad5e3f79f85e5b0adb833a9fd202b2e37b8af99504511117ab42537ad509f8fc8b8ba0e4321b91f4c4e0f2564e1db2dab1e27a2c9e70bd1714a02b5d4a9c0f5a12558ddab70f2728179201a4298e2a64deca05b5d4c021f63efd0afb27b5881bdfdbe01ebd7caef71e1466cfe2b2289c113204cdd7c542395b3d0d48b81fd918e36f00ff098d60e71151f3ed078d8316931521b269fe1d780f5cd70d3994f9de991bd0e9b6f0b967c4056c1727650d48064504c116ead68176a0272620', CAST(0x0000A39400EAEEF8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'3f9038bb-7f9c-495d-b956-fef04e5eb7f1', N'b843f0bb-e999-4881-a99f-01771ce72077', N'0x01000000f07966c143b169a6f34fed4c299e77e5cd6a6ad2fea6cd7a49ed7609514c023da1ec17a5e53022ccb8871c6f03aa72c0f0a416aa71c46a7485693ca85e13483cc9a90fb32de673e0f3c69c2276d865c67b460feab9f95ec381e3b9534c75f983f5f095763b4f23a572f2412ace8531cc19dd9a451344574854c8940580d06bcbd081ec8916d4014701af90cc93f06ac2ec3714bdd653b0d8da0be651b78b7b6d048dfa6c355ff5d6c030a99c428f8fdc15f171eff2bbc2f5ef74300fd5e7493c', CAST(0x0000A38F00BDA6C8 AS DateTime))
INSERT [Secure].[SignInToken] ([UniqueID], [ActionID], [Token], [ExpiredTime]) VALUES (N'a49a71ee-be5c-4754-ba91-ffb76d345127', N'b803bc75-17b3-4d91-b79b-944950172a36', N'0x01000000a995f95144ab324c3c4999b6d861f5cf96c009a12e4349b901fe7497e2aeb0c75b8fc13533aa0cf77d0ddfec8c6a1984d41d7737ead0802a02ea268b92f839df864d6938763652573d36955b37dbbe6a33ee5f6e5a24fb0c2a607d3c61dc83737bdfbf6ab4995c660162067e5d4c23fa2af4e30687891939c1052e4b3f66c40540c8b6016265fabc448e451eade1991a0b535a2acaaefb6e3a40897d8209c8971635ef4fc2c192c7c68941b50837703092c0b1f72a5ef85e4a7bcbdffda8c4c7', CAST(0x0000A38F00E6EFEC AS DateTime))
/****** 对象:  Table [Secure].[Subsystem]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Subsystem]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[Subsystem](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[SysName] [nvarchar](512) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[SysCode] [varchar](256) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ParentSysID] [uniqueidentifier] NULL,
	[InheritFromParent] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_Subsystem] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ_Subsystem_SysCode] UNIQUE NONCLUSTERED 
(
	[SysCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ_Subsystem_SysName] UNIQUE NONCLUSTERED 
(
	[SysName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Subsystem]') AND name = N'IXFK_Subsystem_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_Subsystem_ObjectBase] ON [Secure].[Subsystem] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Secure].[Role]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[Role](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](512) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[RoleCode] [varchar](256) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[SysID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Role]') AND name = N'IXFK_Role_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_Role_ObjectBase] ON [Secure].[Role] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Role]') AND name = N'IXFK_Role_Subsystem')
CREATE NONCLUSTERED INDEX [IXFK_Role_Subsystem] ON [Secure].[Role] 
(
	[SysID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Secure].[OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[OrganizationObject]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[OrganizationObject](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[ObjectName] [nvarchar](512) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ParentObjectID] [uniqueidentifier] NULL,
	[Category] [int] NOT NULL,
	[SortID] [int] NOT NULL,
	[VirtualName] [nvarchar](1024) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_OrganizationObjectBase] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ_OrganizationObject_VirtualName] UNIQUE NONCLUSTERED 
(
	[VirtualName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
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
INSERT [Secure].[OrganizationObject] ([UniqueID], [ObjectName], [ParentObjectID], [Category], [SortID], [VirtualName]) VALUES (N'ed4577d4-e74c-4632-8c70-6524673ff94e', N'信息技术部', N'1d7e4d65-1774-4c6c-a156-ddaf225f48ca', 1, 0, N'003_信息技术部')
INSERT [Secure].[OrganizationObject] ([UniqueID], [ObjectName], [ParentObjectID], [Category], [SortID], [VirtualName]) VALUES (N'44086f54-0380-456f-a809-8eff695afc26', N'集团总部', N'1d7e4d65-1774-4c6c-a156-ddaf225f48ca', 1, 0, N'002_集团总部')
INSERT [Secure].[OrganizationObject] ([UniqueID], [ObjectName], [ParentObjectID], [Category], [SortID], [VirtualName]) VALUES (N'1d7e4d65-1774-4c6c-a156-ddaf225f48ca', N'国盛投资有限公司', NULL, 1, 0, N'001_国盛投资有限公司')
/****** 对象:  Table [Secure].[RoleSetting]    脚本日期: 08/26/2014 17:57:42 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[RoleSetting]') AND name = N'IXFK_RoleSetting_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_RoleSetting_ObjectBase] ON [Secure].[RoleSetting] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[RoleSetting]') AND name = N'IXFK_RoleSetting_OrganizationObject')
CREATE NONCLUSTERED INDEX [IXFK_RoleSetting_OrganizationObject] ON [Secure].[RoleSetting] 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[RoleSetting]') AND name = N'IXFK_RoleSetting_Role')
CREATE NONCLUSTERED INDEX [IXFK_RoleSetting_Role] ON [Secure].[RoleSetting] 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Secure].[Permission]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Permission]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[Permission](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[PermissionCode] [varchar](512) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[SysID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Permission]') AND name = N'IXFK_Permission_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_Permission_ObjectBase] ON [Secure].[Permission] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Permission]') AND name = N'IXFK_Permission_Subsystem')
CREATE NONCLUSTERED INDEX [IXFK_Permission_Subsystem] ON [Secure].[Permission] 
(
	[SysID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Secure].[PermissionRoleSetting]    脚本日期: 08/26/2014 17:57:42 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]') AND name = N'IXFK_PermissionRoleSetting_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_PermissionRoleSetting_ObjectBase] ON [Secure].[PermissionRoleSetting] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]') AND name = N'IXFK_PermissionRoleSetting_Permission')
CREATE NONCLUSTERED INDEX [IXFK_PermissionRoleSetting_Permission] ON [Secure].[PermissionRoleSetting] 
(
	[PermissionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]') AND name = N'IXFK_PermissionRoleSetting_Role')
CREATE NONCLUSTERED INDEX [IXFK_PermissionRoleSetting_Role] ON [Secure].[PermissionRoleSetting] 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Secure].[PermissionOrgSetting]    脚本日期: 08/26/2014 17:57:42 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]') AND name = N'IXFK_PermissionOrgSetting_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_PermissionOrgSetting_ObjectBase] ON [Secure].[PermissionOrgSetting] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]') AND name = N'IXFK_PermissionOrgSetting_OrganizationObject')
CREATE NONCLUSTERED INDEX [IXFK_PermissionOrgSetting_OrganizationObject] ON [Secure].[PermissionOrgSetting] 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]') AND name = N'IXFK_PermissionOrgSetting_Permission')
CREATE NONCLUSTERED INDEX [IXFK_PermissionOrgSetting_Permission] ON [Secure].[PermissionOrgSetting] 
(
	[PermissionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Secure].[SubsysAdministrator]    脚本日期: 08/26/2014 17:57:42 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[SubsysAdministrator]') AND name = N'IXFK_SubsysAdministrator_OrganizationObject')
CREATE NONCLUSTERED INDEX [IXFK_SubsysAdministrator_OrganizationObject] ON [Secure].[SubsysAdministrator] 
(
	[StaffID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[SubsysAdministrator]') AND name = N'IXFK_SubsysAdministrator_Subsystem')
CREATE NONCLUSTERED INDEX [IXFK_SubsysAdministrator_Subsystem] ON [Secure].[SubsysAdministrator] 
(
	[SysID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Basic].[ApplicationBlock]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]') AND type in (N'U'))
BEGIN
CREATE TABLE [Basic].[ApplicationBlock](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[BlockName] [nvarchar](128) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ParentBlockID] [uniqueidentifier] NULL,
	[Code] [varchar](128) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[XExpando] [xml] NULL,
 CONSTRAINT [PK_ApplicationBlock] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ_ApplicationBlock_BlockName] UNIQUE NONCLUSTERED 
(
	[BlockName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ_ApplicationBlock_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]') AND name = N'IXFK_ApplicationBlock_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_ApplicationBlock_ObjectBase] ON [Basic].[ApplicationBlock] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]') AND name = N'IXFK_ApplicationBlock_ObjectBase_02')
CREATE NONCLUSTERED INDEX [IXFK_ApplicationBlock_ObjectBase_02] ON [Basic].[ApplicationBlock] 
(
	[ParentBlockID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
INSERT [Basic].[ApplicationBlock] ([UniqueID], [BlockName], [ParentBlockID], [Code], [XExpando]) VALUES (N'1174311b-8031-4acc-aa44-314d4db193f2', N'基本模块', NULL, N'BASIC', NULL)
INSERT [Basic].[ApplicationBlock] ([UniqueID], [BlockName], [ParentBlockID], [Code], [XExpando]) VALUES (N'53f1e2cd-785a-4e36-bc13-4335016f6250', N'组织机构管理', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'SECURECTRL::ORGANIZATION', NULL)
INSERT [Basic].[ApplicationBlock] ([UniqueID], [BlockName], [ParentBlockID], [Code], [XExpando]) VALUES (N'5d08b596-5c54-453e-ab45-45c326e72f5e', N'身份认证', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'SECURECTRL::AUTHENTICATE', NULL)
INSERT [Basic].[ApplicationBlock] ([UniqueID], [BlockName], [ParentBlockID], [Code], [XExpando]) VALUES (N'63a1fe18-d7ff-40bb-bc15-5c603388b965', N'管理控制台', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'SECURECTRL::MANAGEMENTCLIENT', NULL)
INSERT [Basic].[ApplicationBlock] ([UniqueID], [BlockName], [ParentBlockID], [Code], [XExpando]) VALUES (N'dcb327ca-57fc-49af-8707-691025316c17', N'安全控制模块开放API', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'SECURECTRL::OPENAPI', NULL)
INSERT [Basic].[ApplicationBlock] ([UniqueID], [BlockName], [ParentBlockID], [Code], [XExpando]) VALUES (N'3454b2e9-19bf-4be9-976c-6f6f20917dc3', N'角色授权管理', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'SECURECTRL::AUTHORIZE', NULL)
INSERT [Basic].[ApplicationBlock] ([UniqueID], [BlockName], [ParentBlockID], [Code], [XExpando]) VALUES (N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'安全控制模块', NULL, N'SECURECTRL', NULL)
/****** 对象:  Table [Basic].[PredefinedCode]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[PredefinedCode]') AND type in (N'U'))
BEGIN
CREATE TABLE [Basic].[PredefinedCode](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[BlockID] [uniqueidentifier] NULL,
	[Code] [varchar](64) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_PredefinedCode] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[PredefinedCode]') AND name = N'IXFK_PredefinedCode_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_PredefinedCode_ObjectBase] ON [Basic].[PredefinedCode] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[PredefinedCode]') AND name = N'IXFK_PredefinedCode_ObjectBase_02')
CREATE NONCLUSTERED INDEX [IXFK_PredefinedCode_ObjectBase_02] ON [Basic].[PredefinedCode] 
(
	[BlockID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'287de0a7-61a3-461a-bc0b-1ac3f33925cc', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'ERROR::00000009')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'6316f3c3-8426-4f03-a222-3bff62bb09e9', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'ERROR::00000007')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'24c1016b-ffdc-447b-9fe0-5d7609bb2bee', N'dcb327ca-57fc-49af-8707-691025316c17', N'STATE::00000002')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'8f11aa65-1c8f-4c1b-b939-5f0b0e4b2db9', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'ERROR::00000013')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'db3d887c-fc98-4eb2-ab1b-6eb8e34dd65d', N'1174311b-8031-4acc-aa44-314d4db193f2', N'ERROR::00000002')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'ae84cbbc-33a0-4d40-9b53-7088320b314f', N'5d08b596-5c54-453e-ab45-45c326e72f5e', N'ERROR::00000006')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'd23acdea-2e90-4217-bdfc-850f1d4ceda6', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'ERROR::00000010')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'0b38ae2b-df9c-4da3-a2d8-8c7d326b937f', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'ERROR::00000016')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'fcc58e26-1aaa-46a1-b778-9b8d5ba2dbc9', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'ERROR::00000012')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'c165e5c2-0f5f-44d7-927c-9f8c1f1f16a5', N'dcb327ca-57fc-49af-8707-691025316c17', N'STATE::00000001')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'a87008e7-db8d-408c-a1c0-a79393b3d43e', N'1174311b-8031-4acc-aa44-314d4db193f2', N'ERROR::00000003')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'f270b35e-c4d1-42f0-a2d0-aa529eb27177', N'5d08b596-5c54-453e-ab45-45c326e72f5e', N'ERROR::00000005')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'7f1b0593-1eb4-44ff-b677-aedc9760ef53', N'1174311b-8031-4acc-aa44-314d4db193f2', N'ERROR::00000014')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'b20d974c-22cf-4938-9f4c-b5f299fe5e03', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'ERROR::00000015')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'676dc484-e982-4434-baa7-c44d04095c9e', N'1174311b-8031-4acc-aa44-314d4db193f2', N'ERROR::00000018')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'31753913-8288-4697-bdcc-cf3b4ff75137', N'1174311b-8031-4acc-aa44-314d4db193f2', N'ERROR::00000001')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'f67432d6-318c-4387-a623-da2b14bf818c', N'1174311b-8031-4acc-aa44-314d4db193f2', N'ERROR::00000004')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'51da0383-9a90-4ad0-b0de-de1b57c8a8ba', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'ERROR::00000017')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'508c8fe3-2f76-42c2-8946-ded8ef3ce520', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'ERROR::00000008')
INSERT [Basic].[PredefinedCode] ([UniqueID], [BlockID], [Code]) VALUES (N'c7320421-af8e-42bb-a539-f22353ef8514', N'2d82b4cb-a03c-4403-97d8-8542ff2a80a6', N'ERROR::00000011')
/****** 对象:  Table [Secure].[StaffAccount]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[StaffAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[StaffAccount](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[StaffID] [uniqueidentifier] NOT NULL,
	[IsLocked] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[LockReason] [uniqueidentifier] NOT NULL,
	[LockedTime] [datetime] NULL,
	[UnlockTime] [bigint] NULL,
 CONSTRAINT [PK_StaffAccount] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[StaffAccount]') AND name = N'IXFK_StaffAccount_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_StaffAccount_ObjectBase] ON [Secure].[StaffAccount] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[StaffAccount]') AND name = N'IXFK_StaffAccount_OrganizationObject')
CREATE NONCLUSTERED INDEX [IXFK_StaffAccount_OrganizationObject] ON [Secure].[StaffAccount] 
(
	[StaffID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[StaffAccount]') AND name = N'IXFK_StaffAccount_PredefinedCode')
CREATE NONCLUSTERED INDEX [IXFK_StaffAccount_PredefinedCode] ON [Secure].[StaffAccount] 
(
	[LockReason] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Basic].[GlobalRegion]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[GlobalRegion]') AND type in (N'U'))
BEGIN
CREATE TABLE [Basic].[GlobalRegion](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[RegionName] [nvarchar](256) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ParentRegionID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_GlobalRegion] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[GlobalRegion]') AND name = N'IXFK_GlobalRegion_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_GlobalRegion_ObjectBase] ON [Basic].[GlobalRegion] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'76d76e2d-a34b-4f90-b099-0cb55270f67d', N'重庆市', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'7d667e80-56b6-4e40-be5b-0e042c694b52', N'香港特别行政区', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'04bec334-83de-48e9-b9e3-16c2965b8d45', N'西藏自治区', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'f687ad10-28ee-49eb-8048-1c7a96fc51c6', N'黑龙江省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'5b56701d-42f3-4162-b810-1cee87e69020', N'湖南省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'd8eaf925-5bd5-4127-a73d-29e23a4ba09d', N'湖北省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'879c0feb-702e-430c-95ca-2b8ef6df9c16', N'云南省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'b71a6d66-3b1c-4d75-926d-327e43cbbe91', N'上海市', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'6ae58a5d-92b1-44a2-81ae-32e9bbeff891', N'澳门特别行政区', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'cb4aee8d-08c0-4300-89f0-38b7f37c0030', N'海南省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'2d765adb-2006-43d5-90b1-3bec2b793f67', N'山东省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'd3c372c1-a467-4307-bcc5-44285ab031ab', N'河南省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'01991527-73cd-48c9-9fdf-4779a1d1e0b1', N'青海省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'04141fb6-5513-4de8-8a5b-4a099cb5c05b', N'台湾省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'9911ea86-2fbe-49f6-8fc9-627dc114940a', N'安徽省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'd8eb8cdf-944d-4138-a248-66671e7eb5d5', N'河北省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'ed6ae24a-698c-477c-9d1e-698a8d1661ed', N'四川省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'9b90b332-7864-4041-be99-73ccd85f5530', N'甘肃省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'45cda007-ce13-42a8-895d-923cafdc2509', N'北京市', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'a10556ce-7044-4e89-ae4d-a126216d7e7c', N'广西壮族自治区', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'ccf2267b-6629-4caa-b401-abc085406f4c', N'吉林省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'b9ebf131-e100-4378-8742-ad0964b9fc75', N'浙江省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'b7d35702-834b-4ab4-a15a-ae966a5f927c', N'贵州省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'db07f215-c865-454c-80c0-b163bb710a57', N'新疆维吾尔族自治区', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'5f42adc3-1cbf-4189-9645-b63f34f393d4', N'辽宁省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'b17b3506-9be0-4fbb-8dc6-b7e1e28a45c1', N'天津市', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'e84c3be0-ec26-4f5f-8bd7-cbe8aa5704b9', N'内蒙古自治区', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'5eeabb12-990e-4fc6-aa5d-cd23467e428e', N'山西省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'66d5f230-154b-4401-9a92-db241aecb1c5', N'宁夏回族自治区', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'5d5dc236-80d1-446a-82d0-e579c52c9749', N'广东省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'0d35c36e-708c-4b4f-8230-e697cda6ef11', N'江苏省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'f4483be1-ae26-45b0-9951-e83f67808bd5', N'中华人民共和国', NULL)
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'1ac5aeb8-7b90-4ea0-be9d-ecaaf7f2ee5b', N'福建省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'3677254c-d074-4364-9a21-fba8dbbb6079', N'陕西省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
INSERT [Basic].[GlobalRegion] ([UniqueID], [RegionName], [ParentRegionID]) VALUES (N'c182b456-86f6-4a27-b349-fd19d8c69d5e', N'江西省', N'f4483be1-ae26-45b0-9951-e83f67808bd5')
/****** 对象:  Table [Basic].[CredentialsType]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[CredentialsType]') AND type in (N'U'))
BEGIN
CREATE TABLE [Basic].[CredentialsType](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[TypeName] [nvarchar](256) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_CredentialsType] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ_CredentialsType_TypeName] UNIQUE NONCLUSTERED 
(
	[TypeName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[CredentialsType]') AND name = N'IXFK_CredentialsType_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_CredentialsType_ObjectBase] ON [Basic].[CredentialsType] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
INSERT [Basic].[CredentialsType] ([UniqueID], [TypeName]) VALUES (N'24a733bb-04af-4ba9-87c7-a4c8b8970506', N'港澳通行证')
INSERT [Basic].[CredentialsType] ([UniqueID], [TypeName]) VALUES (N'cd797705-39d0-4a1b-adc1-1d2f0c762b26', N'护照')
INSERT [Basic].[CredentialsType] ([UniqueID], [TypeName]) VALUES (N'701516f5-4eca-4e9a-b011-08cb1560d9cd', N'驾驶执照')
INSERT [Basic].[CredentialsType] ([UniqueID], [TypeName]) VALUES (N'0123744c-2efb-4bd4-b507-6ff5abc9225f', N'警官证')
INSERT [Basic].[CredentialsType] ([UniqueID], [TypeName]) VALUES (N'18404ad6-b119-47d2-adda-814e1a5322c2', N'居民户口本')
INSERT [Basic].[CredentialsType] ([UniqueID], [TypeName]) VALUES (N'604d3aca-808e-45de-a7a7-6c8bf10ed9e7', N'居民身份证')
INSERT [Basic].[CredentialsType] ([UniqueID], [TypeName]) VALUES (N'42022481-2b6d-451e-ada4-5593a2332e49', N'军官证')
/****** 对象:  Table [Secure].[Staff]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Staff]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[Staff](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[LastName] [nvarchar](64) COLLATE Chinese_PRC_CI_AS NULL,
	[FirstName] [nvarchar](64) COLLATE Chinese_PRC_CI_AS NULL,
	[OrganizationID] [uniqueidentifier] NOT NULL,
	[Gender] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[BirthDate] [datetime] NULL,
	[BirthPlaceID] [uniqueidentifier] NULL,
	[ResidenceAddress] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[CredentialsTypeID] [uniqueidentifier] NULL,
	[CredentialsNO] [varchar](128) COLLATE Chinese_PRC_CI_AS NULL,
	[PositionID] [uniqueidentifier] NOT NULL,
	[OfficePhoneNO] [varchar](16) COLLATE Chinese_PRC_CI_AS NULL,
	[MobileNO] [varchar](16) COLLATE Chinese_PRC_CI_AS NULL,
	[EmailAddress] [varchar](512) COLLATE Chinese_PRC_CI_AS NULL,
	[InductionDate] [datetime] NOT NULL,
	[IsProbationary] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ProbationLength] [int] NOT NULL,
	[AutoRegularized] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Staff]') AND name = N'IXFK_Staff_CredentialsType')
CREATE NONCLUSTERED INDEX [IXFK_Staff_CredentialsType] ON [Secure].[Staff] 
(
	[CredentialsTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Staff]') AND name = N'IXFK_Staff_GlobalRegion')
CREATE NONCLUSTERED INDEX [IXFK_Staff_GlobalRegion] ON [Secure].[Staff] 
(
	[BirthPlaceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Staff]') AND name = N'IXFK_Staff_OrganizationObject')
CREATE NONCLUSTERED INDEX [IXFK_Staff_OrganizationObject] ON [Secure].[Staff] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Staff]') AND name = N'IXFK_Staff_OrganizationObject_02')
CREATE NONCLUSTERED INDEX [IXFK_Staff_OrganizationObject_02] ON [Secure].[Staff] 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Staff]') AND name = N'IXFK_Staff_OrganizationObject_03')
CREATE NONCLUSTERED INDEX [IXFK_Staff_OrganizationObject_03] ON [Secure].[Staff] 
(
	[PositionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Secure].[Organization]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Organization]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[Organization](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[PrincipalStaffID] [uniqueidentifier] NULL,
	[PrincipalPositionID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Organization]') AND name = N'IXFK_Organization_OrganizationObject')
CREATE NONCLUSTERED INDEX [IXFK_Organization_OrganizationObject] ON [Secure].[Organization] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Organization]') AND name = N'IXFK_Organization_OrganizationObject_02')
CREATE NONCLUSTERED INDEX [IXFK_Organization_OrganizationObject_02] ON [Secure].[Organization] 
(
	[PrincipalStaffID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Organization]') AND name = N'IXFK_Organization_OrganizationObject_03')
CREATE NONCLUSTERED INDEX [IXFK_Organization_OrganizationObject_03] ON [Secure].[Organization] 
(
	[PrincipalPositionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
INSERT [Secure].[Organization] ([UniqueID], [PrincipalStaffID], [PrincipalPositionID]) VALUES (N'ed4577d4-e74c-4632-8c70-6524673ff94e', NULL, NULL)
INSERT [Secure].[Organization] ([UniqueID], [PrincipalStaffID], [PrincipalPositionID]) VALUES (N'44086f54-0380-456f-a809-8eff695afc26', NULL, NULL)
INSERT [Secure].[Organization] ([UniqueID], [PrincipalStaffID], [PrincipalPositionID]) VALUES (N'1d7e4d65-1774-4c6c-a156-ddaf225f48ca', NULL, NULL)
/****** 对象:  Table [Secure].[PositionRelation]    脚本日期: 08/26/2014 17:57:42 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[PositionRelation]') AND name = N'IXFK_PositionRelation_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_PositionRelation_ObjectBase] ON [Secure].[PositionRelation] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[PositionRelation]') AND name = N'IXFK_PositionRelation_OrganizationObject')
CREATE NONCLUSTERED INDEX [IXFK_PositionRelation_OrganizationObject] ON [Secure].[PositionRelation] 
(
	[SuperiorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[PositionRelation]') AND name = N'IXFK_PositionRelation_OrganizationObject_02')
CREATE NONCLUSTERED INDEX [IXFK_PositionRelation_OrganizationObject_02] ON [Secure].[PositionRelation] 
(
	[CurrentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Secure].[Position]    脚本日期: 08/26/2014 17:57:42 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Position]') AND name = N'IXFK_Position_OrganizationObject')
CREATE NONCLUSTERED INDEX [IXFK_Position_OrganizationObject] ON [Secure].[Position] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Position]') AND name = N'IXFK_Position_OrganizationObject_02')
CREATE NONCLUSTERED INDEX [IXFK_Position_OrganizationObject_02] ON [Secure].[Position] 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Secure].[ParttimeRelation]    脚本日期: 08/26/2014 17:57:42 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]') AND name = N'IXFK_ParttimeRelation_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_ParttimeRelation_ObjectBase] ON [Secure].[ParttimeRelation] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]') AND name = N'IXFK_ParttimeRelation_OrganizationObject')
CREATE NONCLUSTERED INDEX [IXFK_ParttimeRelation_OrganizationObject] ON [Secure].[ParttimeRelation] 
(
	[StaffID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]') AND name = N'IXFK_ParttimeRelation_OrganizationObject_02')
CREATE NONCLUSTERED INDEX [IXFK_ParttimeRelation_OrganizationObject_02] ON [Secure].[ParttimeRelation] 
(
	[PositionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Secure].[BaseLogTrace]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[BaseLogTrace](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[MethodName] [varchar](512) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[TypeName] [varchar](max) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Version] [varchar](36) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CallAccountID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_BaseLog] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]') AND name = N'IXFK_BaseLogTrace_Account')
CREATE NONCLUSTERED INDEX [IXFK_BaseLogTrace_Account] ON [Secure].[BaseLogTrace] 
(
	[CallAccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]') AND name = N'IXFK_BaseLogTrace_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_BaseLogTrace_ObjectBase] ON [Secure].[BaseLogTrace] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'dfb46f20-602a-408c-a104-001925c1b524', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'10dcd7db-a591-47c9-9323-0087e66cc2ac', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'12eaf588-03f3-46ff-b672-03e31dc9938d', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'9ddfc914-3cd3-4e8b-ac21-08ddaa86f8d2', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'a6437305-b9aa-45a3-9e9a-0cf380504f5d', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'8be92157-d8b1-4584-829c-0d213e8ed895', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'94ad5843-0e85-4aae-9c22-0d2c5269e920', N'Create', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'2c48cf87-5ac2-4b16-9851-1091d6013846', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'bf3ab2fd-19d3-43ae-bf87-12470ab69aa1', N'Create', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'13467114-f91b-4846-8f05-131d786a19e5', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'9d3cbefe-3ffe-4839-a5bf-16b9d752521b', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'b9b18bb9-8be4-46e0-80d3-1768c9e1864e', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'980638ec-d932-4634-a56c-19bb484ece46', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'c0bfcb11-091e-486e-8f0c-19ef7984449e', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'94af40e5-c060-44a9-a4d4-1b7011d9fcbc', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'f776ce4f-4112-4445-96bd-1d9c706dcfcc', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'7a1a1967-de27-4d6c-8af6-2166d0209432', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'bb83823c-a18a-4a21-88db-22eb9e20f11f', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'ccc2ca80-cf0a-4f4c-81b0-23cb3cae7d6b', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'79244096-a00d-4e7e-b90b-248775eec951', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'9e6e1d4a-bd50-4441-a448-25a583488a40', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'f9261b17-16d0-4d54-a5ce-25ac48502d3c', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'4dc3b9de-f597-463c-acea-2c299b841110', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'a8802fa4-ba50-47ac-b565-2c5b47979de7', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'199ab831-6323-454a-8695-2f2a2db26766', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'e4163090-1783-4037-b4d7-2fea4815352c', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'32658cab-7b16-4528-a887-30ff2f7b4489', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'bd1d55d9-948a-4f54-9007-324a3b41d336', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'cc114e47-5b29-4ce7-ab86-3a70fcb5ee0c', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'b14a15b1-8343-49f5-84f8-3bd37a93478c', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'c2f75e43-e4ed-4acc-9c39-3e2322050b6a', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'b181857f-3af2-46be-b14e-3e904fa2ae6d', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'53bfa0ee-5bce-4f17-93c7-3eaee2f50548', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'a41db1be-e892-4f6b-9932-3f597285a942', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'0a37d323-84f7-4c84-8eac-40678e6ac5ef', N'Create', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'27b6f677-1e22-4342-9e0a-40df67d97d18', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'a3df9da0-b1b6-49bd-8a29-4130416fd601', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'86b19bf4-25ab-4ee9-9cee-417d373684ac', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'1189d758-ee5b-4a41-9dd8-41f728bc281b', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'e1b651bd-167d-4987-b8bf-44155039e904', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'01e7d153-ac2c-457e-8467-46e7dc1ed2a1', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'09d1c8ab-ad9d-4908-b6d2-47f66739d05d', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'07878a8a-99f2-4fd5-85c1-49587d7926a7', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'20cf7ef8-3942-4fbf-bb22-49624aca7994', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'b26bab5b-34ee-42fd-a8d7-49ec2c6393f2', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'928804fc-3d01-41b3-a6c7-4a15aa12d7ef', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'c8417f28-a8d6-4020-8f61-4aed76b6709e', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'0079ca70-c15a-4699-8da2-4e00118f0d9a', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'de8f10af-1d2e-46d0-ade1-50651b83f5a4', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'f7a6590f-232b-4ccc-92a3-50bde43b4d16', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'afc6ebca-5623-4ae0-afac-52849bd772f0', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'9516d29b-920b-45ed-b71e-54b2348ba16e', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'4c6ecc11-6cf9-49db-a012-554a45d3569f', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'05ea4c2f-6251-418e-a9dc-5621f5472573', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'85c61c3e-182e-415b-bb8f-56447ceabf63', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'c3e382b5-c8a7-4e3c-9105-5700ede2ad8b', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'4d0c4d7b-d4bc-4a40-953a-5ab9db62b8af', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'6135fb18-6174-4261-9b89-5c2fc20f8035', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'96ba5cd4-2383-4407-9a9c-5ca0376d3329', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'91c0aa23-b2a3-4b71-a2a0-64787d55c798', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'8c422333-e81b-43a9-9268-6a2a7c30b737', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'4eb07f2e-960a-4b79-9f53-6a6dc1f64942', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'4ad30a07-b130-4c8f-96f0-6c5bbd59cfb7', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'cf2e8822-50bd-4af8-a2b1-6d9fd6652405', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'52e3890c-9923-49fd-a543-6ddd2ec7e26d', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'0811340d-7279-4bf0-a4e7-6ed4a9717fa2', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'1666f2b3-b2da-4446-8489-70b38e73caf1', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'716edff6-9c58-41ac-a9b8-769b4169b320', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'479d7af2-3076-4e16-9217-7aa5f5bd7429', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'e815b841-0724-4528-b88f-7b0f88e124f3', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'a542eab4-7aaa-4e49-a5db-7cb467ed68a8', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'c26fcd59-6514-47ff-aded-7f6f73b45dde', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'5d2b5528-0952-4cbf-b724-7f8c66940875', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'0d2a7520-54eb-4436-b2f8-810f11e5cabf', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'adcaada3-4938-4536-9efd-8318d60a4555', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'07c9bda6-9308-4fb7-ae35-849f9f03cde9', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'07c5f76f-12ab-45f6-9914-84cf49410ffa', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'0f32eab0-23a0-454d-b380-8bc3bc5ba067', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'8a18a450-b97f-45b2-a6e2-8c8833c8bc7a', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'cc3f1a76-d0a3-41d2-91df-8f17ac44d7d4', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'2504aa74-f268-4261-9495-90a905dc467d', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'd0b6d60a-85db-4f6f-a5c1-934b6f7682ee', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'53b50ae0-0f9d-4da9-b857-98b44e09ed6e', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'bf9052af-bde8-46ea-a663-98bdf160614a', N'Authenticate', N'SignIn', N'1', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'd7cd80f0-fc7a-4eb0-a870-9a85b160dc1b', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'54c16d18-997c-4a11-8420-9c8149bbab8c', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'5cabbe08-9440-461d-b833-9d140a67d89d', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'c1d82df8-d15b-414f-a315-a141822c215a', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'8e929455-5943-43ba-bf6a-a54377e48b94', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'5c991459-9b75-4a97-b199-a56189c81e01', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'9b91eced-ccaa-4bfb-9310-a7d69bd4075d', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'81468ee3-517f-4fb7-becf-a7df40dc7e56', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'fb508bac-de0e-49c1-9455-a85543bbd3d6', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'd7d1bf97-7906-48c1-a37b-a9ef871bfb36', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'20919cb5-b4c4-4060-8d5c-b36a112cce66', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'468b3957-c18e-41cb-8811-b597ef339218', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'723ebacd-0e2b-4ff2-93b6-b7f332017d82', N'Create', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'b48b209a-7667-4581-be9e-bec0f7bc3a5d', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'9b50afdd-57cf-47c0-b9b8-c002a0f47b7f', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'eba80855-939d-4cc2-b388-c01b41ebcd1c', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'b695a675-4ffa-4115-ab1e-c3eb699725f2', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
GO
print 'Processed 100 total records'
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'60b3d909-1bbf-45c3-9c1f-c466677a230e', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'82006566-459f-4891-b5dd-c5d67b1a1e4b', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'4e0ff5e4-575a-4711-8c8f-c5fd9f82dca7', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'79ea78a2-abce-4ae7-a243-c6b0f29dbcd7', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'34ae8d1e-c696-4114-bf14-c70caa7a974f', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'5d7fe9d5-d328-45c0-9a6f-c89ab48c7ff9', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'3a141276-4509-493e-b19d-c93aec23471b', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'af345d4d-ffb0-4fd7-bc47-c9e549da6f2a', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'573a25a0-7609-4368-be70-cd24f2a8fa18', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'ae9a5ddd-ce7e-46af-a482-cebfb28900d1', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'6a4a2776-fd49-434a-9819-d381f9e3beb3', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'ce2ecaa7-655a-43be-9422-d40bc2886b16', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'09831471-d492-46b2-9723-d6d06cb58f1f', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'667bde75-4cdc-4bb9-9d56-d7ee5e6896ca', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'dcd77e11-820a-4ba9-8813-dbb06aee2ceb', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'460c7642-412a-4fbc-ade9-dc2fab76c6e2', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'2e155a26-bc1a-4db9-99ca-dc7084cce9cf', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'c809985e-d0c6-4fe9-916f-dd347ff71259', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'b1aa7d27-e0ea-4c49-a6ea-dfb2ddea8ed6', N'Update', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'495e4c6c-072f-447a-8be6-e1208502690b', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'8df59861-af9b-4371-8b8e-ea312e522b79', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'87d07b8d-fe8b-4267-a8e1-ed5cb9404659', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'd0312274-8c20-49ca-87c8-ed78b6a05631', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'915a38ee-11b7-4591-81dc-edb522155ea6', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'86778b5a-aebd-43f0-832a-f56d321f6117', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'bfce4dcc-3a87-4928-8552-f78c88de776c', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'377c0ab3-5c73-4640-a62a-fbd346b09a73', N'Authenticate', N'EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
INSERT [Secure].[BaseLogTrace] ([UniqueID], [MethodName], [TypeName], [Version], [CallAccountID]) VALUES (N'197db78d-ba53-471d-89ba-fec0436d2d50', N'GetSubs', N'EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler, EH.ManagementStudio.OperationModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e9b7b0f41e41db5c', N'1.0.0.0', N'0b15dad0-8591-4abb-bf00-e7efee08f0a9')
/****** 对象:  Table [Secure].[SignInLogTrace]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SignInLogTrace]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[SignInLogTrace](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[IOFlag] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_SignInLogTrace] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[SignInLogTrace]') AND name = N'IXFK_SignInLogTrace_BaseLogTrace')
CREATE NONCLUSTERED INDEX [IXFK_SignInLogTrace_BaseLogTrace] ON [Secure].[SignInLogTrace] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'10dcd7db-a591-47c9-9323-0087e66cc2ac', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'12eaf588-03f3-46ff-b672-03e31dc9938d', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'9ddfc914-3cd3-4e8b-ac21-08ddaa86f8d2', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'a6437305-b9aa-45a3-9e9a-0cf380504f5d', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'8be92157-d8b1-4584-829c-0d213e8ed895', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'9d3cbefe-3ffe-4839-a5bf-16b9d752521b', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'b9b18bb9-8be4-46e0-80d3-1768c9e1864e', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'980638ec-d932-4634-a56c-19bb484ece46', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'94af40e5-c060-44a9-a4d4-1b7011d9fcbc', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'ccc2ca80-cf0a-4f4c-81b0-23cb3cae7d6b', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'79244096-a00d-4e7e-b90b-248775eec951', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'9e6e1d4a-bd50-4441-a448-25a583488a40', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'f9261b17-16d0-4d54-a5ce-25ac48502d3c', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'e4163090-1783-4037-b4d7-2fea4815352c', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'32658cab-7b16-4528-a887-30ff2f7b4489', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'bd1d55d9-948a-4f54-9007-324a3b41d336', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'cc114e47-5b29-4ce7-ab86-3a70fcb5ee0c', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'b181857f-3af2-46be-b14e-3e904fa2ae6d', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'53bfa0ee-5bce-4f17-93c7-3eaee2f50548', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'a41db1be-e892-4f6b-9932-3f597285a942', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'27b6f677-1e22-4342-9e0a-40df67d97d18', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'1189d758-ee5b-4a41-9dd8-41f728bc281b', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'e1b651bd-167d-4987-b8bf-44155039e904', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'01e7d153-ac2c-457e-8467-46e7dc1ed2a1', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'09d1c8ab-ad9d-4908-b6d2-47f66739d05d', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'07878a8a-99f2-4fd5-85c1-49587d7926a7', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'20cf7ef8-3942-4fbf-bb22-49624aca7994', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'b26bab5b-34ee-42fd-a8d7-49ec2c6393f2', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'928804fc-3d01-41b3-a6c7-4a15aa12d7ef', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'c8417f28-a8d6-4020-8f61-4aed76b6709e', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'0079ca70-c15a-4699-8da2-4e00118f0d9a', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'de8f10af-1d2e-46d0-ade1-50651b83f5a4', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'f7a6590f-232b-4ccc-92a3-50bde43b4d16', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'afc6ebca-5623-4ae0-afac-52849bd772f0', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'4c6ecc11-6cf9-49db-a012-554a45d3569f', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'85c61c3e-182e-415b-bb8f-56447ceabf63', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'c3e382b5-c8a7-4e3c-9105-5700ede2ad8b', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'6135fb18-6174-4261-9b89-5c2fc20f8035', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'96ba5cd4-2383-4407-9a9c-5ca0376d3329', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'91c0aa23-b2a3-4b71-a2a0-64787d55c798', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'4eb07f2e-960a-4b79-9f53-6a6dc1f64942', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'4ad30a07-b130-4c8f-96f0-6c5bbd59cfb7', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'52e3890c-9923-49fd-a543-6ddd2ec7e26d', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'716edff6-9c58-41ac-a9b8-769b4169b320', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'e815b841-0724-4528-b88f-7b0f88e124f3', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'a542eab4-7aaa-4e49-a5db-7cb467ed68a8', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'c26fcd59-6514-47ff-aded-7f6f73b45dde', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'5d2b5528-0952-4cbf-b724-7f8c66940875', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'0d2a7520-54eb-4436-b2f8-810f11e5cabf', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'adcaada3-4938-4536-9efd-8318d60a4555', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'07c9bda6-9308-4fb7-ae35-849f9f03cde9', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'07c5f76f-12ab-45f6-9914-84cf49410ffa', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'8a18a450-b97f-45b2-a6e2-8c8833c8bc7a', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'd0b6d60a-85db-4f6f-a5c1-934b6f7682ee', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'bf9052af-bde8-46ea-a663-98bdf160614a', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'5cabbe08-9440-461d-b833-9d140a67d89d', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'c1d82df8-d15b-414f-a315-a141822c215a', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'8e929455-5943-43ba-bf6a-a54377e48b94', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'5c991459-9b75-4a97-b199-a56189c81e01', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'd7d1bf97-7906-48c1-a37b-a9ef871bfb36', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'b48b209a-7667-4581-be9e-bec0f7bc3a5d', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'9b50afdd-57cf-47c0-b9b8-c002a0f47b7f', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'b695a675-4ffa-4115-ab1e-c3eb699725f2', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'60b3d909-1bbf-45c3-9c1f-c466677a230e', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'4e0ff5e4-575a-4711-8c8f-c5fd9f82dca7', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'34ae8d1e-c696-4114-bf14-c70caa7a974f', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'3a141276-4509-493e-b19d-c93aec23471b', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'6a4a2776-fd49-434a-9819-d381f9e3beb3', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'ce2ecaa7-655a-43be-9422-d40bc2886b16', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'09831471-d492-46b2-9723-d6d06cb58f1f', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'460c7642-412a-4fbc-ade9-dc2fab76c6e2', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'2e155a26-bc1a-4db9-99ca-dc7084cce9cf', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'c809985e-d0c6-4fe9-916f-dd347ff71259', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'495e4c6c-072f-447a-8be6-e1208502690b', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'8df59861-af9b-4371-8b8e-ea312e522b79', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'87d07b8d-fe8b-4267-a8e1-ed5cb9404659', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'915a38ee-11b7-4591-81dc-edb522155ea6', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'86778b5a-aebd-43f0-832a-f56d321f6117', N'I')
INSERT [Secure].[SignInLogTrace] ([UniqueID], [IOFlag]) VALUES (N'377c0ab3-5c73-4640-a62a-fbd346b09a73', N'I')
/****** 对象:  Table [Secure].[SqlLogTrace]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[SqlLogTrace]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[SqlLogTrace](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[Command] [varchar](max) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CommandType] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_SqlLogTrace] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[SqlLogTrace]') AND name = N'IXFK_SqlLogTrace_BaseLogTrace')
CREATE NONCLUSTERED INDEX [IXFK_SqlLogTrace_BaseLogTrace] ON [Secure].[SqlLogTrace] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Secure].[Administrator]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[Administrator]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[Administrator](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[IsDefault] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[WindowsIntergrated] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[Administrator]') AND name = N'IXFK_Administrator_Account')
CREATE NONCLUSTERED INDEX [IXFK_Administrator_Account] ON [Secure].[Administrator] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
INSERT [Secure].[Administrator] ([UniqueID], [IsDefault], [WindowsIntergrated]) VALUES (N'f6f43ff0-e172-4be5-a7d7-8fc0fc8aa7a2', N'Y', N'N')
INSERT [Secure].[Administrator] ([UniqueID], [IsDefault], [WindowsIntergrated]) VALUES (N'0b15dad0-8591-4abb-bf00-e7efee08f0a9', N'Y', N'Y')
/****** 对象:  Table [Secure].[PassExpirationPolicy]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Secure].[PassExpirationPolicy]') AND type in (N'U'))
BEGIN
CREATE TABLE [Secure].[PassExpirationPolicy](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ExpirationUnit] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ExpirationValue] [int] NOT NULL,
 CONSTRAINT [PK_PassExpirationPolicy] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[PassExpirationPolicy]') AND name = N'IXFK_PassExpirationPolicy_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_PassExpirationPolicy_ObjectBase] ON [Secure].[PassExpirationPolicy] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Secure].[AccountExpirationPolicy]    脚本日期: 08/26/2014 17:57:42 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[AccountExpirationPolicy]') AND name = N'IXFK_AccountExpirationPolicy_Account')
CREATE NONCLUSTERED INDEX [IXFK_AccountExpirationPolicy_Account] ON [Secure].[AccountExpirationPolicy] 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Secure].[AccountExpirationPolicy]') AND name = N'IXFK_AccountExpirationPolicy_PassExpirationPolicy')
CREATE NONCLUSTERED INDEX [IXFK_AccountExpirationPolicy_PassExpirationPolicy] ON [Secure].[AccountExpirationPolicy] 
(
	[PolicyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Basic].[HotfixRelease]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[HotfixRelease]') AND type in (N'U'))
BEGIN
CREATE TABLE [Basic].[HotfixRelease](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[CodeID] [uniqueidentifier] NOT NULL,
	[BlockID] [uniqueidentifier] NOT NULL,
	[Version] [varchar](16) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[FeatureSummary] [nvarchar](256) COLLATE Chinese_PRC_CI_AS NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[IsImportant] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_HotfixRelease] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[HotfixRelease]') AND name = N'IXFK_HotfixRelease_ApplicationBlock')
CREATE NONCLUSTERED INDEX [IXFK_HotfixRelease_ApplicationBlock] ON [Basic].[HotfixRelease] 
(
	[BlockID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[HotfixRelease]') AND name = N'IXFK_HotfixRelease_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_HotfixRelease_ObjectBase] ON [Basic].[HotfixRelease] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[HotfixRelease]') AND name = N'IXFK_HotfixRelease_PredefinedCode')
CREATE NONCLUSTERED INDEX [IXFK_HotfixRelease_PredefinedCode] ON [Basic].[HotfixRelease] 
(
	[CodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Basic].[FileObject]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[FileObject]') AND type in (N'U'))
BEGIN
CREATE TABLE [Basic].[FileObject](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[RawName] [nvarchar](512) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ExtensionName] [varchar](16) COLLATE Chinese_PRC_CI_AS NULL,
	[MimeType] [varchar](64) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[FileSize] [bigint] NOT NULL,
	[SaveToDB] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[SaveToDisk] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[PhysicalPath] [nvarchar](2048) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_FileObject] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[FileObject]') AND name = N'IXFK_FileObject_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_FileObject_ObjectBase] ON [Basic].[FileObject] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Basic].[FileMapRelation]    脚本日期: 08/26/2014 17:57:42 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[FileMapRelation]') AND name = N'IXFK_FileMapRelation_FileObject')
CREATE NONCLUSTERED INDEX [IXFK_FileMapRelation_FileObject] ON [Basic].[FileMapRelation] 
(
	[FileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[FileMapRelation]') AND name = N'IXFK_FileMapRelation_ObjectBase')
CREATE NONCLUSTERED INDEX [IXFK_FileMapRelation_ObjectBase] ON [Basic].[FileMapRelation] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  Table [Basic].[FileStream]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Basic].[FileStream]') AND type in (N'U'))
BEGIN
CREATE TABLE [Basic].[FileStream](
	[UniqueID] [uniqueidentifier] NOT NULL,
	[Stream] [varbinary](max) NULL,
 CONSTRAINT [PK_FileStream] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Basic].[FileStream]') AND name = N'IXFK_FileStream_FileObject')
CREATE NONCLUSTERED INDEX [IXFK_FileStream_FileObject] ON [Basic].[FileStream] 
(
	[UniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
/****** 对象:  View [Secure].[OrganizationObjectCollection]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[OrganizationObjectCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有组织机构对象（基本信息）
*/

CREATE View [Secure].[OrganizationObjectCollection]
As
	Select
			Org.UniqueID As ''OrganizationObjectUniqueID'',
			Org.ObjectName As ''OrganizationDisplayName'',
			Org.ParentObjectID As ''ParentOrganizationObjectID'',
			Org.Category As ''OrganizationCategory'',
			Org.SortID As ''OrganizationSortID'',
			Org.VirtualName As ''OrganizationVirtualName'',
			Obj.ObjectID As ''OrganizationObjectID'',
			Obj.IsRemoved As ''OrganizationWasRemoved'',
			Obj.Enabled As ''OrganizationEnabledState'',
			Obj.Visible As ''OrganizationVisibleState'',
			Obj.OpenID As ''OrganizationOpenID'',
			Obj.IsCreatedTime As ''OrganizationCreatedTime'',
			Obj.LastModifiedTime As ''OrganizationModifiedTime'',
			Obj.Comments
		From Secure.OrganizationObject Org
		Left Join Basic.ObjectBase Obj On Org.UniqueID = Obj.ObjectID'
GO
/****** 对象:  UserDefinedFunction [Fn].[GetOrgObjectVirtualPath]    脚本日期: 08/26/2014 17:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[GetOrgObjectVirtualPath]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'/*
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

		Set @vPath = @vName + ''/'' + @vPath

		Set @uniqueID = @parentID
	End
	
	Return @vPath
End
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[UpgradeOrganizationBase]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[UpgradeOrganizationBase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
	更新组织机构对象的基本信息
*/

CREATE Procedure [Sp].[UpgradeOrganizationBase]
	@uniqueID As Uniqueidentifier,
	@name As Nvarchar(512),
	@enabled As Char(1) = ''Y'',
	@removed As Char(1) = ''N''
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
		RaisError(''When we try to update basic information of the organization object, and throws an exception!'', 16, 1)
	End Catch
End
' 
END
GO
/****** 对象:  UserDefinedFunction [Fn].[BuiltOrgObjectVirtualName]    脚本日期: 08/26/2014 17:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[BuiltOrgObjectVirtualName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'/*
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
	Set @prefix = Fn.PadLeft(Cast(@count + 1 As Varchar(Max)), 3, ''0'')

	Return @prefix + ''_'' + @name
End
' 
END
GO
/****** 对象:  View [Secure].[AdministratorCollection]    脚本日期: 08/26/2014 17:57:46 ******/
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
/****** 对象:  View [Secure].[AccountCollection]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[AccountCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有账户的视图。
*/

Create View [Secure].[AccountCollection]
As
	Select
			Accounts.UniqueID As ''AccountUniqueID'',
			Accounts.UserID As ''UserName'',
			Obj.ObjectID As ''AccountObjectID'',
			Obj.IsRemoved As ''AccountRemovedState'',
			Obj.Enabled As ''AccountEnabledState'',
			Obj.Visible As ''AccountVisibleState'',
			Obj.OpenID As ''AccountOpenID'',
			Obj.IsCreatedTime As ''AccountWasCreatedTime'',
			Obj.LastModifiedTime As ''AccountLastUpdateTime'',
			Obj.Comments As ''AccountComments''
		From Secure.Account Accounts
		Left Join Basic.ObjectBase Obj On Obj.ObjectID = Accounts.UniqueID'
GO
/****** 对象:  UserDefinedFunction [Fn].[GetAccountUniqueID]    脚本日期: 08/26/2014 17:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[GetAccountUniqueID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'/*
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
' 
END
GO
/****** 对象:  UserDefinedFunction [Fn].[GetDateTimeString]    脚本日期: 08/26/2014 17:57:44 ******/
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
/****** 对象:  UserDefinedFunction [Fn].[GetPredefinedCodeUniqueID]    脚本日期: 08/26/2014 17:57:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[GetPredefinedCodeUniqueID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'/*
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
' 
END
GO
/****** 对象:  View [Basic].[GlobalRegionCollection]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Basic].[GlobalRegionCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有区域信息。
*/

Create View [Basic].[GlobalRegionCollection]
As
	Select
			R.UniqueID As ''RegionUniqueID'',
			R.RegionName,
			R.ParentRegionID As ''ParentRegionUniqueID'',
			Obj.OpenID As ''RegionOpenID''
		From Basic.GlobalRegion R
		Left Join Basic.ObjectBase Obj On Obj.ObjectID = R.UniqueID'
GO
/****** 对象:  View [Basic].[CredentialsTypeCollection]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Basic].[CredentialsTypeCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有的证件类型
*/

CREATE View [Basic].[CredentialsTypeCollection]
As
	Select
			CT.UniqueID As ''CredentialsTypeUniqueID'',
			CT.TypeName As ''CredentialsTypeDisplayName'',
			Obj.OpenID As ''CredentialsTypeOpenID''
		From Basic.CredentialsType CT
		Left Join Basic.ObjectBase Obj On CT.UniqueID = Obj.ObjectID'
GO
/****** 对象:  View [Basic].[ApplicationBlockCollection]    脚本日期: 08/26/2014 17:57:46 ******/
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
/****** 对象:  UserDefinedFunction [Fn].[TransferUniqueID]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[TransferUniqueID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'/*
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
' 
END
GO
/****** 对象:  UserDefinedFunction [Fn].[CetRegionDisplayName]    脚本日期: 08/26/2014 17:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Fn].[CetRegionDisplayName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'/*
	根据ID获取区域全名。
*/

Create Function [Fn].[CetRegionDisplayName](
	@uniqueID As Uniqueidentifier
)
Returns NVarchar(Max)
As
Begin
	Declare @displayName As NVarchar(Max); Set @displayName = '''';

	Declare @parentID As Uniqueidentifier; Set @parentID = NULL
	
	Declare @name As Nvarchar(256)

	Select @name = RegionName, @parentID = ParentRegionID From Basic.GlobalRegion Where UniqueID = @uniqueID

	Set @displayName = @name

	Set @uniqueID = @parentID

	While (@uniqueID Is Not NULL) Begin
		Select @name = RegionName, @parentID = ParentRegionID From Basic.GlobalRegion Where UniqueID = @uniqueID
		Set @uniqueID = @parentID
		Set @displayName = @name + ''/'' + @displayName
	End
	Return @displayName
End
' 
END
GO
/****** 对象:  View [Secure].[StaffCollection]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[StaffCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有的用户。
*/

CREATE View [Secure].[StaffCollection]
As
	Select
			S.UniqueID As ''StaffUniqueID'',
			S.LastName As ''StaffLastName'',
			S.FirstName As ''StaffFirstName'',
			S.OrganizationID As ''StaffOwnedOrganizationID'',
			S.Gender As ''StaffGender'',
			S.BirthDate As ''StaffBirthDay'',
			S.BirthPlaceID As ''StaffBirthPlaceRegionID'',
			R.RegionName As ''StaffBirthPlaceRegionName'',
			Fn.CetRegionDisplayName(S.BirthPlaceID) As ''StaffBirthPlaceRegionFullName'',
			S.ResidenceAddress As ''StaffResidenceAddress'',
			S.CredentialsTypeID As ''StaffCredentialsType'',
			CT.CredentialsTypeDisplayName As ''StaffCredentialsTypeName'',
			CT.CredentialsTypeOpenID As ''StaffCredentialsTypeOpenID'',
			S.CredentialsNO As ''StaffCredentialsNO'',
			S.PositionID As ''StaffPosition'',
			S.OfficePhoneNO As ''StaffOfficePhone'',
			S.MobileNO As ''StaffMobile'',
			S.EmailAddress As ''StaffEmail'',
			S.InductionDate As ''StaffInductionDate'',
			S.IsProbationary As ''StaffProbationaryState'',
			S.ProbationLength As ''StaffProbationLength'',
			S.AutoRegularized As ''StaffAutoRegularized'',
			Fn.GetOrgObjectVirtualPath(S.UniqueID) As ''OrganizationVirtualPath'',
			Org.*
		From Secure.Staff S
		Left Join Basic.GlobalRegionCollection R On R.RegionUniqueID = S.BirthPlaceID
		Left Join Basic.CredentialsTypeCollection CT On CT.CredentialsTypeUniqueID = S.CredentialsTypeID
		Left Join Secure.OrganizationObjectCollection Org On S.UniqueID = Org.OrganizationObjectUniqueID'
GO
/****** 对象:  View [Secure].[SigninTokenCollection]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[SigninTokenCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有的登录令牌信息。
*/

Create View [Secure].[SigninTokenCollection]
As
	Select
			Token.UniqueID As ''TokenID'',
			Token.ActionID As ''SigninActionID'',
			Token.[Token] As ''TokenExpression'',
			Token.ExpiredTime As ''TokenAbsoluteExpiration'',
			Act.UniqueID As ''SigninActionUniqueID'',
			Act.ClientIP As ''ClientIPAddress'',
			Act.HostName As ''ClientHostName'',
			Act.[Platform] As ''PlatformID'',
			Act.AccountID As ''SigninAccountID'',
			Accounts.*,
			Obj.ObjectID As ''TokenObjectID'',
			Obj.OpenID As ''TokenOpenID''
		From Secure.SignInToken Token
		Left Join Secure.SignInAction Act On Token.ActionID = Act.UniqueID
		Left Join Secure.AccountCollection Accounts On Act.AccountID = Accounts.AccountUniqueID
		Left Join Basic.ObjectBase Obj On Obj.ObjectID = Token.UniqueID'
GO
/****** 对象:  View [Secure].[PositionCollection]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[PositionCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有的职位信息。
*/

CREATE View [Secure].[PositionCollection]
As
	Select
			P.UniqueID As ''PositionUniqueID'',
			P.OrganizationID As ''AssociatedOrganizationUniqueID'',
			Fn.GetOrgObjectVirtualPath(P.UniqueID) As ''OrganizationVirtualPath'',
			Org.*
		From Secure.Position P
		Left Join Secure.OrganizationObjectCollection Org On Org.OrganizationObjectUniqueID = P.UniqueID'
GO
/****** 对象:  StoredProcedure [Sp].[UpgradeOrganization]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[UpgradeOrganization]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
	更新组织机构信息
*/

CREATE Procedure [Sp].[UpgradeOrganization]
	@openID As Varchar(256),
	@name As Nvarchar(512),
	@enabled As Char(1) = ''Y'',
	@remove As Char(1) = ''N'',
	@isVirtual As Char(1) = ''N''
As
Begin
	Declare @uniqueID As Uniqueidentifier; Set @uniqueID = Fn.TransferUniqueID(@openID)

	Begin Tran ModifyOrgTrans
	Begin Try
		Update Secure.OrganizationObject Set
				Category = (Case When Upper(@isVirtual) = ''Y'' Then 2 Else 1 End)
			Where
				UniqueID = @uniqueID

		Exec Sp.UpgradeOrganizationBase @uniqueID, @name, @enabled, @remove

		Commit Tran ModifyOrgTrans
	End Try
	Begin Catch
		Rollback Tran ModifyOrgTrans
	End Catch
End
' 
END
GO
/****** 对象:  View [Secure].[OrganizationCollection]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[OrganizationCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有的组织机构。
*/

CREATE View [Secure].[OrganizationCollection]
As
	Select
			O.UniqueID As ''OrganizationUniqueID'',
			O.PrincipalStaffID As ''OrganizationPrincipalSID'',
			O.PrincipalPositionID As ''OrganizationPrincipalPID'',
			Fn.GetOrgObjectVirtualPath(O.UniqueID) As ''OrganizationVirtualPath'',
			Org.*
		From Secure.Organization O
		Left Join Secure.OrganizationObjectCollection Org On Org.OrganizationObjectUniqueID = O.UniqueID'
GO
/****** 对象:  View [Basic].[PredefinedCodeCollection]    脚本日期: 08/26/2014 17:57:46 ******/
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
/****** 对象:  UserDefinedFunction [Fn].[GetHashPassword]    脚本日期: 08/26/2014 17:57:44 ******/
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
/****** 对象:  UserDefinedFunction [Fn].[CreateOpenID]    脚本日期: 08/26/2014 17:57:43 ******/
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
/****** 对象:  View [Basic].[ApplicationBlockEnabledCollection]    脚本日期: 08/26/2014 17:57:46 ******/
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
/****** 对象:  View [Secure].[AdministratorEnabledCollection]    脚本日期: 08/26/2014 17:57:46 ******/
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
/****** 对象:  View [Secure].[AccountEnabledCollection]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[AccountEnabledCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有的可用的账户信息。
*/

Create View [Secure].[AccountEnabledCollection]
As
	Select * From Secure.AccountCollection
		Where
			Upper(AccountRemovedState) = ''N''
			And
			Upper(AccountEnabledState) = ''Y'''
GO
/****** 对象:  StoredProcedure [Sp].[GetSubOrganizationObjects]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[GetSubOrganizationObjects]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
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
			Upper(OrganizationWasRemoved) = ''N''
		Order By
			OrganizationVirtualName Asc,
			OrganizationCreatedTime Desc
End
' 
END
GO
/****** 对象:  View [Secure].[StaffAccountCollection]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[Secure].[StaffAccountCollection]'))
EXEC dbo.sp_executesql @statement = N'/*
	获取所有的人员账户。
*/

Create View [Secure].[StaffAccountCollection]
As
	Select
			SC.UniqueID As ''StaffAccountUniqueID'',
			SC.StaffID As ''AssociatedStaffUniqueID'',
			SC.IsLocked As ''AccountLockState'',
			Codes.PredefinedCode,
			SC.LockedTime As ''AccountWasLockedTime'',
			SC.UnlockTime As ''AccountUnlockedTime'',
			A.UniqueID As ''AccountUniqueID'',
			A.UserID As ''UserName'',
			A.Passphrase As ''Password'',
			A.EmptyPass As ''AllowEmptyPassword'',
			Obj.ObjectID As ''StaffAccountObjectID'',
			U.*
		From Secure.StaffAccount SC
		Left Join Basic.PredefinedCodeCollection Codes On Codes.PredefinedCodeUniqueID = SC.LockReason
		Left Join Secure.Account A On A.UniqueID = SC.UniqueID
		Left Join Basic.ObjectBase Obj On Obj.ObjectID = SC.UniqueID
		Left Join Secure.StaffCollection U On U.StaffUniqueID = SC.StaffID'
GO
/****** 对象:  StoredProcedure [Sp].[CreateSignInToken]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateSignInToken]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
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
	If @clientIP Is Null Or @clientIP = '''' Begin
		Set @clientIP = ''127.0.0.1''
	End

	If @hostName Is Null Or @hostName = '''' Begin
		Set @hostName = @clientIP
	End

	Declare @tokenID As Uniqueidentifier; Set @tokenID = Newid()
	
	Declare @openID As Varchar(256); Set @openID = Fn.CreateOpenID(@tokenID)

	Begin Tran CreateTokenTrans
	Begin Try
		Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@tokenID, @openID)

		Set @token = ''{'' + @clientIP + ''};{'' + @hostName + ''};{'' + Cast(@actionID As Varchar(36)) + ''};{'' + Cast(@tokenID As Varchar(36)) + ''};{'' + @openID + ''}''
		
		Declare @expiredTime As Varchar(64); Set @expiredTime = Fn.GetDateTimeString(@expired)

		Set @token = sys.fn_varbintohexstr(EncryptByPassPhrase(Cast(@tokenID As Varchar(36)), @token))

		Insert Into Secure.SignInToken Values (@tokenID, @actionID, @token, @expired)

		Commit Tran CreateTokenTrans
	End Try
	Begin Catch
		Rollback Tran CreateTokenTrans
	End Catch
End
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[CreateSigninLogEvent]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateSigninLogEvent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
创建登录、登出日志。
*/

CREATE Procedure [Sp].[CreateSigninLogEvent]
	@methodName As Varchar(512),
	@typeName As Varchar(Max),
	@version As Varchar(36),
	@userID As Varchar(512),
	@io As Char(1) = ''I''
As
Begin
	Begin Tran CreateLogTrans
	Begin Try
		Declare @uniqueID As Uniqueidentifier; Set @uniqueID = Newid();Select @uniqueID

		Declare @openID As Varchar(256); Set @openID = Fn.CreateOpenID(@uniqueID)

		Declare @accountID As Uniqueidentifier; Set @accountID = Fn.GetAccountUniqueID(@userID)

		Insert Into Basic.ObjectBase (ObjectID, OpenID, Comments) Values (@uniqueID, @openID, Case When @io = ''I'' Then ''User Sign-In Log'' Else ''User Sign-Out Log'' End)

		Insert Into Secure.BaseLogTrace Values (@uniqueID, @methodName, @typeName, @version, @accountID)

		Insert Into Secure.SignInLogTrace Values (@uniqueID, @io)

		Commit Tran CreateLogTrans
	End Try
	Begin Catch
		Rollback Tran CreateLogTrans
	End Catch
End
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[CreateSignInAction]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateSignInAction]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
	创建一个登录动作。
*/

CREATE Procedure [Sp].[CreateSignInAction]
	@clientIP As Varchar(64) = NULL,
	@hostName As Varchar(64) = NULL,
	@platform As Int = 1,
	@succeedTag As Char(1) = ''N'',
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
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[CreateOrganizationObject]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateOrganizationObject]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
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
		RaisError(''Create an organization object error!'', 16, 1)
	End Catch
End
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[CreateUserOperateBehavior]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateUserOperateBehavior]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
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

		Insert Into Basic.ObjectBase (ObjectID, OpenID, Comments) Values (@uniqueID, @openID, ''User operation behavior trace!'')

		Insert Into Secure.BaseLogTrace Values (@uniqueID, @methodName, @typeName, @version, @userID)

		Commit Tran TraceOperateTrans
	End Try
	Begin Catch
		Rollback Tran TraceOperateTrans
	End Catch
End
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[CreateSystemCode]    脚本日期: 08/26/2014 17:57:46 ******/
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
/****** 对象:  StoredProcedure [Sp].[InitializeCredentialsTypes]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[InitializeCredentialsTypes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
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
	Insert Into Basic.CredentialsType Values (@uniqueID, ''居民身份证'')

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, ''护照'')

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, ''港澳通行证'')

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, ''驾驶执照'')

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, ''居民户口本'')

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, ''军官证'')

	Set @uniqueID = Newid()
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.CredentialsType Values (@uniqueID, ''警官证'')
End
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[InitializeRegions]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[InitializeRegions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
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
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''中华人民共和国'', NULL)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''北京市'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''天津市'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''上海市'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''重庆市'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''黑龙江省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''吉林省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''辽宁省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''江苏省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''山东省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''安徽省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''河北省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''河南省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''湖北省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''湖南省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''江西省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''山西省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''陕西省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''四川省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''青海省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''海南省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''广东省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''贵州省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''浙江省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''福建省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''台湾省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''甘肃省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''云南省'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''内蒙古自治区'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''新疆维吾尔族自治区'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''宁夏回族自治区'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''广西壮族自治区'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''西藏自治区'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''香港特别行政区'', @rootID)

	Set @uniqueID = Newid(); 
	Set @openID = Fn.CreateOpenID(@uniqueID)
	Insert Into Basic.ObjectBase (ObjectID, OpenID) Values (@uniqueID, @openID)
	Insert Into Basic.GlobalRegion Values (@uniqueID, ''澳门特别行政区'', @rootID)
End
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[CreateApplicationBlock]    脚本日期: 08/26/2014 17:57:46 ******/
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
/****** 对象:  StoredProcedure [Sp].[CreateAdministrator]    脚本日期: 08/26/2014 17:57:46 ******/
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
/****** 对象:  View [Basic].[ApplicationBlockVisibleCollection]    脚本日期: 08/26/2014 17:57:46 ******/
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
/****** 对象:  View [Secure].[AdministratorVisibleCollection]    脚本日期: 08/26/2014 17:57:46 ******/
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
/****** 对象:  StoredProcedure [Sp].[GetAccountUseIdentityToken]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[GetAccountUseIdentityToken]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
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
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[CreateOrganization]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[CreateOrganization]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
	创建组织机构。
*/

CREATE Procedure [Sp].[CreateOrganization]
	@name As NVarchar(512),
	@parentID As Uniqueidentifier = NULL,
	@isVirtual As Char(1) = ''N''
As
Begin
	Begin Tran CreateOrganizationTrans
	Begin Try
		Declare @uniqueID As Uniqueidentifier

		Declare @category As Int; Set @category = (Case When @isVirtual = ''Y'' Then 2 Else 1 End)

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
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[InitializeApplicationBlocks]    脚本日期: 08/26/2014 17:57:46 ******/
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
/****** 对象:  StoredProcedure [Sp].[ExecuteWinNTAuthentication]    脚本日期: 08/26/2014 17:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sp].[ExecuteWinNTAuthentication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
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
			''declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:EnterpriseServices/eh:SqlServerDatabase/eh:VariableDeclarations/eh:StoredProcedure[@Name="Sp.ExecuteWinNTAuthentication"]/eh:Parameter[@Name="xData"]/eh:Client/@IPAddress)[1]
			'',
			''Varchar(64)''
		)

	Declare @hostName As Varchar(64)
	Set @hostName = @xData.value(
			''declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:EnterpriseServices/eh:SqlServerDatabase/eh:VariableDeclarations/eh:StoredProcedure[@Name="Sp.ExecuteWinNTAuthentication"]/eh:Parameter[@Name="xData"]/eh:Client/@HostName)[1]
			'',
			''Varchar(64)''
		)

	Declare @userID As Varchar(512)
	Set @userID = @xData.value(
			''declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:EnterpriseServices/eh:SqlServerDatabase/eh:VariableDeclarations/eh:StoredProcedure[@Name="Sp.ExecuteWinNTAuthentication"]/eh:Parameter[@Name="xData"]/eh:UserID/@Value)[1]
			'',
			''Varchar(512)''
		)

	Declare @expiration As DateTime
	Set @expiration = @xData.value(
			''declare namespace eh="urn:Masterduner@Yeah.net";
			(eh:EnterpriseServices/eh:SqlServerDatabase/eh:VariableDeclarations/eh:StoredProcedure[@Name="Sp.ExecuteWinNTAuthentication"]/eh:Parameter[@Name="xData"]/eh:Expiration/@Value)[1]
			'',
			''DateTime''
		)

	Declare @exists As Int;
	Set @exists = (
			Select Count(Admins.AdministratorID) From Secure.AdministratorCollection Admins
				Where 
					Upper(Admins.AdministratorAccount) = Upper(@userID)
					And
					Upper(Admins.NTAdministrator) = ''Y''
		)
	If (@exists Is Null) Or (@exists = 0) Begin
		Set @state = ''ERROR::00000008''
		
		Exec Sp.CreateSignInAction @clientIP = @clientIP, @hostName = @hostName, @platform = 1, @succeedTag = ''N'', @code = @state, @userName = @userID
	End
	Else Begin
		Declare @enabled As Int;
		Set @enabled = (
				Select Count(Admins.AdministratorID) From Secure.AdministratorEnabledCollection Admins
					Where
						Upper(Admins.AdministratorAccount) = Upper(@userID)
						And
						Upper(Admins.NTAdministrator) = ''Y''
			)
		If (@enabled Is Null) Or (@enabled = 0) Begin
			Set @state = ''ERROR::00000007''
			
			Exec Sp.CreateSignInAction @clientIP = @clientIP, @hostName = @hostName, @platform = 1, @succeedTag = ''N'', @code = @state, @userName = @userID
		End
		Else Begin
			Declare @actionID As Uniqueidentifier

			Exec Sp.CreateSignInAction @clientIP = @clientIP, @hostName = @hostName, @platform = 1, @succeedTag = ''Y'', @code = ''0'', @userName = @userID, @actionID = @actionID Output

			Exec Sp.CreateSignInToken @clientIP = @clientIP, @hostName = @hostName, @actionID = @actionID, @expired = @expiration, @token = @token Output
		End
	End
End
' 
END
GO
/****** 对象:  StoredProcedure [Sp].[InitializeCodes]    脚本日期: 08/26/2014 17:57:46 ******/
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
/****** 对象:  StoredProcedure [Sp].[ResetDatabase]    脚本日期: 08/26/2014 17:57:46 ******/
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

	Exec Sp.InitializeRegions

	Exec Sp.InitializeCredentialsTypes
End
' 
END
GO
/****** 对象:  Default [DF__Applicati__Block__5070F446]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__Applicati__Block__5070F446]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
Begin
ALTER TABLE [Basic].[ApplicationBlock] ADD  CONSTRAINT [DF__Applicati__Block__5070F446]  DEFAULT ('基础数据模块') FOR [BlockName]

End
GO
/****** 对象:  Default [DF__Applicati__Paren__5165187F]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__Applicati__Paren__5165187F]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
Begin
ALTER TABLE [Basic].[ApplicationBlock] ADD  CONSTRAINT [DF__Applicati__Paren__5165187F]  DEFAULT (NULL) FOR [ParentBlockID]

End
GO
/****** 对象:  Default [DF__Applicatio__Code__52593CB8]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__Applicatio__Code__52593CB8]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
Begin
ALTER TABLE [Basic].[ApplicationBlock] ADD  CONSTRAINT [DF__Applicatio__Code__52593CB8]  DEFAULT ('BASIC') FOR [Code]

End
GO
/****** 对象:  Default [DF__Applicati__XExpa__534D60F1]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__Applicati__XExpa__534D60F1]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
Begin
ALTER TABLE [Basic].[ApplicationBlock] ADD  CONSTRAINT [DF__Applicati__XExpa__534D60F1]  DEFAULT (NULL) FOR [XExpando]

End
GO
/****** 对象:  Default [DF__FileObjec__Exten__48CFD27E]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__FileObjec__Exten__48CFD27E]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
Begin
ALTER TABLE [Basic].[FileObject] ADD  CONSTRAINT [DF__FileObjec__Exten__48CFD27E]  DEFAULT (NULL) FOR [ExtensionName]

End
GO
/****** 对象:  Default [DF__FileObjec__FileS__49C3F6B7]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__FileObjec__FileS__49C3F6B7]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
Begin
ALTER TABLE [Basic].[FileObject] ADD  CONSTRAINT [DF__FileObjec__FileS__49C3F6B7]  DEFAULT ((0)) FOR [FileSize]

End
GO
/****** 对象:  Default [DF__FileObjec__SaveT__4AB81AF0]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__FileObjec__SaveT__4AB81AF0]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
Begin
ALTER TABLE [Basic].[FileObject] ADD  CONSTRAINT [DF__FileObjec__SaveT__4AB81AF0]  DEFAULT ('N') FOR [SaveToDB]

End
GO
/****** 对象:  Default [DF__FileObjec__SaveT__4BAC3F29]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__FileObjec__SaveT__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
Begin
ALTER TABLE [Basic].[FileObject] ADD  CONSTRAINT [DF__FileObjec__SaveT__4BAC3F29]  DEFAULT ('Y') FOR [SaveToDisk]

End
GO
/****** 对象:  Default [DF__FileObjec__Physi__4CA06362]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__FileObjec__Physi__4CA06362]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
Begin
ALTER TABLE [Basic].[FileObject] ADD  CONSTRAINT [DF__FileObjec__Physi__4CA06362]  DEFAULT (NULL) FOR [PhysicalPath]

End
GO
/****** 对象:  Default [DF__FileStrea__Strea__46E78A0C]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__FileStrea__Strea__46E78A0C]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileStream]'))
Begin
ALTER TABLE [Basic].[FileStream] ADD  CONSTRAINT [DF__FileStrea__Strea__46E78A0C]  DEFAULT (NULL) FOR [Stream]

End
GO
/****** 对象:  Default [DF__GlobalReg__Regio__440B1D61]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__GlobalReg__Regio__440B1D61]') AND parent_object_id = OBJECT_ID(N'[Basic].[GlobalRegion]'))
Begin
ALTER TABLE [Basic].[GlobalRegion] ADD  CONSTRAINT [DF__GlobalReg__Regio__440B1D61]  DEFAULT ('中华人民共和国') FOR [RegionName]

End
GO
/****** 对象:  Default [DF__GlobalReg__Paren__44FF419A]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__GlobalReg__Paren__44FF419A]') AND parent_object_id = OBJECT_ID(N'[Basic].[GlobalRegion]'))
Begin
ALTER TABLE [Basic].[GlobalRegion] ADD  CONSTRAINT [DF__GlobalReg__Paren__44FF419A]  DEFAULT (NULL) FOR [ParentRegionID]

End
GO
/****** 对象:  Default [DF__HotfixRel__Versi__403A8C7D]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__HotfixRel__Versi__403A8C7D]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
Begin
ALTER TABLE [Basic].[HotfixRelease] ADD  CONSTRAINT [DF__HotfixRel__Versi__403A8C7D]  DEFAULT ('1.0') FOR [Version]

End
GO
/****** 对象:  Default [DF__HotfixRel__Featu__412EB0B6]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__HotfixRel__Featu__412EB0B6]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
Begin
ALTER TABLE [Basic].[HotfixRelease] ADD  CONSTRAINT [DF__HotfixRel__Featu__412EB0B6]  DEFAULT (NULL) FOR [FeatureSummary]

End
GO
/****** 对象:  Default [DF__HotfixRel__IsImp__4222D4EF]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__HotfixRel__IsImp__4222D4EF]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
Begin
ALTER TABLE [Basic].[HotfixRelease] ADD  CONSTRAINT [DF__HotfixRel__IsImp__4222D4EF]  DEFAULT ('Y') FOR [IsImportant]

End
GO
/****** 对象:  Default [DF__ObjectBas__Objec__37A5467C]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__Objec__37A5467C]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] ADD  CONSTRAINT [DF__ObjectBas__Objec__37A5467C]  DEFAULT (newid()) FOR [ObjectID]

End
GO
/****** 对象:  Default [DF__ObjectBas__IsRem__38996AB5]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__IsRem__38996AB5]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] ADD  CONSTRAINT [DF__ObjectBas__IsRem__38996AB5]  DEFAULT ('N') FOR [IsRemoved]

End
GO
/****** 对象:  Default [DF__ObjectBas__Enabl__398D8EEE]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__Enabl__398D8EEE]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] ADD  CONSTRAINT [DF__ObjectBas__Enabl__398D8EEE]  DEFAULT ('Y') FOR [Enabled]

End
GO
/****** 对象:  Default [DF__ObjectBas__Visib__3A81B327]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__Visib__3A81B327]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] ADD  CONSTRAINT [DF__ObjectBas__Visib__3A81B327]  DEFAULT ('Y') FOR [Visible]

End
GO
/****** 对象:  Default [DF__ObjectBas__IsCre__3B75D760]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__IsCre__3B75D760]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] ADD  CONSTRAINT [DF__ObjectBas__IsCre__3B75D760]  DEFAULT (getdate()) FOR [IsCreatedTime]

End
GO
/****** 对象:  Default [DF__ObjectBas__LastM__3C69FB99]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__LastM__3C69FB99]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] ADD  CONSTRAINT [DF__ObjectBas__LastM__3C69FB99]  DEFAULT (NULL) FOR [LastModifiedTime]

End
GO
/****** 对象:  Default [DF__ObjectBas__IsMod__3D5E1FD2]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__IsMod__3D5E1FD2]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] ADD  CONSTRAINT [DF__ObjectBas__IsMod__3D5E1FD2]  DEFAULT ((0)) FOR [IsModifiedTimes]

End
GO
/****** 对象:  Default [DF__ObjectBas__Comme__3E52440B]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__ObjectBas__Comme__3E52440B]') AND parent_object_id = OBJECT_ID(N'[Basic].[ObjectBase]'))
Begin
ALTER TABLE [Basic].[ObjectBase] ADD  CONSTRAINT [DF__ObjectBas__Comme__3E52440B]  DEFAULT (NULL) FOR [Comments]

End
GO
/****** 对象:  Default [DF__Predefined__Code__35BCFE0A]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Basic].[DF__Predefined__Code__35BCFE0A]') AND parent_object_id = OBJECT_ID(N'[Basic].[PredefinedCode]'))
Begin
ALTER TABLE [Basic].[PredefinedCode] ADD  CONSTRAINT [DF__Predefined__Code__35BCFE0A]  DEFAULT ('ERROR_00000001') FOR [Code]

End
GO
/****** 对象:  Default [DF__Account__UserID__31EC6D26]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Account__UserID__31EC6D26]') AND parent_object_id = OBJECT_ID(N'[Secure].[Account]'))
Begin
ALTER TABLE [Secure].[Account] ADD  CONSTRAINT [DF__Account__UserID__31EC6D26]  DEFAULT ('Administrator') FOR [UserID]

End
GO
/****** 对象:  Default [DF__Account__Passphr__32E0915F]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Account__Passphr__32E0915F]') AND parent_object_id = OBJECT_ID(N'[Secure].[Account]'))
Begin
ALTER TABLE [Secure].[Account] ADD  CONSTRAINT [DF__Account__Passphr__32E0915F]  DEFAULT (NULL) FOR [Passphrase]

End
GO
/****** 对象:  Default [DF__Account__EmptyPa__33D4B598]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Account__EmptyPa__33D4B598]') AND parent_object_id = OBJECT_ID(N'[Secure].[Account]'))
Begin
ALTER TABLE [Secure].[Account] ADD  CONSTRAINT [DF__Account__EmptyPa__33D4B598]  DEFAULT ('N') FOR [EmptyPass]

End
GO
/****** 对象:  Default [DF__Administr__IsDef__2F10007B]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Administr__IsDef__2F10007B]') AND parent_object_id = OBJECT_ID(N'[Secure].[Administrator]'))
Begin
ALTER TABLE [Secure].[Administrator] ADD  CONSTRAINT [DF__Administr__IsDef__2F10007B]  DEFAULT ('N') FOR [IsDefault]

End
GO
/****** 对象:  Default [DF__Administr__Windo__300424B4]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Administr__Windo__300424B4]') AND parent_object_id = OBJECT_ID(N'[Secure].[Administrator]'))
Begin
ALTER TABLE [Secure].[Administrator] ADD  CONSTRAINT [DF__Administr__Windo__300424B4]  DEFAULT ('Y') FOR [WindowsIntergrated]

End
GO
/****** 对象:  Default [DF__BaseLogTr__Metho__2C3393D0]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__BaseLogTr__Metho__2C3393D0]') AND parent_object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]'))
Begin
ALTER TABLE [Secure].[BaseLogTrace] ADD  CONSTRAINT [DF__BaseLogTr__Metho__2C3393D0]  DEFAULT ('ctor') FOR [MethodName]

End
GO
/****** 对象:  Default [DF__BaseLogTr__Versi__2D27B809]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__BaseLogTr__Versi__2D27B809]') AND parent_object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]'))
Begin
ALTER TABLE [Secure].[BaseLogTrace] ADD  CONSTRAINT [DF__BaseLogTr__Versi__2D27B809]  DEFAULT ('1.0') FOR [Version]

End
GO
/****** 对象:  Default [DF__Organizat__Princ__29572725]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Organizat__Princ__29572725]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
Begin
ALTER TABLE [Secure].[Organization] ADD  CONSTRAINT [DF__Organizat__Princ__29572725]  DEFAULT (NULL) FOR [PrincipalStaffID]

End
GO
/****** 对象:  Default [DF__Organizat__Princ__2A4B4B5E]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Organizat__Princ__2A4B4B5E]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
Begin
ALTER TABLE [Secure].[Organization] ADD  CONSTRAINT [DF__Organizat__Princ__2A4B4B5E]  DEFAULT (NULL) FOR [PrincipalPositionID]

End
GO
/****** 对象:  Default [DF__Organizat__Paren__25869641]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Organizat__Paren__25869641]') AND parent_object_id = OBJECT_ID(N'[Secure].[OrganizationObject]'))
Begin
ALTER TABLE [Secure].[OrganizationObject] ADD  CONSTRAINT [DF__Organizat__Paren__25869641]  DEFAULT (NULL) FOR [ParentObjectID]

End
GO
/****** 对象:  Default [DF__Organizat__Categ__267ABA7A]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Organizat__Categ__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[Secure].[OrganizationObject]'))
Begin
ALTER TABLE [Secure].[OrganizationObject] ADD  CONSTRAINT [DF__Organizat__Categ__267ABA7A]  DEFAULT ((1)) FOR [Category]

End
GO
/****** 对象:  Default [DF__Organizat__SortI__276EDEB3]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Organizat__SortI__276EDEB3]') AND parent_object_id = OBJECT_ID(N'[Secure].[OrganizationObject]'))
Begin
ALTER TABLE [Secure].[OrganizationObject] ADD  CONSTRAINT [DF__Organizat__SortI__276EDEB3]  DEFAULT ((0)) FOR [SortID]

End
GO
/****** 对象:  Default [DF__PassExpir__Expir__489AC854]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__PassExpir__Expir__489AC854]') AND parent_object_id = OBJECT_ID(N'[Secure].[PassExpirationPolicy]'))
Begin
ALTER TABLE [Secure].[PassExpirationPolicy] ADD  CONSTRAINT [DF__PassExpir__Expir__489AC854]  DEFAULT ('D') FOR [ExpirationUnit]

End
GO
/****** 对象:  Default [DF__PassExpir__Expir__498EEC8D]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__PassExpir__Expir__498EEC8D]') AND parent_object_id = OBJECT_ID(N'[Secure].[PassExpirationPolicy]'))
Begin
ALTER TABLE [Secure].[PassExpirationPolicy] ADD  CONSTRAINT [DF__PassExpir__Expir__498EEC8D]  DEFAULT ((90)) FOR [ExpirationValue]

End
GO
/****** 对象:  Default [DF__SignInAct__Clien__1A14E395]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__Clien__1A14E395]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] ADD  CONSTRAINT [DF__SignInAct__Clien__1A14E395]  DEFAULT (NULL) FOR [ClientIP]

End
GO
/****** 对象:  Default [DF__SignInAct__HostN__1B0907CE]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__HostN__1B0907CE]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] ADD  CONSTRAINT [DF__SignInAct__HostN__1B0907CE]  DEFAULT (NULL) FOR [HostName]

End
GO
/****** 对象:  Default [DF__SignInAct__Platf__1BFD2C07]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__Platf__1BFD2C07]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] ADD  CONSTRAINT [DF__SignInAct__Platf__1BFD2C07]  DEFAULT ((1)) FOR [Platform]

End
GO
/****** 对象:  Default [DF__SignInAct__IsSuc__1CF15040]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__IsSuc__1CF15040]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] ADD  CONSTRAINT [DF__SignInAct__IsSuc__1CF15040]  DEFAULT ('Y') FOR [IsSucceed]

End
GO
/****** 对象:  Default [DF__SignInAct__Faile__1DE57479]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__Faile__1DE57479]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] ADD  CONSTRAINT [DF__SignInAct__Faile__1DE57479]  DEFAULT (NULL) FOR [FailedReasonCodeID]

End
GO
/****** 对象:  Default [DF__SignInAct__Accou__1ED998B2]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__Accou__1ED998B2]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] ADD  CONSTRAINT [DF__SignInAct__Accou__1ED998B2]  DEFAULT (NULL) FOR [AccountID]

End
GO
/****** 对象:  Default [DF__SignInAct__Unkno__1FCDBCEB]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInAct__Unkno__1FCDBCEB]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
Begin
ALTER TABLE [Secure].[SignInAction] ADD  CONSTRAINT [DF__SignInAct__Unkno__1FCDBCEB]  DEFAULT (NULL) FOR [UnknownUserID]

End
GO
/****** 对象:  Default [DF__SignInLog__IOFla__182C9B23]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInLog__IOFla__182C9B23]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInLogTrace]'))
Begin
ALTER TABLE [Secure].[SignInLogTrace] ADD  CONSTRAINT [DF__SignInLog__IOFla__182C9B23]  DEFAULT ('I') FOR [IOFlag]

End
GO
/****** 对象:  Default [DF__SignInTok__Expir__164452B1]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SignInTok__Expir__164452B1]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInToken]'))
Begin
ALTER TABLE [Secure].[SignInToken] ADD  CONSTRAINT [DF__SignInTok__Expir__164452B1]  DEFAULT (getdate()) FOR [ExpiredTime]

End
GO
/****** 对象:  Default [DF__SqlLogTra__Comma__145C0A3F]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__SqlLogTra__Comma__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[Secure].[SqlLogTrace]'))
Begin
ALTER TABLE [Secure].[SqlLogTrace] ADD  CONSTRAINT [DF__SqlLogTra__Comma__145C0A3F]  DEFAULT ('T') FOR [CommandType]

End
GO
/****** 对象:  Default [DF__Staff__LastName__07020F21]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__LastName__07020F21]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__LastName__07020F21]  DEFAULT (NULL) FOR [LastName]

End
GO
/****** 对象:  Default [DF__Staff__FirstName__07F6335A]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__FirstName__07F6335A]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__FirstName__07F6335A]  DEFAULT (NULL) FOR [FirstName]

End
GO
/****** 对象:  Default [DF__Staff__Gender__08EA5793]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__Gender__08EA5793]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__Gender__08EA5793]  DEFAULT ('M') FOR [Gender]

End
GO
/****** 对象:  Default [DF__Staff__BirthDate__09DE7BCC]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__BirthDate__09DE7BCC]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__BirthDate__09DE7BCC]  DEFAULT (NULL) FOR [BirthDate]

End
GO
/****** 对象:  Default [DF__Staff__Residence__0AD2A005]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__Residence__0AD2A005]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__Residence__0AD2A005]  DEFAULT (NULL) FOR [ResidenceAddress]

End
GO
/****** 对象:  Default [DF__Staff__Credentia__0BC6C43E]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__Credentia__0BC6C43E]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__Credentia__0BC6C43E]  DEFAULT (NULL) FOR [CredentialsNO]

End
GO
/****** 对象:  Default [DF__Staff__OfficePho__0CBAE877]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__OfficePho__0CBAE877]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__OfficePho__0CBAE877]  DEFAULT (NULL) FOR [OfficePhoneNO]

End
GO
/****** 对象:  Default [DF__Staff__MobileNO__0DAF0CB0]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__MobileNO__0DAF0CB0]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__MobileNO__0DAF0CB0]  DEFAULT (NULL) FOR [MobileNO]

End
GO
/****** 对象:  Default [DF__Staff__EmailAddr__0EA330E9]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__EmailAddr__0EA330E9]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__EmailAddr__0EA330E9]  DEFAULT (NULL) FOR [EmailAddress]

End
GO
/****** 对象:  Default [DF__Staff__Induction__0F975522]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__Induction__0F975522]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__Induction__0F975522]  DEFAULT (getdate()) FOR [InductionDate]

End
GO
/****** 对象:  Default [DF__Staff__IsProbati__108B795B]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__IsProbati__108B795B]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__IsProbati__108B795B]  DEFAULT ('N') FOR [IsProbationary]

End
GO
/****** 对象:  Default [DF__Staff__Probation__117F9D94]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__Probation__117F9D94]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__Probation__117F9D94]  DEFAULT ((3)) FOR [ProbationLength]

End
GO
/****** 对象:  Default [DF__Staff__AutoRegul__1273C1CD]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Staff__AutoRegul__1273C1CD]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
Begin
ALTER TABLE [Secure].[Staff] ADD  CONSTRAINT [DF__Staff__AutoRegul__1273C1CD]  DEFAULT ('Y') FOR [AutoRegularized]

End
GO
/****** 对象:  Default [DF__StaffAcco__IsLoc__03317E3D]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__StaffAcco__IsLoc__03317E3D]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
Begin
ALTER TABLE [Secure].[StaffAccount] ADD  CONSTRAINT [DF__StaffAcco__IsLoc__03317E3D]  DEFAULT ('N') FOR [IsLocked]

End
GO
/****** 对象:  Default [DF__StaffAcco__Locke__0425A276]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__StaffAcco__Locke__0425A276]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
Begin
ALTER TABLE [Secure].[StaffAccount] ADD  CONSTRAINT [DF__StaffAcco__Locke__0425A276]  DEFAULT (NULL) FOR [LockedTime]

End
GO
/****** 对象:  Default [DF__StaffAcco__Unloc__0519C6AF]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__StaffAcco__Unloc__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
Begin
ALTER TABLE [Secure].[StaffAccount] ADD  CONSTRAINT [DF__StaffAcco__Unloc__0519C6AF]  DEFAULT (NULL) FOR [UnlockTime]

End
GO
/****** 对象:  Default [DF__Subsystem__Inher__00551192]    脚本日期: 08/26/2014 17:57:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[Secure].[DF__Subsystem__Inher__00551192]') AND parent_object_id = OBJECT_ID(N'[Secure].[Subsystem]'))
Begin
ALTER TABLE [Secure].[Subsystem] ADD  CONSTRAINT [DF__Subsystem__Inher__00551192]  DEFAULT ('Y') FOR [InheritFromParent]

End
GO
/****** 对象:  ForeignKey [FK_ApplicationBlock_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_ApplicationBlock_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
ALTER TABLE [Basic].[ApplicationBlock]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationBlock_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[ApplicationBlock] CHECK CONSTRAINT [FK_ApplicationBlock_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_ApplicationBlock_ObjectBase_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_ApplicationBlock_ObjectBase_02]') AND parent_object_id = OBJECT_ID(N'[Basic].[ApplicationBlock]'))
ALTER TABLE [Basic].[ApplicationBlock]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationBlock_ObjectBase_02] FOREIGN KEY([ParentBlockID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[ApplicationBlock] CHECK CONSTRAINT [FK_ApplicationBlock_ObjectBase_02]
GO
/****** 对象:  ForeignKey [FK_CredentialsType_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_CredentialsType_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[CredentialsType]'))
ALTER TABLE [Basic].[CredentialsType]  WITH NOCHECK ADD  CONSTRAINT [FK_CredentialsType_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[CredentialsType] CHECK CONSTRAINT [FK_CredentialsType_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_FileMapRelation_FileObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_FileMapRelation_FileObject]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileMapRelation]'))
ALTER TABLE [Basic].[FileMapRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_FileMapRelation_FileObject] FOREIGN KEY([FileID])
REFERENCES [Basic].[FileObject] ([UniqueID])
GO
ALTER TABLE [Basic].[FileMapRelation] CHECK CONSTRAINT [FK_FileMapRelation_FileObject]
GO
/****** 对象:  ForeignKey [FK_FileMapRelation_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_FileMapRelation_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileMapRelation]'))
ALTER TABLE [Basic].[FileMapRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_FileMapRelation_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[FileMapRelation] CHECK CONSTRAINT [FK_FileMapRelation_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_FileObject_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_FileObject_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileObject]'))
ALTER TABLE [Basic].[FileObject]  WITH NOCHECK ADD  CONSTRAINT [FK_FileObject_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[FileObject] CHECK CONSTRAINT [FK_FileObject_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_FileStream_FileObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_FileStream_FileObject]') AND parent_object_id = OBJECT_ID(N'[Basic].[FileStream]'))
ALTER TABLE [Basic].[FileStream]  WITH NOCHECK ADD  CONSTRAINT [FK_FileStream_FileObject] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[FileObject] ([UniqueID])
GO
ALTER TABLE [Basic].[FileStream] CHECK CONSTRAINT [FK_FileStream_FileObject]
GO
/****** 对象:  ForeignKey [FK_GlobalRegion_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_GlobalRegion_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[GlobalRegion]'))
ALTER TABLE [Basic].[GlobalRegion]  WITH NOCHECK ADD  CONSTRAINT [FK_GlobalRegion_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[GlobalRegion] CHECK CONSTRAINT [FK_GlobalRegion_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_HotfixRelease_ApplicationBlock]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_HotfixRelease_ApplicationBlock]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
ALTER TABLE [Basic].[HotfixRelease]  WITH NOCHECK ADD  CONSTRAINT [FK_HotfixRelease_ApplicationBlock] FOREIGN KEY([BlockID])
REFERENCES [Basic].[ApplicationBlock] ([UniqueID])
GO
ALTER TABLE [Basic].[HotfixRelease] CHECK CONSTRAINT [FK_HotfixRelease_ApplicationBlock]
GO
/****** 对象:  ForeignKey [FK_HotfixRelease_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_HotfixRelease_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
ALTER TABLE [Basic].[HotfixRelease]  WITH NOCHECK ADD  CONSTRAINT [FK_HotfixRelease_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[HotfixRelease] CHECK CONSTRAINT [FK_HotfixRelease_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_HotfixRelease_PredefinedCode]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_HotfixRelease_PredefinedCode]') AND parent_object_id = OBJECT_ID(N'[Basic].[HotfixRelease]'))
ALTER TABLE [Basic].[HotfixRelease]  WITH NOCHECK ADD  CONSTRAINT [FK_HotfixRelease_PredefinedCode] FOREIGN KEY([CodeID])
REFERENCES [Basic].[PredefinedCode] ([UniqueID])
GO
ALTER TABLE [Basic].[HotfixRelease] CHECK CONSTRAINT [FK_HotfixRelease_PredefinedCode]
GO
/****** 对象:  ForeignKey [FK_PredefinedCode_ApplicationBlock]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_PredefinedCode_ApplicationBlock]') AND parent_object_id = OBJECT_ID(N'[Basic].[PredefinedCode]'))
ALTER TABLE [Basic].[PredefinedCode]  WITH NOCHECK ADD  CONSTRAINT [FK_PredefinedCode_ApplicationBlock] FOREIGN KEY([BlockID])
REFERENCES [Basic].[ApplicationBlock] ([UniqueID])
GO
ALTER TABLE [Basic].[PredefinedCode] CHECK CONSTRAINT [FK_PredefinedCode_ApplicationBlock]
GO
/****** 对象:  ForeignKey [FK_PredefinedCode_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_PredefinedCode_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Basic].[PredefinedCode]'))
ALTER TABLE [Basic].[PredefinedCode]  WITH NOCHECK ADD  CONSTRAINT [FK_PredefinedCode_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[PredefinedCode] CHECK CONSTRAINT [FK_PredefinedCode_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PredefinedCode_ObjectBase_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Basic].[FK_PredefinedCode_ObjectBase_02]') AND parent_object_id = OBJECT_ID(N'[Basic].[PredefinedCode]'))
ALTER TABLE [Basic].[PredefinedCode]  WITH NOCHECK ADD  CONSTRAINT [FK_PredefinedCode_ObjectBase_02] FOREIGN KEY([BlockID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Basic].[PredefinedCode] CHECK CONSTRAINT [FK_PredefinedCode_ObjectBase_02]
GO
/****** 对象:  ForeignKey [FK_Account_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Account_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Account]'))
ALTER TABLE [Secure].[Account]  WITH NOCHECK ADD  CONSTRAINT [FK_Account_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Account] CHECK CONSTRAINT [FK_Account_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_AccountExpirationPolicy_Account]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_AccountExpirationPolicy_Account]') AND parent_object_id = OBJECT_ID(N'[Secure].[AccountExpirationPolicy]'))
ALTER TABLE [Secure].[AccountExpirationPolicy]  WITH NOCHECK ADD  CONSTRAINT [FK_AccountExpirationPolicy_Account] FOREIGN KEY([AccountID])
REFERENCES [Secure].[Account] ([UniqueID])
GO
ALTER TABLE [Secure].[AccountExpirationPolicy] CHECK CONSTRAINT [FK_AccountExpirationPolicy_Account]
GO
/****** 对象:  ForeignKey [FK_AccountExpirationPolicy_PassExpirationPolicy]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_AccountExpirationPolicy_PassExpirationPolicy]') AND parent_object_id = OBJECT_ID(N'[Secure].[AccountExpirationPolicy]'))
ALTER TABLE [Secure].[AccountExpirationPolicy]  WITH NOCHECK ADD  CONSTRAINT [FK_AccountExpirationPolicy_PassExpirationPolicy] FOREIGN KEY([PolicyID])
REFERENCES [Secure].[PassExpirationPolicy] ([UniqueID])
GO
ALTER TABLE [Secure].[AccountExpirationPolicy] CHECK CONSTRAINT [FK_AccountExpirationPolicy_PassExpirationPolicy]
GO
/****** 对象:  ForeignKey [FK_Administrator_Account]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Administrator_Account]') AND parent_object_id = OBJECT_ID(N'[Secure].[Administrator]'))
ALTER TABLE [Secure].[Administrator]  WITH NOCHECK ADD  CONSTRAINT [FK_Administrator_Account] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[Account] ([UniqueID])
GO
ALTER TABLE [Secure].[Administrator] CHECK CONSTRAINT [FK_Administrator_Account]
GO
/****** 对象:  ForeignKey [FK_Administrator_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Administrator_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Administrator]'))
ALTER TABLE [Secure].[Administrator]  WITH NOCHECK ADD  CONSTRAINT [FK_Administrator_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Administrator] CHECK CONSTRAINT [FK_Administrator_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_BaseLogTrace_Account]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_BaseLogTrace_Account]') AND parent_object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]'))
ALTER TABLE [Secure].[BaseLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseLogTrace_Account] FOREIGN KEY([CallAccountID])
REFERENCES [Secure].[Account] ([UniqueID])
GO
ALTER TABLE [Secure].[BaseLogTrace] CHECK CONSTRAINT [FK_BaseLogTrace_Account]
GO
/****** 对象:  ForeignKey [FK_BaseLogTrace_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_BaseLogTrace_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[BaseLogTrace]'))
ALTER TABLE [Secure].[BaseLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseLogTrace_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[BaseLogTrace] CHECK CONSTRAINT [FK_BaseLogTrace_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Organization_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Organization_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
ALTER TABLE [Secure].[Organization]  WITH NOCHECK ADD  CONSTRAINT [FK_Organization_OrganizationObject] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Organization] CHECK CONSTRAINT [FK_Organization_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_Organization_OrganizationObject_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Organization_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
ALTER TABLE [Secure].[Organization]  WITH NOCHECK ADD  CONSTRAINT [FK_Organization_OrganizationObject_02] FOREIGN KEY([PrincipalStaffID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Organization] CHECK CONSTRAINT [FK_Organization_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_Organization_OrganizationObject_03]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Organization_OrganizationObject_03]') AND parent_object_id = OBJECT_ID(N'[Secure].[Organization]'))
ALTER TABLE [Secure].[Organization]  WITH NOCHECK ADD  CONSTRAINT [FK_Organization_OrganizationObject_03] FOREIGN KEY([PrincipalPositionID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Organization] CHECK CONSTRAINT [FK_Organization_OrganizationObject_03]
GO
/****** 对象:  ForeignKey [FK_OrganizationObject_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_OrganizationObject_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[OrganizationObject]'))
ALTER TABLE [Secure].[OrganizationObject]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationObject_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[OrganizationObject] CHECK CONSTRAINT [FK_OrganizationObject_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_ParttimeRelation_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_ParttimeRelation_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]'))
ALTER TABLE [Secure].[ParttimeRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_ParttimeRelation_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[ParttimeRelation] CHECK CONSTRAINT [FK_ParttimeRelation_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_ParttimeRelation_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_ParttimeRelation_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]'))
ALTER TABLE [Secure].[ParttimeRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_ParttimeRelation_OrganizationObject] FOREIGN KEY([StaffID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[ParttimeRelation] CHECK CONSTRAINT [FK_ParttimeRelation_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_ParttimeRelation_OrganizationObject_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_ParttimeRelation_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[ParttimeRelation]'))
ALTER TABLE [Secure].[ParttimeRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_ParttimeRelation_OrganizationObject_02] FOREIGN KEY([PositionID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[ParttimeRelation] CHECK CONSTRAINT [FK_ParttimeRelation_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_PassExpirationPolicy_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PassExpirationPolicy_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[PassExpirationPolicy]'))
ALTER TABLE [Secure].[PassExpirationPolicy]  WITH NOCHECK ADD  CONSTRAINT [FK_PassExpirationPolicy_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[PassExpirationPolicy] CHECK CONSTRAINT [FK_PassExpirationPolicy_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Permission_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Permission_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Permission]'))
ALTER TABLE [Secure].[Permission]  WITH NOCHECK ADD  CONSTRAINT [FK_Permission_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Permission] CHECK CONSTRAINT [FK_Permission_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Permission_Subsystem]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Permission_Subsystem]') AND parent_object_id = OBJECT_ID(N'[Secure].[Permission]'))
ALTER TABLE [Secure].[Permission]  WITH NOCHECK ADD  CONSTRAINT [FK_Permission_Subsystem] FOREIGN KEY([SysID])
REFERENCES [Secure].[Subsystem] ([UniqueID])
GO
ALTER TABLE [Secure].[Permission] CHECK CONSTRAINT [FK_Permission_Subsystem]
GO
/****** 对象:  ForeignKey [FK_PermissionOrgSetting_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionOrgSetting_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]'))
ALTER TABLE [Secure].[PermissionOrgSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionOrgSetting_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[PermissionOrgSetting] CHECK CONSTRAINT [FK_PermissionOrgSetting_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PermissionOrgSetting_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionOrgSetting_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]'))
ALTER TABLE [Secure].[PermissionOrgSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionOrgSetting_OrganizationObject] FOREIGN KEY([OrganizationID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[PermissionOrgSetting] CHECK CONSTRAINT [FK_PermissionOrgSetting_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_PermissionOrgSetting_Permission]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionOrgSetting_Permission]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionOrgSetting]'))
ALTER TABLE [Secure].[PermissionOrgSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionOrgSetting_Permission] FOREIGN KEY([PermissionID])
REFERENCES [Secure].[Permission] ([UniqueID])
GO
ALTER TABLE [Secure].[PermissionOrgSetting] CHECK CONSTRAINT [FK_PermissionOrgSetting_Permission]
GO
/****** 对象:  ForeignKey [FK_PermissionRoleSetting_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionRoleSetting_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]'))
ALTER TABLE [Secure].[PermissionRoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionRoleSetting_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[PermissionRoleSetting] CHECK CONSTRAINT [FK_PermissionRoleSetting_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PermissionRoleSetting_Permission]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionRoleSetting_Permission]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]'))
ALTER TABLE [Secure].[PermissionRoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionRoleSetting_Permission] FOREIGN KEY([PermissionID])
REFERENCES [Secure].[Permission] ([UniqueID])
GO
ALTER TABLE [Secure].[PermissionRoleSetting] CHECK CONSTRAINT [FK_PermissionRoleSetting_Permission]
GO
/****** 对象:  ForeignKey [FK_PermissionRoleSetting_Role]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PermissionRoleSetting_Role]') AND parent_object_id = OBJECT_ID(N'[Secure].[PermissionRoleSetting]'))
ALTER TABLE [Secure].[PermissionRoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionRoleSetting_Role] FOREIGN KEY([RoleID])
REFERENCES [Secure].[Role] ([UniqueID])
GO
ALTER TABLE [Secure].[PermissionRoleSetting] CHECK CONSTRAINT [FK_PermissionRoleSetting_Role]
GO
/****** 对象:  ForeignKey [FK_Position_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Position_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[Position]'))
ALTER TABLE [Secure].[Position]  WITH NOCHECK ADD  CONSTRAINT [FK_Position_OrganizationObject] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Position] CHECK CONSTRAINT [FK_Position_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_Position_OrganizationObject_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Position_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[Position]'))
ALTER TABLE [Secure].[Position]  WITH NOCHECK ADD  CONSTRAINT [FK_Position_OrganizationObject_02] FOREIGN KEY([OrganizationID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Position] CHECK CONSTRAINT [FK_Position_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_PositionRelation_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PositionRelation_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[PositionRelation]'))
ALTER TABLE [Secure].[PositionRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_PositionRelation_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[PositionRelation] CHECK CONSTRAINT [FK_PositionRelation_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_PositionRelation_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PositionRelation_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[PositionRelation]'))
ALTER TABLE [Secure].[PositionRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_PositionRelation_OrganizationObject] FOREIGN KEY([SuperiorID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[PositionRelation] CHECK CONSTRAINT [FK_PositionRelation_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_PositionRelation_OrganizationObject_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_PositionRelation_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[PositionRelation]'))
ALTER TABLE [Secure].[PositionRelation]  WITH NOCHECK ADD  CONSTRAINT [FK_PositionRelation_OrganizationObject_02] FOREIGN KEY([CurrentID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[PositionRelation] CHECK CONSTRAINT [FK_PositionRelation_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_Role_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Role_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Role]'))
ALTER TABLE [Secure].[Role]  WITH NOCHECK ADD  CONSTRAINT [FK_Role_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Role] CHECK CONSTRAINT [FK_Role_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Role_Subsystem]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Role_Subsystem]') AND parent_object_id = OBJECT_ID(N'[Secure].[Role]'))
ALTER TABLE [Secure].[Role]  WITH NOCHECK ADD  CONSTRAINT [FK_Role_Subsystem] FOREIGN KEY([SysID])
REFERENCES [Secure].[Subsystem] ([UniqueID])
GO
ALTER TABLE [Secure].[Role] CHECK CONSTRAINT [FK_Role_Subsystem]
GO
/****** 对象:  ForeignKey [FK_RoleSetting_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_RoleSetting_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[RoleSetting]'))
ALTER TABLE [Secure].[RoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleSetting_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[RoleSetting] CHECK CONSTRAINT [FK_RoleSetting_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_RoleSetting_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_RoleSetting_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[RoleSetting]'))
ALTER TABLE [Secure].[RoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleSetting_OrganizationObject] FOREIGN KEY([OrganizationID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[RoleSetting] CHECK CONSTRAINT [FK_RoleSetting_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_RoleSetting_Role]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_RoleSetting_Role]') AND parent_object_id = OBJECT_ID(N'[Secure].[RoleSetting]'))
ALTER TABLE [Secure].[RoleSetting]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleSetting_Role] FOREIGN KEY([RoleID])
REFERENCES [Secure].[Role] ([UniqueID])
GO
ALTER TABLE [Secure].[RoleSetting] CHECK CONSTRAINT [FK_RoleSetting_Role]
GO
/****** 对象:  ForeignKey [FK_SignInAction_Account]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInAction_Account]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
ALTER TABLE [Secure].[SignInAction]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInAction_Account] FOREIGN KEY([AccountID])
REFERENCES [Secure].[Account] ([UniqueID])
GO
ALTER TABLE [Secure].[SignInAction] CHECK CONSTRAINT [FK_SignInAction_Account]
GO
/****** 对象:  ForeignKey [FK_SignInAction_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInAction_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInAction]'))
ALTER TABLE [Secure].[SignInAction]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInAction_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[SignInAction] CHECK CONSTRAINT [FK_SignInAction_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_SignInLogTrace_BaseLogTrace]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInLogTrace_BaseLogTrace]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInLogTrace]'))
ALTER TABLE [Secure].[SignInLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInLogTrace_BaseLogTrace] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[BaseLogTrace] ([UniqueID])
GO
ALTER TABLE [Secure].[SignInLogTrace] CHECK CONSTRAINT [FK_SignInLogTrace_BaseLogTrace]
GO
/****** 对象:  ForeignKey [FK_SignInLogTrace_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInLogTrace_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInLogTrace]'))
ALTER TABLE [Secure].[SignInLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInLogTrace_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[SignInLogTrace] CHECK CONSTRAINT [FK_SignInLogTrace_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_SignInToken_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInToken_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInToken]'))
ALTER TABLE [Secure].[SignInToken]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInToken_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[SignInToken] CHECK CONSTRAINT [FK_SignInToken_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_SignInToken_SignInAction]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SignInToken_SignInAction]') AND parent_object_id = OBJECT_ID(N'[Secure].[SignInToken]'))
ALTER TABLE [Secure].[SignInToken]  WITH NOCHECK ADD  CONSTRAINT [FK_SignInToken_SignInAction] FOREIGN KEY([ActionID])
REFERENCES [Secure].[SignInAction] ([UniqueID])
GO
ALTER TABLE [Secure].[SignInToken] CHECK CONSTRAINT [FK_SignInToken_SignInAction]
GO
/****** 对象:  ForeignKey [FK_SqlLogTrace_BaseLogTrace]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SqlLogTrace_BaseLogTrace]') AND parent_object_id = OBJECT_ID(N'[Secure].[SqlLogTrace]'))
ALTER TABLE [Secure].[SqlLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_SqlLogTrace_BaseLogTrace] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[BaseLogTrace] ([UniqueID])
GO
ALTER TABLE [Secure].[SqlLogTrace] CHECK CONSTRAINT [FK_SqlLogTrace_BaseLogTrace]
GO
/****** 对象:  ForeignKey [FK_SqlLogTrace_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SqlLogTrace_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[SqlLogTrace]'))
ALTER TABLE [Secure].[SqlLogTrace]  WITH NOCHECK ADD  CONSTRAINT [FK_SqlLogTrace_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[SqlLogTrace] CHECK CONSTRAINT [FK_SqlLogTrace_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Staff_CredentialsType]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_CredentialsType]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_CredentialsType] FOREIGN KEY([CredentialsTypeID])
REFERENCES [Basic].[CredentialsType] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_CredentialsType]
GO
/****** 对象:  ForeignKey [FK_Staff_GlobalRegion]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_GlobalRegion]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_GlobalRegion] FOREIGN KEY([BirthPlaceID])
REFERENCES [Basic].[GlobalRegion] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_GlobalRegion]
GO
/****** 对象:  ForeignKey [FK_Staff_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_Staff_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_OrganizationObject] FOREIGN KEY([UniqueID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_Staff_OrganizationObject_02]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_OrganizationObject_02]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_OrganizationObject_02] FOREIGN KEY([OrganizationID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_OrganizationObject_02]
GO
/****** 对象:  ForeignKey [FK_Staff_OrganizationObject_03]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Staff_OrganizationObject_03]') AND parent_object_id = OBJECT_ID(N'[Secure].[Staff]'))
ALTER TABLE [Secure].[Staff]  WITH NOCHECK ADD  CONSTRAINT [FK_Staff_OrganizationObject_03] FOREIGN KEY([PositionID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[Staff] CHECK CONSTRAINT [FK_Staff_OrganizationObject_03]
GO
/****** 对象:  ForeignKey [FK_StaffAccount_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_StaffAccount_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
ALTER TABLE [Secure].[StaffAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_StaffAccount_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[StaffAccount] CHECK CONSTRAINT [FK_StaffAccount_ObjectBase]
GO
/****** 对象:  ForeignKey [FK_StaffAccount_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_StaffAccount_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
ALTER TABLE [Secure].[StaffAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_StaffAccount_OrganizationObject] FOREIGN KEY([StaffID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[StaffAccount] CHECK CONSTRAINT [FK_StaffAccount_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_StaffAccount_PredefinedCode]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_StaffAccount_PredefinedCode]') AND parent_object_id = OBJECT_ID(N'[Secure].[StaffAccount]'))
ALTER TABLE [Secure].[StaffAccount]  WITH NOCHECK ADD  CONSTRAINT [FK_StaffAccount_PredefinedCode] FOREIGN KEY([LockReason])
REFERENCES [Basic].[PredefinedCode] ([UniqueID])
GO
ALTER TABLE [Secure].[StaffAccount] CHECK CONSTRAINT [FK_StaffAccount_PredefinedCode]
GO
/****** 对象:  ForeignKey [FK_SubsysAdministrator_OrganizationObject]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SubsysAdministrator_OrganizationObject]') AND parent_object_id = OBJECT_ID(N'[Secure].[SubsysAdministrator]'))
ALTER TABLE [Secure].[SubsysAdministrator]  WITH NOCHECK ADD  CONSTRAINT [FK_SubsysAdministrator_OrganizationObject] FOREIGN KEY([StaffID])
REFERENCES [Secure].[OrganizationObject] ([UniqueID])
GO
ALTER TABLE [Secure].[SubsysAdministrator] CHECK CONSTRAINT [FK_SubsysAdministrator_OrganizationObject]
GO
/****** 对象:  ForeignKey [FK_SubsysAdministrator_Subsystem]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_SubsysAdministrator_Subsystem]') AND parent_object_id = OBJECT_ID(N'[Secure].[SubsysAdministrator]'))
ALTER TABLE [Secure].[SubsysAdministrator]  WITH NOCHECK ADD  CONSTRAINT [FK_SubsysAdministrator_Subsystem] FOREIGN KEY([SysID])
REFERENCES [Secure].[Subsystem] ([UniqueID])
GO
ALTER TABLE [Secure].[SubsysAdministrator] CHECK CONSTRAINT [FK_SubsysAdministrator_Subsystem]
GO
/****** 对象:  ForeignKey [FK_Subsystem_ObjectBase]    脚本日期: 08/26/2014 17:57:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Secure].[FK_Subsystem_ObjectBase]') AND parent_object_id = OBJECT_ID(N'[Secure].[Subsystem]'))
ALTER TABLE [Secure].[Subsystem]  WITH NOCHECK ADD  CONSTRAINT [FK_Subsystem_ObjectBase] FOREIGN KEY([UniqueID])
REFERENCES [Basic].[ObjectBase] ([ObjectID])
GO
ALTER TABLE [Secure].[Subsystem] CHECK CONSTRAINT [FK_Subsystem_ObjectBase]
GO
