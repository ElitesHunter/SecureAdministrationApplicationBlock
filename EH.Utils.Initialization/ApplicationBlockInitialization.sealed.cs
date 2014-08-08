#region "ApplicationBlockInitialization"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-07 15:41:51
 * 
 * ####     Namespace : EnterpriseServices.Utilities.Initialization
 * 
 * ####     Type Name : ApplicationBlockInitialization
 * 
 * ####     Full Name : EnterpriseServices.Utilities.Initialization.ApplicationBlockInitialization
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
    /// <para>EnterpriseServices.Utilities.Initialization.ApplicationBlockInitialization</para>
    /// <para>
    /// 用于初始化系统应用模块。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class ApplicationBlockInitialization : SqlCommandPerformer
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ApplicationBlockInitialization" />对象实例。</para>
        /// </summary>
        /// <param name="connectionString">SQL Server数据库连接串。</param>
        public ApplicationBlockInitialization(string connectionString)
            : base(connectionString)
        {
        }

        #endregion

        #region LoadXmlData
        /// <summary>
        /// 加载用于初始化的XML数据文件。
        /// </summary>
        /// <param name="xDocument"><see cref="XmlDocument"/>对象实例。</param>
        /// <returns>数据文件是否存在。</returns>
        private bool LoadXmlData(XmlDocument xDocument)
        {
            string fileName = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"Xml\XApplicationBlocksDeclaration.xml");
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

            Console.Write("将要进行系统模块信息初始化，是否继续？(Y/N)");

            string tag = Console.ReadLine();

            if (!string.IsNullOrEmpty(tag) && tag.ToLower().StartsWith("y"))
            {
                XmlDocument xDoc = new XmlDocument();
                if (this.LoadXmlData(xDoc))
                {
                    SqlCommand cmd = this.CreateCommand("Sp.InitializeApplicationBlocks",
                        new SqlParameter("@xData", xDoc.DocumentElement.OuterXml) { SqlDbType = SqlDbType.Xml, Direction = ParameterDirection.Input }
                        );
                    this.ExecuteNonQuery(cmd);
                }
                else Console.WriteLine("未找到数据文件“XApplicationBlocksDeclaration.xml”！");
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