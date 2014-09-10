#region "AfterPositionNodeExpanded"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-09-10 9:49:37
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Commons
 * 
 * ####     Type Name : AfterPositionNodeExpanded
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Commons.AfterPositionNodeExpanded
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
    /// <para>EnterpriseServices.ManagementClient.Commons.AfterPositionNodeExpanded</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class AfterPositionNodeExpanded : IAfterTreeNodeExpandedHandler
    {
        private ContextMenuStrip _boundContextMenu;

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="AfterPositionNodeExpanded" />对象实例。</para>
        /// </summary>
        public AfterPositionNodeExpanded()
        {
        }

        #endregion

        public void Execute(TreeNode ctxNode)
        {
            if ((ctxNode.Nodes.Count.Equals(1) && ctxNode is EmptyTreeNode) || ctxNode.Nodes.Count.Equals(0))
            {
                ctxNode.Nodes.Clear();
                Staff[] staffs = new StaffHandler().GetSubs((ctxNode.Tag as Position).OpenID);
                foreach (Staff item in staffs)
                    ctxNode.Nodes.Add(new StaffNode(item) { ContextMenuStrip = this._boundContextMenu });
            }
        }

        public ContextMenuStrip BoundContextMenu
        {
            set { this._boundContextMenu = value; }
        }
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