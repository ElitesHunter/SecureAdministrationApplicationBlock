#region "ISystemAdministrator"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-06 10:56:00
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons.Permission
 * 
 * ####     Type Name : ISystemAdministrator
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.Permission.ISystemAdministrator
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


namespace EnterpriseServices.SecurityService.Framework.Commons.Permission
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.Permission.ISystemAdministrator</para>
    /// <para>
    /// 定义了验证当前用户是否为系统管理员的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public interface ISystemAdministrator : IMethodMonitor
    {
        #region IsAdministrator
        /// <summary>
        /// 验证当前用户是否为系统管理员。
        /// </summary>
        /// <returns>true/false。</returns>
        bool IsAdministrator();
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