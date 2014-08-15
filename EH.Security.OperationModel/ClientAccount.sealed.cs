#region "ClientAccount"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-15 11:12:22
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel
 * 
 * ####     Type Name : ClientAccount
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.ClientAccount
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
using EnterpriseServices.SecurityService.Framework.Commons.Management;

namespace EnterpriseServices.SecurityService.Framework.OperationModel
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.ClientAccount</para>
    /// <para>
    /// 定义了管理客户端的账户。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    public sealed class ClientAccount : AccountBase
    {
        private AuthenticateMode _mode;

        #region Mode
        /// <summary>
        /// 设置或获取登录身份认证模式。
        /// </summary>
        public AuthenticateMode Mode
        {
            get { return _mode; }
            set { _mode = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ClientAccount" />对象实例。</para>
        /// </summary>
        public ClientAccount()
            : base()
        {
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ClientAccount" />对象实例。</para>
        /// </summary>
        /// <param name="uniqueID">账户的唯一标识。</param>
        /// <param name="openID">账户的开放式标识。</param>
        public ClientAccount(Guid uniqueID, string openID)
            : base(uniqueID, openID)
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