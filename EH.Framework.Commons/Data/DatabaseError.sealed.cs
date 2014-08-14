#region "DatabaseError"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 9:38:59
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons.Data
 * 
 * ####     Type Name : DatabaseError
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.Data.DatabaseError
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

namespace EnterpriseServices.Framework.Commons.Data
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.Data.DatabaseError</para>
    /// <para>
    /// 当SQL Server命令执行失败时，抛出此异常。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [ApplicationBlockCode("BASIC")]
    [ErrorCode("ERROR::00000018")]
    [Serializable]
    public sealed class DatabaseError : Error
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="DatabaseError" />对象实例。</para>
        /// </summary>
        /// <param name="innerException">引发了此异常的<see cref="Exception"/>对象实例。</param>
        public DatabaseError(Exception innerException)
            : base(ErrorMessages.DatabaseError, innerException)
        {
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="DatabaseError" />对象实例。</para>
        /// </summary>
        public DatabaseError()
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