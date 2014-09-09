﻿using System;
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.ManagementClient.Commons;
using EnterpriseServices.ManagementClient.Operations.Organizations;

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
            this.Staff = new Staff() { CredentialsType = new CredentialsType(), BirthPlace = new Place() };
            this.CtrlStaffPropertyGrid.SelectedObject = this.Staff;
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
            Staff person = this.CtrlStaffPropertyGrid.SelectedObject as Staff;
            if (!string.IsNullOrEmpty(person.LastName) && !string.IsNullOrEmpty(person.FirstName))
            {
                new StaffHandler().Create(person);
            }
            else
                DialogMethods.Prompt("请输入姓氏和名字！");
        }
        #endregion
    }
    #endregion
}
