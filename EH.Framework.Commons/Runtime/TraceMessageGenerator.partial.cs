#region "TraceMessageGenerator"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-07-31 16:03:58
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons.Runtime
 * 
 * ####     Type Name : TraceMessageGenerator
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.Runtime.TraceMessageGenerator
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

namespace EnterpriseServices.Framework.Commons.Runtime
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.Runtime.TraceMessageGenerator</para>
    /// <para>
    /// 用于生成跟踪信息。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    partial class TraceMessageGenerator
    {
        private Type _type;
        private TraceEventLevel _traceEventLevel;
        private string _message;

        #region Type
        /// <summary>
        /// 设置或获取跟踪的类型。
        /// </summary>
        internal Type Type
        {
            get { return _type; }
            set { _type = value; }
        }
        #endregion

        #region TraceEventLevel
        /// <summary>
        /// 设置或获取跟踪事件级别。
        /// </summary>
        internal TraceEventLevel TraceEventLevel
        {
            get { return _traceEventLevel; }
            set { _traceEventLevel = value; }
        }
        #endregion

        #region Message
        /// <summary>
        /// 设置或获取需要输出的消息。
        /// </summary>
        internal string Message
        {
            get { return _message; }
            set { _message = value; }
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