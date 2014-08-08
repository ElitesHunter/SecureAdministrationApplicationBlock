#region "WrongUserNameError"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-04 9:30:32
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : WrongUserNameError
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.WrongUserNameError
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
using EnterpriseServices.Framework.Commons;
using EnterpriseServices.SecurityService.Framework.Resources;

namespace EnterpriseServices.SecurityService.Framework.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.WrongUserNameError</para>
    /// <para>
    /// 当用户名验证失败时抛出此异常。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    [ApplicationBlockCode("SECURECTRL::AUTHENTICATE")]
    [ErrorCode("ERROR::00000005")]
    public sealed class WrongUserNameError : Error
    {
        private string _userName;

        #region UserName
        /// <summary>
        /// 获取验证失败的用户名。
        /// </summary>
        public string UserName
        {
            get { return _userName; }
            private set { _userName = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WrongUserNameError" />对象实例。</para>
        /// </summary>
        /// <param name="innerException">引发此异常的<see cref="Exception"/>对象实例。</param>
        public WrongUserNameError(Exception innerException)
            : base(ErrorMessages.WrongUserNameError, innerException)
        {
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WrongUserNameError" />对象实例。</para>
        /// </summary>
        /// <param name="userName">验证失败的用户名。</param>
        /// <param name="innerException">引发此异常的<see cref="Exception"/>对象实例。</param>
        public WrongUserNameError(string userName, Exception innerException)
            : this(innerException)
        {
            this.UserName = userName;
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WrongUserNameError" />对象实例。</para>
        /// </summary>
        public WrongUserNameError()
            : this(null)
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