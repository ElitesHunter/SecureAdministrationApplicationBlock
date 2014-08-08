#region "SqlCommandPerformer"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-07 9:44:27
 * 
 * ####     Namespace : EnterpriseServices.Utilities.Initialization
 * 
 * ####     Type Name : SqlCommandPerformer
 * 
 * ####     Full Name : EnterpriseServices.Utilities.Initialization.SqlCommandPerformer
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
using EnterpriseServices.Framework.Commons;

namespace EnterpriseServices.Utilities.Initialization
{
    /// <summary>
    /// <para>EnterpriseServices.Utilities.Initialization.SqlCommandPerformer</para>
    /// <para>
    /// 用于执行SQL Server数据库命令。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public abstract class SqlCommandPerformer
    {
        private string _connectionString;

        #region ConnectionString
        /// <summary>
        /// 设置或获取数据库连接串。
        /// </summary>
        protected string ConnectionString
        {
            get { return _connectionString; }
            set { _connectionString = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="SqlCommandPerformer" />对象实例。</para>
        /// </summary>
        /// <param name="connectionString">数据库连接串。</param>
        protected SqlCommandPerformer(string connectionString)
        {
            this.ConnectionString = connectionString;
        }

        #endregion

        #region CreateConnection
        /// <summary>
        /// 创建SQL Server数据库连接对象。
        /// </summary>
        /// <returns><see cref="SqlConnection"/>对象实例。</returns>
        protected virtual SqlConnection CreateConnection()
        {
            return new SqlConnection(this.ConnectionString);
        }
        #endregion

        #region CreateCommand
        /// <summary>
        /// 创建SQL Server数据库命令。
        /// </summary>
        /// <param name="storedProcedureName">存储过程名称。</param>
        /// <param name="parameters">参数数组。</param>
        /// <returns><see cref="SqlCommand"/>对象实例。</returns>
        protected virtual SqlCommand CreateCommand(string storedProcedureName, params SqlParameter[] parameters)
        {
            SqlCommand cmd = new SqlCommand(storedProcedureName, this.CreateConnection())
            {
                CommandTimeout = 0,
                CommandType = CommandType.StoredProcedure
            };
            if (!object.ReferenceEquals(parameters, null) && parameters.Length > 0)
            {
                foreach (var item in parameters) cmd.Parameters.Add(item);
            }
            return cmd;
        }
        #endregion

        #region ExecuteNonQuery
        /// <summary>
        /// 执行SQL Server数据库命令。
        /// </summary>
        /// <param name="cmd"><see cref="SqlCommand"/>对象实例。</param>
        protected virtual void ExecuteNonQuery(SqlCommand cmd)
        {
            try
            {
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Error(ex);
            }
            finally
            {
                cmd.Connection.Close();
            }
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