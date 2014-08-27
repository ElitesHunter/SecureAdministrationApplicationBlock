#region "OrganizationObjectHandler"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-25 11:00:24
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Organizations
 * 
 * ####     Type Name : OrganizationObjectHandler
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler
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
using System.Collections.Generic;
using EnterpriseServices.Framework.Commons;
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.SecurityService.API;
using EnterpriseServices.SecurityService.API.OrgService;
using EnterpriseServices.SecurityService.Framework.Commons;

namespace EnterpriseServices.ManagementClient.Operations.Organizations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Organizations.OrganizationObjectHandler</para>
    /// <para>
    /// 用于处理与组织机构对象相关的业务。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Monitor]
    public sealed class OrganizationObjectHandler : _Object, IOrganizationObjectHandler<OrganizationBase>
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="OrganizationObjectHandler" />对象实例。</para>
        /// </summary>
        public OrganizationObjectHandler()
        {
        }

        #endregion

        public void Create(OrganizationBase org)
        {
            throw new NotImplementedException();
        }

        public OrganizationBase GetSingle(string openID)
        {
            throw new NotImplementedException();
        }

        #region GetSubs
        /// <summary>
        /// 获取子级的组织机构对象集合。
        /// </summary>
        /// <param name="openID">指定的组织机构对象开放标识。</param>
        /// <returns><see cref="OrganizationBase"/>对象实例数组。</returns>
        [TraceOperation]
        public OrganizationBase[] GetSubs(string openID)
        {
            OrganizationObjectBase[] objects = new OrganizationApi().GetSubs(openID);
            List<OrganizationBase> list = new List<OrganizationBase>();
            foreach (OrganizationObjectBase item in objects)
            {
                if (item.Category == OrganizationObjectCategory.Organization || item.Category == OrganizationObjectCategory.VirtualOrganization)
                {
                    list.Add(new EnterpriseServices.ManagementClient.Operations.Entity.Organization()
                    {
                        UniqueID = item.UniqueID,
                        Name = item.Name,
                        VirtualName = item.VirtualName,
                        VirtualPath = item.VirtualPath,
                        Visible = item.Visible,
                        Enabled = item.Enabled,
                        HasRemoved = item.LogicalRemovedState,
                        OpenID = item.OpenID,
                        ParentUniqueID = item.ParentID,
                        IsVirtual = item.Category == OrganizationObjectCategory.VirtualOrganization
                    });
                }
                else if (item.Category == OrganizationObjectCategory.Position)
                {
                    list.Add(new EnterpriseServices.ManagementClient.Operations.Entity.Position()
                    {
                        UniqueID = item.UniqueID,
                        Name = item.Name,
                        VirtualName = item.VirtualName,
                        VirtualPath = item.VirtualPath,
                        Visible = item.Visible,
                        Enabled = item.Enabled,
                        HasRemoved = item.LogicalRemovedState,
                        OpenID = item.OpenID,
                        ParentUniqueID = item.ParentID,
                    });
                }
            }
            return list.ToArray();
        }
        #endregion


        public void Update(Entity.Organization org)
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