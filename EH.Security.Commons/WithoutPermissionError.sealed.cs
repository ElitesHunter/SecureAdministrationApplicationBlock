#region "WithoutPermissionError"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-04 9:50:41
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : WithoutPermissionError
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.WithoutPermissionError
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
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.WithoutPermissionError</para>
    /// <para>
    /// 当当前用户没有指定权限时抛出此异常。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    [ApplicationBlockCode("SECURECTRL")]
    [ErrorCode("ERROR::00000009")]
    public class WithoutPermissionError : Error
    {
        private string _permissionCode;

        #region PermissionCode
        /// <summary>
        /// 获取权限代码。
        /// </summary>
        public virtual string PermissionCode
        {
            get { return _permissionCode; }
            protected set { _permissionCode = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WithoutPermissionError" />对象实例。</para>
        /// </summary>
        /// <param name="permCode">权限代码。</param>
        /// <param name="innerException">引发了此次异常的<see cref="Exception"/>对象实例。</param>
        public WithoutPermissionError(string permCode, Exception innerException)
            : base(ErrorMessages.WithoutPermissionError, innerException)
        {
            this.PermissionCode = permCode;
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WithoutPermissionError" />对象实例。</para>
        /// </summary>
        /// <param name="permCode">权限代码。</param>
        public WithoutPermissionError(string permCode)
            : this(permCode, null)
        {
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WithoutPermissionError" />对象实例。</para>
        /// </summary>
        public WithoutPermissionError()
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