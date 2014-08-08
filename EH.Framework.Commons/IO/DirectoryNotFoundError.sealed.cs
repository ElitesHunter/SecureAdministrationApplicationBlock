#region "DirectoryNotFoundError"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-07-31 14:09:13
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons.IO
 * 
 * ####     Type Name : DirectoryNotFoundError
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.IO.DirectoryNotFoundError
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
using EnterpriseServices.Framework.Resources;

namespace EnterpriseServices.Framework.Commons.IO
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.IO.DirectoryNotFoundError</para>
    /// <para>
    /// 当指定的目录路径未找到时抛出此异常。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    [ApplicationBlockCode("BASIC")]
    [ErrorCode("ERROR::00000003")]
    public sealed class DirectoryNotFoundError : Error
    {
        private string _directory;

        #region Directory
        /// <summary>
        /// 获取未找到的目录路径。
        /// </summary>
        public string Directory
        {
            get { return _directory; }
            private set { _directory = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="DirectoryNotFoundError" />对象实例。</para>
        /// </summary>
        /// <param name="directory">未找到的目录路径。</param>
        /// <param name="innerException">引发了此异常的<see cref="Exception"/>对象实例。</param>
        public DirectoryNotFoundError(string directory, Exception innerException)
            : base(ErrorMessages.DirectoryNotFoundError, innerException)
        {
            this.Directory = directory;
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="DirectoryNotFoundError" />对象实例。</para>
        /// </summary>
        /// <param name="directory">未找到的目录路径。</param>
        public DirectoryNotFoundError(string directory)
            : this(directory, null)
        {
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