#region "StringExtensions"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-20 10:56:00
 * 
 * ####     Namespace : System
 * 
 * ####     Type Name : StringExtensions
 * 
 * ####     Full Name : System.StringExtensions
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

namespace System
{
    /// <summary>
    /// <para>System.StringExtensions</para>
    /// <para>
    /// 对<see cref="String"/>类型提供的扩展方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public static class StringExtensions
    {
        #region TransferFromDB
        /// <summary>
        /// 根据数据库中的数据，将字符串转换成布尔类型值。
        /// </summary>
        /// <param name="s"></param>
        /// <returns>布尔类型值。</returns>
        static public bool TransferFromDB(this string s)
        {
            return s.ToLower().Equals("y");
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