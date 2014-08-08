#region "ICredentials"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-01 13:42:09
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : ICredentials
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.ICredentials
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
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.ICredentials</para>
    /// <para>
    /// 定义了身份认证凭据。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public interface ICredentials
    {
        #region UserName
        /// <summary>
        /// 获取用户名。
        /// </summary>
        string UserName { get; }
        #endregion

        #region Password
        /// <summary>
        /// 获取密码。
        /// </summary>
        string Password { get; }
        #endregion

        #region Secure
        /// <summary>
        /// 获取是否为安全的密码。
        /// </summary>
        bool Secure { get; }
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