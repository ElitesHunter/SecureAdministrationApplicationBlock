#region "SystemAdministratorValidator"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-06 14:00:42
 * 
 * ####     Namespace : EnterpriseServices.Utilities.Initialization.Permission
 * 
 * ####     Type Name : SystemAdministratorValidator
 * 
 * ####     Full Name : EnterpriseServices.Utilities.Initialization.Permission.SystemAdministratorValidator
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
using EnterpriseServices.SecurityService.Framework.Commons;
using EnterpriseServices.SecurityService.Framework.Commons.Permission;

namespace EnterpriseServices.Utilities.Initialization.Permission
{
    /// <summary>
    /// <para>EnterpriseServices.Utilities.Initialization.Permission.SystemAdministratorValidator</para>
    /// <para>
    /// 用于验证登录系统的用户是否在管理员组。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class SystemAdministratorValidator : ISystemAdministrator
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="SystemAdministratorValidator" />对象实例。</para>
        /// </summary>
        public SystemAdministratorValidator()
        {
        }

        #endregion

        #region IsAdministrator
        /// <summary>
        /// 验证当前用户是否为系统管理员。
        /// </summary>
        /// <returns></returns>
        public bool IsAdministrator()
        {
            WindowsIdentity user = WindowsIdentity.GetCurrent();
            WindowsPrincipal principal = new WindowsPrincipal(user);
            return principal.IsInRole(WindowsBuiltInRole.Administrator);
        }
        #endregion

        #region Intercept
        /// <summary>
        /// 拦截方法，并验证当前的用户是否在系统管理员组。
        /// </summary>
        /// <param name="context"></param>
        public void Intercept(MonitorContext context)
        {
            if (!this.IsAdministrator())
            {
                throw new IsNotSystemAdministratorError();
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