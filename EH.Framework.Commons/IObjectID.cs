#region "IObjectID"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-07-31 11:33:16
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons
 * 
 * ####     Type Name : IObjectID
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.IObjectID
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
    /// <para>EnterpriseServices.Framework.Commons.IObjectID</para>
    /// <para>
    /// 定义了访问对象唯一标识的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public interface IObjectID
    {
        #region UniqueID
        /// <summary>
        /// 获取对象的唯一标识。
        /// </summary>
        Guid UniqueID { get; }
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