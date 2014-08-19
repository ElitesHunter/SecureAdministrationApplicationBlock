namespace EnterpriseServices.ManagementClient.Dialogs
{
    partial class OrganizationEditorDialog
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
            this.ctrlButtonContainer = new System.Windows.Forms.Panel();
            this.ctrlCancelButton = new System.Windows.Forms.Button();
            this.ctrlOKButton = new System.Windows.Forms.Button();
            this.ctrlOrganizationProperties = new System.Windows.Forms.PropertyGrid();
            this.ctrlButtonContainer.SuspendLayout();
            this.SuspendLayout();
            // 
            // ctrlButtonContainer
            // 
            this.ctrlButtonContainer.Controls.Add(this.ctrlCancelButton);
            this.ctrlButtonContainer.Controls.Add(this.ctrlOKButton);
            this.ctrlButtonContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.ctrlButtonContainer.Location = new System.Drawing.Point(0, 312);
            this.ctrlButtonContainer.Name = "ctrlButtonContainer";
            this.ctrlButtonContainer.Size = new System.Drawing.Size(394, 50);
            this.ctrlButtonContainer.TabIndex = 0;
            // 
            // ctrlCancelButton
            // 
            this.ctrlCancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.ctrlCancelButton.Location = new System.Drawing.Point(204, 11);
            this.ctrlCancelButton.Name = "ctrlCancelButton";
            this.ctrlCancelButton.Size = new System.Drawing.Size(75, 30);
            this.ctrlCancelButton.TabIndex = 1;
            this.ctrlCancelButton.Text = "取消";
            this.ctrlCancelButton.UseVisualStyleBackColor = true;
            // 
            // ctrlOKButton
            // 
            this.ctrlOKButton.Location = new System.Drawing.Point(102, 11);
            this.ctrlOKButton.Name = "ctrlOKButton";
            this.ctrlOKButton.Size = new System.Drawing.Size(75, 30);
            this.ctrlOKButton.TabIndex = 0;
            this.ctrlOKButton.Text = "确定";
            this.ctrlOKButton.UseVisualStyleBackColor = true;
            // 
            // ctrlOrganizationProperties
            // 
            this.ctrlOrganizationProperties.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ctrlOrganizationProperties.Location = new System.Drawing.Point(0, 0);
            this.ctrlOrganizationProperties.Name = "ctrlOrganizationProperties";
            this.ctrlOrganizationProperties.Size = new System.Drawing.Size(394, 312);
            this.ctrlOrganizationProperties.TabIndex = 1;
            // 
            // OrganizationEditorDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.ctrlCancelButton;
            this.ClientSize = new System.Drawing.Size(394, 362);
            this.Controls.Add(this.ctrlOrganizationProperties);
            this.Controls.Add(this.ctrlButtonContainer);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "OrganizationEditorDialog";
            this.Text = "组织机构属性";
            this.Load += new System.EventHandler(this.OrganizationEditorDialog_Load);
            this.ctrlButtonContainer.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel ctrlButtonContainer;
        private System.Windows.Forms.Button ctrlOKButton;
        private System.Windows.Forms.Button ctrlCancelButton;
        private System.Windows.Forms.PropertyGrid ctrlOrganizationProperties;

    }
}