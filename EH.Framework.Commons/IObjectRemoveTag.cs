#region "IObjectRemoveTag"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-07-31 11:36:03
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons
 * 
 * ####     Type Name : IObjectRemoveTag
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.IObjectRemoveTag
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


namespace EnterpriseServices.Framework.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.IObjectRemoveTag</para>
    /// <para>
    /// 用于标记对象是否已经被逻辑删除。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public interface IObjectRemoveTag
    {
        #region IsRemoved
        /// <summary>
        /// 获取对象是否已经被逻辑删除。
        /// </summary>
        bool IsRemoved { get; }
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