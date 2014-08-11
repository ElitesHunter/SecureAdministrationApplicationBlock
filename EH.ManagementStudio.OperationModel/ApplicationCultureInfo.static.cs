#region "ApplicationCultureInfo"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-11 15:45:04
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : ApplicationCultureInfo
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.ApplicationCultureInfo
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
using EnterpriseServices.Framework.Commons.Globalization;
using System.Globalization;

namespace EnterpriseServices.ManagementClient.Operations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.ApplicationCultureInfo</para>
    /// <para>
    /// 设置当前线程的语言区域信息。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class ApplicationCultureInfo : ThreadCultureInfo
    {
        #region CreateCultureInfo
        /// <summary>
        /// 创建语言区域信息。
        /// </summary>
        /// <returns><see cref="CultureInfo"/>对象实例。</returns>
        public override CultureInfo CreateCultureInfo()
        {
            try
            {
                CultureInfo osCultureInfo = CultureInfo.InstalledUICulture;
                base.LocaleID = osCultureInfo.LCID.Equals(2052) ? LocaleID.SimplifiedChinese : LocaleID.English;
                return base.CreateCultureInfo();
            }
            catch
            {
                base.LocaleID = LocaleID.English;
                return base.CreateCultureInfo();
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