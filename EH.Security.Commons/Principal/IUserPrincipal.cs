#region "IUserPrincipal"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-04 15:38:34
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons.Principal
 * 
 * ####     Type Name : IUserPrincipal
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.Principal.IUserPrincipal
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

using System.Security.Principal;

namespace EnterpriseServices.SecurityService.Framework.Commons.Principal
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.Principal.IUserPrincipal</para>
    /// <para>
    /// 定义了当前用户的基本信息结构。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public interface IUserPrincipal : IPrincipal
    {
        #region User
        /// <summary>
        /// 获取当前用户的身份信息。
        /// </summary>
        IUserIdentity User { get; }
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