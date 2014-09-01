#region "LogicRemovalUtils"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-09-01 11:34:55
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel
 * 
 * ####     Type Name : LogicRemovalUtils
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.LogicRemovalUtils
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

using System.Data;
using System.Data.SqlClient;
using EnterpriseServices.Framework.Commons.Data;

namespace EnterpriseServices.SecurityService.Framework.OperationModel
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.LogicRemovalUtils</para>
    /// <para>
    /// 提供了用于逻辑删除对象的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class LogicRemovalUtils : DbHelper
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="LogicRemovalUtils" />对象实例。</para>
        /// </summary>
        public LogicRemovalUtils()
            : base(DbConnectionString.Current)
        {
        }

        #endregion

        #region Remove
        /// <summary>
        /// 逻辑移除指定开放标识的对象。
        /// </summary>
        /// <param name="openID"></param>
        public void Remove(string openID)
        {
            SqlCommand cmd = base.CreateCommand("Sp.RemoveObject", CommandType.StoredProcedure,
                base.CreateParameter("openID", openID, SqlDbType.VarChar, ParameterDirection.Input));
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