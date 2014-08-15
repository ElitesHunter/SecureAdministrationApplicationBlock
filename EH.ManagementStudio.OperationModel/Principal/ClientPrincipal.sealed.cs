#region "ClientPrincipal"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-15 14:00:11
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Principal
 * 
 * ####     Type Name : ClientPrincipal
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Principal.ClientPrincipal
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
using EnterpriseServices.SecurityService.Framework.Commons.Principal;
using System.Security.Principal;
using System.Threading;

namespace EnterpriseServices.ManagementClient.Operations.Principal
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Principal.ClientPrincipal</para>
    /// <para>
    /// 定义了访问当前用户身份信息的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class ClientPrincipal : IUserPrincipal
    {
        private ClientIdentity _user;

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ClientPrincipal" />对象实例。</para>
        /// </summary>
        /// <param name="user">当前用户的身份信息。</param>
        internal ClientPrincipal(ClientIdentity user)
        {
            this._user = user;
        }

        #endregion

        #region User
        /// <summary>
        /// 获取当前用户。
        /// </summary>
        public IUserIdentity User
        {
            get { return this._user; }
        }
        #endregion

        #region Identity
        /// <summary>
        /// 获取登录到当前线程的用户。
        /// </summary>
        public IIdentity Identity
        {
            get { return this._user; }
        }
        #endregion

        #region IsInRole
        /// <summary>
        /// 尚未实现此方法。
        /// </summary>
        /// <param name="role"></param>
        /// <returns></returns>
        public bool IsInRole(string role)
        {
            throw new NotImplementedException();
        }
        #endregion

        #region GetCurrentPrincipal
        /// <summary>
        /// 获取当前线程的用户信息。
        /// </summary>
        /// <returns><see cref="ClientPrincipal"/>对象实例。</returns>
        static public IUserPrincipal GetCurrentPrincipal()
        {
            if (Thread.CurrentPrincipal is ClientPrincipal)
                return Thread.CurrentPrincipal as ClientPrincipal;
            else return null;
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