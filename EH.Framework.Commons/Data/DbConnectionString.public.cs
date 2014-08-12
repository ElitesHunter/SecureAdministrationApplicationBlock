#region "DbConnectionString"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-12 16:25:30
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons.Data
 * 
 * ####     Type Name : DbConnectionString
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.Data.DbConnectionString
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

using System.Configuration;

namespace EnterpriseServices.Framework.Commons.Data
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.Data.DbConnectionString</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class DbConnectionString
    {
        private string _name;
        private string _connectionString;
        static private DbConnectionString _current;

        #region Name
        /// <summary>
        /// 获取配置在app.config文件中的数据库连接名称。
        /// </summary>
        public virtual string Name
        {
            get { return _name; }
            protected set { _name = value; }
        }
        #endregion

        #region ConnectionString
        /// <summary>
        /// 获取数据库连接串。
        /// </summary>
        public virtual string ConnectionString
        {
            get { return _connectionString; }
            protected set { _connectionString = value; }
        }
        #endregion

        #region Current
        /// <summary>
        /// 获取当前的数据库连接串。
        /// </summary>
        static public DbConnectionString Current
        {
            get
            {
                if (object.ReferenceEquals(_current, null)) _current = new DbConnectionString();
                return _current;
            }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="DbConnectionString" />对象实例。</para>
        /// </summary>
        protected DbConnectionString()
        {
            this.Name = ConfigurationManager.AppSettings["DatabaseConnectionStringName"];
            this.ConnectionString = ConfigurationManager.ConnectionStrings[this.Name].ConnectionString;
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