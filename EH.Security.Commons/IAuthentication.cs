#region "IAuthentication"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 10:05:45
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : IAuthentication
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.IAuthentication
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
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.IAuthentication</para>
    /// <para>
    /// 定义了身份识别的基本方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public interface IAuthentication
    {
        #region Authenticate
        /// <summary>
        /// 执行身份认证。
        /// </summary>
        /// <param name="credentials"><see cref="EnterpriseServices.SecurityService.Framework.Commons.ICredentials"/>对象实例。</param>
        /// <returns><see cref="AuthenticateResult"/>对象实例。</returns>
        AuthenticateResult Authenticate(ICredentials credentials);
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