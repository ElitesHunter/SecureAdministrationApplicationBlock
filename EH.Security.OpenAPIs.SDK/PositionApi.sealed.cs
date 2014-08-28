#region "PositionApi"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-27 13:51:43
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API
 * 
 * ####     Type Name : PositionApi
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.PositionApi
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

namespace EnterpriseServices.SecurityService.API
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.PositionApi</para>
    /// <para>
    /// 关于职位的API。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class PositionApi : ApiServiceBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="PositionApi" />对象实例。</para>
        /// </summary>
        public PositionApi()
            : base("OrganizationService")
        {
        }

        #endregion

        #region Create
        /// <summary>
        /// 创建职位信息。
        /// </summary>
        /// <param name="position">职位信息对象实例。</param>
        /// <param name="isPrincipal">是否为负责人职位。</param>
        /// <param name="forceCreate">是否强制创建。</param>
        /// <returns>创建状态。</returns>
        public int Create(Position position, bool isPrincipal, bool forceCreate)
        {
            using (OrganizationService service = new OrganizationService() { Url = base.ServiceUrl })
            {
                return service.CreatePosition(position, isPrincipal, forceCreate);
            }
        }
        #endregion

        #region GetPositionsExcludeSpecified
        /// <summary>
        /// 获取处指定职位外的所有职位信息。
        /// </summary>
        /// <param name="pid">职位信息。</param>
        /// <returns></returns>
        public Position[] GetPositionsExcludeSpecified(Guid pid)
        {
            using (OrganizationService service = new OrganizationService() { Url = base.ServiceUrl })
            {
                return service.GetPositionCollectionExcludeSpecified(pid);
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