#region "MainWindow"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-19 9:40:01
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Windows
 * 
 * ####     Type Name : MainWindow
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Windows.MainWindow
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

using System;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Commons;
using EnterpriseServices.ManagementClient.Controls;
using EnterpriseServices.ManagementClient.Operations;

namespace EnterpriseServices.ManagementClient.Windows
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Windows.MainWindow</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    partial class MainWindow
    {
        #region CreateRootNode
        /// <summary>
        /// 创建根节点。
        /// </summary>
        /// <returns></returns>
        private FeatureTreeNodeBase CreateRootNode()
        {
            RootTreeNode rootNode = new RootTreeNode();
            this.CreateChildNodes(rootNode);
            rootNode.Expand();
            return rootNode;
        }
        #endregion

        #region CreateChildNodes
        /// <summary>
        /// 创建子节点。
        /// </summary>
        /// <param name="treeNode">节点。</param>
        private void CreateChildNodes(FeatureTreeNodeBase treeNode)
        {
            treeNode.Nodes.Add(new ParameterDeclarationRootTreeNode());
            treeNode.Nodes.Add(new AdministratorsRootTreeNode());
            treeNode.Nodes.Add(new OrganizationRootTreeNode() { ContextMenuStrip = this.ctrlOrganizationRootCtxMenu });
            treeNode.Nodes.Add(new AuthorizationRootTreeNode());
            treeNode.Nodes.Add(new ExpirationPolicyRootTreeNode());
            treeNode.Nodes.Add(new LoggingsRootTeeNode());
        }
        #endregion

        #region TabIsExists
        /// <summary>
        /// 验证包含指定类型控件的分页卡是否存在。
        /// </summary>
        /// <returns>true/false。</returns>
        private bool TabIsExists(Type ctrlType, out TabPage page)
        {
            bool isExists = false;
            page = null;
            foreach (TabPage item in this.ctrlObjectTabContainer.TabPages)
            {
                if (item.Controls.Count > 0 && item.Controls[0].GetType().Equals(ctrlType))
                {
                    isExists = true;
                    item.Select();
                    page = item;
                    break;
                }
            }
            return isExists;
        }
        #endregion

        #region ClearChildNodes
        /// <summary>
        /// 清空指定节点的子节点。
        /// </summary>
        /// <param name="node">指定节点。</param>
        private void ClearChildNodes(TreeNode node)
        {
            if (node.Nodes.Count.Equals(1) && node.Nodes[0].GetType().Equals(typeof(EmptyTreeNode)))
            {
                node.Nodes.Clear();
            }
        }
        #endregion

        #region FilterExpandedTreeNode
        /// <summary>
        /// 过滤当前展开的节点。
        /// </summary>
        /// <param name="node">节点。</param>
        private void FilterExpandedTreeNode(TreeNode node)
        {
            if (node is FeatureTreeNodeBase)
            {
                Attribute attr = Attribute.GetCustomAttribute(node.GetType(), typeof(FilterAfterExpandedAttribute));
                if (!object.ReferenceEquals(attr, null))
                {
                    Type handlerType = (attr as FilterAfterExpandedAttribute).HandlerType;
                    IAfterTreeNodeExpandedHandler handler = (Activator.CreateInstance(handlerType) as IAfterTreeNodeExpandedHandler);
                    handler.BoundContextMenu = this.GetBoundContextMenuStrip(node);
                    handler.Execute(node);
                }
            }
        }
        #endregion

        #region GetBoundContextMenuStrip
        /// <summary>
        /// 获取指定节点绑定的上下文菜单。
        /// </summary>
        /// <param name="node">节点。</param>
        private ContextMenuStrip GetBoundContextMenuStrip(TreeNode node)
        {
            FeatureTreeNodeBase n = node as FeatureTreeNodeBase;
            ContextMenuStrip ctxMenu = null;
            switch (n.FeatureTreeNodeType)
            {
                case FeatureTreeNodeType.Organzation:
                case FeatureTreeNodeType.OrganizationsRoot:
                    ctxMenu = this.ctrlOrganizationObjCtxMenu;
                    break;
                case FeatureTreeNodeType.Staff:
                    ctxMenu = this.ctrlStaffCtxMenu;
                    break;
            }
            return ctxMenu;
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