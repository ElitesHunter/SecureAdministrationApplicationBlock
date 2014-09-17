using System.ComponentModel;
using System.Web.Services;
using EnterpriseServices.SecurityService.API.OpenServices.Results;
using EnterpriseServices.SecurityService.Framework.OperationModel.Accounts;

namespace EnterpriseServices.SecurityService.API.OpenServices
{
    /// <summary>
    /// 身份认证服务。
    /// </summary>
    [WebService(Namespace = "urn:Masterduner@Yeah.net")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    public class AuthenticationService : WebService
    {
        #region ExecuteWinNTAuthenticate
        /// <summary>
        /// 执行Windows身份认证。
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="ipAddress"></param>
        /// <param name="hostName"></param>
        /// <returns></returns>
        [WebMethod(MessageName = "WindowsAuthentication", Description = "userName:登录到Windows的当前用户名。<br />ipAddress:当前主机的IP地址。<br />hostName:当前主机在网络中的名称。")]
        public WinNTAuthenticateStatus ExecuteWinNTAuthenticate(string userName, string ipAddress, string hostName)
        {
            WinNTAuthenticateStatus status = new WinNTAuthenticateStatus();
            status.InitializeVariables(userName, ipAddress, hostName);
            status.Authenticate();
            return status;
        }
        #endregion

        #region CreateStaffAccount
        [WebMethod(Description = "创建一个人员账户<br />account:人员账户扩展信息")]
        public void CreateStaffAccount(AccountExpandoProperty account)
        {
            account.Create();
        }
        #endregion
    }
}
