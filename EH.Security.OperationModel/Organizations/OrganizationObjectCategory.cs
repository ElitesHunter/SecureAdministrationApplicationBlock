#region "OrganizationObjectCategory"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-20 10:36:28
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel.Organizations
 * 
 * ####     Type Name : OrganizationObjectCategory
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.Organizations.OrganizationObjectCategory
 * 
 * ####     Machine Name : GLCHQWYCWINW7
 * 
 * ####     UserName : GUOCOLAND/wangyucai
 * 
 * ####     CLR Version : 4.0.30319.18444
 * 
 * ####     Target Framework Version : 3.5
 */

#endregion

using System;

namespace EnterpriseServices.SecurityService.Framework.OperationModel.Organizations
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.Organizations.OrganizationObjectCategory</para>
    /// <para>
    /// 定义了组织机构对象的类型。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable()]
    public enum OrganizationObjectCategory
    {
        /// <summary>
        /// 组织机构。
        /// </summary>
        Organization = 1,
        /// <summary>
        /// 虚拟的组织机构（人员组）。
        /// </summary>
        VirtualOrganization = 2,
        /// <summary>
        /// 职位。
        /// </summary>
        Position = 3,
        /// <summary>
        /// 人员。
        /// </summary>
        Staff = 4
    }
}

#region README

/*
 * ####     ©2014 Wang Yucai
 * 
 * ####     Contact me
 *                  
 *                  E-mail : Masterduner@Yeah.net
 *                  Mobile : 13621384677
 *                  QQ : 180261899
 */

#endregion