#region "CommonsDirectoryInfo"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-07-31 15:21:21
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons.IO
 * 
 * ####     Type Name : CommonsDirectoryInfo
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.IO.CommonsDirectoryInfo
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
using System.Web.Hosting;
using EnterpriseServices.Framework.Commons.Runtime;

namespace EnterpriseServices.Framework.Commons.IO
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.IO.CommonsDirectoryInfo</para>
    /// <para>
    /// 用于访问通用文件夹目录路径。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class CommonsDirectoryInfo
    {
        private const string CommonsFolderName = "HunterServer Common Files";
        private const string EnvironmentVariableName = "HUNTER_SERVER";
        private static readonly TraceEvent<CommonsDirectoryInfo> TraceEvent = new TraceEvent<CommonsDirectoryInfo>();
        private DirectoryInfo _commonsDirectory;
        static private CommonsDirectoryInfo _current;

        #region GetPathByEnvironmentVar
        /// <summary>
        /// 使用环境变量获取通用文件夹路径。
        /// </summary>
        /// <returns></returns>
        private string GetPathByEnvironmentVar()
        {
            try
            {
                string envVariableValue = Environment.GetEnvironmentVariable(EnvironmentVariableName, EnvironmentVariableTarget.Machine);
                if (string.IsNullOrEmpty(envVariableValue))
                    TraceEvent.AttachTraceEvent(TraceEventLevel.Warning, "指定的环境变量 %HUNTER_SERVER% 不存在，将转为搜索操作系统的Windows目录！");
                return envVariableValue;
            }
            catch (Exception ex)
            {
                TraceEvent.AttachTraceEvent(TraceEventLevel.Exception, ex.Message);
                return string.Empty;
            }
        }
        #endregion

        #region CommonsDirectory
        /// <summary>
        /// 获取通用目录路径信息。
        /// </summary>
        public DirectoryInfo CommonsDirectory
        {
            get { return _commonsDirectory; }
            private set { _commonsDirectory = value; }
        }
        #endregion

        #region GetPathInWindowsFolder
        /// <summary>
        /// 从Windows文件夹中搜索通用路径。
        /// </summary>
        /// <returns></returns>
        private string GetPathInWindowsFolder()
        {
            try
            {
                string path = Path.Combine(new DirectoryInfo(Environment.SystemDirectory).Parent.FullName, CommonsFolderName);
                if (!Directory.Exists(path))
                {
                    TraceEvent.AttachTraceEvent(TraceEventLevel.Warning, "Windows目录下未找到通用文件夹，将转为搜索站点应用根目录！");
                    return string.Empty;
                }
                else return path;
            }
            catch (Exception ex)
            {
                TraceEvent.AttachTraceEvent(TraceEventLevel.Exception, ex.Message);
                return string.Empty;
            }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="CommonsDirectoryInfo" />对象实例。</para>
        /// </summary>
        private CommonsDirectoryInfo()
        {
            string commonDir = this.GetPathByEnvironmentVar();
            if (string.IsNullOrEmpty(commonDir))
            {
                commonDir = this.GetPathInWindowsFolder();
                if (string.IsNullOrEmpty(commonDir))
                    commonDir = Running.This.IsAspNET ? HostingEnvironment.ApplicationPhysicalPath : AppDomain.CurrentDomain.BaseDirectory;
            }
            this.CommonsDirectory = new DirectoryInfo(commonDir);
        }

        #endregion

        #region Current
        /// <summary>
        /// 获取当前的通用目录路径信息。
        /// </summary>
        static public CommonsDirectoryInfo Current
        {
            get
            {
                if (object.ReferenceEquals(_current, null)) _current = new CommonsDirectoryInfo();
                return _current;
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