#region "Entrance"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-06 13:48:22
 * 
 * ####     Namespace : EnterpriseServices.Utilities.Initialization
 * 
 * ####     Type Name : Entrance
 * 
 * ####     Full Name : EnterpriseServices.Utilities.Initialization.Entrance
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
    /// <para>EnterpriseServices.Utilities.Initialization.Entrance</para>
    /// <para>
    /// 工具的入口程序：由用户确认是否进行初始化。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public static class Entrance
    {
        #region PrintDescription
        /// <summary>
        /// 输出提示信息。
        /// </summary>
        static public void PrintDescription()
        {
            Console.WriteLine("是否立即启动系统初始化？(Y/N)");
        }
        #endregion

        #region Continue
        /// <summary>
        /// 验证是否需要继续进行。
        /// </summary>
        /// <returns>true/false。</returns>
        static public bool Continue()
        {
            string inputTag = Console.ReadLine();
            return !string.IsNullOrEmpty(inputTag) && (inputTag.ToLower().StartsWith("y"));
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