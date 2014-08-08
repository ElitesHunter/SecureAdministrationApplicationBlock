#region "MethodMonitorAttribute"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-04 15:19:45
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : MethodMonitorAttribute
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.MethodMonitorAttribute
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
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.MethodMonitorAttribute</para>
    /// <para>
    /// 用于标记需要监控的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Property, AllowMultiple = false, Inherited = false)]
    public abstract class MethodMonitorAttribute : Attribute
    {
        private MethodMonitorOrder _monitorOrder;

        #region MonitorOrder
        /// <summary>
        /// 获取方法监听顺序。
        /// </summary>
        public virtual MethodMonitorOrder MonitorOrder
        {
            get { return _monitorOrder; }
            protected set { _monitorOrder = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="MethodMonitorAttribute" />对象实例。</para>
        /// </summary>
        /// <param name="order"><see cref="MethodMonitorOrder"/>中的一个值。</param>
        protected MethodMonitorAttribute(MethodMonitorOrder order)
        {
            this.MonitorOrder = order;
        }

        #endregion

        #region GetMonitorClassType
        /// <summary>
        /// 获取绑定的监听器类型。
        /// </summary>
        /// <returns>实现了<see cref="IMethodMonitor"/>接口的类型。</returns>
        public virtual Type GetMonitorClassType()
        {
            Attribute attr = Attribute.GetCustomAttribute(this.GetType(), typeof(MethodMonitorBoundAttribute));
            return object.ReferenceEquals(attr, null) ? null : (attr as MethodMonitorBoundAttribute).MonitorType;
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