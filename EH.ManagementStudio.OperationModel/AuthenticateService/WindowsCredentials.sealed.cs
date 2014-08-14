#region "WindowsCredentials"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 16:21:42
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.AuthenticateService
 * 
 * ####     Type Name : WindowsCredentials
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsCredentials
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
using EnterpriseServices.SecurityService.Framework.Commons;

namespace EnterpriseServices.ManagementClient.Operations.AuthenticateService
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.AuthenticateService.WindowsCredentials</para>
    /// <para>
    /// 定义了登录到Windows的当前用户凭据。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class WindowsCredentials : ICredentials, IWinNTCredentials
    {
        private string _userName;

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WindowsCredentials" />对象实例。</para>
        /// </summary>
        private WindowsCredentials()
        {
            this._userName = string.Format(@"{0}\{1}", Environment.UserDomainName, Environment.UserName);
        }

        #endregion

        #region UserName
        /// <summary>
        /// 获取登录到Windows的当前用户名。
        /// </summary>
        public string UserName
        {
            get { return this._userName; }
        }
        #endregion

        #region Password
        /// <summary>
        /// 尚未实现此方法。
        /// </summary>
        [Obsolete]
        public string Password
        {
            get { throw new NotImplementedException(); }
        }
        #endregion

        #region Secure
        /// <summary>
        /// 直接返回true。
        /// </summary>
        public bool Secure
        {
            get { return true; }
        }
        #endregion

        #region WinNTUserName
        /// <summary>
        /// 获取登录到Windows的当前用户名。
        /// </summary>
        public string WinNTUserName
        {
            get { return this._userName; }
        }
        #endregion

        #region GetCurrent
        /// <summary>
        /// 获取登录到Windows的用户凭据。
        /// </summary>
        /// <returns><see cref="IWinNTCredentials"/>对象实例。</returns>
        static public IWinNTCredentials GetCurrent()
        {
            return new WindowsCredentials();
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