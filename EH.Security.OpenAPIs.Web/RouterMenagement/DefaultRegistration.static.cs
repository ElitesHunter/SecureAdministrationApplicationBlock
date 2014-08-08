#region "DefaultRegistration"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-08 14:29:29
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.OpenAPIs.RouterMenagement
 * 
 * ####     Type Name : DefaultRegistration
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.OpenAPIs.RouterMenagement.DefaultRegistration
 * 
 * ####     Machine Name : GLCHQWYCWINW7
 * 
 * ####     UserName : GUOCOLAND/wangyucai
 * 
 * ####     CLR Version : 4.0.30319.18444
 * 
 * ####     Target Framework Version : 4.0
 */

#endregion

using System.Web.Mvc;
using System.Web.Routing;

namespace EnterpriseServices.SecurityService.OpenAPIs.RouterMenagement
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.OpenAPIs.RouterMenagement.DefaultRegistration</para>
    /// <para>
    /// 用于注册默认的路由。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 4.0</para>
    /// </remarks>
    public static class DefaultRegistration
    {
        #region Register
        /// <summary>
        /// 注册路由。
        /// </summary>
        /// <param name="routes"></param>
        static public void Register(RouteCollection routes)
        {
            DefaultRegistration.RegisterDefaultRoute(routes);
        }
        #endregion

        #region RegisterDefaultRoute
        /// <summary>
        /// 注册默认路由。
        /// </summary>
        /// <param name="routes"></param>
        static private void RegisterDefaultRoute(RouteCollection routes)
        {
            routes.MapRoute(
                "DefaultRoutes_Default",
                "{render}/{controller}/{action}.api",
                new { controller = "Test", action = "TryConnect", render = "xml" }
                );
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