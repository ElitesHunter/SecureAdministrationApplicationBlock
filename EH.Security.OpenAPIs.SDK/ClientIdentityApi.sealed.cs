#region "ClientIdentityApi"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-15 13:46:20
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API
 * 
 * ####     Type Name : ClientIdentityApi
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.ClientIdentityApi
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

using EnterpriseServices.SecurityService.API.IdentityService;

namespace EnterpriseServices.SecurityService.API
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.ClientIdentityApi</para>
    /// <para>
    /// 提供给管理客户端访问身份信息的API。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class ClientIdentityApi : ApiServiceBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ClientIdentityApi" />对象实例。</para>
        /// </summary>
        public ClientIdentityApi()
            : base("IdentityService")
        {
        }

        #endregion

        #region GetAccountUseToken
        /// <summary>
        /// 使用身份令牌获取账户信息。
        /// </summary>
        /// <param name="token">身份令牌。</param>
        /// <returns>客户端账户信息。</returns>
        public ClientAccountStatus GetAccountUseToken(string token)
        {
            using (IdentityService.IdentityService api = new IdentityService.IdentityService() { Url = base.ServiceUrl })
            {
                return api.GetAccountUseToken(token);
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