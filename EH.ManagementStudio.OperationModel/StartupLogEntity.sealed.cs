#region "StartupLogEntity"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-11 11:52:01
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : StartupLogEntity
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.StartupLogEntity
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
using EnterpriseServices.ManagementClient.Operations.Resources;
using EnterpriseServices.SecurityService.Framework.Commons;

namespace EnterpriseServices.ManagementClient.Operations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.StartupLogEntity</para>
    /// <para>
    /// 用于记录管理客户端启动日志。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class StartupLogEntity : EventViewerLogEntity
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="StartupLogEntity" />对象实例。</para>
        /// </summary>
        /// <param name="ctx"><see cref="MonitorContext"/>对象实例。</param>
        public StartupLogEntity(MonitorContext ctx)
            : base(ctx)
        {
        }

        #endregion

        #region CreateMessage
        /// <summary>
        /// 创建消息。
        /// </summary>
        /// <returns>日志消息。</returns>
        protected override string CreateMessage()
        {
            base.MessageBuilder.AppendFormat(string.Format(Messages.StartupLogMessage, Environment.UserDomainName + "\\" + Environment.UserName));
            base.CreateMessage();
            return base.MessageBuilder.ToString();
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