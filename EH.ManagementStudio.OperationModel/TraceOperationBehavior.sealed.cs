#region "TraceOperationBehavior"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-20 15:35:55
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : TraceOperationBehavior
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.TraceOperationBehavior
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

using EnterpriseServices.ManagementClient.Operations.Principal;
using EnterpriseServices.SecurityService.API;
using EnterpriseServices.SecurityService.Framework.Commons;
using EnterpriseServices.SecurityService.Framework.Commons.Logging;

namespace EnterpriseServices.ManagementClient.Operations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.TraceOperationBehavior</para>
    /// <para>
    /// 用于记录操作行为的监控器。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class TraceOperationBehavior : IMethodLoggingMonitor
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="TraceOperationBehavior" />对象实例。</para>
        /// </summary>
        public TraceOperationBehavior()
        {
        }

        #endregion

        #region Register
        /// <summary>
        /// 记录日志。
        /// </summary>
        /// <param name="ctx"><see cref="MonitorContext"/>对象实例。</param>
        public void Register(MonitorContext ctx)
        {
            OperationBehaviorTraceApi api = new OperationBehaviorTraceApi();
            api.Trace(ctx.MethodName, ctx.TypeName, ctx.ExpandoProperties["AssemblyVersion"].ToString(), ClientPrincipal.GetCurrentPrincipal().User.UniqueID);
        }
        #endregion

        #region Intercept
        /// <summary>
        /// 执行对方法的拦截，并记录日志。
        /// </summary>
        /// <param name="ctx"><see cref="MonitorContext"/>对象实例。</param>
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