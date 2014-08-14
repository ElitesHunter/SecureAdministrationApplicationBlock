#region "AuthenticateMode"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 16:15:17
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : AuthenticateMode
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.AuthenticateMode
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

namespace EnterpriseServices.SecurityService.Framework.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.AuthenticateMode</para>
    /// <para>
    /// 定义了身份认证模式。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable()]
    public enum AuthenticateMode
    {
        /// <summary>
        /// Windows身份认证方式。
        /// </summary>
        WindowsAuthentication = 1,
        /// <summary>
        /// 猎头服务身份认证方式。
        /// </summary>
        HunterServerAuthentication = 2,
        /// <summary>
        /// 未知的身份认证方式。
        /// </summary>
        Unknown = -1,
        /// <summary>
        /// 自定义的身份认证方式。
        /// </summary>
        Custom = 3
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