#region "WinNTAuthenticateStatus"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 13:36:20
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API.OpenServices.Results
 * 
 * ####     Type Name : WinNTAuthenticateStatus
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.OpenServices.Results.WinNTAuthenticateStatus
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
using EnterpriseServices.SecurityService.Framework.OperationModel;

namespace EnterpriseServices.SecurityService.API.OpenServices.Results
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.OpenServices.Results.WinNTAuthenticateStatus</para>
    /// <para>
    /// 提供了访问Windows身份认证结果的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    public sealed class WinNTAuthenticateStatus
    {
        private string _statusCode;
        private bool _successful;
        private string _token;
        private string _userName;
        private string _iPAddr;
        private string _hostName;

        #region StatusCode
        /// <summary>
        /// 设置或获取状态代码。
        /// </summary>
        public string StatusCode
        {
            get { return _statusCode; }
            set { _statusCode = value; }
        }
        #endregion

        #region Successful
        /// <summary>
        /// 设置或获取是否执行成功。
        /// </summary>
        public bool Successful
        {
            get { return _successful; }
            set { _successful = value; }
        }
        #endregion

        #region Token
        /// <summary>
        /// 设置或获取登录令牌。
        /// </summary>
        public string Token
        {
            get { return _token; }
            set { _token = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WinNTAuthenticateStatus" />对象实例。</para>
        /// </summary>
        public WinNTAuthenticateStatus()
        {
        }

        #endregion

        #region InitializeVariables
        /// <summary>
        /// 初始化变量值。
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="ip"></param>
        /// <param name="hostName"></param>
        internal void InitializeVariables(string userName, string ip, string hostName)
        {
            this._userName = userName;
            this._iPAddr = ip;
            this._hostName = hostName;
        }
        #endregion

        #region Authenticate
        /// <summary>
        /// 执行身份认证。
        /// </summary>
        internal void Authenticate()
        {
            WinNTAuthenticateResult result = new WinNTAuthentication(this._iPAddr, this._hostName, DateTime.Now.AddDays(1)).Authenticate(new WinNTCredentials(this._userName)) as WinNTAuthenticateResult;
            this.Successful = !string.IsNullOrEmpty(result.Token.Token);
            this.Token = result.Token.Token;
            this.StatusCode = result.StateCode;
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