#region "CommonsApi"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-09-01 13:58:55
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API
 * 
 * ####     Type Name : CommonsApi
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.CommonsApi
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

using EnterpriseServices.SecurityService.API.ComService;

namespace EnterpriseServices.SecurityService.API
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.CommonsApi</para>
    /// <para>
    /// 通用的API。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class CommonsApi : ApiServiceBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="CommonsApi" />对象实例。</para>
        /// </summary>
        public CommonsApi()
            : base("ComService")
        {
        }

        #endregion

        #region RemoveObject
        /// <summary>
        /// 移除指定开放标识的对象。
        /// </summary>
        /// <param name="objectOpenID">对象开放标识。</param>
        public void RemoveObject(string objectOpenID)
        {
            using (CommonsService service = new CommonsService() { Url = base.ServiceUrl })
            {
                service.Remove(objectOpenID);
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