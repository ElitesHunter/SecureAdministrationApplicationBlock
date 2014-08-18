namespace EnterpriseServices.ManagementClient.Controls
{
    partial class BaseControl
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
            this.ctrlTopContainer = new System.Windows.Forms.Panel();
            this.ctrlBottomContainer = new System.Windows.Forms.Panel();
            this.ctrlLeftSpace = new System.Windows.Forms.Panel();
            this.ctrlRightSpace = new System.Windows.Forms.Panel();
            this.ctrlDescriptionControls = new System.Windows.Forms.Panel();
            this.ctrlSplitterLine = new System.Windows.Forms.Panel();
            this.ctrlWhiteSpace = new System.Windows.Forms.Panel();
            this.ctrlControlsContainer = new System.Windows.Forms.Panel();
            this.SuspendLayout();
            // 
            // ctrlTopContainer
            // 
            this.ctrlTopContainer.Dock = System.Windows.Forms.DockStyle.Top;
            this.ctrlTopContainer.Location = new System.Drawing.Point(0, 0);
            this.ctrlTopContainer.Name = "ctrlTopContainer";
            this.ctrlTopContainer.Size = new System.Drawing.Size(600, 20);
            this.ctrlTopContainer.TabIndex = 0;
            // 
            // ctrlBottomContainer
            // 
            this.ctrlBottomContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.ctrlBottomContainer.Location = new System.Drawing.Point(0, 280);
            this.ctrlBottomContainer.Name = "ctrlBottomContainer";
            this.ctrlBottomContainer.Size = new System.Drawing.Size(600, 20);
            this.ctrlBottomContainer.TabIndex = 1;
            // 
            // ctrlLeftSpace
            // 
            this.ctrlLeftSpace.Dock = System.Windows.Forms.DockStyle.Left;
            this.ctrlLeftSpace.Location = new System.Drawing.Point(0, 20);
            this.ctrlLeftSpace.Name = "ctrlLeftSpace";
            this.ctrlLeftSpace.Size = new System.Drawing.Size(20, 260);
            this.ctrlLeftSpace.TabIndex = 2;
            // 
            // ctrlRightSpace
            // 
            this.ctrlRightSpace.Dock = System.Windows.Forms.DockStyle.Right;
            this.ctrlRightSpace.Location = new System.Drawing.Point(580, 20);
            this.ctrlRightSpace.Name = "ctrlRightSpace";
            this.ctrlRightSpace.Size = new System.Drawing.Size(20, 260);
            this.ctrlRightSpace.TabIndex = 3;
            // 
            // ctrlDescriptionControls
            // 
            this.ctrlDescriptionControls.Dock = System.Windows.Forms.DockStyle.Top;
            this.ctrlDescriptionControls.Location = new System.Drawing.Point(20, 20);
            this.ctrlDescriptionControls.Name = "ctrlDescriptionControls";
            this.ctrlDescriptionControls.Size = new System.Drawing.Size(560, 75);
            this.ctrlDescriptionControls.TabIndex = 4;
            // 
            // ctrlSplitterLine
            // 
            this.ctrlSplitterLine.BackColor = System.Drawing.Color.Gray;
            this.ctrlSplitterLine.Dock = System.Windows.Forms.DockStyle.Top;
            this.ctrlSplitterLine.Location = new System.Drawing.Point(20, 95);
            this.ctrlSplitterLine.Name = "ctrlSplitterLine";
            this.ctrlSplitterLine.Size = new System.Drawing.Size(560, 1);
            this.ctrlSplitterLine.TabIndex = 5;
            // 
            // ctrlWhiteSpace
            // 
            this.ctrlWhiteSpace.Dock = System.Windows.Forms.DockStyle.Top;
            this.ctrlWhiteSpace.Location = new System.Drawing.Point(20, 96);
            this.ctrlWhiteSpace.Name = "ctrlWhiteSpace";
            this.ctrlWhiteSpace.Size = new System.Drawing.Size(560, 20);
            this.ctrlWhiteSpace.TabIndex = 6;
            // 
            // ctrlControlsContainer
            // 
            this.ctrlControlsContainer.AutoScroll = true;
            this.ctrlControlsContainer.BackColor = System.Drawing.Color.White;
            this.ctrlControlsContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ctrlControlsContainer.Location = new System.Drawing.Point(20, 116);
            this.ctrlControlsContainer.Name = "ctrlControlsContainer";
            this.ctrlControlsContainer.Size = new System.Drawing.Size(560, 164);
            this.ctrlControlsContainer.TabIndex = 7;
            // 
            // BaseControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.WhiteSmoke;
            this.Controls.Add(this.ctrlControlsContainer);
            this.Controls.Add(this.ctrlWhiteSpace);
            this.Controls.Add(this.ctrlSplitterLine);
            this.Controls.Add(this.ctrlDescriptionControls);
            this.Controls.Add(this.ctrlRightSpace);
            this.Controls.Add(this.ctrlLeftSpace);
            this.Controls.Add(this.ctrlBottomContainer);
            this.Controls.Add(this.ctrlTopContainer);
            this.Name = "BaseControl";
            this.Size = new System.Drawing.Size(600, 300);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel ctrlTopContainer;
        private System.Windows.Forms.Panel ctrlBottomContainer;
        private System.Windows.Forms.Panel ctrlLeftSpace;
        private System.Windows.Forms.Panel ctrlRightSpace;
        private System.Windows.Forms.Panel ctrlDescriptionControls;
        private System.Windows.Forms.Panel ctrlSplitterLine;
        private System.Windows.Forms.Panel ctrlWhiteSpace;
        private System.Windows.Forms.Panel ctrlControlsContainer;
    }
}
