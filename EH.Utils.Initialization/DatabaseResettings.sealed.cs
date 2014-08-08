#region "DatabaseResettings"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-07 13:54:26
 * 
 * ####     Namespace : EnterpriseServices.Utilities.Initialization
 * 
 * ####     Type Name : DatabaseResettings
 * 
 * ####     Full Name : EnterpriseServices.Utilities.Initialization.DatabaseResettings
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

namespace EnterpriseServices.Utilities.Initialization
{
    /// <summary>
    /// <para>EnterpriseServices.Utilities.Initialization.DatabaseResettings</para>
    /// <para>
    /// 用于重置数据库。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class DatabaseResettings : SqlCommandPerformer
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="DatabaseResettings" />对象实例。</para>
        /// </summary>
        /// <param name="connectionString">SQL Server数据库连接串。</param>
        public DatabaseResettings(string connectionString)
            : base(connectionString)
        {
        }

        #endregion

        #region Reset
        /// <summary>
        /// 重置数据库。
        /// </summary>
        public void Reset()
        {
            Console.WriteLine(Environment.NewLine);

            Console.Write("是否需要重置数据库？这将清空猎头系统的所有数据。(Y/N)");

            string tag = Console.ReadLine();

            if (!string.IsNullOrEmpty(tag) && tag.ToLower().StartsWith("y"))
            {
                this.ExecuteNonQuery(this.CreateCommand("Sp.ResetDatabase"));
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