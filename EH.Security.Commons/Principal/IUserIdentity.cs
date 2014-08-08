#region "IUserIdentity"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-04 15:36:29
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons.Principal
 * 
 * ####     Type Name : IUserIdentity
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.Principal.IUserIdentity
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
using System.Security.Principal;

namespace EnterpriseServices.SecurityService.Framework.Commons.Principal
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.Principal.IUserIdentity</para>
    /// <para>
    /// 定义的用户身份的基本的属性。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public interface IUserIdentity : IIdentity
    {
        #region UniqueID
        /// <summary>
        /// 获取当前用户的唯一标识。
        /// </summary>
        Guid UniqueID { get; }
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