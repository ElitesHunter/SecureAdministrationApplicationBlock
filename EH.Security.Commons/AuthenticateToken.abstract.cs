#region "AuthenticateToken"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 9:58:10
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : AuthenticateToken
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.AuthenticateToken
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
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.AuthenticateToken</para>
    /// <para>
    /// 定义了访问身份认证令牌信息的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public abstract class AuthenticateToken
    {
        private string _token;

        #region Token
        /// <summary>
        /// 获取令牌。
        /// </summary>
        public virtual string Token
        {
            get { return _token; }
            protected set { _token = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="AuthenticateToken" />对象实例。</para>
        /// </summary>
        /// <param name="token">身份令牌。</param>
        protected AuthenticateToken(string token)
        {
            this.Token = token;
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