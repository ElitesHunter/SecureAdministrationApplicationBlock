#region "AccountApi"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-09-17 9:56:36
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API
 * 
 * ####     Type Name : AccountApi
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.AccountApi
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

using EnterpriseServices.SecurityService.API.AuthenticationService;

namespace EnterpriseServices.SecurityService.API
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.AccountApi</para>
    /// <para>
    /// 用于操作用户账户的API。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class AccountApi : ApiServiceBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="AccountApi" />对象实例。</para>
        /// </summary>
        public AccountApi()
            : base("AuthenticationService")
        {
        }

        #endregion

        #region Create
        /// <summary>
        /// 创建一个账户信息。
        /// </summary>
        /// <param name="account"></param>
        public int Create(AccountExpandoProperty account)
        {
            using (AuthenticationService.AuthenticationService service = new AuthenticationService.AuthenticationService() { Url = base.ServiceUrl })
            {
                return service.CreateStaffAccount(account);
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