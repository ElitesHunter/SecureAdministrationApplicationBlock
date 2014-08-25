#region "ParameterBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-25 15:15:45
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Entity
 * 
 * ####     Type Name : ParameterBase
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Entity.ParameterBase
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
using System.ComponentModel;

namespace EnterpriseServices.ManagementClient.Operations.Entity
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Entity.ParameterBase</para>
    /// <para>
    /// 系统预定义参数基类。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    [DefaultProperty("Value")]
    public abstract class ParameterBase
    {
        private Guid _uniqueID;
        private string _value;
        private string _openID;

        #region UniqueID
        /// <summary>
        /// 设置或获取参数唯一标识。
        /// </summary>
        [Browsable(false)]
        public virtual Guid UniqueID
        {
            get { return _uniqueID; }
            set { _uniqueID = value; }
        }
        #endregion

        #region Value
        /// <summary>
        /// 设置或获取参数值。
        /// </summary>
        [ReadOnly(true)]
        [Description("参数值")]
        public virtual string Value
        {
            get { return _value; }
            set { _value = value; }
        }
        #endregion

        #region OpenID
        /// <summary>
        /// 设置或获取此参数的开放标识。
        /// </summary>
        [Browsable(false)]
        public virtual string OpenID
        {
            get { return _openID; }
            set { _openID = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ParameterBase" />对象实例。</para>
        /// </summary>
        protected ParameterBase()
        {
        }

        #endregion

        #region ToString
        /// <summary>
        /// 获取此对象的字符串表达式。
        /// </summary>
        /// <returns></returns>
        override public string ToString()
        {
            return this.Value;
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