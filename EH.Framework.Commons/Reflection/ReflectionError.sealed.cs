#region "ReflectionError"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-05 11:18:07
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons.Reflection
 * 
 * ####     Type Name : ReflectionError
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.Reflection.ReflectionError
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

namespace EnterpriseServices.Framework.Commons.Reflection
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.Reflection.ReflectionError</para>
    /// <para>
    /// 当动态调用反射时，可能会抛出此异常。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    [ApplicationBlockCode("BASIC")]
    [ErrorCode("ERROR::00000014")]
    public sealed class ReflectionError : Error
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ReflectionError" />对象实例。</para>
        /// </summary>
        /// <param name="innerException">引发了此次异常的<see cref="Exception"/>对象实例。</param>
        public ReflectionError(Exception innerException)
            : base(ErrorMessages.ReflectionError, innerException)
        {
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ReflectionError" />对象实例。</para>
        /// </summary>
        public ReflectionError()
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