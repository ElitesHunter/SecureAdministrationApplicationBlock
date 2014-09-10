#region "StaffApi"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-09-09 11:09:16
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API
 * 
 * ####     Type Name : StaffApi
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.StaffApi
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

using EnterpriseServices.SecurityService.API.OrgService;

namespace EnterpriseServices.SecurityService.API
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.StaffApi</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class StaffApi : ApiServiceBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="StaffApi" />对象实例。</para>
        /// </summary>
        public StaffApi()
            : base("OrganizationService")
        {
        }

        #endregion

        #region Create
        /// <summary>
        /// 创建人员信息。
        /// </summary>
        /// <param name="person"></param>
        public void Create(Staff person)
        {
            using (OrganizationService service = new OrganizationService() { Url = base.ServiceUrl })
            {
                service.CreateStaff(person);
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