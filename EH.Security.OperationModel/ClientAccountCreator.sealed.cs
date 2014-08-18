#region "ClientAccountCreator"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-15 11:19:30
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel
 * 
 * ####     Type Name : ClientAccountCreator
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.ClientAccountCreator
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
using System.Data.SqlClient;
using EnterpriseServices.Framework.Commons.Data;
using EnterpriseServices.SecurityService.Framework.Commons;

namespace EnterpriseServices.SecurityService.Framework.OperationModel
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.ClientAccountCreator</para>
    /// <para>
    /// 用于创建管理客户端的账户。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class ClientAccountCreator : DbHelper
    {
        private const string StoredProcedureName = "Sp.GetAccountUseIdentityToken";
        private const string Token = "token";
        private const string UserName = "userName";
        private const string UniqueID = "uniqueID";
        private const string OpenID = "openID";

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ClientAccountCreator" />对象实例。</para>
        /// </summary>
        public ClientAccountCreator()
            : base(DbConnectionString.Current)
        {
        }

        #endregion

        #region CreateInstanceUseTokeExpression
        /// <summary>
        /// 使用身份认证令牌创建账户实例。
        /// </summary>
        /// <param name="token">身份令牌。</param>
        /// <returns><see cref="ClientAccount"/>对象实例。</returns>
        public ClientAccount CreateInstanceUseTokeExpression(AuthenticateToken token)
        {
            SqlParameter _token = this.CreateParameter(Token, token.Token, SqlDbType.VarChar, ParameterDirection.Input);
            SqlParameter userName = this.CreateParameter(UserName, DBNull.Value, SqlDbType.VarChar, ParameterDirection.Output);
            userName.Size = 512;
            SqlParameter uniqueID = this.CreateParameter(UniqueID, DBNull.Value, SqlDbType.UniqueIdentifier, ParameterDirection.Output);
            SqlParameter openID = this.CreateParameter(OpenID, DBNull.Value, SqlDbType.VarChar, ParameterDirection.Output);
            openID.Size = 256;
            SqlCommand cmd = this.CreateCommand(StoredProcedureName, CommandType.StoredProcedure, _token, userName, uniqueID, openID);
            this.ExecuteNonQuery(cmd);
            return new ClientAccount((Guid)uniqueID.Value, openID.Value.ToString()) { UserName = userName.Value.ToString() };
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