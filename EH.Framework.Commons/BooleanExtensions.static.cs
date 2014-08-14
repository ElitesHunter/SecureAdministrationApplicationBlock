#region "BooleanExtensions"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-07 10:05:56
 * 
 * ####     Namespace : System
 * 
 * ####     Type Name : BooleanExtensions
 * 
 * ####     Full Name : System.BooleanExtensions
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


namespace System
{
    /// <summary>
    /// <para>System.BooleanExtensions</para>
    /// <para>
    /// 针对<see cref="Boolean"/>类型值提供的扩展方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public static class BooleanExtensions
    {
        #region ToSqlValue
        /// <summary>
        /// 将此布尔值转换成SQL Server数据库所需的字符串。
        /// </summary>
        /// <param name="context"></param>
        /// <returns>Y/N</returns>
        static public string ToSqlValue(this bool context)
        {
            return context ? "Y" : "N";
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