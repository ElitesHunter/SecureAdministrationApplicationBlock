#region "TryConnectResult"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-08 15:17:57
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.OpenAPIs.Models
 * 
 * ####     Type Name : TryConnectResult
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.OpenAPIs.Models.TryConnectResult
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

using System;

namespace EnterpriseServices.SecurityService.OpenAPIs.Models
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.OpenAPIs.Models.TryConnectResult</para>
    /// <para>
    /// 提供了尝试连接API的返回结果。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 4.0</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class TryConnectResult : ApiResultBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="TryConnectResult" />对象实例。</para>
        /// </summary>
        public TryConnectResult()
        {
            this.Successful = true;
            this.StateCode = "STATE::00000001";
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