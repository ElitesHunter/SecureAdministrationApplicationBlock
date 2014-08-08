#region "NotFormallyStaffError"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-04 9:59:06
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : NotFormallyStaffError
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.NotFormallyStaffError
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
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.NotFormallyStaffError</para>
    /// <para>
    /// 当当前用户不是正式员工时抛出此异常。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    [ApplicationBlockCode("SECURECTRL")]
    [ErrorCode("ERROR::00000010")]
    public sealed class NotFormallyStaffError : Error
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="NotFormallyStaffError" />对象实例。</para>
        /// </summary>
        /// <param name="innerException">引发了此次异常的<see cref="Exception"/>对象实例。</param>
        public NotFormallyStaffError(Exception innerException)
            : base(ErrorMessages.NotFormallyStaffError, innerException)
        {
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="NotFormallyStaffError" />对象实例。</para>
        /// </summary>
        public NotFormallyStaffError()
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