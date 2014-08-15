using System.ComponentModel;
using System.Web.Services;
using EnterpriseServices.SecurityService.API.OpenServices.Results;
using EnterpriseServices.SecurityService.Framework.OperationModel;

namespace EnterpriseServices.SecurityService.API.OpenServices
{
    /// <summary>
    /// 提供了获取身份信息的方法。
    /// </summary>
    [WebService(Namespace = "urn:Masterduner@Yeah.net", Description = "提供了获取身份信息的方法")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    public class IdentityService : WebService
    {
        #region GetAccountUseToken
        [WebMethod(Description = "使用身份令牌获取账户信息。")]
        public ClientAccountStatus GetAccountUseToken(string token)
        {
            ClientAccount account = new ClientAccountCreator().CreateInstanceUseTokeExpression(new WinNTAuthenticateToken(token));
            return new ClientAccountStatus() { UserName = account.UserName, AccountID = account.UniqueID, AccountOID = account.OpenID };
        }
        #endregion
    }
}
