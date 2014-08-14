#region "WinNTAuthencationXParameterGenerator"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-14 10:39:01
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel.Generators
 * 
 * ####     Type Name : WinNTAuthencationXParameterGenerator
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.Generators.WinNTAuthencationXParameterGenerator
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

namespace EnterpriseServices.SecurityService.Framework.OperationModel.Generators
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.Generators.WinNTAuthencationXParameterGenerator</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    partial class WinNTAuthencationXParameterGenerator
    {
        private string _iPAddress;
        private string _hostName;
        private DateTime _absoluteExpiration;
        private string _userName;

        #region IPAddress
        /// <summary>
        /// 设置或获取IP地址。
        /// </summary>
        internal string IPAddress
        {
            get { return _iPAddress; }
            set { _iPAddress = value; }
        }
        #endregion

        #region HostName
        /// <summary>
        /// 设置或获取主机名称。
        /// </summary>
        internal string HostName
        {
            get { return _hostName; }
            set { _hostName = value; }
        }
        #endregion

        #region AbsoluteExpiration
        /// <summary>
        /// 设置或获取绝对超时时间。
        /// </summary>
        internal DateTime AbsoluteExpiration
        {
            get { return _absoluteExpiration; }
            set { _absoluteExpiration = value; }
        }
        #endregion

        #region UserName
        /// <summary>
        /// 设置或获取用户名。
        /// </summary>
        internal string UserName
        {
            get { return _userName; }
            set { _userName = value; }
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