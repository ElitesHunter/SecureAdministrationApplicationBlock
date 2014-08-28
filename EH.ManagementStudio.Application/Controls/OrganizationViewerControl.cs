using System;
using EnterpriseServices.ManagementClient.Commons;
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.ManagementClient.Operations.Organizations;

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
            this.OnBoundTreeNodeChanged += new EventHandler(BoundNodeChanged);
        }

        #region BoundNodeChanged
        /// <summary>
        /// 当绑定的组织机构节点发生变化时触发。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void BoundNodeChanged(object sender, EventArgs e)
        {
            this.ctrlProperties.SelectedObject = this.BoundTreeNode.Tag;
            this.SetDescription((this.BoundTreeNode.Tag as Organization).Name);
            this.ctrlVPathDescription.Text = (this.BoundTreeNode.Tag as Organization).VirtualPath;
        }
        #endregion

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

        #region SaveButtonClick
        /// <summary>
        /// 保存按钮单击事件处理函数。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void SaveButtonClick(object sender, EventArgs e)
        {
            Organization org = this.ctrlProperties.SelectedObject as Organization;
            if (!string.IsNullOrEmpty(org.Name))
            {
                if (DialogMethods.Ask("确认更新组织机构信息？") == System.Windows.Forms.DialogResult.OK)
                {
                    new OrganizationHandler().Update(org);
                }
            }
            else DialogMethods.Prompt("请输入组织机构名称！");
        }
        #endregion
    }
}
