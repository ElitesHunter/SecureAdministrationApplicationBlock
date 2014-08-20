#region "OrganizationObjectBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-20 10:35:52
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel.Organizations
 * 
 * ####     Type Name : OrganizationObjectBase
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.Organizations.OrganizationObjectBase
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
using System.Data;
using EnterpriseServices.Framework.Commons.Data;

namespace EnterpriseServices.SecurityService.Framework.OperationModel.Organizations
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.Organizations.OrganizationObjectBase</para>
    /// <para>
    /// 提供了访问组织机构对象基本信息的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    public class OrganizationObjectBase : DbHelper
    {
        private Guid _uniqueID;
        private string _name;
        private string _openID;
        private Guid _parentID;
        private OrganizationObjectCategory _category;
        private string _virtualName;
        private string _virtualPath;
        private bool _logicalRemovedState;
        private bool _enabled;
        private bool _visible;
        private string _description;

        #region UniqueID
        /// <summary>
        /// 设置或获取组织机构对象的唯一标识。
        /// </summary>
        public virtual Guid UniqueID
        {
            get { return _uniqueID; }
            set { _uniqueID = value; }
        }
        #endregion

        #region Name
        /// <summary>
        /// 设置或获取组织机构对象的显示名称。
        /// </summary>
        public virtual string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        #endregion

        #region OpenID
        /// <summary>
        /// 设置或获取组织机构对象的开放标识。
        /// </summary>
        public virtual string OpenID
        {
            get { return _openID; }
            set { _openID = value; }
        }
        #endregion

        #region ParentID
        /// <summary>
        /// 设置或获取父级组织机构对象唯一标识。
        /// </summary>
        public virtual Guid ParentID
        {
            get { return _parentID; }
            set { _parentID = value; }
        }
        #endregion

        #region Category
        /// <summary>
        /// 设置或获取组织机构对象的类别。
        /// </summary>
        public virtual OrganizationObjectCategory Category
        {
            get { return _category; }
            set { _category = value; }
        }
        #endregion

        #region VirtualName
        /// <summary>
        /// 设置或获取组织机构对象的虚拟名称。
        /// </summary>
        public virtual string VirtualName
        {
            get { return _virtualName; }
            set { _virtualName = value; }
        }
        #endregion

        #region VirtualPath
        /// <summary>
        /// 设置或获取组织机构对象的虚拟名称。
        /// </summary>
        public virtual string VirtualPath
        {
            get { return _virtualPath; }
            set { _virtualPath = value; }
        }
        #endregion

        #region LogicalRemovedState
        /// <summary>
        /// 设置或获取组织机构对象是否已经被逻辑删除。
        /// </summary>
        public virtual bool LogicalRemovedState
        {
            get { return _logicalRemovedState; }
            set { _logicalRemovedState = value; }
        }
        #endregion

        #region Enabled
        /// <summary>
        /// 设置或获取组织机构对象是否启用。
        /// </summary>
        public virtual bool Enabled
        {
            get { return _enabled; }
            set { _enabled = value; }
        }
        #endregion

        #region Visible
        /// <summary>
        /// 设置或获取组织机构对象是否可见。
        /// </summary>
        public virtual bool Visible
        {
            get { return _visible; }
            set { _visible = value; }
        }
        #endregion

        #region Description
        /// <summary>
        /// 设置或获取组织机构对象的描述信息。
        /// </summary>
        public virtual string Description
        {
            get { return _description; }
            set { _description = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="OrganizationObjectBase" />对象实例。</para>
        /// </summary>
        public OrganizationObjectBase()
            : base(DbConnectionString.Current)
        {
        }

        #endregion

        #region InitializeInstance
        /// <summary>
        /// 初始化对象实例。
        /// </summary>
        /// <param name="data">用于初始化的数据。</param>
        protected virtual void InitializeInstance(DataRow data)
        {
            this.UniqueID = (Guid)data["OrganizationObjectUniqueID"];
            this.Name = data["OrganizationDisplayName"].ToString();
            this.ParentID = this.IsDBNull(data["ParentOrganizationObjectID"]) ? Guid.Empty : (Guid)data["ParentOrganizationObjectID"];
            this.Category = (OrganizationObjectCategory)(int)data["OrganizationCategory"];
            this.VirtualName = data["OrganizationVirtualName"].ToString();
            this.VirtualPath = data["OrganizationVirtualPath"].ToString();
            this.LogicalRemovedState = data["OrganizationWasRemoved"].ToString().TransferFromDB();
            this.Enabled = data["OrganizationEnabledState"].ToString().TransferFromDB();
            this.Visible = data["OrganizationVisibleState"].ToString().TransferFromDB();
            this.OpenID = data["OrganizationOpenID"].ToString();
            this.Description = this.IsDBNull(data["Comments"]) ? string.Empty : data["Comments"].ToString();
        }
        #endregion

        #region IsDBNull
        /// <summary>
        /// 验证<paramref name="data"/>是否为<see cref="DBNull"/>或者null。
        /// </summary>
        /// <param name="data">需要验证的数据。</param>
        /// <returns>true/false。</returns>
        protected virtual bool IsDBNull(object data)
        {
            return object.ReferenceEquals(data, null) || object.ReferenceEquals(data, DBNull.Value);
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