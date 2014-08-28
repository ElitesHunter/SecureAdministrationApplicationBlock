using System.Collections.Generic;
using System.ComponentModel;
using System.Web.Services;
using EnterpriseServices.SecurityService.Framework.OperationModel;

namespace EnterpriseServices.SecurityService.API.OpenServices
{
    /// <summary>
    /// 系统参数WEB服务。
    /// </summary>
    [WebService(Namespace = "urn:Masterduner@Yeah.net", Description = "系统参数WEB服务")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    public class ParametersService : WebService
    {
        #region GetCredentialsTypes
        [WebMethod(Description = "获取所有的用户证件类型")]
        public List<UserCredentialsType> GetCredentialsTypes()
        {
            return UserCredentialsType.GetAll();
        }
        #endregion

        #region GetPlaceRegions
        [WebMethod(Description = "获取所有的地区区域定义")]
        public List<PlaceRegion> GetPlaceRegions()
        {
            return PlaceRegion.GetAll();
        }
        #endregion
    }
}
