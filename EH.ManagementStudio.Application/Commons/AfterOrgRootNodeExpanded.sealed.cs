#region "AfterOrgRootNodeExpanded"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-21 10:53:04
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Commons
 * 
 * ####     Type Name : AfterOrgRootNodeExpanded
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Commons.AfterOrgRootNodeExpanded
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
using EnterpriseServices.ManagementClient.Controls;
using EnterpriseServices.ManagementClient.Operations;
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.ManagementClient.Operations.Organizations;

namespace EnterpriseServices.ManagementClient.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Commons.AfterOrgRootNodeExpanded</para>
    /// <para>
    /// 用于处理组织机构对象根节点展开后的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class AfterOrgRootNodeExpanded : IAfterTreeNodeExpandedHandler
    {
        private ContextMenuStrip _contextMenuStrip;

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="AfterOrgRootNodeExpanded" />对象实例。</para>
        /// </summary>
        public AfterOrgRootNodeExpanded()
        {
        }

        #endregion

        #region Execute
        /// <summary>
        /// 执行此方法。
        /// </summary>
        /// <param name="ctxNode">当前节点。</param>
        public void Execute(TreeNode ctxNode)
        {
            if (ctxNode is OrganizationRootTreeNode)
            {
                if (ctxNode.Nodes.Count.Equals(0))
                {
                    Organization rootOrg = new OrganizationHandler().GetRoot();
                    if (!object.ReferenceEquals(rootOrg, null))
                        ctxNode.Nodes.Add(new OrganizationTreeNode(rootOrg) { ContextMenuStrip = this._contextMenuStrip });
                }
            }
        }
        #endregion

        #region BoundContextMenu
        /// <summary>
        /// 设置当前节点的上下文菜单。
        /// </summary>
        public ContextMenuStrip BoundContextMenu
        {
            set { this._contextMenuStrip = value; }
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