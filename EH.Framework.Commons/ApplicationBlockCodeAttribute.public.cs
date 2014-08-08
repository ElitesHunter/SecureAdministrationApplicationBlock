#region "ApplicationBlockCodeAttribute"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-07-31 13:37:48
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons
 * 
 * ####     Type Name : ApplicationBlockCodeAttribute
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.ApplicationBlockCodeAttribute
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

namespace EnterpriseServices.Framework.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.ApplicationBlockCodeAttribute</para>
    /// <para>
    /// 用于标记应用模块代码。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [AttributeUsage(AttributeTargets.Class, Inherited = false, AllowMultiple = false)]
    public class ApplicationBlockCodeAttribute : Attribute
    {
        private string _code;

        #region Code
        /// <summary>
        /// 获取应用模块代码。
        /// </summary>
        public virtual string Code
        {
            get { return _code; }
            protected set { _code = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ApplicationBlockCodeAttribute" />对象实例。</para>
        /// </summary>
        /// <param name="code">应用模块代码。</param>
        public ApplicationBlockCodeAttribute(string code)
        {
            this.Code = code;
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