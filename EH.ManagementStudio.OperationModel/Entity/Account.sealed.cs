#region "Account"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-09-17 10:02:08
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Entity
 * 
 * ####     Type Name : Account
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Entity.Account
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

namespace EnterpriseServices.ManagementClient.Operations.Entity
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Entity.Account</para>
    /// <para>
    /// 账户信息实体。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class Account
    {
        private string _userName;
        private string _passphrase;
        private bool _useExpiredPolicy;
        private int _expiredLength;
        private int _unitValue;

        #region UserName
        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        #endregion

        #region Passphrase
        public string Passphrase
        {
            get { return _passphrase; }
            set { _passphrase = value; }
        }
        #endregion

        #region UseExpiredPolicy
        public bool UseExpiredPolicy
        {
            get { return _useExpiredPolicy; }
            set { _useExpiredPolicy = value; }
        }
        #endregion

        #region ExpiredLength
        public int ExpiredLength
        {
            get { return _expiredLength; }
            set { _expiredLength = value; }
        }
        #endregion

        #region UnitValue
        public int UnitValue
        {
            get { return _unitValue; }
            set { _unitValue = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Account" />对象实例。</para>
        /// </summary>
        public Account()
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