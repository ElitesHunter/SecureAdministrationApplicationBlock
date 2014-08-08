#region "CodeInitialization"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-08 9:39:59
 * 
 * ####     Namespace : EnterpriseServices.Utilities.Initialization
 * 
 * ####     Type Name : CodeInitialization
 * 
 * ####     Full Name : EnterpriseServices.Utilities.Initialization.CodeInitialization
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
using System.IO;
using System.Xml;

namespace EnterpriseServices.Utilities.Initialization
{
    /// <summary>
    /// <para>EnterpriseServices.Utilities.Initialization.CodeInitialization</para>
    /// <para>
    /// 用于初始化系统预定义的编码。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class CodeInitialization : SqlCommandPerformer
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="CodeInitialization" />对象实例。</para>
        /// </summary>
        /// <param name="connectionString">SQL Server数据库连接串。</param>
        public CodeInitialization(string connectionString)
            : base(connectionString)
        {
        }

        #endregion

        #region LoadFromXml
        /// <summary>
        /// 加载XML数据文件。
        /// </summary>
        /// <param name="xDocument"><see cref="XmlDocument"/>对象实例。</param>
        /// <returns>XML数据文件是否存在。</returns>
        private bool LoadFromXml(XmlDocument xDocument)
        {
            string fileName = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"Xml\XCodesDeclaration.xml");
            bool isExists = File.Exists(fileName);
            if (isExists) xDocument.Load(fileName);
            return isExists;
        }
        #endregion

        #region Initialize
        /// <summary>
        /// 执行初始化。
        /// </summary>
        public void Initialize()
        {
            Console.WriteLine(Environment.NewLine);

            Console.Write("将要进行预定义代码初始化，是否继续？(Y/N)");

            string tag = Console.ReadLine();

            if (!string.IsNullOrEmpty(tag) && tag.ToLower().StartsWith("y"))
            {
                XmlDocument xDoc = new XmlDocument();
                if (this.LoadFromXml(xDoc))
                {
                    SqlCommand cmd = this.CreateCommand("Sp.InitializeCodes",
                        new SqlParameter("@xData", xDoc.DocumentElement.OuterXml) { SqlDbType = SqlDbType.Xml, Direction = ParameterDirection.Input }
                        );
                    this.ExecuteNonQuery(cmd);
                }
                else Console.WriteLine("未找到数据文件“XCodesDeclaration.xml”！");
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