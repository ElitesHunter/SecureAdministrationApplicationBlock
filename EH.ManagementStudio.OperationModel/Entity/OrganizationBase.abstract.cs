#region "OrganizationBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-19 16:34:20
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Entity
 * 
 * ####     Type Name : OrganizationBase
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Entity.OrganizationBase
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
    /// <para>EnterpriseServices.ManagementClient.Operations.Entity.OrganizationBase</para>
    /// <para>
    /// 定义了组织机构对象的基类。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    [DefaultProperty("Name")]
    public class OrganizationBase
    {
        private Guid _uniqueID;
        private string _name;
        private string _virtualName;
        private bool _hasRemoved = false;
        private bool _enabled = true;
        private bool _visible;
        private string _parentOpenID;
        private string _openID;
        private Guid _parentUniqueID;
        private string _virtualPath;

        #region UniqueID
        /// <summary>
        /// 设置或获取组织机构对象唯一标识。
        /// </summary>
        [ReadOnly(true)]
        [Category("基本属性")]
        [DisplayName("唯一标识")]
        [Description("组织机构对象唯一标识")]
        public Guid UniqueID
        {
            get { return _uniqueID; }
            set { _uniqueID = value; }
        }
        #endregion

        #region Name
        /// <summary>
        /// 设置或获取组织机构对象名称。
        /// </summary>
        [Browsable(true)]
        [Category("基本属性")]
        [DisplayName("组织机构名称")]
        [Description("组织机构对象名称")]
        [DefaultValue("新的组织机构")]
        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        #endregion

        #region VirtualName
        /// <summary>
        /// 设置或获取组织机构对象的虚拟名称。
        /// </summary>
        [ReadOnly(true)]
        [Category("附加属性")]
        [DisplayName("虚拟名称")]
        [Description("组织机构对象的虚拟名称。")]
        public string VirtualName
        {
            get { return _virtualName; }
            set { _virtualName = value; }
        }
        #endregion

        #region HasRemoved
        /// <summary>
        /// 设置或获取是否已经被移除。
        /// </summary>
        [Browsable(false)]
        public bool HasRemoved
        {
            get { return _hasRemoved; }
            set { _hasRemoved = value; }
        }
        #endregion

        #region Enabled
        /// <summary>
        /// 设置或获取是否启用。
        /// </summary>
        [Category("基本属性")]
        [DisplayName("是否启用")]
        [Description("设置或获取是否启用此组织机构对象")]
        [DefaultValue(true)]
        public bool Enabled
        {
            get { return _enabled; }
            set { _enabled = value; }
        }
        #endregion

        #region Visible
        /// <summary>
        /// 设置或获取是否可见。
        /// </summary>
        [Browsable(false)]
        public bool Visible
        {
            get { return _visible; }
            set { _visible = value; }
        }
        #endregion

        #region ParentOpenID
        /// <summary>
        /// 设置或获取父对象的开放标识。
        /// </summary>
        [Browsable(false)]
        public string ParentOpenID
        {
            get { return _parentOpenID; }
            set { _parentOpenID = value; }
        }
        #endregion

        #region OpenID
        /// <summary>
        /// 设置或获取此组织机构对象的开放标识。
        /// </summary>
        [Browsable(false)]
        public string OpenID
        {
            get { return _openID; }
            set { _openID = value; }
        }
        #endregion

        #region ParentUniqueID
        /// <summary>
        /// 设置或获取父级组织机构对象标识。
        /// </summary>
        [Browsable(false)]
        public Guid ParentUniqueID
        {
            get { return _parentUniqueID; }
            set { _parentUniqueID = value; }
        }
        #endregion

        #region VirtualPath
        /// <summary>
        /// 设置或获取组织机构对象的虚拟路径。
        /// </summary>
        [Browsable(false)]
        public string VirtualPath
        {
            get { return _virtualPath; }
            set { _virtualPath = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="OrganizationBase" />对象实例。</para>
        /// </summary>
        public OrganizationBase()
        {
            this.UniqueID = Guid.NewGuid();
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