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
        internal ClientIdentity(string token)
        {

        }

        #endregion

        public Guid UniqueID
        {
            get { throw new NotImplementedException(); }
        }

        public string AuthenticationType
        {
            get { throw new NotImplementedException(); }
        }

        public bool IsAuthenticated
        {
            get { throw new NotImplementedException(); }
        }

        public string Name
        {
            get { throw new NotImplementedException(); }
        }
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