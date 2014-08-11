#region "EventViewerLogEntity"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-11 11:26:59
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : EventViewerLogEntity
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.EventViewerLogEntity
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
using System.Diagnostics;
using System.Text;
using EnterpriseServices.SecurityService.Framework.Commons;
using EnterpriseServices.SecurityService.Framework.Commons.Logging;

namespace EnterpriseServices.ManagementClient.Operations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.EventViewerLogEntity</para>
    /// <para>
    /// Windows事件查看器日志实体。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class EventViewerLogEntity : LogEntityBase
    {
        private StringBuilder _messageBuilder;

        #region MessageBuilder
        /// <summary>
        /// 设置或获取用于构建消息的<see cref="StringBuilder"/>对象实例。
        /// </summary>
        protected StringBuilder MessageBuilder
        {
            get { return _messageBuilder; }
            set { _messageBuilder = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="EventViewerLogEntity" />对象实例。</para>
        /// </summary>
        public EventViewerLogEntity(MonitorContext ctx)
            : base(ctx)
        {
            this.MessageBuilder = new StringBuilder();
        }

        #endregion

        #region WriteLog
        /// <summary>
        /// 写入日志。
        /// </summary>
        public override void WriteLog()
        {
            using (EventLog eventViewer = new EventLog("ElitesHunter"))
            {
                try
                {
                    if (!EventLog.SourceExists("Management Studio")) EventLog.CreateEventSource("Management Studio", "ElitesHunter");
                    EventLog.WriteEntry("Management Studio", this.CreateMessage(), EventLogEntryType.Information);
                }
                catch { }
            }
        }
        #endregion

        #region CreateMessage
        /// <summary>
        /// 创建日志信息。
        /// </summary>
        /// <returns>日志消息。</returns>
        protected virtual string CreateMessage()
        {
            string timeStr = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            this.MessageBuilder.AppendFormat("Log -- {0}{1}{2}{3}{3}", "{", timeStr, "}", Environment.NewLine);
            this.MessageBuilder.AppendFormat("    Source Type : {0}{1}{1}", this.MethodContext.TypeName, Environment.NewLine);
            this.MessageBuilder.AppendFormat("    Method : {0}{1}{1}", this.MethodContext.MethodName, Environment.NewLine);
            return this.MessageBuilder.ToString();
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