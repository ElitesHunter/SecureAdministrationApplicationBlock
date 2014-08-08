#region "RequiredSystemAdministratorAttribute"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-06 14:12:21
 * 
 * ####     Namespace : EnterpriseServices.Utilities.Initialization.Permission
 * 
 * ####     Type Name : RequiredSystemAdministratorAttribute
 * 
 * ####     Full Name : EnterpriseServices.Utilities.Initialization.Permission.RequiredSystemAdministratorAttribute
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

namespace EnterpriseServices.Utilities.Initialization.Permission
{
    /// <summary>
    /// <para>EnterpriseServices.Utilities.Initialization.Permission.RequiredSystemAdministratorAttribute</para>
    /// <para>
    /// 用于标记此方法必须系统管理员才能够执行。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [AttributeUsage(AttributeTargets.Property | AttributeTargets.Method, Inherited = false, AllowMultiple = false)]
    [MethodMonitorBound(typeof(SystemAdministratorValidator))]
    public sealed class RequiredSystemAdministratorAttribute : MethodMonitorAttribute
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="RequiredSystemAdministratorAttribute" />对象实例。</para>
        /// </summary>
        public RequiredSystemAdministratorAttribute()
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