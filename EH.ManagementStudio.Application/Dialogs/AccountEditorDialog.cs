using System;
using EnterpriseServices.ManagementClient.Commons;
using EnterpriseServices.ManagementClient.Operations.Entity;

namespace EnterpriseServices.ManagementClient.Dialogs
{
    public partial class AccountEditorDialog : BaseDialog
    {
        private string _openID;
        private string _staffName;
        private Guid _staffID;
        private bool _isCreate;
        private Guid _accountID;

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

        #region IsCreate
        private bool IsCreate
        {
            get { return _isCreate; }
            set { _isCreate = value; }
        }
        #endregion

        #region AccountID
        private Guid AccountID
        {
            get { return _accountID; }
            set { _accountID = value; }
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
            this.IsCreate = account.UniqueID.Equals(Guid.Empty);
            this.AccountID = account.UniqueID;
            this.CtrlResetPassword.Enabled = !this.AccountID.Equals(Guid.Empty);
            this.CtrlUserNameInput.Enabled = account.UniqueID.Equals(Guid.Empty);
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

        #region CtrlOkButton_Click
        private void CtrlOkButton_Click(object sender, EventArgs e)
        {
            if (this.AccountID.Equals(Guid.Empty))
            {
                if (this.ValidateControlsValue())
                {
                    int state = this.CreateAccount().Create(this.StaffID, this.OpenID);
                    if (state.Equals(0))
                    {
                        this.DialogResult = System.Windows.Forms.DialogResult.OK;
                        this.Close();
                    }
                    else DialogMethods.Prompt("用户名已存在，请重新指定！");
                }
            }
            else
            {
                this.CreateAccount().Update();
                this.DialogResult = System.Windows.Forms.DialogResult.OK;
                this.Close();
            }
        }
        #endregion

        #region ValidateControlsValue
        private bool ValidateControlsValue()
        {
            if (string.IsNullOrEmpty(this.CtrlUserNameInput.Text))
            {
                DialogMethods.Prompt("请输入账户名！");
                return false;
            }
            if (string.IsNullOrEmpty(this.CtrlPasswordInput.Text))
            {
                DialogMethods.Prompt("请输入密码！");
                return false;
            }
            return true;
        }
        #endregion

        #region CreateAccount
        private Account CreateAccount()
        {
            return new Account()
            {
                UniqueID = this.AccountID,
                UserName = this.CtrlUserNameInput.Text,
                Passphrase = this.CtrlPasswordInput.Text,
                UseExpiredPolicy = this.CtrlUseExpirationPolicy.Checked,
                UnitValue = this.CtrlExpirationCycleUnit.SelectedIndex,
                ExpiredLength = (int)this.CtrlExpirationCycleLength.Value,
                IsLocked = this.CtrlUnlockButton.Enabled
            };
        }
        #endregion

        #region CtrlResetPassword_Click
        private void CtrlResetPassword_Click(object sender, EventArgs e)
        {
            if (DialogMethods.Ask("是否将账户口令重置为 abc123 ?") == System.Windows.Forms.DialogResult.OK)
            {
                Account.UpdatePassword(this.AccountID, "abc123");
                this.Close();
            }
        }
        #endregion

        #region CtrlUnlockButton_Click
        private void CtrlUnlockButton_Click(object sender, EventArgs e)
        {
            Account.UnLock(this.AccountID);
            this.Close();
        }
        #endregion
    }
}
