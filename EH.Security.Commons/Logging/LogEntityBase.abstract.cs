#region "LogEntityBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-11 10:33:03
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons.Logging
 * 
 * ####     Type Name : LogEntityBase
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.Logging.LogEntityBase
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


namespace EnterpriseServices.SecurityService.Framework.Commons.Logging
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.Logging.LogEntityBase</para>
    /// <para>
    /// 定义了日志实体的基类。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public abstract class LogEntityBase
    {
        private MonitorContext _methodContext;

        #region MethodContext
        /// <summary>
        /// 设置或获取上下文对象。
        /// </summary>
        protected virtual MonitorContext MethodContext
        {
            get { return _methodContext; }
            set { _methodContext = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="LogEntityBase" />对象实例。</para>
        /// </summary>
        /// <param name="ctx"><see cref="MethodContext"/>对象实例。</param>
        protected LogEntityBase(MonitorContext ctx)
        {
            this.MethodContext = ctx;
        }

        #endregion

        #region WriteLog
        /// <summary>
        /// 写入日志。
        /// </summary>
        public abstract void WriteLog();
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