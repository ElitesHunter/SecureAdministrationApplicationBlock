#region "ExtraMethodMonitor"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-05 14:41:14
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons.Extra
 * 
 * ####     Type Name : ExtraMethodMonitor
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.Extra.ExtraMethodMonitor
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

namespace EnterpriseServices.SecurityService.Framework.Commons.Extra
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.Extra.ExtraMethodMonitor</para>
    /// <para>
    /// 附加的方法监听器节点。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class ExtraMethodMonitor
    {
        private Guid _monitorID;
        private string _typeName;
        private MethodMonitorOrder _order;

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ExtraMethodMonitor" />对象实例。</para>
        /// </summary>
        public ExtraMethodMonitor()
        {
        }

        #endregion

        #region MonitorID
        /// <summary>
        /// 设置或获取监听器的ID。
        /// </summary>
        public virtual Guid MonitorID
        {
            get { return _monitorID; }
            set { _monitorID = value; }
        }
        #endregion

        #region TypeName
        /// <summary>
        /// 设置或获取监听器完全限定类型名称。
        /// </summary>
        public virtual string TypeName
        {
            get { return _typeName; }
            set { _typeName = value; }
        }
        #endregion

        #region Order
        /// <summary>
        /// 设置或获取此监听器的<see cref="MethodMonitorOrder"/>值。
        /// </summary>
        public virtual MethodMonitorOrder Order
        {
            get { return _order; }
            set { _order = value; }
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