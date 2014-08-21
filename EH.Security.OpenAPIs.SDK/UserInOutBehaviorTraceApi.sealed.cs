#region "UserInOutBehaviorTraceApi"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 16:00:24
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API
 * 
 * ####     Type Name : UserInOutBehaviorTraceApi
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.UserInOutBehaviorTraceApi
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

using EnterpriseServices.SecurityService.API.BehaviorService;

namespace EnterpriseServices.SecurityService.API
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.UserInOutBehaviorTraceApi</para>
    /// <para>
    /// 用于记录用户的登录登出日志。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class UserInOutBehaviorTraceApi : ApiServiceBase
    {
        private string _methodName;
        private string _type;
        private string _version;
        private string _userID;
        private InOut _mark;

        #region MethodName
        /// <summary>
        /// 设置或获取方法名称。
        /// </summary>
        public string MethodName
        {
            get { return _methodName; }
            set { _methodName = value; }
        }
        #endregion

        #region Type
        /// <summary>
        /// 设置或获取类型的完全限定名称。
        /// </summary>
        public string Type
        {
            get { return _type; }
            set { _type = value; }
        }
        #endregion

        #region Version
        /// <summary>
        /// 设置或获取版本号。
        /// </summary>
        public string Version
        {
            get { return _version; }
            set { _version = value; }
        }
        #endregion

        #region UserID
        /// <summary>
        /// 设置或获取当前登录的用户名。
        /// </summary>
        public string UserID
        {
            get { return _userID; }
            set { _userID = value; }
        }
        #endregion

        #region Mark
        /// <summary>
        /// 设置或获取登录登出标记。
        /// </summary>
        public InOut Mark
        {
            get { return _mark; }
            set { _mark = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="UserInOutBehaviorTraceApi" />对象实例。</para>
        /// </summary>
        public UserInOutBehaviorTraceApi()
            : base("UserBehaviorService")
        {
        }

        #endregion

        #region Trace
        /// <summary>
        /// 记录用户登录登出行为信息。
        /// </summary>
        public void Trace()
        {
            using (UserBehaviorService service = new UserBehaviorService() { Url = base.ServiceUrl })
            {
                service.TraceInOutBehavior(this.MethodName, this.Type, this.Version, this.Mark, this.UserID);
            }
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