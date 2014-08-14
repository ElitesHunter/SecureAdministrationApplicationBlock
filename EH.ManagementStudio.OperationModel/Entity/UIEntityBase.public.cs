#region "UIEntityBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-12 11:57:01
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Entity
 * 
 * ####     Type Name : UIEntityBase
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Entity.UIEntityBase
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


namespace EnterpriseServices.ManagementClient.Operations.Entity
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Entity.UIEntityBase</para>
    /// <para>
    /// 用于绑定到控件的实体基类。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class UIEntityBase
    {
        private string _text;

        #region Text
        /// <summary>
        /// 设置或获取需要显示的文本。
        /// </summary>
        public virtual string Text
        {
            get { return _text; }
            set { _text = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="UIEntityBase" />对象实例。</para>
        /// </summary>
        public UIEntityBase()
        {
        }

        #endregion

        #region ToString
        /// <summary>
        /// 获取字符串表达式。
        /// </summary>
        /// <returns></returns>
        public override string ToString()
        {
            return this.Text;
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