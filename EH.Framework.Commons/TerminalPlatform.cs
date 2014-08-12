#region "TerminalPlatform"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-12 16:15:56
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons
 * 
 * ####     Type Name : TerminalPlatform
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.TerminalPlatform
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

namespace EnterpriseServices.Framework.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.TerminalPlatform</para>
    /// <para>
    /// 定义了终端的平台代码。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable()]
    public enum TerminalPlatform : int
    {
        /// <summary>
        /// 未知的平台。
        /// </summary>
        Unknown = -1,
        /// <summary>
        /// PC机。
        /// </summary>
        PC = 1,
        /// <summary>
        /// Windows Phone移动设备。
        /// </summary>
        WindowsPhone = 2,
        /// <summary>
        /// 安卓平台移动设备。
        /// </summary>
        Android = 3,
        /// <summary>
        /// 苹果iOS平台移动设备。
        /// </summary>
        iOS = 4,
        /// <summary>
        /// 火狐操作系统移动设备。
        /// </summary>
        FirefoxOS = 5,
        /// <summary>
        /// Windows Mobile移动设备。
        /// </summary>
        WindowsMobile = 6,
        /// <summary>
        /// 塞班平台移动设备。
        /// </summary>
        Symbian = 7,
        /// <summary>
        /// Nokia Meego 平台移动设备（特指N9智能手机）。
        /// </summary>
        MeeGo = 8,
        /// <summary>
        /// 黑莓平台移动设备。
        /// </summary>
        BlackBerry = 9
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