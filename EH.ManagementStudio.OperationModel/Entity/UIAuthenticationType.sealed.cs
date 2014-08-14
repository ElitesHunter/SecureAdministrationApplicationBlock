#region "UIAuthenticationType"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-12 11:59:18
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Entity
 * 
 * ####     Type Name : UIAuthenticationType
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Entity.UIAuthenticationType
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

using EnterpriseServices.ManagementClient.Operations.Resources;

namespace EnterpriseServices.ManagementClient.Operations.Entity
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Entity.UIAuthenticationType</para>
    /// <para>
    /// 用于描述登录方式的实体。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class UIAuthenticationType : UIEntityBase
    {
        private int _type;

        #region Type
        /// <summary>
        /// 设置或获取登录方式类型标记。
        /// </summary>
        public int Type
        {
            get { return _type; }
            set { _type = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="UIAuthenticationType" />对象实例。</para>
        /// </summary>
        public UIAuthenticationType()
        {
        }

        #endregion

        #region GetAuthenticationTypes
        /// <summary>
        /// 获取默认的登录方式数组。
        /// </summary>
        /// <returns><see cref="UIAuthenticationType"/>[]。</returns>
        static public UIAuthenticationType[] GetAuthenticationTypes()
        {
            return new UIAuthenticationType[2]{
                new UIAuthenticationType(){Text=Messages.WindowsNTAuthenticate,Type=0},
                new UIAuthenticationType(){Text=Messages.ServerAuthenticate,Type=1}
            };
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