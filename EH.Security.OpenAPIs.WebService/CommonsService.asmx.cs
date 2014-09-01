using System.Web.Services;
using EnterpriseServices.SecurityService.Framework.OperationModel;

namespace EnterpriseServices.SecurityService.API.OpenServices
{
    /// <summary>
    /// 通用的WEB服务。
    /// </summary>
    [WebService(Namespace = "urn:Masterduner@Yeah.net")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    public class CommonsService : System.Web.Services.WebService
    {
        #region Remove
        /// <summary>
        /// 逻辑移除指定开放标识的对象。
        /// </summary>
        /// <param name="openID"></param>
        [WebMethod(Description = "逻辑移除指定开放标识的对象<br />openID:开放的标识")]
        public void Remove(string openID)
        {
            new LogicRemovalUtils().Remove(openID);
        }
        #endregion
    }
}
