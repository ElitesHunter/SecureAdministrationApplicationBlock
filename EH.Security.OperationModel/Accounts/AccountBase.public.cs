#region "AccountBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-09-10 14:58:17
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel.Accounts
 * 
 * ####     Type Name : AccountBase
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.Accounts.AccountBase
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
using EnterpriseServices.Framework.Commons.Data;
using System.Data;

namespace EnterpriseServices.SecurityService.Framework.OperationModel.Accounts
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.Accounts.AccountBase</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    public class AccountBase : DbHelper
    {
        private string _userName;
        private string _password;
        private Guid _uniqueID;
        private Guid _staffID;
        private string _staffOpenID;

        #region StaffID
        public virtual Guid StaffID
        {
            get { return _staffID; }
            set { _staffID = value; }
        }
        #endregion

        #region StaffOpenID
        public virtual string StaffOpenID
        {
            get { return _staffOpenID; }
            set { _staffOpenID = value; }
        }
        #endregion

        #region UserName
        public virtual string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        #endregion

        #region Password
        public virtual string Password
        {
            get { return _password; }
            set { _password = value; }
        }
        #endregion

        #region UniqueID
        public virtual Guid UniqueID
        {
            get { return _uniqueID; }
            set { _uniqueID = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="AccountBase" />对象实例。</para>
        /// </summary>
        public AccountBase()
            : base(DbConnectionString.Current)
        {
        }

        #endregion

        #region Create
        public virtual void Create()
        {
        }
        #endregion

        #region UpdatePass
        static public void UpdatePass(Guid accountID, string newPassword)
        {
            DbHelper helper = new DbHelper(DbConnectionString.Current);
            helper.ExecuteNonQuery(
                    helper.CreateCommand("Sp.ChangePassword", CommandType.StoredProcedure,
                        helper.CreateParameter("accountID", accountID, SqlDbType.UniqueIdentifier, ParameterDirection.Input),
                        helper.CreateParameter("newPass", newPassword, SqlDbType.VarChar, ParameterDirection.Input)
                        )
                );
        }
        #endregion

        #region UnLock
        static public void UnLock(Guid accountID)
        {
            DbHelper helper = new DbHelper(DbConnectionString.Current);
            helper.ExecuteNonQuery(
                    helper.CreateCommand("Sp.UnlockAccount", CommandType.StoredProcedure,
                        helper.CreateParameter("accountID", accountID, SqlDbType.UniqueIdentifier, ParameterDirection.Input)
                    )
                );
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