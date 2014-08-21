#region "AfterTreeNodeExpandedHandler"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-21 10:27:48
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : AfterTreeNodeExpandedHandler
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.AfterTreeNodeExpandedHandler
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

namespace EnterpriseServices.ManagementClient.Operations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.IAfterTreeNodeExpandedHandler</para>
    /// <para>
    /// 定义了当树节点展开后执行的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public interface IAfterTreeNodeExpandedHandler
    {
        #region Execute
        /// <summary>
        /// 执行。
        /// </summary>
        /// <param name="ctxNode">当前展开的节点。</param>
        void Execute(TreeNode ctxNode);
        #endregion

        #region BoundContextMenu
        /// <summary>
        /// 设置当前节点的上下文菜单。
        /// </summary>
        ContextMenuStrip BoundContextMenu { set; }
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