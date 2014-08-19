#region "TreeNodeBoundControlAttribute"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-19 10:02:45
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : TreeNodeBoundControlAttribute
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.TreeNodeBoundControlAttribute
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
    /// <para>EnterpriseServices.ManagementClient.Operations.TreeNodeBoundControlAttribute</para>
    /// <para>
    /// 用于标记功能树节点绑定的控件。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [AttributeUsage(AttributeTargets.Class, Inherited = false, AllowMultiple = false)]
    public sealed class TreeNodeBoundControlAttribute : Attribute
    {
        private Type _controlType;

        #region ControlType
        /// <summary>
        /// 获取绑定的控件类型。
        /// </summary>
        public Type ControlType
        {
            get { return _controlType; }
            private set { _controlType = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="TreeNodeBoundControlAttribute" />对象实例。</para>
        /// </summary>
        /// <param name="ctrlType">绑定的 控件类型。</param>
        public TreeNodeBoundControlAttribute(Type ctrlType)
        {
            this.ControlType = ctrlType;
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