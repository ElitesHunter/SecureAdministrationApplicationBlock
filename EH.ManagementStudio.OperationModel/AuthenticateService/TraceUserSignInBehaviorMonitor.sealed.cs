#region "TraceUserSignInBehaviorMonitor"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 16:34:08
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.AuthenticateService
 * 
 * ####     Type Name : TraceUserSignInBehaviorMonitor
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.AuthenticateService.TraceUserSignInBehaviorMonitor
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

using System.Threading;
using EnterpriseServices.SecurityService.API;
using EnterpriseServices.SecurityService.Framework.Commons;
using EnterpriseServices.SecurityService.Framework.Commons.Logging;
using EnterpriseServices.ManagementClient.Operations.Principal;

namespace EnterpriseServices.ManagementClient.Operations.AuthenticateService
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.AuthenticateService.TraceUserSignInBehaviorMonitor</para>
    /// <para>
    /// 用于记录用户的登录行为。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class TraceUserSignInBehaviorMonitor : IMethodLoggingMonitor
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="TraceUserSignInBehaviorMonitor" />对象实例。</para>
        /// </summary>
        public TraceUserSignInBehaviorMonitor()
        {
        }

        #endregion

        #region Register
        /// <summary>
        /// 记录登录日志。
        /// </summary>
        /// <param name="ctx"><see cref="MonitorContext"/>对象实例。</param>
        public void Register(MonitorContext ctx)
        {
            if (!object.ReferenceEquals(ctx.ExpandoProperties["Successful"], null) && (bool)ctx.ExpandoProperties["Successful"])
            {
                if (ctx.ExpandoProperties["ReturnValue"] is AuthenticateResult)
                {
                    if (!string.IsNullOrEmpty((ctx.ExpandoProperties["ReturnValue"] as AuthenticateResult).Token.Token))
                    {
                        new UserInOutBehaviorTraceApi()
                        {
                            Mark = SecurityService.API.BehaviorService.InOut.In,
                            MethodName = ctx.MethodName,
                            Type = ctx.TypeName,
                            Version = typeof(TraceUserSignInBehaviorMonitor).Assembly.GetName().Version.ToString(),
                            UserID = ClientPrincipal.GetCurrentPrincipal().User.Name
                        }.Trace();
                    }
                }
            }
        }
        #endregion

        #region Intercept
        /// <summary>
        /// 拦截此方法。
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