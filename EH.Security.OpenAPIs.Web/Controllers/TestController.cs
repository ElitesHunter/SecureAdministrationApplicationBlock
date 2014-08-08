using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EnterpriseServices.SecurityService.OpenAPIs.Models;

namespace EnterpriseServices.SecurityService.OpenAPIs.Controllers
{
    #region TestController
    public class TestController : Controller
    {
        #region TryConnect
        /// <summary>
        /// 尝试连接。
        /// </summary>
        /// <returns><see cref="ActionResult"/>对象实例。</returns>
        public ActionResult TryConnect(string render)
        {
            return View(new TryConnectResult() { RenderMode = render });
        }
        #endregion
    }
    #endregion
}
