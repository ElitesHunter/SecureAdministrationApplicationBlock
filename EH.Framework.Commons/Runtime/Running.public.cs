#region "Running"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-06 10:06:58
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons.Runtime
 * 
 * ####     Type Name : Running
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.Runtime.Running
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
using System.Web;

namespace EnterpriseServices.Framework.Commons.Runtime
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.Runtime.Running</para>
    /// <para>
    /// 提供了获取当前应用运行形态的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class Running
    {
        private bool _isAspNET;
        static private Running _this;

        #region IsAspNET
        /// <summary>
        /// 获取当前应用是否为ASP.NET应用。
        /// </summary>
        public bool IsAspNET
        {
            get { return _isAspNET; }
            private set { _isAspNET = value; }
        }
        #endregion

        #region This
        /// <summary>
        /// 获取当前应用的运行形态。
        /// </summary>
        static public Running This
        {
            get
            {
                if (object.ReferenceEquals(_this, null)) _this = new Running();
                return _this;
            }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Running" />对象实例。</para>
        /// </summary>
        protected Running()
        {
            this.IsAspNET = !string.IsNullOrEmpty(HttpRuntime.AppDomainAppId) && !string.IsNullOrEmpty(HttpRuntime.AppDomainId);
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