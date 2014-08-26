#region "ParametersApi"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-25 15:05:24
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API
 * 
 * ####     Type Name : ParametersApi
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.ParametersApi
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

using EnterpriseServices.SecurityService.API.ParamsService;

namespace EnterpriseServices.SecurityService.API
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.ParametersApi</para>
    /// <para>
    /// 用于访问系统参数的API。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class ParametersApi : ApiServiceBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ParametersApi" />对象实例。</para>
        /// </summary>
        public ParametersApi()
            : base("ParameterService")
        {
        }

        #endregion

        #region GetCredentialsTypes
        /// <summary>
        /// 获取所有的用户证件类型。
        /// </summary>
        /// <returns></returns>
        public UserCredentialsType[] GetCredentialsTypes()
        {
            using (ParametersService service = new ParametersService() { Url = base.ServiceUrl })
            {
                return service.GetCredentialsTypes();
            }
        }
        #endregion

        #region GetPlaceRegions
        /// <summary>
        /// 获取所有的地区区域。
        /// </summary>
        /// <returns></returns>
        public PlaceRegion[] GetPlaceRegions()
        {
            using (ParametersService service = new ParametersService() { Url = base.ServiceUrl })
            {
                return service.GetPlaceRegions();
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