#region "ExtraMonitorFileGenerator"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-05 15:32:05
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons.Extra
 * 
 * ####     Type Name : ExtraMonitorFileGenerator
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.Extra.ExtraMonitorFileGenerator
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
using EnterpriseServices.Framework.Commons.IO;

namespace EnterpriseServices.SecurityService.Framework.Commons.Extra
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.Extra.ExtraMonitorFileGenerator</para>
    /// <para>
    /// 用于生成附加监听器配置文件。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class ExtraMonitorFileGenerator
    {
        private ExtraMonitor _extraMonitor;
        private const string FolderName = "Extras";

        #region ExtraMonitor
        /// <summary>
        /// 设置或获取附加监听器对象。
        /// </summary>
        protected virtual ExtraMonitor ExtraMonitor
        {
            get { return _extraMonitor; }
            set { _extraMonitor = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ExtraMonitorFileGenerator" />对象实例。</para>
        /// </summary>
        /// <param name="monitor">附件监听器对象实例。</param>
        public ExtraMonitorFileGenerator(ExtraMonitor monitor)
        {
            this.ExtraMonitor = monitor;
        }

        #endregion

        #region CreateFolder
        /// <summary>
        /// 创建附加监听器文件保存文件夹。
        /// </summary>
        /// <returns><see cref="DirectoryInfo"/>对象实例。</returns>
        protected virtual DirectoryInfo CreateFolder()
        {
            DirectoryInfo extrasFolderDir = new DirectoryInfo(Path.Combine(CommonsDirectoryInfo.Current.CommonsDirectory.FullName, FolderName));
            if (!extrasFolderDir.Exists)
            {
                extrasFolderDir.Create();
                extrasFolderDir.Attributes = FileAttributes.Hidden;
            }
            return extrasFolderDir;
        }
        #endregion

        #region Write
        /// <summary>
        /// 将信息写入文件。
        /// </summary>
        public virtual void Write()
        {
            using (FileStream extraFileStream = new FileStream(Path.Combine(this.CreateFolder().FullName, string.Format("{0}({1}).Monitor.extras", this.ExtraMonitor.TypeName, this.ExtraMonitor.MethodName)), FileMode.OpenOrCreate, FileAccess.Write, FileShare.Read))
            {
                using (StreamWriter extraFileWriter = new StreamWriter(extraFileStream))
                {
                    try
                    {
                        extraFileWriter.Write(new ExtraMonitorFileTextTemplate() { ExtraMonitor = this.ExtraMonitor }.TransformText());
                    }
                    catch (Exception ex)
                    {
                        throw new Error(ex);
                    }
                    finally
                    {
                        extraFileWriter.Close();
                        extraFileStream.Close();
                    }
                }
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