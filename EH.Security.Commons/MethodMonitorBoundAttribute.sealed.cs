#region "MethodMonitorBoundAttribute"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-05 13:46:03
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : MethodMonitorBoundAttribute
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.MethodMonitorBoundAttribute
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
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.MethodMonitorBoundAttribute</para>
    /// <para>
    /// 用于标记方法监听器的类型。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [AttributeUsage(AttributeTargets.Class, Inherited = false, AllowMultiple = false)]
    public sealed class MethodMonitorBoundAttribute : Attribute
    {
        private Type _monitorType;

        #region MonitorType
        /// <summary>
        /// <para>
        /// 获取方法监听器类型。
        /// </para>
        /// <para>
        /// 即：实现了<see cref="IMethodMonitor"/>接口的类型。
        /// </para>
        /// </summary>
        public Type MonitorType
        {
            get { return _monitorType; }
            private set { _monitorType = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="MethodMonitorBoundAttribute" />对象实例。</para>
        /// </summary>
        /// <param name="type">实现了<see cref="IMethodMonitor"/>接口的类型。</param>
        public MethodMonitorBoundAttribute(Type type)
        {
            this.MonitorType = type;
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