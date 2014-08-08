#region "MonitorContext"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-05 11:28:37
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : MonitorContext
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.MonitorContext
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
using System.Collections.Generic;

namespace EnterpriseServices.SecurityService.Framework.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.MonitorContext</para>
    /// <para>
    /// 定义了方法监控器的方法上下文信息。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    public class MonitorContext
    {
        private string _methodName;
        private string _typeName;
        private int _argumentsCount;
        private int _inArgumentsCount;
        private int _outArgumentsCount;
        private IDictionary<string, object> _expandoProperties;

        #region MethodName
        /// <summary>
        /// 获取当前所执行的方法名称。
        /// </summary>
        public virtual string MethodName
        {
            get { return _methodName; }
            protected set { _methodName = value; }
        }
        #endregion

        #region TypeName
        /// <summary>
        /// 获取当前的类型名称。
        /// </summary>
        public virtual string TypeName
        {
            get { return _typeName; }
            protected set { _typeName = value; }
        }
        #endregion

        #region ArgumentsCount
        /// <summary>
        /// 获取所有参数的个数。
        /// </summary>
        public virtual int ArgumentsCount
        {
            get { return _argumentsCount; }
            protected set { _argumentsCount = value; }
        }
        #endregion

        #region InArgumentsCount
        /// <summary>
        /// 获取未标记out的参数个数。
        /// </summary>
        public virtual int InArgumentsCount
        {
            get { return _inArgumentsCount; }
            protected set { _inArgumentsCount = value; }
        }
        #endregion

        #region OutArgumentsCount
        /// <summary>
        /// 获取标记了out的参数个数。
        /// </summary>
        public virtual int OutArgumentsCount
        {
            get { return _outArgumentsCount; }
            protected set { _outArgumentsCount = value; }
        }
        #endregion

        #region ExpandoProperties
        /// <summary>
        /// 获取附加的属性集合。
        /// </summary>
        public virtual IDictionary<string, object> ExpandoProperties
        {
            get { return _expandoProperties; }
            protected set { _expandoProperties = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="MonitorContext" />对象实例。</para>
        /// </summary>
        /// <param name="methodName">方法名称。</param>
        /// <param name="typeName">类型名称。</param>
        /// <param name="argsCount">所有方法参数的个数。</param>
        /// <param name="inArgsCount">未标记out的参数个数。</param>
        public MonitorContext(string methodName, string typeName, int argsCount, int inArgsCount)
        {
            this.MethodName = methodName;
            this.TypeName = typeName;
            this.ArgumentsCount = argsCount;
            this.InArgumentsCount = inArgsCount;
            this.OutArgumentsCount = argsCount - inArgsCount;
            this.ExpandoProperties = new Dictionary<string, object>();
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