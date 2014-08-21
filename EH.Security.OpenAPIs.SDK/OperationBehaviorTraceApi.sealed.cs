#region "OperationBehaviorTraceApi"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-20 15:26:48
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API
 * 
 * ####     Type Name : OperationBehaviorTraceApi
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.OperationBehaviorTraceApi
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

namespace EnterpriseServices.SecurityService.API
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.OperationBehaviorTraceApi</para>
    /// <para>
    /// 用于记录用户操作的API。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class OperationBehaviorTraceApi : ApiServiceBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="OperationBehaviorTraceApi" />对象实例。</para>
        /// </summary>
        public OperationBehaviorTraceApi()
            : base("UserBehaviorService")
        {
        }

        #endregion

        #region Trace
        /// <summary>
        /// 记录用户操作日志。
        /// </summary>
        /// <param name="methodName">执行的方法名称。</param>
        /// <param name="typeName">定义此方法的类型名称。</param>
        /// <param name="version">定义此类型的程序集版本号。</param>
        /// <param name="userUniqueID">当前用户唯一标识。</param>
        public void Trace(string methodName, string typeName, string version, Guid userUniqueID)
        {
            using (BehaviorService.UserBehaviorService service = new BehaviorService.UserBehaviorService() { Url = base.ServiceUrl })
            {
                service.TraceOperateBehavior(methodName, typeName, version, userUniqueID);
            }
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