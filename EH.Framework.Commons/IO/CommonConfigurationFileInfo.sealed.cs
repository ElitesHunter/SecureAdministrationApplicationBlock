#region "CommonConfigurationFileInfo"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-01 10:31:28
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons.IO
 * 
 * ####     Type Name : CommonConfigurationFileInfo
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.IO.CommonConfigurationFileInfo
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

using System.IO;

namespace EnterpriseServices.Framework.Commons.IO
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.IO.CommonConfigurationFileInfo</para>
    /// <para>
    /// 用于访问通用配置文件信息。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class CommonConfigurationFileInfo
    {
        private const string FileName = "EH.Common.Config";
        static private CommonConfigurationFileInfo _current;

        #region CommonConfigurationFile
        /// <summary>
        /// 获取通用配置文件信息。
        /// </summary>
        public FileInfo CommonConfigurationFile
        {
            get
            {
                DirectoryInfo commonsDir = CommonsDirectoryInfo.Current.CommonsDirectory;
                if (!commonsDir.Exists)
                    throw new DirectoryNotFoundError(commonsDir.FullName);
                string fileName = Path.Combine(commonsDir.FullName, FileName);
                if (!File.Exists(fileName))
                    throw new FileNotFoundError(fileName);
                return new FileInfo(fileName);
            }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="CommonConfigurationFileInfo" />对象实例。</para>
        /// </summary>
        private CommonConfigurationFileInfo()
        {
        }

        #endregion

        #region Current
        /// <summary>
        /// 获取当前的通用配置文件信息。
        /// </summary>
        static public CommonConfigurationFileInfo Current
        {
            get
            {
                if (object.ReferenceEquals(_current, null))
                    _current = new CommonConfigurationFileInfo();
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