#region "InWindowsAdministratorGroupAttribute"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-11 10:48:02
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : InWindowsAdministratorGroupAttribute
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.InWindowsAdministratorGroupAttribute
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
using EnterpriseServices.SecurityService.Framework.Commons;

namespace EnterpriseServices.ManagementClient.Operations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.InWindowsAdministratorGroupAttribute</para>
    /// <para>
    /// 用于标记某方法是否需要Windows系统管理员权限才能执行。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Property, Inherited = false, AllowMultiple = false)]
    [MethodMonitorBound(typeof(InWindowsAdministratorGroup))]
    public sealed class InWindowsAdministratorGroupAttribute : MethodMonitorAttribute
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="InWindowsAdministratorGroupAttribute" />对象实例。</para>
        /// </summary>
        public InWindowsAdministratorGroupAttribute()
            : base(MethodMonitorOrder.Before)
        {
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