#region "WinNTAuthentication"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 10:30:27
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel
 * 
 * ####     Type Name : WinNTAuthentication
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.WinNTAuthentication
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
using EnterpriseServices.Framework.Commons.Data;
using EnterpriseServices.SecurityService.Framework.OperationModel.Generators;
using System.Data.SqlClient;
using System.Data;

namespace EnterpriseServices.SecurityService.Framework.OperationModel
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.WinNTAuthentication</para>
    /// <para>
    /// 执行Windows身份登录。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class WinNTAuthentication : DbHelper, IAuthentication
    {
        private const string StoredProcedureName = "Sp.ExecuteWinNTAuthentication";
        private const string XData = "xData";
        private const string Token = "token";
        private const string State = "state";
        private string _iPAddress;
        private string _hostName;
        private DateTime _absoluteExpiration;

        #region IPAddress
        /// <summary>
        /// 设置或获取IP地址。
        /// </summary>
        private string IPAddress
        {
            get { return _iPAddress; }
            set { _iPAddress = value; }
        }
        #endregion

        #region HostName
        /// <summary>
        /// 设置或获取主机名称。
        /// </summary>
        private string HostName
        {
            get { return _hostName; }
            set { _hostName = value; }
        }
        #endregion

        #region AbsoluteExpiration
        /// <summary>
        /// 设置或获取绝对超时时间。
        /// </summary>
        private DateTime AbsoluteExpiration
        {
            get { return _absoluteExpiration; }
            set { _absoluteExpiration = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WinNTAuthentication" />对象实例。</para>
        /// </summary>
        /// <param name="ipAddress">IP地址。</param>
        /// <param name="hostName">主机名称。</param>
        /// <param name="absoluteExpiration">绝对的超时时间。</param>
        public WinNTAuthentication(string ipAddress, string hostName, DateTime absoluteExpiration)
            : base(DbConnectionString.Current)
        {
            this.IPAddress = ipAddress;
            this.HostName = hostName;
            this.AbsoluteExpiration = absoluteExpiration;
        }

        #endregion

        #region Authenticate
        /// <summary>
        /// 执行Windows身份认证。
        /// </summary>
        /// <param name="credentials"><see cref="WinNTCredentials"/>对象实例。</param>
        /// <returns><see cref="WinNTAuthenticateResult"/>对象实例。</returns>
        public AuthenticateResult Authenticate(ICredentials credentials)
        {
            SqlParameter xData = this.CreateParameter(XData, this.GenerateXmlParameterValue(credentials), SqlDbType.Xml, ParameterDirection.Input);
            SqlParameter token = this.CreateParameter(Token, DBNull.Value, SqlDbType.VarChar, ParameterDirection.Output);
            token.Size = 8000;
            SqlParameter state = this.CreateParameter(State, DBNull.Value, SqlDbType.VarChar, ParameterDirection.Output);
            state.Size = 64;
            this.ExecuteNonQuery(this.CreateCommand(StoredProcedureName, CommandType.StoredProcedure, xData, token, state));
            return this.CreateResult(token, state);
        }
        #endregion

        #region GenerateXmlParameterValue
        /// <summary>
        /// 生成存储过程所需的XML参数值。
        /// </summary>
        /// <param name="credentials"><see cref="WinNTCredentials"/>对象实例。</param>
        /// <returns>XML参数值。</returns>
        private string GenerateXmlParameterValue(ICredentials credentials)
        {
            return new WinNTAuthencationXParameterGenerator()
            {
                UserName = credentials.UserName,
                IPAddress = this.IPAddress,
                HostName = this.HostName,
                AbsoluteExpiration = this.AbsoluteExpiration
            }.TransformText();
        }
        #endregion

        #region CreateResult
        /// <summary>
        /// 创建Windows身份认证结果。
        /// </summary>
        /// <param name="token"><see cref="SqlParameter"/>对象实例。</param>
        /// <param name="state"><see cref="SqlParameter"/>对象实例。</param>
        /// <returns><see cref="WinNTAuthenticateResult"/>对象实例。</returns>
        private WinNTAuthenticateResult CreateResult(SqlParameter token, SqlParameter state)
        {
            WinNTAuthenticateToken authenToken = null;
            if (!object.ReferenceEquals(token.Value, null) && !token.Value.Equals(DBNull.Value)) authenToken = new WinNTAuthenticateToken(token.Value.ToString());
            else authenToken = new WinNTAuthenticateToken(string.Empty);
            WinNTAuthenticateResult authenResult = null;
            if (!object.ReferenceEquals(state.Value, null) && !token.Value.Equals(DBNull.Value)) authenResult = new WinNTAuthenticateResult(authenToken, state.Value.ToString());
            else authenResult = new WinNTAuthenticateResult(authenToken, string.Empty);
            return authenResult;
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