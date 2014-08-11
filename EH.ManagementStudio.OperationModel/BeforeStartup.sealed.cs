#region "BeforeStartup"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-11 13:50:14
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : BeforeStartup
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.BeforeStartup
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
using EnterpriseServices.SecurityService.Framework.Commons.Logging;
using EnterpriseServices.SecurityService.Framework.Commons;

namespace EnterpriseServices.ManagementClient.Operations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.BeforeStartup</para>
    /// <para>
    /// 定义了启动Management Studio前需要执行的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class BeforeStartup : IMethodLoggingMonitor
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="BeforeStartup" />对象实例。</para>
        /// </summary>
        public BeforeStartup()
        {
        }

        #endregion

        #region Register
        /// <summary>
        /// 记录启动日志。
        /// </summary>
        /// <param name="ctx"><see cref="MonitorContext"/>对象实例。</param>
        public void Register(MonitorContext ctx)
        {
            new StartupLogEntity(ctx).WriteLog();
        }
        #endregion

        #region Intercept
        /// <summary>
        /// 拦截启动方法的调用过程。
        /// </summary>
        /// <param name="context"><see cref="MonitorContext"/>对象实例。</param>
        public void Intercept(MonitorContext context)
        {
            this.Register(context);
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