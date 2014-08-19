#region "RootTreeNode"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-19 9:58:32
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Controls
 * 
 * ####     Type Name : RootTreeNode
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Controls.RootTreeNode
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
using EnterpriseServices.ManagementClient.Operations.Principal;
using EnterpriseServices.ManagementClient.Operations;

namespace EnterpriseServices.ManagementClient.Controls
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Controls.RootTreeNode</para>
    /// <para>
    /// 定义了根节点。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [TreeNodeBoundControl(typeof(DescriptionControl))]
    public sealed class RootTreeNode : FeatureTreeNodeBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="RootTreeNode" />对象实例。</para>
        /// </summary>
        public RootTreeNode()
            : base(0, Commons.FeatureTreeNodeType.Root)
        {
            this.Text = string.Format(@"{0}-({1})", Environment.MachineName, ClientPrincipal.GetCurrentPrincipal().User.Name);
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