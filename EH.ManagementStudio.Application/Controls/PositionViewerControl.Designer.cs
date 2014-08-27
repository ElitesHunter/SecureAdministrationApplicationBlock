namespace EnterpriseServices.ManagementClient.Controls
{
    partial class PositionViewerControl
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(PositionViewerControl));
            this.CtrlVPathDescriptionContainer = new System.Windows.Forms.Panel();
            this.CtrlVirtualPathDescription = new System.Windows.Forms.Label();
            this.CtrlButtonsContainer = new System.Windows.Forms.Panel();
            this.CtrlSaveButton = new System.Windows.Forms.Button();
            this.CtrlReportLineSetting = new System.Windows.Forms.Button();
            this.CtrlPositionPropertyGrid = new System.Windows.Forms.PropertyGrid();
            this.CtrlVPathDescriptionContainer.SuspendLayout();
            this.CtrlButtonsContainer.SuspendLayout();
            this.SuspendLayout();
            // 
            // CtrlVPathDescriptionContainer
            // 
            this.CtrlVPathDescriptionContainer.Controls.Add(this.CtrlVirtualPathDescription);
            this.CtrlVPathDescriptionContainer.Dock = System.Windows.Forms.DockStyle.Top;
            this.CtrlVPathDescriptionContainer.Location = new System.Drawing.Point(20, 116);
            this.CtrlVPathDescriptionContainer.Name = "CtrlVPathDescriptionContainer";
            this.CtrlVPathDescriptionContainer.Size = new System.Drawing.Size(660, 30);
            this.CtrlVPathDescriptionContainer.TabIndex = 7;
            // 
            // CtrlVirtualPathDescription
            // 
            this.CtrlVirtualPathDescription.AutoSize = true;
            this.CtrlVirtualPathDescription.Font = new System.Drawing.Font("微软雅黑", 8.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.CtrlVirtualPathDescription.Location = new System.Drawing.Point(4, 7);
            this.CtrlVirtualPathDescription.Name = "CtrlVirtualPathDescription";
            this.CtrlVirtualPathDescription.Size = new System.Drawing.Size(39, 16);
            this.CtrlVirtualPathDescription.TabIndex = 0;
            this.CtrlVirtualPathDescription.Text = "label1";
            // 
            // CtrlButtonsContainer
            // 
            this.CtrlButtonsContainer.BackColor = System.Drawing.Color.White;
            this.CtrlButtonsContainer.Controls.Add(this.CtrlReportLineSetting);
            this.CtrlButtonsContainer.Controls.Add(this.CtrlSaveButton);
            this.CtrlButtonsContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.CtrlButtonsContainer.Location = new System.Drawing.Point(20, 355);
            this.CtrlButtonsContainer.Name = "CtrlButtonsContainer";
            this.CtrlButtonsContainer.Size = new System.Drawing.Size(660, 50);
            this.CtrlButtonsContainer.TabIndex = 8;
            // 
            // CtrlSaveButton
            // 
            this.CtrlSaveButton.Image = ((System.Drawing.Image)(resources.GetObject("CtrlSaveButton.Image")));
            this.CtrlSaveButton.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.CtrlSaveButton.Location = new System.Drawing.Point(8, 10);
            this.CtrlSaveButton.Name = "CtrlSaveButton";
            this.CtrlSaveButton.Size = new System.Drawing.Size(85, 30);
            this.CtrlSaveButton.TabIndex = 0;
            this.CtrlSaveButton.Text = "保存变更";
            this.CtrlSaveButton.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.CtrlSaveButton.UseVisualStyleBackColor = true;
            // 
            // CtrlReportLineSetting
            // 
            this.CtrlReportLineSetting.Location = new System.Drawing.Point(110, 10);
            this.CtrlReportLineSetting.Name = "CtrlReportLineSetting";
            this.CtrlReportLineSetting.Size = new System.Drawing.Size(85, 30);
            this.CtrlReportLineSetting.TabIndex = 1;
            this.CtrlReportLineSetting.Text = "汇报关系(&R)";
            this.CtrlReportLineSetting.UseVisualStyleBackColor = true;
            // 
            // CtrlPositionPropertyGrid
            // 
            this.CtrlPositionPropertyGrid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.CtrlPositionPropertyGrid.HelpBackColor = System.Drawing.Color.White;
            this.CtrlPositionPropertyGrid.Location = new System.Drawing.Point(20, 146);
            this.CtrlPositionPropertyGrid.Name = "CtrlPositionPropertyGrid";
            this.CtrlPositionPropertyGrid.Size = new System.Drawing.Size(660, 209);
            this.CtrlPositionPropertyGrid.TabIndex = 9;
            // 
            // PositionViewerControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.CtrlPositionPropertyGrid);
            this.Controls.Add(this.CtrlButtonsContainer);
            this.Controls.Add(this.CtrlVPathDescriptionContainer);
            this.Name = "PositionViewerControl";
            this.Load += new System.EventHandler(this.ControlLoad);
            this.Controls.SetChildIndex(this.CtrlVPathDescriptionContainer, 0);
            this.Controls.SetChildIndex(this.CtrlButtonsContainer, 0);
            this.Controls.SetChildIndex(this.CtrlPositionPropertyGrid, 0);
            this.CtrlVPathDescriptionContainer.ResumeLayout(false);
            this.CtrlVPathDescriptionContainer.PerformLayout();
            this.CtrlButtonsContainer.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel CtrlVPathDescriptionContainer;
        private System.Windows.Forms.Label CtrlVirtualPathDescription;
        private System.Windows.Forms.Panel CtrlButtonsContainer;
        private System.Windows.Forms.Button CtrlSaveButton;
        private System.Windows.Forms.Button CtrlReportLineSetting;
        private System.Windows.Forms.PropertyGrid CtrlPositionPropertyGrid;
    }
}
