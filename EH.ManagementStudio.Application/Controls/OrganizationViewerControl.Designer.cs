namespace EnterpriseServices.ManagementClient.Controls
{
    partial class OrganizationViewerControl
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(OrganizationViewerControl));
            this.ctrlBackgroundContainer = new System.Windows.Forms.Panel();
            this.ctrlButtonsContainer = new System.Windows.Forms.Panel();
            this.btnSave = new System.Windows.Forms.Button();
            this.ctrlVirtualPathContainer = new System.Windows.Forms.Panel();
            this.ctrlVPathDescription = new System.Windows.Forms.Label();
            this.ctrlProperties = new System.Windows.Forms.PropertyGrid();
            this.ctrlBackgroundContainer.SuspendLayout();
            this.ctrlButtonsContainer.SuspendLayout();
            this.ctrlVirtualPathContainer.SuspendLayout();
            this.SuspendLayout();
            // 
            // ctrlBackgroundContainer
            // 
            this.ctrlBackgroundContainer.BackColor = System.Drawing.Color.White;
            this.ctrlBackgroundContainer.Controls.Add(this.ctrlProperties);
            this.ctrlBackgroundContainer.Controls.Add(this.ctrlVirtualPathContainer);
            this.ctrlBackgroundContainer.Controls.Add(this.ctrlButtonsContainer);
            this.ctrlBackgroundContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ctrlBackgroundContainer.Location = new System.Drawing.Point(20, 116);
            this.ctrlBackgroundContainer.Name = "ctrlBackgroundContainer";
            this.ctrlBackgroundContainer.Size = new System.Drawing.Size(660, 289);
            this.ctrlBackgroundContainer.TabIndex = 7;
            // 
            // ctrlButtonsContainer
            // 
            this.ctrlButtonsContainer.Controls.Add(this.btnSave);
            this.ctrlButtonsContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.ctrlButtonsContainer.Location = new System.Drawing.Point(0, 239);
            this.ctrlButtonsContainer.Name = "ctrlButtonsContainer";
            this.ctrlButtonsContainer.Size = new System.Drawing.Size(660, 50);
            this.ctrlButtonsContainer.TabIndex = 0;
            // 
            // btnSave
            // 
            this.btnSave.Image = ((System.Drawing.Image)(resources.GetObject("btnSave.Image")));
            this.btnSave.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSave.Location = new System.Drawing.Point(8, 10);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(80, 30);
            this.btnSave.TabIndex = 0;
            this.btnSave.Text = "保存变更";
            this.btnSave.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnSave.UseVisualStyleBackColor = true;
            // 
            // ctrlVirtualPathContainer
            // 
            this.ctrlVirtualPathContainer.BackColor = System.Drawing.Color.WhiteSmoke;
            this.ctrlVirtualPathContainer.Controls.Add(this.ctrlVPathDescription);
            this.ctrlVirtualPathContainer.Dock = System.Windows.Forms.DockStyle.Top;
            this.ctrlVirtualPathContainer.Location = new System.Drawing.Point(0, 0);
            this.ctrlVirtualPathContainer.Name = "ctrlVirtualPathContainer";
            this.ctrlVirtualPathContainer.Size = new System.Drawing.Size(660, 25);
            this.ctrlVirtualPathContainer.TabIndex = 1;
            // 
            // ctrlVPathDescription
            // 
            this.ctrlVPathDescription.AutoSize = true;
            this.ctrlVPathDescription.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ctrlVPathDescription.Location = new System.Drawing.Point(5, 6);
            this.ctrlVPathDescription.Name = "ctrlVPathDescription";
            this.ctrlVPathDescription.Size = new System.Drawing.Size(38, 14);
            this.ctrlVPathDescription.TabIndex = 0;
            this.ctrlVPathDescription.Text = "label1";
            // 
            // ctrlProperties
            // 
            this.ctrlProperties.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ctrlProperties.HelpBackColor = System.Drawing.Color.White;
            this.ctrlProperties.Location = new System.Drawing.Point(0, 25);
            this.ctrlProperties.Name = "ctrlProperties";
            this.ctrlProperties.Size = new System.Drawing.Size(660, 214);
            this.ctrlProperties.TabIndex = 2;
            // 
            // OrganizationViewerControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.ctrlBackgroundContainer);
            this.Name = "OrganizationViewerControl";
            this.Controls.SetChildIndex(this.ctrlBackgroundContainer, 0);
            this.ctrlBackgroundContainer.ResumeLayout(false);
            this.ctrlButtonsContainer.ResumeLayout(false);
            this.ctrlVirtualPathContainer.ResumeLayout(false);
            this.ctrlVirtualPathContainer.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel ctrlBackgroundContainer;
        private System.Windows.Forms.Panel ctrlButtonsContainer;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Panel ctrlVirtualPathContainer;
        private System.Windows.Forms.Label ctrlVPathDescription;
        private System.Windows.Forms.PropertyGrid ctrlProperties;
    }
}
