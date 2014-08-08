#region "IObjectBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-07-31 11:42:06
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons
 * 
 * ####     Type Name : IObjectBase
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.IObjectBase
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
    /// <para>EnterpriseServices.Framework.Commons.IObjectBase</para>
    /// <para>
    /// 定义了基础对象的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public interface IObjectBase : IObjectID, IObjectEnableTag, IObjectOpenID, IObjectRemoveTag, IObjectVisibilityTag
    {
        #region Comments
        /// <summary>
        /// 设置或获取对象的备注信息。
        /// </summary>
        string Comments { get; set; }
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