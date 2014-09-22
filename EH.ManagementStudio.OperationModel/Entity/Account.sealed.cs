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
using EnterpriseServices.SecurityService.API;

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
        private bool _isLocked;
        private Guid _uniqueID;

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

        #region IsLocked
        public bool IsLocked
        {
            get { return _isLocked; }
            set { _isLocked = value; }
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

        #region TransferTo
        /// <summary>
        /// 类型转换。
        /// </summary>
        /// <param name="account"></param>
        /// <returns></returns>
        static public Account TransferTo(EnterpriseServices.SecurityService.API.OrgService.AccountExpandoProperty account)
        {
            return new Account()
            {
                UserName = account.UserName,
                Passphrase = account.Password,
                ExpiredLength = account.ExpirationPolicyLength,
                UnitValue = (int)(char)account.Policy,
                UseExpiredPolicy = !(account.Policy == EnterpriseServices.SecurityService.API.OrgService.ExpirationPolicy.None),
                IsLocked = account.IsLocked,
                UniqueID = account.UniqueID
            };
        }

        public EnterpriseServices.SecurityService.API.AuthenticationService.AccountExpandoProperty TransferTo(Guid staffID, string openID)
        {
            return new SecurityService.API.AuthenticationService.AccountExpandoProperty()
            {
                UniqueID = this.UniqueID,
                UserName = this.UserName,
                Password = this.Passphrase,
                Policy = this.GetPolicy(),
                ExpirationPolicyLength = this.ExpiredLength,
                IsLocked = this.IsLocked,
                StaffID = staffID,
                StaffOpenID = openID
            };
        }
        #endregion

        #region GetPolicy
        private EnterpriseServices.SecurityService.API.AuthenticationService.ExpirationPolicy GetPolicy()
        {
            EnterpriseServices.SecurityService.API.AuthenticationService.ExpirationPolicy policy = SecurityService.API.AuthenticationService.ExpirationPolicy.None;
            if (this.UseExpiredPolicy)
            {
                switch (this.UnitValue)
                {
                    case 0: policy = SecurityService.API.AuthenticationService.ExpirationPolicy.MonthPolicy; break;
                    case 1: policy = SecurityService.API.AuthenticationService.ExpirationPolicy.WeekPolicy; break;
                    case 2: policy = SecurityService.API.AuthenticationService.ExpirationPolicy.DayPolicy; break;
                }
            }
            return policy;
        }
        #endregion

        #region UniqueID
        public Guid UniqueID
        {
            get { return _uniqueID; }
            set { _uniqueID = value; }
        }
        #endregion

        #region Create
        public int Create(Guid staffID,string staffOpenID)
        {
            return new AccountApi().Create(this.TransferTo(staffID, staffOpenID));
        }
        #endregion

        #region UpdatePassword
        static public void UpdatePassword(Guid accID,string newPass)
        {
            new AccountApi().UpdatePassword(accID, newPass);
        }
        #endregion

        #region UnLock
        static public void UnLock(Guid accountID)
        {
            new AccountApi().UnLock(accountID);
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