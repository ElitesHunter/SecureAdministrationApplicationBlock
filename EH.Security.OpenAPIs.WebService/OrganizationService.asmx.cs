﻿using System.ComponentModel;
using System.Web.Services;
using EnterpriseServices.SecurityService.Framework.OperationModel.Organizations;

namespace EnterpriseServices.SecurityService.API.OpenServices
{
    /// <summary>
    /// 组织机构对象服务。
    /// </summary>
    [WebService(Namespace = "urn:Masterduner@Yeah.net", Description = "组织机构对象服务")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消对下行的注释。
    // [System.Web.Script.Services.ScriptService]
    public class OrganizationService : WebService
    {
        #region GetRootOrganization
        /// <summary>
        /// 获取根组织机构信息。
        /// </summary>
        /// <returns><see cref="Organization"/>对象实例。</returns>
        [WebMethod(Description = "获取根组织机构信息")]
        public Organization GetRootOrganization()
        {
            return Organization.GetRoot();
        }
        #endregion

        #region CreateOrganization
        /// <summary>
        /// 创建一个组织机构。
        /// </summary>
        /// <param name="obj"><see cref="Organization"/>对象实例。</param>
        [WebMethod(Description = "创建一个组织机构。<br />obj：Organization对象实例。")]
        public void CreateOrganization(Organization obj)
        {
            obj.Create();
        }
        #endregion
    }
}
