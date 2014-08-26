#region "IOrganizationObjectHandler"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-21 9:55:06
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Organizations
 * 
 * ####     Type Name : IOrganizationObjectHandler
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Organizations.IOrganizationObjectHandler
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

using EnterpriseServices.ManagementClient.Operations.Entity;

namespace EnterpriseServices.ManagementClient.Operations.Organizations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Organizations.IOrganizationObjectHandler</para>
    /// <para>
    /// 定义了处理与组织机构对象相关的方法。
    /// </para>
    /// </summary>
    /// <typeparam name="TOrganizationObject">派生自<see cref="ObjectionBase"/>的类型。</typeparam>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public interface IOrganizationObjectHandler<TOrganizationObject>
        where TOrganizationObject : OrganizationBase
    {
        #region Create
        /// <summary>
        /// 创建组织机构对象。
        /// </summary>
        /// <param name="org"></param>
        void Create(TOrganizationObject org);
        #endregion

        #region GetSingle
        /// <summary>
        /// 获取单个组织机构对象。
        /// </summary>
        /// <param name="openID">组织机构对象的开放标识。</param>
        /// <returns><typeparamref name="TOrganizationObject"/>类型的组织机构对象。</returns>
        TOrganizationObject GetSingle(string openID);
        #endregion

        #region GetSubs
        /// <summary>
        /// 获取子级组织机构对象集合。
        /// </summary>
        /// <param name="openID">指定的组织机构对象开放标识。</param>
        /// <returns><typeparamref name="TOrganizationObject"/>类型的数组。</returns>
        TOrganizationObject[] GetSubs(string openID);
        #endregion

        #region Update
        /// <summary>
        /// 更新组织机构信息。
        /// </summary>
        /// <param name="org"></param>
        void Update(Organization org);
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