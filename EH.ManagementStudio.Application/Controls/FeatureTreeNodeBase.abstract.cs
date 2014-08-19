#region "FeatureTreeNodeBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-19 9:53:10
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Controls
 * 
 * ####     Type Name : FeatureTreeNodeBase
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Controls.FeatureTreeNodeBase
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

using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Commons;
using System.Drawing;

namespace EnterpriseServices.ManagementClient.Controls
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Controls.FeatureTreeNodeBase</para>
    /// <para>
    /// 定义了功能树节点基类。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public abstract class FeatureTreeNodeBase : TreeNode
    {
        private FeatureTreeNodeType _featureTreeNodeType;

        #region FeatureTreeNodeType
        /// <summary>
        /// 设置或获取功能树节点的类型。
        /// </summary>
        public virtual FeatureTreeNodeType FeatureTreeNodeType
        {
            get { return _featureTreeNodeType; }
            set { _featureTreeNodeType = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="FeatureTreeNodeBase" />对象实例。</para>
        /// </summary>
        protected FeatureTreeNodeBase(int imageIndex, FeatureTreeNodeType type)
        {
            this.ImageIndex = imageIndex;
            this.SelectedImageIndex = imageIndex;
            this.StateImageIndex = imageIndex;
            this.FeatureTreeNodeType = type;
            this.NodeFont = this.CreateFont();
        }

        #endregion

        #region CreateFont
        /// <summary>
        /// 创建功能树节点的字体。
        /// </summary>
        /// <returns><see cref="Font"/>对象实例。</returns>
        protected virtual Font CreateFont()
        {
            return new Font(new FontFamily("微软雅黑"), 9, FontStyle.Regular);
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