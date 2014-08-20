#region "ParameterDeclarationRootTreeNode"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-19 10:21:42
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Controls
 * 
 * ####     Type Name : ParameterDeclarationRootTreeNode
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Controls.ParameterDeclarationRootTreeNode
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
using EnterpriseServices.ManagementClient.Operations.Resources;

namespace EnterpriseServices.ManagementClient.Controls
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Controls.ParameterDeclarationRootTreeNode</para>
    /// <para>
    /// 参数定义根节点。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class ParameterDeclarationRootTreeNode : FeaturesRootTreeNode
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ParameterDeclarationRootTreeNode" />对象实例。</para>
        /// </summary>
        public ParameterDeclarationRootTreeNode()
            : base(FeatureTreeNodeType.ParametersRoot)
        {
            this.Text = Messages.ParameterDeclaration;
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