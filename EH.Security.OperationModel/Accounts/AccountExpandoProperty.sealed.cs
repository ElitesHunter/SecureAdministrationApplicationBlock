#region "AccountExpandoProperty"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-09-10 15:02:46
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel.Accounts
 * 
 * ####     Type Name : AccountExpandoProperty
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.Accounts.AccountExpandoProperty
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
using System.Data;
using EnterpriseServices.Framework.Commons.Data;

namespace EnterpriseServices.SecurityService.Framework.OperationModel.Accounts
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.Accounts.AccountExpandoProperty</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    public sealed class AccountExpandoProperty : AccountBase
    {
        private bool _isLocked;
        private ExpirationPolicy _policy;
        private int _expirationPolicyLength;

        #region ExpirationPolicyLength
        public int ExpirationPolicyLength
        {
            get { return _expirationPolicyLength; }
            set { _expirationPolicyLength = value; }
        }
        #endregion

        #region Policy
        public ExpirationPolicy Policy
        {
            get { return _policy; }
            set { _policy = value; }
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
        /// <para>初始化一个<see cref="AccountExpandoProperty" />对象实例。</para>
        /// </summary>
        public AccountExpandoProperty()
        {
        }

        #endregion

        #region Initialize
        private void Initialize(DataTable data)
        {
            if (data.Rows.Count.Equals(0))
            {
                this.UniqueID = Guid.Empty;
            }
            else
            {
                this.UniqueID = (Guid)data.Rows[0]["StaffAccountUniqueID"];
                this.IsLocked = data.Rows[0]["StaffAccountWasLocked"].ToString().TransferFromDB();
                this.Policy = (ExpirationPolicy)char.Parse(data.Rows[0]["ExpirationCycleUnit"].ToString());
                this.ExpirationPolicyLength = int.Parse(data.Rows[0]["ExpirationCycleLength"].ToString());
                this.UserName = data.Rows[0]["UserName"].ToString();
                this.Password = string.Empty;
            }
        }
        #endregion

        #region Get
        static public AccountExpandoProperty Get(string staffOpenID)
        {
            DbHelper helper = new DbHelper(DbConnectionString.Current);
            DataSet data = helper.ExecuteDataSet(
                    helper.CreateCommand("Sp.GetStaffAccountExpandoProperties", CommandType.StoredProcedure,
                        helper.CreateParameter("openID", staffOpenID, SqlDbType.VarChar, ParameterDirection.Input)
                    )
                );
            AccountExpandoProperty property = new AccountExpandoProperty();
            property.Initialize(data.Tables[0]);
            return property;
        }
        #endregion

        #region Create
        /// <summary>
        /// 创建账户扩展属性信息。
        /// </summary>
        public override void Create()
        {
            string xData = new Generators.CreateAccountXParameterGenerator() { Instance = this }.TransformText();
            base.ExecuteNonQuery(base.CreateCommand("Sp.CreateStaffAccount", CommandType.StoredProcedure,
                base.CreateParameter("xData", xData, SqlDbType.Xml, ParameterDirection.Input)
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