namespace EnterpriseServices.ManagementClient.Dialogs
{
    partial class StaffEditorDialog
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
            this.CtrlButtonsContainer = new System.Windows.Forms.Panel();
            this.CtrlCancelButton = new System.Windows.Forms.Button();
            this.CtrlOkButton = new System.Windows.Forms.Button();
            this.CtrlStaffPropertyGrid = new System.Windows.Forms.PropertyGrid();
            this.CtrlButtonsContainer.SuspendLayout();
            this.SuspendLayout();
            // 
            // CtrlButtonsContainer
            // 
            this.CtrlButtonsContainer.Controls.Add(this.CtrlCancelButton);
            this.CtrlButtonsContainer.Controls.Add(this.CtrlOkButton);
            this.CtrlButtonsContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.CtrlButtonsContainer.Location = new System.Drawing.Point(0, 365);
            this.CtrlButtonsContainer.Name = "CtrlButtonsContainer";
            this.CtrlButtonsContainer.Size = new System.Drawing.Size(379, 50);
            this.CtrlButtonsContainer.TabIndex = 0;
            // 
            // CtrlCancelButton
            // 
            this.CtrlCancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.CtrlCancelButton.Location = new System.Drawing.Point(199, 11);
            this.CtrlCancelButton.Name = "CtrlCancelButton";
            this.CtrlCancelButton.Size = new System.Drawing.Size(75, 30);
            this.CtrlCancelButton.TabIndex = 0;
            this.CtrlCancelButton.Text = "取消(&Esc)";
            this.CtrlCancelButton.UseVisualStyleBackColor = true;
            // 
            // CtrlOkButton
            // 
            this.CtrlOkButton.Location = new System.Drawing.Point(91, 11);
            this.CtrlOkButton.Name = "CtrlOkButton";
            this.CtrlOkButton.Size = new System.Drawing.Size(75, 30);
            this.CtrlOkButton.TabIndex = 0;
            this.CtrlOkButton.Text = "确定";
            this.CtrlOkButton.UseVisualStyleBackColor = true;
            this.CtrlOkButton.Click += new System.EventHandler(this.OkButtonClick);
            // 
            // CtrlStaffPropertyGrid
            // 
            this.CtrlStaffPropertyGrid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.CtrlStaffPropertyGrid.HelpBackColor = System.Drawing.Color.White;
            this.CtrlStaffPropertyGrid.Location = new System.Drawing.Point(0, 0);
            this.CtrlStaffPropertyGrid.Name = "CtrlStaffPropertyGrid";
            this.CtrlStaffPropertyGrid.Size = new System.Drawing.Size(379, 365);
            this.CtrlStaffPropertyGrid.TabIndex = 1;
            // 
            // StaffEditorDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.CtrlCancelButton;
            this.ClientSize = new System.Drawing.Size(379, 415);
            this.Controls.Add(this.CtrlStaffPropertyGrid);
            this.Controls.Add(this.CtrlButtonsContainer);
            this.Margin = new System.Windows.Forms.Padding(5, 8, 5, 8);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "StaffEditorDialog";
            this.Text = "人员属性编辑器";
            this.Load += new System.EventHandler(this.DialogLoad);
            this.CtrlButtonsContainer.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel CtrlButtonsContainer;
        private System.Windows.Forms.Button CtrlCancelButton;
        private System.Windows.Forms.Button CtrlOkButton;
        private System.Windows.Forms.PropertyGrid CtrlStaffPropertyGrid;
    }
}