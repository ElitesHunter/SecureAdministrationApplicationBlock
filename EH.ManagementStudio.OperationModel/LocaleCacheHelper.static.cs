#region "LocaleCacheHelper"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-25 15:11:21
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : LocaleCacheHelper
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.LocaleCacheHelper
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

namespace EnterpriseServices.ManagementClient.Operations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.LocaleCacheHelper</para>
    /// <para>
    /// 提供了访问本地缓存的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public static class LocaleCacheHelper
    {
        #region Get
        /// <summary>
        /// 获取指定键名称的本地缓存数据。
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="key"></param>
        /// <returns></returns>
        static public T Get<T>(string key)
        {
            object data = AppDomain.CurrentDomain.GetData(key);
            return object.ReferenceEquals(data, null) ? default(T) : (T)data;
        }
        #endregion

        #region Set
        /// <summary>
        /// 设置本地缓存。
        /// </summary>
        /// <param name="key"></param>
        /// <param name="data"></param>
        static public void Set(string key, object data)
        {
            AppDomain.CurrentDomain.SetData(key, data);
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