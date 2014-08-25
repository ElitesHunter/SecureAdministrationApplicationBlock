#region "UserCredentialsType"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-25 14:31:26
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel
 * 
 * ####     Type Name : UserCredentialsType
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.UserCredentialsType
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
using System.Collections.Generic;
using EnterpriseServices.Framework.Commons.Data;

namespace EnterpriseServices.SecurityService.Framework.OperationModel
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.UserCredentialsType</para>
    /// <para>
    /// 定义了用户证件类型。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    public sealed class UserCredentialsType : ParameterDeclaration
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="UserCredentialsType" />对象实例。</para>
        /// </summary>
        public UserCredentialsType()
        {
        }

        #endregion

        #region Initialize
        /// <summary>
        /// 初始化此对象。
        /// </summary>
        /// <param name="data"></param>
        protected override void Initialize(DataRow data)
        {
            this.Enabled = true;
            this.Value = data["CredentialsTypeDisplayName"].ToString();
            this.UniqueID = (Guid)data["CredentialsTypeUniqueID"];
            this.OpenID = data["CredentialsTypeOpenID"].ToString();
        }
        #endregion

        #region GetAll
        /// <summary>
        /// 获取所有的用户证件类型参数。
        /// </summary>
        /// <returns></returns>
        static public List<UserCredentialsType> GetAll()
        {
            string sql = "Select * From Basic.CredentialsTypeCollection";
            DbHelper helper = new DbHelper(DbConnectionString.Current);
            DataSet dataSet = helper.ExecuteDataSet(helper.CreateCommand(sql, CommandType.Text));
            List<UserCredentialsType> result = new List<UserCredentialsType>();
            if (!object.ReferenceEquals(dataSet, null) && dataSet.Tables.Count.Equals(1))
            {
                foreach (DataRow item in dataSet.Tables[0].Rows)
                {
                    UserCredentialsType type = new UserCredentialsType();
                    type.Initialize(item);
                    result.Add(type);
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