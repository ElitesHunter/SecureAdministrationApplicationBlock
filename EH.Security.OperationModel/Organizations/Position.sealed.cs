#region "Position"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-27 10:45:19
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel.Organizations
 * 
 * ####     Type Name : Position
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.Organizations.Position
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
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using EnterpriseServices.Framework.Commons.Data;

namespace EnterpriseServices.SecurityService.Framework.OperationModel.Organizations
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.Organizations.Position</para>
    /// <para>
    /// 职位对象实例。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    public sealed class Position : OrganizationObjectBase
    {
        private Guid _organizationID;

        #region OrganizationID
        /// <summary>
        /// 设置或获取所属的组织机构唯一标识。
        /// </summary>
        public Guid OrganizationID
        {
            get { return _organizationID; }
            set { _organizationID = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Position" />对象实例。</para>
        /// </summary>
        public Position()
        {
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Position" />对象实例。</para>
        /// </summary>
        /// <param name="data">职位数据。</param>
        private Position(DataRow data)
        {
            this.InitializeInstance(data);
        }

        #endregion

        #region Create
        /// <summary>
        /// 创建一个职位信息。
        /// </summary>
        /// <param name="isPrincipal">是否为主要负责人职位。</param>
        /// <param name="forceCreate">是否强制创建。</param>
        public int Create(bool isPrincipal, bool forceCreate)
        {
            SqlCommand cmd = base.CreateCommand("Sp.CreatePosition", CommandType.StoredProcedure,
                base.CreateParameter("name", this.Name, SqlDbType.NVarChar, ParameterDirection.Input),
                base.CreateParameter("organizationID", this.OrganizationID, SqlDbType.UniqueIdentifier, ParameterDirection.Input),
                base.CreateParameter("forceCreate", forceCreate.ToSqlValue(), SqlDbType.Char, ParameterDirection.Input),
                base.CreateParameter("isPrincipal", isPrincipal.ToSqlValue(), SqlDbType.Char, ParameterDirection.Input));
            return (int)base.ExecuteScalar(cmd);
        }
        #endregion

        #region InitializeInstance
        /// <summary>
        /// 初始化当前的职位实例。
        /// </summary>
        /// <param name="data"></param>
        protected override void InitializeInstance(DataRow data)
        {
            base.InitializeInstance(data);
            this.OrganizationID = (Guid)data["ParentOrganizationObjectID"];
        }
        #endregion

        #region GetPositionsExcludeCurrent
        /// <summary>
        /// 获取除指定职位意外的职位信息集合。
        /// </summary>
        /// <param name="currentPositionID"></param>
        /// <returns></returns>
        static public List<Position> GetPositionsExcludeCurrent(Guid currentPositionID)
        {
            string sql = "Select * From Secure.PositionVisibleCollection Where PositionUniqueID <> @positionID";
            DbHelper helper = new DbHelper(DbConnectionString.Current);
            SqlCommand cmd = helper.CreateCommand(sql, CommandType.Text,
                helper.CreateParameter("positionID", currentPositionID, SqlDbType.UniqueIdentifier, ParameterDirection.Input));
            DataSet data = helper.ExecuteDataSet(cmd);
            List<Position> list = new List<Position>();
            if (!object.ReferenceEquals(data, null))
            {
                foreach (DataRow item in data.Tables[0].Rows)
                    list.Add(new Position(item));
            }
            return list;
        }
        #endregion

        #region Update
        /// <summary>
        /// 更新职位信息。
        /// </summary>
        /// <param name="forceUpdate"></param>
        /// <param name="isPrincipal"></param>
        /// <param name="superiorID"></param>
        public void Update(bool forceUpdate, bool isPrincipal, Guid superiorID)
        {
            SqlCommand cmd = base.CreateCommand("Sp.UpgradePosition", CommandType.StoredProcedure,
                base.CreateParameter("xData", new Generators.PositionXParameterGenerator()
                {
                    IsPrincipal = isPrincipal,
                    ForceUpdate = forceUpdate,
                    SuperiorPositionID = superiorID,
                    Position = this
                }.TransformText(), SqlDbType.Xml, ParameterDirection.Input));
            this.ExecuteNonQuery(cmd);
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