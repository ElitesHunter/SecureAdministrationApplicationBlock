#region "IMethodLoggingMonitor"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-11 10:21:45
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons.Logging
 * 
 * ####     Type Name : IMethodLoggingMonitor
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.Logging.IMethodLoggingMonitor
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

namespace EnterpriseServices.SecurityService.Framework.Commons.Logging
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.Logging.IMethodLoggingMonitor</para>
    /// <para>
    /// 用于监控方法执行的日志。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public interface IMethodLoggingMonitor : IMethodMonitor
    {
        #region Register
        /// <summary>
        /// 记录日志。
        /// </summary>
        /// <param name="ctx"><see cref="MonitorContext"/>对象实例。</param>
        void Register(MonitorContext ctx);
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