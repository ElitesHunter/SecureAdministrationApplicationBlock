#region "PlaceRegion"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-25 14:42:36
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel
 * 
 * ####     Type Name : PlaceRegion
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.PlaceRegion
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
using EnterpriseServices.Framework.Commons.Data;

namespace EnterpriseServices.SecurityService.Framework.OperationModel
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.PlaceRegion</para>
    /// <para>
    /// 定义了地区区域的基本属性。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    public sealed class PlaceRegion : ParameterDeclaration
    {
        private Guid _parentID;

        #region ParentID
        /// <summary>
        /// 设置或获取父级区域唯一标识。
        /// </summary>
        public Guid ParentID
        {
            get { return _parentID; }
            set { _parentID = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="PlaceRegion" />对象实例。</para>
        /// </summary>
        public PlaceRegion()
        {
        }

        #endregion

        #region Initialize
        /// <summary>
        /// 初始化此对象实例。
        /// </summary>
        /// <param name="data"></param>
        protected override void Initialize(DataRow data)
        {
            this.Enabled = true;
            this.Value = data["RegionName"].ToString();
            this.UniqueID = (Guid)data["RegionUniqueID"];
            this.OpenID = data["RegionOpenID"].ToString();
            this.ParentID = object.ReferenceEquals(data["ParentRegionUniqueID"], null) || data["ParentRegionUniqueID"].Equals(DBNull.Value) ? Guid.Empty : (Guid)data["ParentRegionUniqueID"];
        }
        #endregion

        #region GetAll
        /// <summary>
        /// 获取所有的地区区域。
        /// </summary>
        /// <returns></returns>
        static public List<PlaceRegion> GetAll()
        {
            string sql = "Select * From Basic.GlobalRegionCollection";
            DbHelper helper = new DbHelper(DbConnectionString.Current);
            DataSet dataSet = helper.ExecuteDataSet(helper.CreateCommand(sql, CommandType.Text));
            List<PlaceRegion> result = new List<PlaceRegion>();
            if (!object.ReferenceEquals(dataSet, null) && dataSet.Tables.Count.Equals(1))
            {
                foreach (DataRow item in dataSet.Tables[0].Rows)
                {
                    PlaceRegion region = new PlaceRegion();
                    region.Initialize(item);
                    result.Add(region);
                }
            }
            return result;
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