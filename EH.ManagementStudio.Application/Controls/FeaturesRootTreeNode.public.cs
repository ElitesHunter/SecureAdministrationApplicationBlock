#region "FeaturesRootTreeNode"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-19 10:19:34
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Controls
 * 
 * ####     Type Name : FeaturesRootTreeNode
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Controls.FeaturesRootTreeNode
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

using EnterpriseServices.ManagementClient.Commons;

namespace EnterpriseServices.ManagementClient.Controls
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Controls.FeaturesRootTreeNode</para>
    /// <para>
    /// 定义了具体功能根节点。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class FeaturesRootTreeNode : FeatureTreeNodeBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="FeaturesRootTreeNode" />对象实例。</para>
        /// </summary>
        /// <param name="type"><see cref="FeatureTreeNodeType"/>中的一个值。</param>
        public FeaturesRootTreeNode(FeatureTreeNodeType type)
            : base(1, type)
        {
            this.Nodes.Add(new EmptyTreeNode());
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