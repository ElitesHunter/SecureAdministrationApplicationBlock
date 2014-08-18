#region "InWindowsAdministratorGroup"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-11 9:54:39
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : InWindowsAdministratorGroup
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.InWindowsAdministratorGroup
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

namespace EnterpriseServices.ManagementClient.Operations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.InWindowsAdministratorGroup</para>
    /// <para>
    /// 验证登录到Windows的当前用户是否在系统管理员组中。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class InWindowsAdministratorGroup : ISystemAdministrator
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="InWindowsAdministratorGroup" />对象实例。</para>
        /// </summary>
        public InWindowsAdministratorGroup()
        {
        }

        #endregion

        #region IsAdministrator
        /// <summary>
        /// 验证当前登录Windows的用户是否在系统管理员组中。
        /// </summary>
        /// <returns>true/false。</returns>
        public bool IsAdministrator()
        {
            try
            {
                WindowsIdentity currentUser = WindowsIdentity.GetCurrent();
                WindowsPrincipal principal = new WindowsPrincipal(currentUser);
                return principal.IsInRole(WindowsBuiltInRole.Administrator);
            }
            catch { return false; }
        }
        #endregion

        #region Intercept
        /// <summary>
        /// 拦截当前执行的方法。
        /// </summary>
        /// <param name="context"><see cref="MonitorContext"/>对象实例。</param>
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