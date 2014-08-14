#region "TraceUserSignInBehaviorAttribute"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 17:12:22
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.AuthenticateService
 * 
 * ####     Type Name : TraceUserSignInBehaviorAttribute
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.AuthenticateService.TraceUserSignInBehaviorAttribute
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

namespace EnterpriseServices.ManagementClient.Operations.AuthenticateService
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.AuthenticateService.TraceUserSignInBehaviorAttribute</para>
    /// <para>
    /// 用于标记用户登录行为。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Property, AllowMultiple = false, Inherited = false)]
    [MethodMonitorBound(typeof(TraceUserSignInBehaviorMonitor))]
    public sealed class TraceUserSignInBehaviorAttribute : MethodMonitorAttribute
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="TraceUserSignInBehaviorAttribute" />对象实例。</para>
        /// </summary>
        public TraceUserSignInBehaviorAttribute()
            : base(MethodMonitorOrder.After)
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