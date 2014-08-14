#region "ApiServiceBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 14:54:20
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.API
 * 
 * ####     Type Name : ApiServiceBase
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.API.ApiServiceBase
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

using System;
using EnterpriseServices.SecurityService.API.Configuration;
using System.Configuration;

namespace EnterpriseServices.SecurityService.API
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.API.ApiServiceBase</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public abstract class ApiServiceBase
    {
        private string _serviceName;
        private string _serviceUrl;

        #region ServiceName
        /// <summary>
        /// 设置或获取服务名称。
        /// </summary>
        protected virtual string ServiceName
        {
            get { return _serviceName; }
            set { _serviceName = value; }
        }
        #endregion

        #region ServiceUrl
        /// <summary>
        /// 获取服务地址。
        /// </summary>
        protected virtual string ServiceUrl
        {
            get { return _serviceUrl; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ApiServiceBase" />对象实例。</para>
        /// </summary>
        /// <param name="serviceName">服务名称。</param>
        protected ApiServiceBase(string serviceName)
        {
            this.ServiceName = serviceName;
            this.InitializeServiceReferenceUrl();
        }

        #endregion

        #region InitializeServiceReferenceUrl
        /// <summary>
        /// 初始化服务引用地址。
        /// </summary>
        protected virtual void InitializeServiceReferenceUrl()
        {
            ApiServiceReferenceUrlSection configObject = ConfigurationManager.GetSection("enterpriseServices.openApi") as ApiServiceReferenceUrlSection;
            string baseUrl = configObject.BaseUrl;
            this._serviceUrl = string.Format("{0}{1}", baseUrl, configObject.References[this.ServiceName].Url);
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