#region "WinNTAuthenticateResult"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 10:10:59
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel
 * 
 * ####     Type Name : WinNTAuthenticateResult
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.WinNTAuthenticateResult
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

using EnterpriseServices.SecurityService.Framework.Commons;

namespace EnterpriseServices.SecurityService.Framework.OperationModel
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.WinNTAuthenticateResult</para>
    /// <para>
    /// 定义了执行Windows身份认证后的返回结果。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class WinNTAuthenticateResult : AuthenticateResult
    {
        private WinNTAuthenticateToken _winToken;

        #region WinToken
        /// <summary>
        /// 获取Windows账户令牌。
        /// </summary>
        public WinNTAuthenticateToken WinToken
        {
            get { return _winToken; }
            private set { _winToken = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="WinNTAuthenticateResult" />对象实例。</para>
        /// </summary>
        /// <param name="token"><see cref="WinNTAuthenticateToken"/>对象实例。</param>
        /// <param name="stateCode">状态代码。</param>
        public WinNTAuthenticateResult(WinNTAuthenticateToken token, string stateCode)
            : base(token, stateCode)
        {
            this.WinToken = token;
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