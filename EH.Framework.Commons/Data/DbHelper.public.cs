#region "DbHelper"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-12 16:31:34
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons.Data
 * 
 * ####     Type Name : DbHelper
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.Data.DbHelper
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

namespace EnterpriseServices.Framework.Commons.Data
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.Data.DbHelper</para>
    /// <para>
    /// 提供了操作SQL Server数据库的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    public class DbHelper
    {
        private DbConnectionString _connectionString;
        private SqlConnection _connection;

        #region ConnectionString
        /// <summary>
        /// 设置或获取数据库连接串。
        /// </summary>
        protected virtual DbConnectionString ConnectionString
        {
            get { return _connectionString; }
            set { _connectionString = value; }
        }
        #endregion

        #region Connection
        /// <summary>
        /// 设置或获取SQL Server连接对象实例。
        /// </summary>
        protected virtual SqlConnection Connection
        {
            get { return _connection; }
            set { _connection = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="DbHelper" />对象实例。</para>
        /// </summary>
        /// <param name="connectionString"><see cref="DbConnectionString"/>对象实例。</param>
        public DbHelper(DbConnectionString connectionString)
        {
            this.ConnectionString = connectionString;
            this.Connection = new SqlConnection(this.ConnectionString.ConnectionString);
        }

        #endregion

        #region CreateCommand
        /// <summary>
        /// 创建SQL Server数据库命令。
        /// </summary>
        /// <param name="cmdText">SQL Server数据库命令文本。</param>
        /// <param name="cmdType"><see cref="CommandType"/>中的一个值。</param>
        /// <param name="parameters"><see cref="SqlParameter"/>[]。</param>
        /// <returns><see cref="SqlCommand"/>对象实例。</returns>
        public virtual SqlCommand CreateCommand(string cmdText, CommandType cmdType, params SqlParameter[] parameters)
        {
            SqlCommand cmd = new SqlCommand(cmdText, this.Connection) { CommandTimeout = 0, CommandType = cmdType };
            if (!object.ReferenceEquals(parameters, null) && parameters.Length > 0)
            {
                foreach (var item in parameters) cmd.Parameters.Add(item);
            }
            return cmd;
        }
        #endregion

        #region BuildParameterName
        /// <summary>
        /// 构建SQL Server参数名称。
        /// </summary>
        /// <param name="name">需要重构的参数名称。</param>
        /// <returns>参数名称。</returns>
        protected virtual string BuildParameterName(string name)
        {
            return name.StartsWith("@") ? name : string.Format("@{0}", name);
        }
        #endregion

        #region CreateParameter
        /// <summary>
        /// 创建SQL Server数据库命令参数。
        /// </summary>
        /// <param name="name">参数名称。</param>
        /// <param name="value">参数值。</param>
        /// <param name="dbType"><see cref="SqlDbType"/>中的一个值。</param>
        /// <param name="direction"><see cref="ParameterDirection"/>中的一个值。</param>
        /// <returns><see cref="SqlParameter"/>对象实例。</returns>
        public virtual SqlParameter CreateParameter(string name, object value, SqlDbType dbType, ParameterDirection direction)
        {
            return new SqlParameter(this.BuildParameterName(name), value) { SqlDbType = dbType, Direction = direction };
        }
        #endregion

        #region ExecuteNonQuery
        /// <summary>
        /// 执行<paramref name="cmd"/>并返回影响行数。
        /// </summary>
        /// <param name="cmd"><see cref="SqlCommand"/>对象实例。</param>
        /// <returns>影响行数。</returns>
        public int ExecuteNonQuery(SqlCommand cmd)
        {
            try
            {
                this.Connection.Open();
                return cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new DatabaseError(ex);
            }
            finally
            {
                this.Connection.Close();
            }
        }
        #endregion

        #region ExecuteDataSet
        /// <summary>
        /// 执行SQL Server查询命令，并返回数据集。
        /// </summary>
        /// <param name="selectCmd"><see cref="SqlCommand"/>对象实例。</param>
        /// <returns><see cref="DataSet"/>对象实例。</returns>
        public virtual DataSet ExecuteDataSet(SqlCommand selectCmd)
        {
            DataSet dataSet = new DataSet("EnterpriseServices.QueryDataSet");
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter(selectCmd);
                adapter.Fill(dataSet);
            }
            catch (Exception ex)
            {
                throw new DatabaseError(ex);
            }
            return dataSet;
        }
        #endregion

        #region ExecuteScalar
        /// <summary>
        /// 执行SQL Server数据库命令并返回标量值。
        /// </summary>
        /// <param name="cmd"><see cref="SqlCommand"/>对象实例。</param>
        /// <returns><see cref="Object"/>标量值。</returns>
        public virtual object ExecuteScalar(SqlCommand cmd)
        {
            try
            {
                this.Connection.Open();
                return cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw new DatabaseError(ex);
            }
            finally
            {
                this.Connection.Close();
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