#region "OrganizationHandler"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-21 9:53:39
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Organizations
 * 
 * ####     Type Name : OrganizationHandler
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler
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
using EnterpriseServices.Framework.Commons;
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.SecurityService.API;
using EnterpriseServices.SecurityService.Framework.Commons;
using API = EnterpriseServices.SecurityService.API.OrgService;
using Org = EnterpriseServices.SecurityService.API.OrgService.Organization;

namespace EnterpriseServices.ManagementClient.Operations.Organizations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationHandler</para>
    /// <para>
    /// 用于处理与组织机构相关的业务。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Monitor]
    public sealed class OrganizationHandler : _Object, IOrganizationObjectHandler<Organization>
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="OrganizationHandler" />对象实例。</para>
        /// </summary>
        public OrganizationHandler()
        {
        }

        #endregion

        #region GetRoot
        /// <summary>
        /// 获取根组织机构。
        /// </summary>
        /// <returns><see cref="Organization"/>对象实例。</returns>
        [IgnoreThisMethod]
        public Organization GetRoot()
        {
            Org org = new OrganizationApi().GetRootOrganization();
            if (!object.ReferenceEquals(org, null))
                return Transfer(org);
            else return null;
        }
        #endregion

        #region Transfer
        /// <summary>
        /// 类型转换。
        /// </summary>
        /// <param name="org">需要转换的<see cref="Org"/>对象实例。</param>
        /// <returns><see cref="Organization"/>对象实例。</returns>
        [IgnoreThisMethod]
        static private Organization Transfer(Org org)
        {
            return new Organization()
            {
                UniqueID = org.UniqueID,
                OpenID = org.OpenID,
                Enabled = org.Enabled,
                HasRemoved = org.LogicalRemovedState,
                IsVirtual = org.IsVirtual,
                Name = org.Name,
                VirtualName = org.VirtualName,
                Visible = org.Visible,
                ParentUniqueID = org.ParentID,
                VirtualPath = org.VirtualPath
            };
        }

        #region Transfer
        /// <summary>
        /// 类型转换。
        /// </summary>
        /// <param name="org">需要转换的<see cref="Organization"/>对象实例。</param>
        /// <returns><see cref="Org"/>对象实例。</returns>
        static private Org Transfer(Organization org)
        {
            return new Org()
            {
                UniqueID = org.UniqueID,
                Category = org.IsVirtual ? API.OrganizationObjectCategory.Organization : API.OrganizationObjectCategory.VirtualOrganization,
                Description = string.Empty,
                Enabled = org.Enabled,
                LogicalRemovedState = org.Enabled,
                Name = org.Name,
                OpenID = org.OpenID,
                ParentID = org.ParentUniqueID,
                Visible = org.Visible
            };
        }
        #endregion
        #endregion

        #region Create
        /// <summary>
        /// 创建组织机构。
        /// </summary>
        /// <param name="org"><see cref="Organization"/>对象实例。</param>
        [TraceOperation]
        public void Create(Organization org)
        {
            new OrganizationApi().Create(org.Name, org.ParentUniqueID, org.IsVirtual);
        }
        #endregion

        public Organization GetSingle(string openID)
        {
            throw new NotImplementedException();
        }
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