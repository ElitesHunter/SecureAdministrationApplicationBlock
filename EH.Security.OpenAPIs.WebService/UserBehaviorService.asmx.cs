using System;
using System.ComponentModel;
using System.Web.Services;
using EnterpriseServices.SecurityService.Framework.Commons;
using EnterpriseServices.SecurityService.Framework.OperationModel.Logging;

namespace EnterpriseServices.SecurityService.API.OpenServices
{
    /// <summary>
    /// 用于记录用户行为的服务。
    /// </summary>
    [WebService(Namespace = "urn:Masterduner@Yeah.net")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消对下行的注释。
    // [System.Web.Script.Services.ScriptService]
    public class UserBehaviorService : WebService
    {
        #region TraceInOutBehavior
        /// <summary>
        /// 记录用户的登录登出行为。
        /// </summary>
        /// <param name="methodName"></param>
        /// <param name="typeName"></param>
        /// <param name="version"></param>
        /// <param name="mark"></param>
        /// <param name="userName"></param>
        [WebMethod(Description = "methodName:方法名称。<br />typeName:类型的完全限定名称。<br />version:版本号。<br />mark:InOut值。<br />userName:当前登录的用户名。")]
        public void TraceInOutBehavior(string methodName, string typeName, string version, InOut mark, string userName)
        {
            new UserInOutBehaviorBlog()
            {
                MethodName = methodName,
                TypeName = typeName,
                Version = version,
                InOut = mark,
                UserName = userName
            }.Trace();
        }
        #endregion

        #region TraceOperateBehavior
        /// <summary>
        /// 记录用户操作行为。
        /// </summary>
        /// <param name="methodName"></param>
        /// <param name="typeName"></param>
        /// <param name="version"></param>
        /// <param name="userID"></param>
        [WebMethod(Description = "methodName:方法名称。<br />typeName:类型的完全限定名称。<br />version:版本号。<br />mark:InOut值。<br />userID:当前用户的唯一标识。")]
        public void TraceOperateBehavior(string methodName, string typeName, string version, Guid userID)
        {
            new UserOperateBehaviorBlog()
            {
                MethodName = methodName,
                TypeName = typeName,
                Version = version,
                UserUniqueID = userID
            }.Trace();
        }
        #endregion
    }
}
