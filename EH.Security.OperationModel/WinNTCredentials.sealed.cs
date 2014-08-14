#region "WinNTCredentials"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 10:14:00
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel
 * 
 * ####     Type Name : WinNTCredentials
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.WinNTCredentials
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

namespace EnterpriseServices.SecurityService.Framework.OperationModel
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.WinNTCredentials</para>
    /// <para>
    /// 定义了访问Windows身份票据的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class WinNTCredentials : IWinNTCredentials
    {
        private string _userName;

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WinNTCredentials" />对象实例。</para>
        /// </summary>
        /// <param name="userName">当前登录到Windows的用户名。</param>
        public WinNTCredentials(string userName)
        {
            this._userName = userName;
        }

        #endregion

        #region WinNTUserName
        /// <summary>
        /// 获取当前登录到Windows的用户名。
        /// </summary>
        public string WinNTUserName
        {
            get { return this._userName; }
        }
        #endregion

        #region UserName
        /// <summary>
        /// 获取当前登录到Windows的用户名。
        /// </summary>
        public string UserName
        {
            get { return this.WinNTUserName; }
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
        /// 获取是否为安全口令。
        /// </summary>
        public bool Secure
        {
            get { return true; }
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