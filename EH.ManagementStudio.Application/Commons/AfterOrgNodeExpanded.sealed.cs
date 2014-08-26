#region "AfterOrgNodeExpanded"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-25 13:18:58
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Commons
 * 
 * ####     Type Name : AfterOrgNodeExpanded
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Commons.AfterOrgNodeExpanded
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
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.ManagementClient.Operations.Organizations;

namespace EnterpriseServices.ManagementClient.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Commons.AfterOrgNodeExpanded</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class AfterOrgNodeExpanded : EnterpriseServices.ManagementClient.Operations.IAfterTreeNodeExpandedHandler
    {
        private ContextMenuStrip _boundContextMenu;

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="AfterOrgNodeExpanded" />对象实例。</para>
        /// </summary>
        public AfterOrgNodeExpanded()
        {
        }

        #endregion

        #region Execute
        /// <summary>
        /// 执行展开后事件处理函数。
        /// </summary>
        /// <param name="ctxNode">当前的树节点。</param>
        public void Execute(TreeNode ctxNode)
        {
            if (ctxNode.Nodes.Count.Equals(0) || (ctxNode.Nodes.Count.Equals(1) && ctxNode.Nodes[0] is EmptyTreeNode))
            {
                OrganizationBase[] orgObjects = new OrganizationObjectHandler().GetSubs((ctxNode.Tag as OrganizationBase).OpenID);
                foreach (OrganizationBase item in orgObjects)
                {
                    if (item is Organization)
                    {
                        ctxNode.Nodes.Add(new OrganizationTreeNode(item as Organization) { ContextMenuStrip = this._boundContextMenu });
                    }
                    else
                    {
                        ctxNode.Nodes.Add(new PositionTreeNode(item as Position) { ContextMenuStrip = this._boundContextMenu });
                    }
                }
            }
        }
        #endregion

        #region BoundContextMenu
        /// <summary>
        /// 设置绑定的上下文菜单。
        /// </summary>
        public ContextMenuStrip BoundContextMenu
        {
            set { this._boundContextMenu = value; }
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