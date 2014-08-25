namespace EnterpriseServices.ManagementClient.Operations.Entity.Editors
{
    partial class ChooseCredentialsTypeDialog
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
            this.ctrlCredentialsTypeList = new System.Windows.Forms.ComboBox();
            this.ctrlButtonContainer = new System.Windows.Forms.Panel();
            this.ctrlCancelButton = new System.Windows.Forms.Button();
            this.ctrlOkButton = new System.Windows.Forms.Button();
            this.ctrlButtonContainer.SuspendLayout();
            this.SuspendLayout();
            // 
            // ctrlCredentialsTypeList
            // 
            this.ctrlCredentialsTypeList.Dock = System.Windows.Forms.DockStyle.Top;
            this.ctrlCredentialsTypeList.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.ctrlCredentialsTypeList.FormattingEnabled = true;
            this.ctrlCredentialsTypeList.Location = new System.Drawing.Point(0, 0);
            this.ctrlCredentialsTypeList.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ctrlCredentialsTypeList.Name = "ctrlCredentialsTypeList";
            this.ctrlCredentialsTypeList.Size = new System.Drawing.Size(331, 25);
            this.ctrlCredentialsTypeList.TabIndex = 0;
            // 
            // ctrlButtonContainer
            // 
            this.ctrlButtonContainer.Controls.Add(this.ctrlCancelButton);
            this.ctrlButtonContainer.Controls.Add(this.ctrlOkButton);
            this.ctrlButtonContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.ctrlButtonContainer.Location = new System.Drawing.Point(0, 29);
            this.ctrlButtonContainer.Name = "ctrlButtonContainer";
            this.ctrlButtonContainer.Size = new System.Drawing.Size(331, 50);
            this.ctrlButtonContainer.TabIndex = 1;
            // 
            // ctrlCancelButton
            // 
            this.ctrlCancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.ctrlCancelButton.Location = new System.Drawing.Point(173, 10);
            this.ctrlCancelButton.Name = "ctrlCancelButton";
            this.ctrlCancelButton.Size = new System.Drawing.Size(75, 30);
            this.ctrlCancelButton.TabIndex = 0;
            this.ctrlCancelButton.Text = "取消";
            this.ctrlCancelButton.UseVisualStyleBackColor = true;
            // 
            // ctrlOkButton
            // 
            this.ctrlOkButton.Location = new System.Drawing.Point(82, 10);
            this.ctrlOkButton.Name = "ctrlOkButton";
            this.ctrlOkButton.Size = new System.Drawing.Size(75, 30);
            this.ctrlOkButton.TabIndex = 0;
            this.ctrlOkButton.Text = "确定";
            this.ctrlOkButton.UseVisualStyleBackColor = true;
            this.ctrlOkButton.Click += new System.EventHandler(this.OkButtonClick);
            // 
            // ChooseCredentialsTypeDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.ctrlCancelButton;
            this.ClientSize = new System.Drawing.Size(331, 79);
            this.Controls.Add(this.ctrlButtonContainer);
            this.Controls.Add(this.ctrlCredentialsTypeList);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ChooseCredentialsTypeDialog";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "用户证件类型";
            this.TopMost = true;
            this.Load += new System.EventHandler(this.DialogLoad);
            this.ctrlButtonContainer.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox ctrlCredentialsTypeList;
        private System.Windows.Forms.Panel ctrlButtonContainer;
        private System.Windows.Forms.Button ctrlCancelButton;
        private System.Windows.Forms.Button ctrlOkButton;
    }
}