using System;
using EnterpriseServices.ManagementClient.Operations.Entity;

namespace EnterpriseServices.ManagementClient.Dialogs
{
    #region StaffEditorDialog
    /// <summary>
    /// 人员属性编辑对话框。
    /// </summary>
    public partial class StaffEditorDialog : BaseDialog
    {
        private Staff _staff;

        #region Staff
        /// <summary>
        /// 设置或获取人员信息。
        /// </summary>
        public Staff Staff
        {
            get { return _staff; }
            set { _staff = value; }
        }
        #endregion

        public StaffEditorDialog()
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
            this.CtrlStaffPropertyGrid.SelectedObject = this.Staff;
        }
        #endregion
    }
    #endregion
}
