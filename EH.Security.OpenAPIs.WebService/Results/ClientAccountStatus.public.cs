#region "ClientAccountStatus"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-15 11:33:02
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API.OpenServices.Results
 * 
 * ####     Type Name : ClientAccountStatus
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.OpenServices.Results.ClientAccountStatus
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

namespace EnterpriseServices.SecurityService.API.OpenServices.Results
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.OpenServices.Results.ClientAccountStatus</para>
    /// <para>
    /// 用于返回客户端所需的账户信息。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    public class ClientAccountStatus
    {
        private Guid _accountID;
        private string _accountOID;
        private string _userName;

        #region AccountID
        /// <summary>
        /// 设置或获取账户标识。
        /// </summary>
        public Guid AccountID
        {
            get { return _accountID; }
            set { _accountID = value; }
        }
        #endregion

        #region AccountOID
        /// <summary>
        /// 设置或获取账户的开放标识。
        /// </summary>
        public string AccountOID
        {
            get { return _accountOID; }
            set { _accountOID = value; }
        }
        #endregion

        #region UserName
        /// <summary>
        /// 设置或获取账户名。
        /// </summary>
        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ClientAccountStatus" />对象实例。</para>
        /// </summary>
        public ClientAccountStatus()
        {
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