#region "OrganizationRootTreeNode"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-19 10:43:42
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Controls
 * 
 * ####     Type Name : OrganizationRootTreeNode
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Controls.OrganizationRootTreeNode
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
using EnterpriseServices.ManagementClient.Operations.Resources;

namespace EnterpriseServices.ManagementClient.Controls
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Controls.OrganizationRootTreeNode</para>
    /// <para>
    /// 组织结构管理根节点。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class OrganizationRootTreeNode : FeaturesRootTreeNode
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="OrganizationRootTreeNode" />对象实例。</para>
        /// </summary>
        public OrganizationRootTreeNode()
            : base(Commons.FeatureTreeNodeType.OrganizationsRoot)
        {
            this.Text = Messages.OrganizationManagement;
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