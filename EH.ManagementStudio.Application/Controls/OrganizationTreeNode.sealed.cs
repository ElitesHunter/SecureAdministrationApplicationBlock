#region "OrganizationTreeNode"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-21 10:58:17
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Controls
 * 
 * ####     Type Name : OrganizationTreeNode
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Controls.OrganizationTreeNode
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
using EnterpriseServices.ManagementClient.Operations;
using EnterpriseServices.ManagementClient.Operations.Entity;

namespace EnterpriseServices.ManagementClient.Controls
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Controls.OrganizationTreeNode</para>
    /// <para>
    /// 组织机构节点。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [TreeNodeBoundControl(typeof(OrganizationViewerControl))]
    [FilterAfterExpanded(typeof(AfterOrgNodeExpanded))]
    public sealed class OrganizationTreeNode : FeatureTreeNodeBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="OrganizationTreeNode" />对象实例。</para>
        /// </summary>
        public OrganizationTreeNode(Organization org)
            : base(2, Commons.FeatureTreeNodeType.Organzation)
        {
            this.Text = org.Name;
            this.Tag = org;
            this.ToolTipText = org.VirtualName;
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