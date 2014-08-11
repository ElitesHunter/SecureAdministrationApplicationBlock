#region "ThreadCultureInfo"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-11 15:37:49
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons.Globalization
 * 
 * ####     Type Name : ThreadCultureInfo
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.Globalization.ThreadCultureInfo
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

using System.Globalization;
using System.Threading;

namespace EnterpriseServices.Framework.Commons.Globalization
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.Globalization.ThreadCultureInfo</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class ThreadCultureInfo
    {
        private LocaleID _localeID;

        #region LocaleID
        /// <summary>
        /// 设置或获取语言区域的ID。
        /// </summary>
        public virtual LocaleID LocaleID
        {
            get { return _localeID; }
            set { _localeID = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ThreadCultureInfo" />对象实例。</para>
        /// </summary>
        public ThreadCultureInfo()
        {
        }

        #endregion

        #region CreateCultureInfo
        /// <summary>
        /// 创建语言区域信息。
        /// </summary>
        /// <returns><see cref="CultureInfo"/>对象实例。</returns>
        public virtual CultureInfo CreateCultureInfo()
        {
            return new CultureInfo((int)this.LocaleID);
        }
        #endregion

        #region SetUI
        /// <summary>
        /// 设置UI的语言区域。
        /// </summary>
        public virtual void SetUI()
        {
            Thread.CurrentThread.CurrentUICulture = this.CreateCultureInfo();
        }
        #endregion

        #region Set
        /// <summary>
        /// 设置当前线程的语言区域信息。
        /// </summary>
        public virtual void Set()
        {
            Thread.CurrentThread.CurrentCulture = this.CreateCultureInfo();
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