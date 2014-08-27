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
    #region PositionViewerControl
    /// <summary>
    /// 职位信息查看控件。
    /// </summary>
    public partial class PositionViewerControl : BaseControl
    {
        public PositionViewerControl()
        {
            InitializeComponent();
            this.OnBoundTreeNodeChanged += new EventHandler(BoundTreeNodeChanged);
        }

        #region BoundTreeNodeChanged
        void BoundTreeNodeChanged(object sender, EventArgs e)
        {
            Position pos = this.BoundTreeNode.Tag as Position;
            this.SetDescription(pos.Name);
            this.CtrlPositionPropertyGrid.SelectedObject = pos;
            this.CtrlVirtualPathDescription.Text = pos.VirtualPath;
        }
        #endregion

        #region InitializeThis
        /// <summary>
        /// 初始化此控件。
        /// </summary>
        protected override void InitializeThis()
        {
            base.InitializeThis();
            Position pos = (this.Tag as PositionTreeNode).Tag as Position;
            this.SetDescription(pos.Name);
            this.CtrlVirtualPathDescription.Text = pos.VirtualPath;
            this.CtrlPositionPropertyGrid.SelectedObject = pos;
        }
        #endregion

        #region GetDescriptionInTabContainer
        /// <summary>
        /// 获取在分页卡中的描述信息。
        /// </summary>
        /// <returns></returns>
        public override string GetDescriptionInTabContainer()
        {
            return "组织机构(职位信息)";
        }
        #endregion

        #region ControlLoad
        /// <summary>
        /// 控件初次加载事件处理函数。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ControlLoad(object sender, EventArgs e)
        {

        }
        #endregion
    }
    #endregion
}
