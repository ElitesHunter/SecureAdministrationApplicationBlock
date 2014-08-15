#region "ClientIdentity"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-15 10:36:29
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Principal
 * 
 * ####     Type Name : ClientIdentity
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Principal.ClientIdentity
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
using EnterpriseServices.SecurityService.API;
using EnterpriseServices.SecurityService.API.IdentityService;
using EnterpriseServices.SecurityService.Framework.Commons;
using EnterpriseServices.SecurityService.Framework.Commons.Principal;

namespace EnterpriseServices.ManagementClient.Operations.Principal
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Principal.ClientIdentity</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class ClientIdentity : IUserIdentity
    {
        private string _token;
        private AuthenticateMode _authenticateMode;
        private string _openID;
        private Guid _uniqueID;
        private string _userName;

        #region Token
        /// <summary>
        /// 获取身份令牌。
        /// </summary>
        public string Token
        {
            get { return _token; }
            private set { _token = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ClientIdentity" />对象实例。</para>
        /// </summary>
        /// <param name="token">身份令牌。</param>
        /// <param name="authenMode"><see cref="AuthenticateMode"/>中的一个值。</param>
        internal ClientIdentity(string token, AuthenticateMode authenMode)
        {
            this._authenticateMode = authenMode;
            ClientAccountStatus status = new ClientIdentityApi().GetAccountUseToken(token);
            this._userName = status.UserName;
            this._uniqueID = status.AccountID;
            this._openID = status.AccountOID;
        }

        #endregion

        #region UniqueID
        /// <summary>
        /// 获取当前用户的唯一标识。
        /// </summary>
        public Guid UniqueID
        {
            get { return this._uniqueID; }
        }
        #endregion

        #region AuthenticationType
        /// <summary>
        /// 获取当前用户的身份认证类型。
        /// </summary>
        public string AuthenticationType
        {
            get { return this._authenticateMode.ToString(); }
        }
        #endregion

        #region IsAuthenticated
        /// <summary>
        /// 获取当前用户是否已经经过身份认证。
        /// </summary>
        public bool IsAuthenticated
        {
            get { return true; }
        }
        #endregion

        #region Name
        /// <summary>
        /// 获取登录当前线程的用户名。
        /// </summary>
        public string Name
        {
            get { return this._userName; }
        }
        #endregion

        #region OpenID
        /// <summary>
        /// 获取当前用户的开放标识。
        /// </summary>
        public string OpenID
        {
            get { return this._openID; }
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