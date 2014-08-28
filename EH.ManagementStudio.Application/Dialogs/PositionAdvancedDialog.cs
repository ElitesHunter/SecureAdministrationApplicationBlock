using System;
using System.Collections.Generic;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.ManagementClient.Operations.Organizations;

namespace EnterpriseServices.ManagementClient.Dialogs
{
    #region PositionAdvancedDialog
    /// <summary>
    /// 职位高级属性对话框。
    /// </summary>
    public partial class PositionAdvancedDialog : BaseDialog
    {
        private Guid _positionID;

        #region PositionID
        /// <summary>
        /// 设置或获取当前的职位标识。
        /// </summary>
        public Guid PositionID
        {
            get { return _positionID; }
            set { _positionID = value; }
        }
        #endregion

        public PositionAdvancedDialog()
        {
            InitializeComponent();
        }

        #region DialogLoad
        /// <summary>
        /// 对话框初次加载事件处理函数。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void DialogLoad(object sender, EventArgs e)
        {

        }
        #endregion

        #region InitializeControls
        /// <summary>
        /// 初始化所有控件。
        /// </summary>
        protected override void InitializeControls()
        {
            base.InitializeControls();
            List<Position> list = new PositionHandler().GetPositionsExcludeSpeified(this.PositionID);
            foreach (Position item in list)
            {
                ListViewItem lvItem = new ListViewItem(new string[2] { item.Name, item.VirtualPath }) { Tag = item };
                this.CtrlPositionList.Items.Add(lvItem);
            }
        }
        #endregion

        #region OkButtonClick
        /// <summary>
        /// 确定按钮单击事件。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OkButtonClick(object sender, EventArgs e)
        {

        }
        #endregion
    }
    #endregion
}
