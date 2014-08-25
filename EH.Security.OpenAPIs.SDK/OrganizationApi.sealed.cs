#region "OrganizationApi"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-20 14:33:02
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API
 * 
 * ####     Type Name : OrganizationApi
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.OrganizationApi
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
using EnterpriseServices.SecurityService.API.OrgService;
using Org = EnterpriseServices.SecurityService.API.OrgService.Organization;
using OrgSvc = EnterpriseServices.SecurityService.API.OrgService.OrganizationService;

namespace EnterpriseServices.SecurityService.API
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.OrganizationApi</para>
    /// <para>
    /// 提供了访问组织机构服务的API。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class OrganizationApi : ApiServiceBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="OrganizationApi" />对象实例。</para>
        /// </summary>
        public OrganizationApi()
            : base("OrganizationService")
        {
        }

        #endregion

        #region GetRootOrganization
        /// <summary>
        /// 获取根组织机构。
        /// </summary>
        /// <returns><see cref="Organization"/>对象实例。</returns>
        public Org GetRootOrganization()
        {
            using (OrgSvc service = new OrgSvc() { Url = this.ServiceUrl })
            {
                return service.GetRootOrganization();
            }
        }
        #endregion

        #region Create
        /// <summary>
        /// 创建组织机构对象。
        /// </summary>
        /// <param name="name">组织机构名称。</param>
        /// <param name="parentID">父级组织机构标识。</param>
        /// <param name="isVirtual">是否为虚拟组织机构。</param>
        public void Create(string name, Guid parentID, bool isVirtual)
        {
            using (OrgSvc service = new OrgSvc() { Url = this.ServiceUrl })
            {
                service.CreateOrganization(new Org()
                {
                    Name = name,
                    ParentID = parentID,
                    Category = isVirtual ? OrganizationObjectCategory.VirtualOrganization : OrganizationObjectCategory.Organization
                });
            }
        }
        #endregion

        #region GetSubs
        /// <summary>
        /// 获取子级组织机构对象集合。
        /// </summary>
        /// <param name="openID">指定的组织机构对象标识。</param>
        /// <returns></returns>
        public OrganizationObjectBase[] GetSubs(string openID)
        {
            using (OrgSvc service = new OrgSvc() { Url = base.ServiceUrl })
            {
                return service.GetSubOrganizations(openID);
            }
        }
        #endregion
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