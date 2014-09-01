using System;
using System.Collections.Generic;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Commons;
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
        private int _principalState;
        private Guid _superiorID;

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

        #region PrincipalState
        /// <summary>
        /// 获取是否为负责人职位的状态值。
        /// <para>
        /// 1：保持原始状态；0:不设置为负责人职位；2：设置为负责人职位。
        /// </para>
        /// </summary>
        public int PrincipalState
        {
            get { return _principalState; }
            private set { _principalState = value; }
        }
        #endregion

        #region SuperiorID
        /// <summary>
        /// 获取上级职位标识。
        /// </summary>
        public Guid SuperiorID
        {
            get { return _superiorID; }
            private set { _superiorID = value; }
        }
        #endregion

        public PositionAdvancedDialog()
        {
            InitializeComponent();
            this.PrincipalState = 1;
            this.SuperiorID = Guid.Empty;
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
            if (!object.ReferenceEquals(this.CtrlPositionList.SelectedItems, null) && this.CtrlPositionList.SelectedItems.Count > 0)
            {
                this.SuperiorID = (this.CtrlPositionList.SelectedItems[0].Tag as Position).UniqueID;
            }
            this.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.Close();
        }
        #endregion

        #region PrincipalCheckedChanged
        /// <summary>
        /// 负责人状态选择变更事件处理函数。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void PrincipalCheckedChanged(object sender, EventArgs e)
        {
            if (this.CtrlIsPrincipal.Checked)
            {
                this.PrincipalState = DialogMethods.Ask("是否将此职位设置为负责人职位？") == System.Windows.Forms.DialogResult.OK ? 2 : 1;
            }
            else if (!this.CtrlIsPrincipal.Checked && this.PrincipalState.Equals(2))
            {
                this.PrincipalState = DialogMethods.Ask("是否取消设置此职位为负责人职位？") == System.Windows.Forms.DialogResult.OK ? 0 : 1;
            }
            else
            {
                this.PrincipalState = 1;
            }
        }
        #endregion
    }
    #endregion
}
