#region "Error"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-07-31 13:40:55
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons
 * 
 * ####     Type Name : Error
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.Error
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

namespace EnterpriseServices.Framework.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.Error</para>
    /// <para>
    /// 系统异常基类。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    [ApplicationBlockCode("BASIC")]
    [ErrorCode("ERROR::00000001")]
    public class Error : Exception
    {
        private string _blockCode;
        private string _errorCode;

        #region BlockCode
        /// <summary>
        /// 获取应用模块代码。
        /// </summary>
        public virtual string BlockCode
        {
            get { return _blockCode; }
            protected set { _blockCode = value; }
        }
        #endregion

        #region ErrorCode
        /// <summary>
        /// 获取异常代码。
        /// </summary>
        public virtual string ErrorCode
        {
            get { return _errorCode; }
            protected set { _errorCode = value; }
        }
        #endregion

        #region GetApplicationBlockCode
        /// <summary>
        /// 获取应用模块代码。
        /// </summary>
        /// <returns>模块代码。</returns>
        protected virtual string GetApplicationBlockCode()
        {
            Attribute attribute = Attribute.GetCustomAttribute(this.GetType(), typeof(ApplicationBlockCodeAttribute));
            if (Object.ReferenceEquals(attribute, null))
            {
                return string.Empty;
            }
            else
            {
                return (attribute as ApplicationBlockCodeAttribute).Code;
            }
        }
        #endregion

        #region GetExceptionCode
        /// <summary>
        /// 获取系统异常代码。
        /// </summary>
        /// <returns>异常代码。</returns>
        protected virtual string GetExceptionCode()
        {
            Attribute attribute = Attribute.GetCustomAttribute(this.GetType(), typeof(ErrorCodeAttribute));
            if (object.ReferenceEquals(attribute, null))
            {
                return string.Empty;
            }
            else
            {
                return (attribute as ErrorCodeAttribute).Code;
            }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Error" />对象实例。</para>
        /// </summary>
        /// <param name="innerException">引发了此异常的<see cref="Exception"/>对象实例。</param>
        public Error(Exception innerException)
            : this(ErrorMessages.Error, innerException)
        {
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Error" />对象实例。</para>
        /// </summary>
        public Error()
            : this(null)
        {
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Error" />对象实例。</para>
        /// </summary>
        /// <param name="message">异常信息。</param>
        /// <param name="innerException">引发了此异常的<see cref="Exception"/>对象实例。</param>
        protected Error(string message, Exception innerException)
            : base(message, innerException)
        {
            this.BlockCode = this.GetApplicationBlockCode();
            this.ErrorCode = this.GetExceptionCode();
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