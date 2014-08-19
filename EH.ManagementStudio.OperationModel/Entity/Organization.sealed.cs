#region "Organization"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-19 16:49:48
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Entity
 * 
 * ####     Type Name : Organization
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Entity.Organization
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
    /// <para>EnterpriseServices.ManagementClient.Operations.Entity.Organization</para>
    /// <para>
    /// 定义了组织机构的基本属性。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    [DefaultProperty("Name")]
    public sealed class Organization : OrganizationBase
    {
        private bool _isVirtual = false;

        #region IsVirtual
        /// <summary>
        /// 设置或获取是否为虚拟的组织机构。
        /// </summary>
        [Category("组织机构")]
        [DisplayName("虚拟的")]
        [Description("是否为虚拟的组织机构")]
        public bool IsVirtual
        {
            get { return _isVirtual; }
            set { _isVirtual = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Organization" />对象实例。</para>
        /// </summary>
        public Organization()
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