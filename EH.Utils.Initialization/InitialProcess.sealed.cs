#region "InitialProcess"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-06 14:16:34
 * 
 * ####     Namespace : EnterpriseServices.Utilities.Initialization
 * 
 * ####     Type Name : InitialProcess
 * 
 * ####     Full Name : EnterpriseServices.Utilities.Initialization.InitialProcess
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
using System.IO;
using EnterpriseServices.Framework.Commons;
using EnterpriseServices.Framework.Commons.Runtime;
using EnterpriseServices.SecurityService.Framework.Commons;
using EnterpriseServices.Utilities.Initialization.Permission;

namespace EnterpriseServices.Utilities.Initialization
{
    /// <summary>
    /// <para>EnterpriseServices.Utilities.Initialization.InitialProcess</para>
    /// <para>
    /// 定义了初始化进程中的各种方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Monitor]
    public sealed class InitialProcess : _Object
    {
        private string _connectionString;

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="InitialProcess" />对象实例。</para>
        /// </summary>
        public InitialProcess()
        {
            Console.WriteLine("程序需要验证您是否具有系统管理员权限（即当前用户“{0}/{1}”是否在管理员组中），请稍后......", Environment.UserDomainName, Environment.UserName);
        }

        #endregion

        #region Start
        /// <summary>
        /// 开始执行初始化。
        /// </summary>
        [RequiredSystemAdministrator()]
        public void Start()
        {
            this.CreateEnvironmentVariable();
            this.CreateDatabaseConnectionString();
            new DatabaseResettings(this._connectionString).Reset();
            AdministratorRegistration adminRegistration = new AdministratorRegistration(this._connectionString);
            adminRegistration.RegisterAdminCurrentUser();
            adminRegistration.SetDefaultAdminPassword();
            new ApplicationBlockInitialization(this._connectionString).Initialize();
            new CodeInitialization(this._connectionString).Initialize();
        }
        #endregion

        #region CreateEnvironmentVariable
        /// <summary>
        /// 创建环境变量值。
        /// </summary>
        private void CreateEnvironmentVariable()
        {
            Console.WriteLine(Environment.NewLine);

            Console.WriteLine("程序将创建系统环境变量“HUNTER_SERVER”，以便保存猎头系统所需的通用配置！是否创建？(Y/N)");
            string tag = Console.ReadLine();
            if (!string.IsNullOrEmpty(tag) && tag.ToLower().StartsWith("y"))
            {
                Console.Write("请输入路径：");
                string path = Console.ReadLine();
                DirectoryInfo directory = new DirectoryInfo(path);
                try
                {
                    if (!directory.Exists) directory.Create();
                    Environment.SetEnvironmentVariable("HUNTER_SERVER", directory.FullName, EnvironmentVariableTarget.Machine);
                }
                catch (Exception ex)
                {
                    throw new Error(ex);
                }
            }
        }
        #endregion

        #region CreateDatabaseConnectionString
        /// <summary>
        /// 创建数据库连接串。
        /// </summary>
        private void CreateDatabaseConnectionString()
        {
            Console.WriteLine(Environment.NewLine);

            Console.Write("请输入猎头系统数据库连接串：");

            this._connectionString = Console.ReadLine();
        }
        #endregion

        #region Exit
        /// <summary>
        /// 退出。
        /// </summary>
        public void Exit()
        {
            Console.WriteLine(Environment.NewLine);

            Console.Write("系统初始化完毕！按下Enter键后退出。");

            Console.ReadKey(true);

            TraceEvent<InitialProcess> trace = new TraceEvent<InitialProcess>();

            trace.AttachTraceEvent(TraceEventLevel.Information,
                string.Format("系统于{0}初始化完毕！", DateTime.Now.ToString("yyyy年MM月dd日 HH:mm:ss")));
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