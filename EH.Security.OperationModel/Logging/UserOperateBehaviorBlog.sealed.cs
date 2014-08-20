#region "UserOperateBehaviorBlog"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-20 14:51:13
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel.Logging
 * 
 * ####     Type Name : UserOperateBehaviorBlog
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.Logging.UserOperateBehaviorBlog
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

namespace EnterpriseServices.SecurityService.Framework.OperationModel.Logging
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.Logging.UserOperateBehaviorBlog</para>
    /// <para>
    /// 用于记录用户操作日志。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    public sealed class UserOperateBehaviorBlog : UserBehaviorBlogBase
    {
        private Guid _userUniqueID;

        #region UserUniqueID
        /// <summary>
        /// 设置或获取当前的用户唯一标识。
        /// </summary>
        public Guid UserUniqueID
        {
            get { return _userUniqueID; }
            set { _userUniqueID = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="UserOperateBehaviorBlog" />对象实例。</para>
        /// </summary>
        public UserOperateBehaviorBlog()
        {
        }

        #endregion

        #region Trace
        /// <summary>
        /// 记录用户操作日志。
        /// </summary>
        public override void Trace()
        {
            SqlCommand cmd = base.CreateCommand("Sp.CreateUserOperateBehavior", CommandType.StoredProcedure,
                base.CreateParameter("userID", this.UserUniqueID, SqlDbType.UniqueIdentifier, ParameterDirection.Input),
                base.CreateParameter("methodName", base.MethodName, SqlDbType.VarChar, ParameterDirection.Input),
                base.CreateParameter("typeName", base.TypeName, SqlDbType.VarChar, ParameterDirection.Input),
                base.CreateParameter("version", base.Version, SqlDbType.VarChar, ParameterDirection.Input));
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