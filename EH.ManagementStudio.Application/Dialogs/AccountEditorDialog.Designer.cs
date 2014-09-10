namespace EnterpriseServices.ManagementClient.Dialogs
{
    partial class AccountEditorDialog
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(AccountEditorDialog));
            this.CtrlUserNameDescriptor = new System.Windows.Forms.Label();
            this.CtrlUserNameInput = new System.Windows.Forms.TextBox();
            this.CtrlPasswordDescriptor = new System.Windows.Forms.Label();
            this.CtrlPasswordInput = new System.Windows.Forms.TextBox();
            this.CtrlExpirationControlsGroup = new System.Windows.Forms.GroupBox();
            this.CtrlUseExpirationPolicy = new System.Windows.Forms.CheckBox();
            this.CtrlExpirationCycleLengthDescriptor = new System.Windows.Forms.Label();
            this.CtrlExpirationCycleLength = new System.Windows.Forms.NumericUpDown();
            this.CtrlExpirationCycleUnit = new System.Windows.Forms.ComboBox();
            this.CtrlDescriptionText = new System.Windows.Forms.Label();
            this.CtrlOkButton = new System.Windows.Forms.Button();
            this.CtrlCloseButton = new System.Windows.Forms.Button();
            this.CtrlUnlockButton = new System.Windows.Forms.Button();
            this.CtrlResetPassword = new System.Windows.Forms.Button();
            this.CtrlExpirationControlsGroup.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CtrlExpirationCycleLength)).BeginInit();
            this.SuspendLayout();
            // 
            // CtrlUserNameDescriptor
            // 
            this.CtrlUserNameDescriptor.AutoSize = true;
            this.CtrlUserNameDescriptor.Location = new System.Drawing.Point(13, 13);
            this.CtrlUserNameDescriptor.Name = "CtrlUserNameDescriptor";
            this.CtrlUserNameDescriptor.Size = new System.Drawing.Size(61, 19);
            this.CtrlUserNameDescriptor.TabIndex = 0;
            this.CtrlUserNameDescriptor.Text = "账户名：";
            // 
            // CtrlUserNameInput
            // 
            this.CtrlUserNameInput.Location = new System.Drawing.Point(93, 10);
            this.CtrlUserNameInput.Name = "CtrlUserNameInput";
            this.CtrlUserNameInput.Size = new System.Drawing.Size(243, 25);
            this.CtrlUserNameInput.TabIndex = 1;
            // 
            // CtrlPasswordDescriptor
            // 
            this.CtrlPasswordDescriptor.AutoSize = true;
            this.CtrlPasswordDescriptor.Location = new System.Drawing.Point(13, 50);
            this.CtrlPasswordDescriptor.Name = "CtrlPasswordDescriptor";
            this.CtrlPasswordDescriptor.Size = new System.Drawing.Size(74, 19);
            this.CtrlPasswordDescriptor.TabIndex = 3;
            this.CtrlPasswordDescriptor.Text = "用户口令：";
            // 
            // CtrlPasswordInput
            // 
            this.CtrlPasswordInput.Location = new System.Drawing.Point(93, 47);
            this.CtrlPasswordInput.Name = "CtrlPasswordInput";
            this.CtrlPasswordInput.Size = new System.Drawing.Size(243, 25);
            this.CtrlPasswordInput.TabIndex = 4;
            this.CtrlPasswordInput.UseSystemPasswordChar = true;
            // 
            // CtrlExpirationControlsGroup
            // 
            this.CtrlExpirationControlsGroup.Controls.Add(this.CtrlDescriptionText);
            this.CtrlExpirationControlsGroup.Controls.Add(this.CtrlExpirationCycleUnit);
            this.CtrlExpirationControlsGroup.Controls.Add(this.CtrlExpirationCycleLength);
            this.CtrlExpirationControlsGroup.Controls.Add(this.CtrlExpirationCycleLengthDescriptor);
            this.CtrlExpirationControlsGroup.Controls.Add(this.CtrlUseExpirationPolicy);
            this.CtrlExpirationControlsGroup.Location = new System.Drawing.Point(17, 87);
            this.CtrlExpirationControlsGroup.Name = "CtrlExpirationControlsGroup";
            this.CtrlExpirationControlsGroup.Size = new System.Drawing.Size(319, 118);
            this.CtrlExpirationControlsGroup.TabIndex = 5;
            this.CtrlExpirationControlsGroup.TabStop = false;
            this.CtrlExpirationControlsGroup.Text = "口令过期策略";
            // 
            // CtrlUseExpirationPolicy
            // 
            this.CtrlUseExpirationPolicy.AutoSize = true;
            this.CtrlUseExpirationPolicy.Checked = true;
            this.CtrlUseExpirationPolicy.CheckState = System.Windows.Forms.CheckState.Checked;
            this.CtrlUseExpirationPolicy.Location = new System.Drawing.Point(26, 36);
            this.CtrlUseExpirationPolicy.Name = "CtrlUseExpirationPolicy";
            this.CtrlUseExpirationPolicy.Size = new System.Drawing.Size(158, 23);
            this.CtrlUseExpirationPolicy.TabIndex = 0;
            this.CtrlUseExpirationPolicy.Text = "强制使用口令过期策略";
            this.CtrlUseExpirationPolicy.UseVisualStyleBackColor = true;
            // 
            // CtrlExpirationCycleLengthDescriptor
            // 
            this.CtrlExpirationCycleLengthDescriptor.AutoSize = true;
            this.CtrlExpirationCycleLengthDescriptor.Location = new System.Drawing.Point(22, 76);
            this.CtrlExpirationCycleLengthDescriptor.Name = "CtrlExpirationCycleLengthDescriptor";
            this.CtrlExpirationCycleLengthDescriptor.Size = new System.Drawing.Size(22, 19);
            this.CtrlExpirationCycleLengthDescriptor.TabIndex = 1;
            this.CtrlExpirationCycleLengthDescriptor.Text = "每";
            // 
            // CtrlExpirationCycleLength
            // 
            this.CtrlExpirationCycleLength.Location = new System.Drawing.Point(50, 74);
            this.CtrlExpirationCycleLength.Name = "CtrlExpirationCycleLength";
            this.CtrlExpirationCycleLength.Size = new System.Drawing.Size(61, 25);
            this.CtrlExpirationCycleLength.TabIndex = 2;
            this.CtrlExpirationCycleLength.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // CtrlExpirationCycleUnit
            // 
            this.CtrlExpirationCycleUnit.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.CtrlExpirationCycleUnit.FormattingEnabled = true;
            this.CtrlExpirationCycleUnit.Items.AddRange(new object[] {
            "月",
            "周",
            "天"});
            this.CtrlExpirationCycleUnit.Location = new System.Drawing.Point(117, 73);
            this.CtrlExpirationCycleUnit.Name = "CtrlExpirationCycleUnit";
            this.CtrlExpirationCycleUnit.Size = new System.Drawing.Size(58, 27);
            this.CtrlExpirationCycleUnit.TabIndex = 3;
            // 
            // CtrlDescriptionText
            // 
            this.CtrlDescriptionText.AutoSize = true;
            this.CtrlDescriptionText.Location = new System.Drawing.Point(181, 76);
            this.CtrlDescriptionText.Name = "CtrlDescriptionText";
            this.CtrlDescriptionText.Size = new System.Drawing.Size(113, 19);
            this.CtrlDescriptionText.TabIndex = 4;
            this.CtrlDescriptionText.Text = "更改一次登录口令";
            // 
            // CtrlOkButton
            // 
            this.CtrlOkButton.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.CtrlOkButton.Location = new System.Drawing.Point(46, 218);
            this.CtrlOkButton.Name = "CtrlOkButton";
            this.CtrlOkButton.Size = new System.Drawing.Size(50, 30);
            this.CtrlOkButton.TabIndex = 6;
            this.CtrlOkButton.Text = "确定";
            this.CtrlOkButton.UseVisualStyleBackColor = true;
            // 
            // CtrlCloseButton
            // 
            this.CtrlCloseButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.CtrlCloseButton.Location = new System.Drawing.Point(102, 218);
            this.CtrlCloseButton.Name = "CtrlCloseButton";
            this.CtrlCloseButton.Size = new System.Drawing.Size(50, 30);
            this.CtrlCloseButton.TabIndex = 6;
            this.CtrlCloseButton.Text = "关闭";
            this.CtrlCloseButton.UseVisualStyleBackColor = true;
            // 
            // CtrlUnlockButton
            // 
            this.CtrlUnlockButton.Image = ((System.Drawing.Image)(resources.GetObject("CtrlUnlockButton.Image")));
            this.CtrlUnlockButton.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.CtrlUnlockButton.Location = new System.Drawing.Point(158, 218);
            this.CtrlUnlockButton.Name = "CtrlUnlockButton";
            this.CtrlUnlockButton.Size = new System.Drawing.Size(60, 30);
            this.CtrlUnlockButton.TabIndex = 6;
            this.CtrlUnlockButton.Text = "解锁";
            this.CtrlUnlockButton.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.CtrlUnlockButton.UseVisualStyleBackColor = true;
            // 
            // CtrlResetPassword
            // 
            this.CtrlResetPassword.Location = new System.Drawing.Point(224, 218);
            this.CtrlResetPassword.Name = "CtrlResetPassword";
            this.CtrlResetPassword.Size = new System.Drawing.Size(70, 30);
            this.CtrlResetPassword.TabIndex = 6;
            this.CtrlResetPassword.Text = "重置口令";
            this.CtrlResetPassword.UseVisualStyleBackColor = true;
            // 
            // AccountEditorDialog
            // 
            this.AcceptButton = this.CtrlOkButton;
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.CtrlCloseButton;
            this.ClientSize = new System.Drawing.Size(361, 262);
            this.Controls.Add(this.CtrlResetPassword);
            this.Controls.Add(this.CtrlUnlockButton);
            this.Controls.Add(this.CtrlCloseButton);
            this.Controls.Add(this.CtrlOkButton);
            this.Controls.Add(this.CtrlExpirationControlsGroup);
            this.Controls.Add(this.CtrlPasswordInput);
            this.Controls.Add(this.CtrlPasswordDescriptor);
            this.Controls.Add(this.CtrlUserNameInput);
            this.Controls.Add(this.CtrlUserNameDescriptor);
            this.Name = "AccountEditorDialog";
            this.Text = "用户账户";
            this.CtrlExpirationControlsGroup.ResumeLayout(false);
            this.CtrlExpirationControlsGroup.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CtrlExpirationCycleLength)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label CtrlUserNameDescriptor;
        private System.Windows.Forms.TextBox CtrlUserNameInput;
        private System.Windows.Forms.Label CtrlPasswordDescriptor;
        private System.Windows.Forms.TextBox CtrlPasswordInput;
        private System.Windows.Forms.GroupBox CtrlExpirationControlsGroup;
        private System.Windows.Forms.CheckBox CtrlUseExpirationPolicy;
        private System.Windows.Forms.Label CtrlExpirationCycleLengthDescriptor;
        private System.Windows.Forms.ComboBox CtrlExpirationCycleUnit;
        private System.Windows.Forms.NumericUpDown CtrlExpirationCycleLength;
        private System.Windows.Forms.Label CtrlDescriptionText;
        private System.Windows.Forms.Button CtrlOkButton;
        private System.Windows.Forms.Button CtrlCloseButton;
        private System.Windows.Forms.Button CtrlUnlockButton;
        private System.Windows.Forms.Button CtrlResetPassword;
    }
}