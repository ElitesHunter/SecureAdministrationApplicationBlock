#region "WindowsAuthentication"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 16:30:34
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.AuthenticateService
 * 
 * ####     Type Name : WindowsAuthentication
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication
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
using System.Threading;
using EnterpriseServices.Framework.Commons;
using EnterpriseServices.ManagementClient.Operations.Networks;
using EnterpriseServices.ManagementClient.Operations.Principal;
using EnterpriseServices.SecurityService.API;
using EnterpriseServices.SecurityService.Framework.Commons;

namespace EnterpriseServices.ManagementClient.Operations.AuthenticateService
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsAuthentication</para>
    /// <para>
    /// Windows身份认证。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Monitor]
    public sealed class WindowsAuthentication : _Object, IAuthentication
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WindowsAuthentication" />对象实例。</para>
        /// </summary>
        public WindowsAuthentication()
        {
        }

        #endregion

        #region Authenticate
        /// <summary>
        /// 执行Windows身份认证。
        /// </summary>
        /// <param name="credentials">身份凭据。</param>
        /// <returns><see cref="AuthenticateResult"/>对象实例。</returns>
        [TraceUserSignInBehavior]
        public AuthenticateResult Authenticate(ICredentials credentials)
        {
            WinNTAuthenticateApi api = new WinNTAuthenticateApi()
            {
                UserName = credentials.UserName,
                IPAddress = IPAddress.GetIPAddress()[0].Value,
                HostName = Environment.MachineName
            };
            string status = string.Empty, token = string.Empty;
            bool isLegitimateUser = api.Authenticate(out status, out token);
            if (isLegitimateUser)
            {
                Thread.CurrentPrincipal = new ClientPrincipal(new ClientIdentity(token, AuthenticateMode.WindowsAuthentication));
                return new WindowsAuthenticateResult(new WindowsAuthenticateToken(token), string.Empty);
            }
            else return new WindowsAuthenticateResult(new WindowsAuthenticateToken(string.Empty), status);
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