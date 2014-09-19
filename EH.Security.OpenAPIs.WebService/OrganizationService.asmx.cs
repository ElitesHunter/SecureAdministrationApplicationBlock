using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Web.Services;
using EnterpriseServices.SecurityService.Framework.OperationModel.Accounts;
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

        #region GetSubOrganizations
        /// <summary>
        /// 获取子级组织机构对象集合。
        /// </summary>
        /// <param name="organizationOpenID">父级组织机构对象的开放标识。</param>
        /// <returns></returns>
        [WebMethod(Description = "获取子级组织机构对象集合<br />organizationOpenID：指定组织机构对象的开放标识。")]
        public List<OrganizationObjectBase> GetSubOrganizations(string organizationOpenID)
        {
            return OrganizationObjectBase.GetSubs(organizationOpenID);
        }
        #endregion

        #region UpdateOrganization
        /// <summary>
        /// 更新组织机构信息。
        /// </summary>
        /// <param name="org"></param>
        [WebMethod(Description = "更新组织机构信息<br />org：组织机构信息")]
        public void UpdateOrganization(Organization org)
        {
            org.Update();
        }
        #endregion

        #region CreatePosition
        /// <summary>
        /// 创建一个职位信息。
        /// </summary>
        /// <param name="obj"><see cref="Position"/>对象实例。</param>
        /// <param name="isPrincipal">是否为负责人职位。</param>
        /// <param name="force">是否强制创建。</param>
        /// <returns></returns>
        [WebMethod(Description = "创建一个职位信息<br />obj:职位对象实例<br />isPrincipal:是否为负责人职位<br />force:是否强行创建此职位")]
        public int CreatePosition(Position obj, bool isPrincipal, bool force)
        {
            return obj.Create(isPrincipal, force);
        }
        #endregion

        #region GetPositionCollectionExcludeSpecified
        [WebMethod(Description = "获取除指定职位以外的所有职位信息<br />thisPositionID:指定的职位标识")]
        public List<Position> GetPositionCollectionExcludeSpecified(Guid thisPositionID)
        {
            return Position.GetPositionsExcludeCurrent(thisPositionID);
        }
        #endregion

        #region UpdatePosition
        [WebMethod(Description = "更新职位信息。<br />position:职位信息<br />updateState:是否更新职位的附加信息<br />isPrincipal:是否设置为负责人职位<br />superiorPositionID:是否更新汇报关系的上级职位信息")]
        public void UpdatePosition(Position position, bool updateState, bool isPrincipal, Guid superiorPositionID)
        {
            position.Update(updateState, isPrincipal, superiorPositionID);
        }
        #endregion

        #region CreateStaff
        [WebMethod(Description="创建人员信息<br />staff:人员信息对象实例。")]
        public void CreateStaff(Staff person)
        {
            person.Create();
        }
        #endregion

        #region GetEnabledStaffs
        /// <summary>
        /// 获取所有启用的人员信息。
        /// </summary>
        /// <param name="openID"></param>
        /// <returns></returns>
        [WebMethod(Description = "获取所有启用的人员信息<br />openID:职位开放标识")]
        public List<Staff> GetEnabledStaffs(string openID)
        {
            return Position.GetStaffs(openID);
        }
        #endregion

        #region GetAssociatedAccount
        /// <summary>
        /// 获取关联的账户信息。
        /// </summary>
        /// <param name="staffOpenID"></param>
        /// <returns></returns>
        [WebMethod(Description="获取关联的账户信息<br />staffOpenID:人员的开放标识")]
        public AccountExpandoProperty GetAssociatedAccount(string staffOpenID)
        {
            return AccountExpandoProperty.Get(staffOpenID);
        }
        #endregion
    }
}
