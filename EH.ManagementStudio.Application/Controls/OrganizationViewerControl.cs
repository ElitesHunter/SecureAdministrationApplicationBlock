using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Operations.Entity;

namespace EnterpriseServices.ManagementClient.Controls
{
    /// <summary>
    /// 组织机构查看控件。
    /// </summary>
    public partial class OrganizationViewerControl : BaseControl
    {
        public OrganizationViewerControl()
        {
            InitializeComponent();
        }

        #region InitializeThis
        /// <summary>
        /// 初始化此控件。
        /// </summary>
        protected override void InitializeThis()
        {
            base.InitializeThis();
            Organization org = (this.Tag as OrganizationTreeNode).Tag as Organization;
            this.SetDescription(org.Name);
            this.ctrlVPathDescription.Text = string.Format("路径：{0}", org.VirtualPath);
            this.ctrlProperties.SelectedObject = org;
        }
        #endregion

        #region GetDescriptionInTabContainer
        public override string GetDescriptionInTabContainer()
        {
            return "组织机构";
        }
        #endregion
    }
}
