#region "ExtraMonitorError"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-06 9:45:57
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons.Extra
 * 
 * ####     Type Name : ExtraMonitorError
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.Extra.ExtraMonitorError
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
using EnterpriseServices.Framework.Commons;
using EnterpriseServices.SecurityService.Framework.Resources;

namespace EnterpriseServices.SecurityService.Framework.Commons.Extra
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.Extra.ExtraMonitorError</para>
    /// <para>
    /// 附加的方法监听器可能抛出此异常。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    [ApplicationBlockCode("SECURECTRL")]
    [ErrorCode("ERROR::00000016")]
    public class ExtraMonitorError : Error
    {
        private string _extraFileName;
        private Guid _monitorID;

        #region ExtraFileName
        /// <summary>
        /// 获取抛出此异常关联的附加监听器文件名称。
        /// </summary>
        public virtual string ExtraFileName
        {
            get { return _extraFileName; }
            protected set { _extraFileName = value; }
        }
        #endregion

        #region MonitorID
        /// <summary>
        /// 获取抛出异常的附加监听器ID。
        /// </summary>
        public virtual Guid MonitorID
        {
            get { return _monitorID; }
            protected set { _monitorID = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ExtraMonitorError" />对象实例。</para>
        /// </summary>
        /// <param name="typeName">需要监听的类型名称。</param>
        /// <param name="methodName">需要监听的方法名称。</param>
        /// <param name="monitorID">附加监听器标识。</param>
        /// <param name="innerException">引发此异常的<see cref="Exception"/>对象实例。</param>
        public ExtraMonitorError(string typeName, string methodName, Guid monitorID, Exception innerException)
            : base(ErrorMessages.ExtraMonitorError, innerException)
        {
            this.ExtraFileName = string.Format("{0}({1}).Monitor.extras", typeName, methodName);
            this.MonitorID = monitorID;
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ExtraMonitorError" />对象实例。</para>
        /// </summary>
        /// <param name="typeName">需要监听的类型名称。</param>
        /// <param name="methodName">需要监听的方法名称。</param>
        /// <param name="monitorID">附加监听器标识。</param>
        public ExtraMonitorError(string typeName, string methodName, Guid monitorID)
            : this(typeName, methodName, monitorID, null)
        {
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