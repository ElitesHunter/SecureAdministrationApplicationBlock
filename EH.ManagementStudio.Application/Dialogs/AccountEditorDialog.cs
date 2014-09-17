using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Operations.Entity;

namespace EnterpriseServices.ManagementClient.Dialogs
{
    public partial class AccountEditorDialog : BaseDialog
    {
        private string _openID;
        private string _staffName;
        private Guid _staffID;

        #region OpenID
        /// <summary>
        /// 人员的开放标识。
        /// </summary>
        public string OpenID
        {
            get { return _openID; }
            set { _openID = value; }
        }
        #endregion

        #region StaffID
        public Guid StaffID
        {
            get { return _staffID; }
            set { _staffID = value; }
        }
        #endregion

        #region StaffName
        public string StaffName
        {
            get { return _staffName; }
            set { _staffName = value; }
        }
        #endregion

        public AccountEditorDialog()
        {
            InitializeComponent();
        }

        #region InitializeForm
        protected override void InitializeForm()
        {
            base.InitializeForm();
            this.CtrlExpirationCycleUnit.SelectedIndex = 0;
            Account account = Staff.GetAssociatedAccount(this.OpenID);
            this.CtrlUserNameInput.Text = account.UserName;
            this.CtrlPasswordInput.Text = string.Empty;
            this.CtrlUseExpirationPolicy.Checked = account.UseExpiredPolicy;
            this.CtrlUnlockButton.Enabled = account.IsLocked;
            this.CtrlExpirationCycleLength.Value = new decimal(account.ExpiredLength);
            this.InitSelectedExpiredPolicy(account.UnitValue);
            this.CtrlExpirationCycleUnit.Enabled = this.CtrlUseExpirationPolicy.Checked;
            this.CtrlExpirationCycleLength.Enabled = this.CtrlUseExpirationPolicy.Checked;
        }
        #endregion

        #region InitSelectedExpiredPolicy
        private void InitSelectedExpiredPolicy(int unit)
        {
            switch ((char)unit)
            {
                case 'W': this.CtrlExpirationCycleUnit.SelectedIndex = 1; break;
                case 'D': this.CtrlExpirationCycleUnit.SelectedIndex = 2; break;
                default: this.CtrlExpirationCycleUnit.SelectedIndex = 0; break;
            }
        }
        #endregion

        #region CtrlUseExpirationPolicy_CheckedChanged
        private void CtrlUseExpirationPolicy_CheckedChanged(object sender, EventArgs e)
        {
            this.CtrlExpirationCycleUnit.Enabled = this.CtrlUseExpirationPolicy.Checked;
            this.CtrlExpirationCycleLength.Enabled = this.CtrlUseExpirationPolicy.Checked;
        }
        #endregion
    }
}
