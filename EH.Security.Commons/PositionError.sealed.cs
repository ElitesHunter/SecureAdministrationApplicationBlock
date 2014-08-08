#region "PositionError"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-04 10:16:33
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : PositionError
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.PositionError
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
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.PositionError</para>
    /// <para>
    /// 当当前用户不具有指定职位时抛出此异常。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    [ApplicationBlockCode("SECURECTRL")]
    [ErrorCode("ERROR::00000012")]
    public sealed class PositionError : Error
    {
        private string _positionName;

        #region PositionName
        public string PositionName
        {
            get { return _positionName; }
            private set { _positionName = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="PositionError" />对象实例。</para>
        /// </summary>
        /// <param name="positionName">职位名称。</param>
        /// <param name="innerException">引发了此次异常的<see cref="Exception"/>对象实例。</param>
        public PositionError(string positionName, Exception innerException)
            : base(ErrorMessages.PositionError, innerException)
        {
            this.PositionName = positionName;
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="PositionError" />对象实例。</para>
        /// </summary>
        /// <param name="positionName">职位名称。</param>
        public PositionError(string positionName)
            : this(positionName, null)
        {
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="PositionError" />对象实例。</para>
        /// </summary>
        public PositionError()
            : this(string.Empty)
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