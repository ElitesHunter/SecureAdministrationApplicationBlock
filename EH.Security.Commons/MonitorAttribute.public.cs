#region "MonitorAttribute"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-06 10:49:33
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : MonitorAttribute
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.MonitorAttribute
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
using System.Runtime.Remoting.Proxies;
using EnterpriseServices.Framework.Commons;

namespace EnterpriseServices.SecurityService.Framework.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.MonitorAttribute</para>
    /// <para>
    /// 用于标记需要监听的类型。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [AttributeUsage(AttributeTargets.Class, Inherited = false, AllowMultiple = false)]
    public class MonitorAttribute : ProxyAttribute
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="MonitorAttribute" />对象实例。</para>
        /// </summary>
        public MonitorAttribute()
            : base()
        {
        }

        #endregion

        #region CreateInstance
        /// <summary>
        /// 创建透明代理实例。
        /// </summary>
        /// <param name="serverType">类型。</param>
        /// <returns><see cref="MarshalByRefObject"/>对象实例。</returns>
        public override MarshalByRefObject CreateInstance(Type serverType)
        {
            MarshalByRefObject obj = (MarshalByRefObject)base.CreateInstance(serverType);
            return new MonitorObjectProxy(serverType, obj as _Object).GetTransparentProxy() as MarshalByRefObject;
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