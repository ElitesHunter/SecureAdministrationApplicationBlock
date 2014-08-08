#region "UtilityDescription"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-06 11:20:00
 * 
 * ####     Namespace : EnterpriseServices.Utilities.Initialization
 * 
 * ####     Type Name : UtilityDescription
 * 
 * ####     Full Name : EnterpriseServices.Utilities.Initialization.UtilityDescription
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

namespace EnterpriseServices.Utilities.Initialization
{
    /// <summary>
    /// <para>EnterpriseServices.Utilities.Initialization.UtilityDescription</para>
    /// <para>
    /// 用于输出初始化工具的描述信息。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public static class UtilityDescription
    {
        #region PrintDescription
        /// <summary>
        /// 输出描述信息。
        /// </summary>
        static public void PrintDescription()
        {
            Console.WriteLine("猎头业务管理平台初始化工具(版本号：{0})", typeof(UtilityDescription).Assembly.GetName().Version.ToString());
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