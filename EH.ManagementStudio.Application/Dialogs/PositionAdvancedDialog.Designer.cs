namespace EnterpriseServices.ManagementClient.Dialogs
{
    partial class PositionAdvancedDialog
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
            this.CtrlIsPrincipalContainer = new System.Windows.Forms.Panel();
            this.CtrlIsPrincipal = new System.Windows.Forms.CheckBox();
            this.CtrlButtonsContainer = new System.Windows.Forms.Panel();
            this.CtrlCancelButton = new System.Windows.Forms.Button();
            this.CtrlOkButton = new System.Windows.Forms.Button();
            this.CtrlReportLine = new System.Windows.Forms.GroupBox();
            this.CtrlPositionList = new System.Windows.Forms.ListView();
            this.CtrlPositionName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.CtrlVirtualPath = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.CtrlIsPrincipalContainer.SuspendLayout();
            this.CtrlButtonsContainer.SuspendLayout();
            this.CtrlReportLine.SuspendLayout();
            this.SuspendLayout();
            // 
            // CtrlIsPrincipalContainer
            // 
            this.CtrlIsPrincipalContainer.Controls.Add(this.CtrlIsPrincipal);
            this.CtrlIsPrincipalContainer.Dock = System.Windows.Forms.DockStyle.Top;
            this.CtrlIsPrincipalContainer.Location = new System.Drawing.Point(0, 0);
            this.CtrlIsPrincipalContainer.Name = "CtrlIsPrincipalContainer";
            this.CtrlIsPrincipalContainer.Size = new System.Drawing.Size(794, 50);
            this.CtrlIsPrincipalContainer.TabIndex = 0;
            // 
            // CtrlIsPrincipal
            // 
            this.CtrlIsPrincipal.AutoSize = true;
            this.CtrlIsPrincipal.Location = new System.Drawing.Point(13, 13);
            this.CtrlIsPrincipal.Name = "CtrlIsPrincipal";
            this.CtrlIsPrincipal.Size = new System.Drawing.Size(236, 23);
            this.CtrlIsPrincipal.TabIndex = 0;
            this.CtrlIsPrincipal.Text = "将此职位设置为本部门的负责人职位";
            this.CtrlIsPrincipal.UseVisualStyleBackColor = true;
            // 
            // CtrlButtonsContainer
            // 
            this.CtrlButtonsContainer.Controls.Add(this.CtrlCancelButton);
            this.CtrlButtonsContainer.Controls.Add(this.CtrlOkButton);
            this.CtrlButtonsContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.CtrlButtonsContainer.Location = new System.Drawing.Point(0, 322);
            this.CtrlButtonsContainer.Name = "CtrlButtonsContainer";
            this.CtrlButtonsContainer.Size = new System.Drawing.Size(794, 50);
            this.CtrlButtonsContainer.TabIndex = 1;
            // 
            // CtrlCancelButton
            // 
            this.CtrlCancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.CtrlCancelButton.Location = new System.Drawing.Point(112, 10);
            this.CtrlCancelButton.Name = "CtrlCancelButton";
            this.CtrlCancelButton.Size = new System.Drawing.Size(75, 30);
            this.CtrlCancelButton.TabIndex = 1;
            this.CtrlCancelButton.Text = "取消(&Esc)";
            this.CtrlCancelButton.UseVisualStyleBackColor = true;
            // 
            // CtrlOkButton
            // 
            this.CtrlOkButton.Location = new System.Drawing.Point(13, 10);
            this.CtrlOkButton.Name = "CtrlOkButton";
            this.CtrlOkButton.Size = new System.Drawing.Size(75, 30);
            this.CtrlOkButton.TabIndex = 0;
            this.CtrlOkButton.Text = "确定(&O)";
            this.CtrlOkButton.UseVisualStyleBackColor = true;
            this.CtrlOkButton.Click += new System.EventHandler(this.OkButtonClick);
            // 
            // CtrlReportLine
            // 
            this.CtrlReportLine.Controls.Add(this.CtrlPositionList);
            this.CtrlReportLine.Dock = System.Windows.Forms.DockStyle.Fill;
            this.CtrlReportLine.Location = new System.Drawing.Point(0, 50);
            this.CtrlReportLine.Name = "CtrlReportLine";
            this.CtrlReportLine.Size = new System.Drawing.Size(794, 272);
            this.CtrlReportLine.TabIndex = 2;
            this.CtrlReportLine.TabStop = false;
            this.CtrlReportLine.Text = "职位汇报关系设定";
            // 
            // CtrlPositionList
            // 
            this.CtrlPositionList.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.CtrlPositionName,
            this.CtrlVirtualPath});
            this.CtrlPositionList.Dock = System.Windows.Forms.DockStyle.Fill;
            this.CtrlPositionList.Location = new System.Drawing.Point(3, 21);
            this.CtrlPositionList.Name = "CtrlPositionList";
            this.CtrlPositionList.Size = new System.Drawing.Size(788, 248);
            this.CtrlPositionList.TabIndex = 0;
            this.CtrlPositionList.UseCompatibleStateImageBehavior = false;
            this.CtrlPositionList.View = System.Windows.Forms.View.Details;
            // 
            // CtrlPositionName
            // 
            this.CtrlPositionName.Text = "职位名称";
            this.CtrlPositionName.Width = 200;
            // 
            // CtrlVirtualPath
            // 
            this.CtrlVirtualPath.Text = "职位虚拟路径";
            this.CtrlVirtualPath.Width = 400;
            // 
            // PositionAdvancedDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.CtrlCancelButton;
            this.ClientSize = new System.Drawing.Size(794, 372);
            this.Controls.Add(this.CtrlReportLine);
            this.Controls.Add(this.CtrlButtonsContainer);
            this.Controls.Add(this.CtrlIsPrincipalContainer);
            this.Name = "PositionAdvancedDialog";
            this.Text = "职位(高级属性)";
            this.Load += new System.EventHandler(this.DialogLoad);
            this.CtrlIsPrincipalContainer.ResumeLayout(false);
            this.CtrlIsPrincipalContainer.PerformLayout();
            this.CtrlButtonsContainer.ResumeLayout(false);
            this.CtrlReportLine.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel CtrlIsPrincipalContainer;
        private System.Windows.Forms.CheckBox CtrlIsPrincipal;
        private System.Windows.Forms.Panel CtrlButtonsContainer;
        private System.Windows.Forms.Button CtrlOkButton;
        private System.Windows.Forms.Button CtrlCancelButton;
        private System.Windows.Forms.GroupBox CtrlReportLine;
        private System.Windows.Forms.ListView CtrlPositionList;
        private System.Windows.Forms.ColumnHeader CtrlPositionName;
        private System.Windows.Forms.ColumnHeader CtrlVirtualPath;
    }
}