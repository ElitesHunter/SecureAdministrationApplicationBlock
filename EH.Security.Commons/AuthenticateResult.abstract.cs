#region "AuthenticateResult"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 10:01:54
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : AuthenticateResult
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.AuthenticateResult
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


namespace EnterpriseServices.SecurityService.Framework.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.AuthenticateResult</para>
    /// <para>
    /// 定义了访问身份认证结果的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public abstract class AuthenticateResult
    {
        private AuthenticateToken _token;
        private string _stateCode;

        #region Token
        /// <summary>
        /// 获取身份认证令牌。
        /// </summary>
        public virtual AuthenticateToken Token
        {
            get { return _token; }
            protected set { _token = value; }
        }
        #endregion

        #region StateCode
        /// <summary>
        /// 获取状态代码。
        /// </summary>
        public virtual string StateCode
        {
            get { return _stateCode; }
            protected set { _stateCode = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="AuthenticateResult" />对象实例。</para>
        /// </summary>
        /// <param name="token">身份认证令牌信息。</param>
        /// <param name="stateCode">状态代码。</param>
        protected AuthenticateResult(AuthenticateToken token, string stateCode)
        {
            this.Token = token;
            this.StateCode = stateCode;
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