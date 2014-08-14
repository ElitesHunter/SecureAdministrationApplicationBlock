#region "UserBehaviorBlogBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 15:32:51
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel.Logging
 * 
 * ####     Type Name : UserBehaviorBlogBase
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.Logging.UserBehaviorBlogBase
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

using EnterpriseServices.Framework.Commons.Data;

namespace EnterpriseServices.SecurityService.Framework.OperationModel.Logging
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.Logging.UserBehaviorBlogBase</para>
    /// <para>
    /// 用于记录用户的行为。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public abstract class UserBehaviorBlogBase : DbHelper
    {
        private string _methodName;
        private string _typeName;
        private string _version;
        private string _userName;

        #region MethodName
        /// <summary>
        /// 设置或获取当前用户执行的方法名称。
        /// </summary>
        public virtual string MethodName
        {
            get { return _methodName; }
            set { _methodName = value; }
        }
        #endregion

        #region TypeName
        /// <summary>
        /// 设置或获取类型完全限定名称。
        /// </summary>
        public virtual string TypeName
        {
            get { return _typeName; }
            set { _typeName = value; }
        }
        #endregion

        #region Version
        /// <summary>
        /// 设置或获取程序集版本。
        /// </summary>
        public virtual string Version
        {
            get { return _version; }
            set { _version = value; }
        }
        #endregion

        #region UserName
        /// <summary>
        /// 设置或获取当前线程的用户名称。
        /// </summary>
        public virtual string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="UserBehaviorBlogBase" />对象实例。</para>
        /// </summary>
        protected UserBehaviorBlogBase()
            : base(DbConnectionString.Current)
        {
        }

        #endregion

        #region Trace
        /// <summary>
        /// 保留用户行为痕迹。
        /// </summary>
        public abstract void Trace();
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