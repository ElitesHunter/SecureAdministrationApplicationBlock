#region "FilterAfterExpandedAttribute"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-21 10:36:54
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : FilterAfterExpandedAttribute
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.FilterAfterExpandedAttribute
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

namespace EnterpriseServices.ManagementClient.Operations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.FilterAfterExpandedAttribute</para>
    /// <para>
    /// 用于标记节点展开后需要执行的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [AttributeUsage(AttributeTargets.Class, Inherited = false, AllowMultiple = false)]
    public sealed class FilterAfterExpandedAttribute : Attribute
    {
        private Type _handlerType;

        #region HandlerType
        /// <summary>
        /// 获取处理器类型。
        /// </summary>
        public Type HandlerType
        {
            get { return _handlerType; }
            private set { _handlerType = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="FilterAfterExpandedAttribute" />对象实例。</para>
        /// </summary>
        /// <param name="type">继承自<see cref="IAfterTreeNodeExpandedHandler"/>类型。</param>
        public FilterAfterExpandedAttribute(Type type)
        {
            this.HandlerType = type;
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