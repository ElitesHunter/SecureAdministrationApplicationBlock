#region "WinNTAuthenticateApi"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 14:44:38
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API
 * 
 * ####     Type Name : WinNTAuthenticateApi
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.WinNTAuthenticateApi
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


namespace EnterpriseServices.SecurityService.API
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.WinNTAuthenticateApi</para>
    /// <para>
    /// 用于调用Windows身份认证API。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class WinNTAuthenticateApi : ApiServiceBase
    {
        private string _userName;
        private string _iPAddress;
        private string _hostName;

        #region UserName
        /// <summary>
        /// 设置或获取当前登录到Windows的用户名。
        /// </summary>
        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        #endregion

        #region IPAddress
        /// <summary>
        /// 设置或获取当前计算机的IP地址。
        /// </summary>
        public string IPAddress
        {
            get { return _iPAddress; }
            set { _iPAddress = value; }
        }
        #endregion

        #region HostName
        /// <summary>
        /// 设置或获取当前计算机在网络中的名称。
        /// </summary>
        public string HostName
        {
            get { return _hostName; }
            set { _hostName = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WinNTAuthenticateApi" />对象实例。</para>
        /// </summary>
        public WinNTAuthenticateApi()
            : base("AuthenticationService")
        {
        }

        #endregion

        #region Authenticate
        /// <summary>
        /// 执行身份认证。
        /// </summary>
        /// <param name="statusCode">状态代码。</param>
        /// <param name="token">身份令牌。</param>
        /// <returns>true/false。</returns>
        public bool Authenticate(out string statusCode, out string token)
        {
            using (AuthenticationService.AuthenticationService service = new AuthenticationService.AuthenticationService() { Url = base.ServiceUrl })
            {
                AuthenticationService.WinNTAuthenticateStatus status = service.ExecuteWinNTAuthenticate(this.UserName, this.IPAddress, this.HostName);
                statusCode = status.StatusCode;
                token = status.Token;
                return status.Successful;
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