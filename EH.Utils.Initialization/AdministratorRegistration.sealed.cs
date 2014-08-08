#region "AdministratorRegistration"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-07 9:42:13
 * 
 * ####     Namespace : EnterpriseServices.Utilities.Initialization
 * 
 * ####     Type Name : AdministratorRegistration
 * 
 * ####     Full Name : EnterpriseServices.Utilities.Initialization.AdministratorRegistration
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
using System.Security.Principal;

namespace EnterpriseServices.Utilities.Initialization
{
    /// <summary>
    /// <para>EnterpriseServices.Utilities.Initialization.AdministratorRegistration</para>
    /// <para>
    /// 用于创建系统管理员。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class AdministratorRegistration : SqlCommandPerformer
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="AdministratorRegistration" />对象实例。</para>
        /// </summary>
        public AdministratorRegistration(string connectionString)
            : base(connectionString)
        {
        }

        #endregion

        #region CreateAdministrator
        /// <summary>
        /// 创建一个系统管理员。
        /// </summary>
        /// <param name="userName">管理员账户名称。</param>
        /// <param name="password">管理员密码。</param>
        /// <param name="isNTUser">是否为Windows集成账户。</param>
        /// <param name="isDefaultUser">是否为默认用户。</param>
        /// <param name="emptyPassword">是否允许为空密码。</param>
        private void CreateAdministrator(string userName, string password, bool isNTUser, bool isDefaultUser, bool emptyPassword)
        {
            SqlCommand cmd = this.CreateCommand("Sp.CreateAdministrator",
                new SqlParameter("@userID", userName) { SqlDbType = SqlDbType.VarChar, Direction = ParameterDirection.Input },
                new SqlParameter("@password", password) { SqlDbType = SqlDbType.VarChar, Direction = ParameterDirection.Input },
                new SqlParameter("@isNTUser", isNTUser.ToSqlValue()) { SqlDbType = SqlDbType.Char, Direction = ParameterDirection.Input },
                new SqlParameter("@isDefault", isDefaultUser.ToSqlValue()) { SqlDbType = SqlDbType.Char, Direction = ParameterDirection.Input },
                new SqlParameter("@emptyPWD", emptyPassword.ToSqlValue()) { SqlDbType = SqlDbType.Char, Direction = ParameterDirection.Input });
            this.ExecuteNonQuery(cmd);
        }
        #endregion

        #region RegisterAdminCurrentUser
        /// <summary>
        /// 将当前登录到Windows的用户注册为系统管理员。
        /// </summary>
        public void RegisterAdminCurrentUser()
        {
            Console.WriteLine(Environment.NewLine);

            WindowsIdentity currentUser = WindowsIdentity.GetCurrent();

            Console.WriteLine("是否将当前的用户“{0}”注册为系统管理员？(Y/N)", currentUser.Name);

            string tag = Console.ReadLine();
            if (!string.IsNullOrEmpty(tag) && tag.ToLower().StartsWith("y"))
            {
                this.CreateAdministrator(currentUser.Name, string.Empty, true, true, true);
            }
        }
        #endregion

        #region SetDefaultAdminPassword
        /// <summary>
        /// 设置默认系统管理员密码。
        /// </summary>
        public void SetDefaultAdminPassword()
        {
            Console.WriteLine(Environment.NewLine);

            Console.Write("请设置“sa”登录密码：");

            string password = Console.ReadLine();

            this.CreateAdministrator("sa", password, false, true, false);
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