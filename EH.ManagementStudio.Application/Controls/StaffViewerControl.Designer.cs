namespace EnterpriseServices.ManagementClient.Controls
{
    partial class StaffViewerControl
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(StaffViewerControl));
            this.CtrlVPathContainer = new System.Windows.Forms.Panel();
            this.CtrlVPathDescriptor = new System.Windows.Forms.Label();
            this.CtrlButtonsContainer = new System.Windows.Forms.Panel();
            this.CtrlAdvancedButton = new System.Windows.Forms.Button();
            this.CtrlSaveButton = new System.Windows.Forms.Button();
            this.CtrlStaffPropertyGrid = new System.Windows.Forms.PropertyGrid();
            this.CtrlVPathContainer.SuspendLayout();
            this.CtrlButtonsContainer.SuspendLayout();
            this.SuspendLayout();
            // 
            // CtrlVPathContainer
            // 
            this.CtrlVPathContainer.Controls.Add(this.CtrlVPathDescriptor);
            this.CtrlVPathContainer.Dock = System.Windows.Forms.DockStyle.Top;
            this.CtrlVPathContainer.Location = new System.Drawing.Point(20, 116);
            this.CtrlVPathContainer.Name = "CtrlVPathContainer";
            this.CtrlVPathContainer.Size = new System.Drawing.Size(660, 25);
            this.CtrlVPathContainer.TabIndex = 7;
            // 
            // CtrlVPathDescriptor
            // 
            this.CtrlVPathDescriptor.AutoSize = true;
            this.CtrlVPathDescriptor.Font = new System.Drawing.Font("微软雅黑", 8F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.CtrlVPathDescriptor.Location = new System.Drawing.Point(7, 4);
            this.CtrlVPathDescriptor.Name = "CtrlVPathDescriptor";
            this.CtrlVPathDescriptor.Size = new System.Drawing.Size(39, 16);
            this.CtrlVPathDescriptor.TabIndex = 0;
            this.CtrlVPathDescriptor.Text = "label1";
            // 
            // CtrlButtonsContainer
            // 
            this.CtrlButtonsContainer.BackColor = System.Drawing.Color.White;
            this.CtrlButtonsContainer.Controls.Add(this.CtrlAdvancedButton);
            this.CtrlButtonsContainer.Controls.Add(this.CtrlSaveButton);
            this.CtrlButtonsContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.CtrlButtonsContainer.Location = new System.Drawing.Point(20, 355);
            this.CtrlButtonsContainer.Name = "CtrlButtonsContainer";
            this.CtrlButtonsContainer.Size = new System.Drawing.Size(660, 50);
            this.CtrlButtonsContainer.TabIndex = 8;
            // 
            // CtrlAdvancedButton
            // 
            this.CtrlAdvancedButton.Location = new System.Drawing.Point(95, 10);
            this.CtrlAdvancedButton.Name = "CtrlAdvancedButton";
            this.CtrlAdvancedButton.Size = new System.Drawing.Size(75, 30);
            this.CtrlAdvancedButton.TabIndex = 1;
            this.CtrlAdvancedButton.Text = "高级(&A)";
            this.CtrlAdvancedButton.UseVisualStyleBackColor = true;
            this.CtrlAdvancedButton.Click += new System.EventHandler(this.AdvanceButtonClick);
            // 
            // CtrlSaveButton
            // 
            this.CtrlSaveButton.Image = ((System.Drawing.Image)(resources.GetObject("CtrlSaveButton.Image")));
            this.CtrlSaveButton.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.CtrlSaveButton.Location = new System.Drawing.Point(8, 10);
            this.CtrlSaveButton.Name = "CtrlSaveButton";
            this.CtrlSaveButton.Size = new System.Drawing.Size(80, 30);
            this.CtrlSaveButton.TabIndex = 0;
            this.CtrlSaveButton.Text = "保存变更";
            this.CtrlSaveButton.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.CtrlSaveButton.UseVisualStyleBackColor = true;
            // 
            // CtrlStaffPropertyGrid
            // 
            this.CtrlStaffPropertyGrid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.CtrlStaffPropertyGrid.HelpBackColor = System.Drawing.Color.White;
            this.CtrlStaffPropertyGrid.Location = new System.Drawing.Point(20, 141);
            this.CtrlStaffPropertyGrid.Name = "CtrlStaffPropertyGrid";
            this.CtrlStaffPropertyGrid.Size = new System.Drawing.Size(660, 214);
            this.CtrlStaffPropertyGrid.TabIndex = 9;
            // 
            // StaffViewerControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.CtrlStaffPropertyGrid);
            this.Controls.Add(this.CtrlButtonsContainer);
            this.Controls.Add(this.CtrlVPathContainer);
            this.Name = "StaffViewerControl";
            this.Controls.SetChildIndex(this.CtrlVPathContainer, 0);
            this.Controls.SetChildIndex(this.CtrlButtonsContainer, 0);
            this.Controls.SetChildIndex(this.CtrlStaffPropertyGrid, 0);
            this.CtrlVPathContainer.ResumeLayout(false);
            this.CtrlVPathContainer.PerformLayout();
            this.CtrlButtonsContainer.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel CtrlVPathContainer;
        private System.Windows.Forms.Label CtrlVPathDescriptor;
        private System.Windows.Forms.Panel CtrlButtonsContainer;
        private System.Windows.Forms.Button CtrlSaveButton;
        private System.Windows.Forms.Button CtrlAdvancedButton;
        private System.Windows.Forms.PropertyGrid CtrlStaffPropertyGrid;
    }
}
