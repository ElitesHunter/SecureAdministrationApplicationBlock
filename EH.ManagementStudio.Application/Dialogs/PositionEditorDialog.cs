using System;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Commons;
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.ManagementClient.Operations.Organizations;

namespace EnterpriseServices.ManagementClient.Dialogs
{
    #region PositionEditorDialog
    /// <summary>
    /// 职位编辑对话框。
    /// </summary>
    public partial class PositionEditorDialog : BaseDialog
    {
        private Position _positionObject;
        private Organization _ownedOrganization;

        #region PositionObject
        /// <summary>
        /// 设置或获取职位对象。
        /// </summary>
        public Position PositionObject
        {
            get { return _positionObject; }
            set { _positionObject = value; }
        }
        #endregion

        #region OwnedOrganization
        /// <summary>
        /// 设置或获取所属的组织机构。
        /// </summary>
        public Organization OwnedOrganization
        {
            get { return _ownedOrganization; }
            set { _ownedOrganization = value; }
        }
        #endregion

        public PositionEditorDialog()
        {
            InitializeComponent();
        }

        #region DialogLoad
        /// <summary>
        /// 对话框初次记载事件。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void DialogLoad(object sender, EventArgs e)
        {
            this.CtrlPositionPropertyGrid.SelectedObject = this.PositionObject;
        }
        #endregion

        #region OkButtonClick
        /// <summary>
        /// 确定按钮单击事件处理函数。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OkButtonClick(object sender, EventArgs e)
        {
            Position obj = this.CtrlPositionPropertyGrid.SelectedObject as Position;
            if (!string.IsNullOrEmpty(obj.Name))
            {
                PositionHandler handler = new PositionHandler();
                int state = handler.CreatePosition(obj, this.OwnedOrganization.UniqueID, this.CtrlIsPrincipal.Checked, !this.CtrlIsPrincipal.Checked);
                if (state > 0 && this.CtrlIsPrincipal.Checked)
                {
                    if (DialogMethods.Ask(string.Format("{0}已经设置了主要负责人职位，是否覆盖？", this.OwnedOrganization.Name)) == DialogResult.OK)
                    {
                        handler.CreatePosition(obj, this.OwnedOrganization.UniqueID, true, true);
                        this.DialogResult = System.Windows.Forms.DialogResult.OK;
                        this.Close();
                    }
                }
                if (state.Equals(0))
                {
                    this.DialogResult = System.Windows.Forms.DialogResult.OK;
                    this.Close();
                }
            }
            else DialogMethods.Prompt("请输入职位的名称！");
        }
        #endregion
    }
    #endregion
}
