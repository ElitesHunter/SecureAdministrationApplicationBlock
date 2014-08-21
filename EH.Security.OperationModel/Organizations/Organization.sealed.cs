#region "Organization"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-20 11:04:44
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel.Organizations
 * 
 * ####     Type Name : Organization
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.Organizations.Organization
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
using System.Data.SqlClient;

namespace EnterpriseServices.SecurityService.Framework.OperationModel.Organizations
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.Organizations.Organization</para>
    /// <para>
    /// 提供了访问组织机构信息的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    public sealed class Organization : OrganizationObjectBase
    {
        private bool _isVirtual;

        #region IsVirtual
        /// <summary>
        /// 设置或获取此组织机构是否为虚拟的。
        /// </summary>
        public bool IsVirtual
        {
            get { return _isVirtual; }
            set { _isVirtual = base.Category.Equals(OrganizationObjectCategory.VirtualOrganization); }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Organization" />对象实例。</para>
        /// </summary>
        public Organization()
            : base()
        {
        }

        #endregion

        #region GetRoot
        /// <summary>
        /// 获取根组织机构信息。
        /// </summary>
        /// <returns><see cref="Organization"/>对象实例。</returns>
        static public Organization GetRoot()
        {
            Organization organization = new Organization();
            DataSet dataSet = organization.ExecuteDataSet(organization.CreateCommand("Select * From Secure.OrganizationCollection Where ParentOrganizationObjectID Is NULL", CommandType.Text));
            if (!object.ReferenceEquals(dataSet, null) && !object.ReferenceEquals(dataSet.Tables[0], null) && dataSet.Tables[0].Rows.Count > 0)
            {
                organization.InitializeInstance(dataSet.Tables[0].Rows[0]);
            }
            else organization = null;
            return organization;
        }
        #endregion

        #region Create
        /// <summary>
        /// 创建一个组织机构。
        /// </summary>
        public override void Create()
        {
            object parentID = null;
            if (base.ParentID.Equals(Guid.Empty)) parentID = DBNull.Value;
            else parentID = base.ParentID;
            SqlCommand cmd = base.CreateCommand("Sp.CreateOrganization", CommandType.StoredProcedure,
                base.CreateParameter("name", base.Name, SqlDbType.NVarChar, ParameterDirection.Input),
                base.CreateParameter("parentID", parentID, SqlDbType.UniqueIdentifier, ParameterDirection.Input),
                base.CreateParameter("isVirtual", this.IsVirtual.ToSqlValue(), SqlDbType.Char, ParameterDirection.Input));
            base.ExecuteNonQuery(cmd);
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