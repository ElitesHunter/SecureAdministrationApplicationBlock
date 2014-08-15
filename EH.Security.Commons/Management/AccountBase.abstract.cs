#region "AccountBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-15 11:06:55
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons.Management
 * 
 * ####     Type Name : AccountBase
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.Management.AccountBase
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

namespace EnterpriseServices.SecurityService.Framework.Commons.Management
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.Management.AccountBase</para>
    /// <para>
    /// 定义了账户基类。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    public abstract class AccountBase
    {
        private string _userName;
        private Guid _uniqueID;
        private string _openID;

        #region UserName
        /// <summary>
        /// 设置或获取用户名。
        /// </summary>
        public virtual string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        #endregion

        #region UniqueID
        /// <summary>
        /// 获取唯一标识。
        /// </summary>
        public virtual Guid UniqueID
        {
            get { return _uniqueID; }
            protected set { _uniqueID = value; }
        }
        #endregion

        #region OpenID
        /// <summary>
        /// 获取账户的开放标识。
        /// </summary>
        public virtual string OpenID
        {
            get { return _openID; }
            protected set { _openID = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="AccountBase" />对象实例。</para>
        /// </summary>
        protected AccountBase()
            : this(Guid.NewGuid(), string.Empty)
        {
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="AccountBase" />对象实例。</para>
        /// </summary>
        /// <param name="uniqueID">账户的唯一标识。</param>
        /// <param name="openID">账户的开放标识。</param>
        protected AccountBase(Guid uniqueID, string openID)
        {
            this.UniqueID = uniqueID;
            this.OpenID = openID;
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