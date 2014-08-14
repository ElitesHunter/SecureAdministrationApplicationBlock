#region "UserInOutBehaviorBlog"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 15:39:24
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel.Logging
 * 
 * ####     Type Name : UserInOutBehaviorBlog
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.Logging.UserInOutBehaviorBlog
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
using EnterpriseServices.SecurityService.Framework.Commons;

namespace EnterpriseServices.SecurityService.Framework.OperationModel.Logging
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.Logging.UserInOutBehaviorBlog</para>
    /// <para>
    /// 用于记录用户的登录登出行为。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class UserInOutBehaviorBlog : UserBehaviorBlogBase
    {
        private InOut _inOut;
        private const string StoredProcedureName = "Sp.CreateSigninLogEvent";

        #region InOut
        /// <summary>
        /// 设置或获取登录登出标记。
        /// </summary>
        public InOut InOut
        {
            get { return _inOut; }
            set { _inOut = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="UserInOutBehaviorBlog" />对象实例。</para>
        /// </summary>
        public UserInOutBehaviorBlog()
        {
        }

        #endregion

        #region Trace
        /// <summary>
        /// 记录用户的登录登出痕迹。
        /// </summary>
        public override void Trace()
        {
            SqlCommand cmd = this.CreateCommand(StoredProcedureName, CommandType.StoredProcedure,
                this.CreateParameter("methodName", base.MethodName, SqlDbType.VarChar, ParameterDirection.Input),
                this.CreateParameter("typeName", base.TypeName, SqlDbType.VarChar, ParameterDirection.Input),
                this.CreateParameter("version", base.Version, SqlDbType.VarChar, ParameterDirection.Input),
                this.CreateParameter("userID", base.UserName, SqlDbType.VarChar, ParameterDirection.Input),
                this.CreateParameter("io", (char)this.InOut, SqlDbType.Char, ParameterDirection.Input));
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