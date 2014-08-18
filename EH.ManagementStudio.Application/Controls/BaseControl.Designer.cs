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
            this.ctrlDescription = new System.Windows.Forms.Label();
            this.ctrlSplitterLine = new System.Windows.Forms.Panel();
            this.ctrlWhiteSpace = new System.Windows.Forms.Panel();
            this.ctrlDescriptionControls.SuspendLayout();
            this.SuspendLayout();
            // 
            // ctrlTopContainer
            // 
            this.ctrlTopContainer.Dock = System.Windows.Forms.DockStyle.Top;
            this.ctrlTopContainer.Location = new System.Drawing.Point(0, 0);
            this.ctrlTopContainer.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ctrlTopContainer.Name = "ctrlTopContainer";
            this.ctrlTopContainer.Size = new System.Drawing.Size(700, 20);
            this.ctrlTopContainer.TabIndex = 0;
            // 
            // ctrlBottomContainer
            // 
            this.ctrlBottomContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.ctrlBottomContainer.Location = new System.Drawing.Point(0, 405);
            this.ctrlBottomContainer.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ctrlBottomContainer.Name = "ctrlBottomContainer";
            this.ctrlBottomContainer.Size = new System.Drawing.Size(700, 20);
            this.ctrlBottomContainer.TabIndex = 1;
            // 
            // ctrlLeftSpace
            // 
            this.ctrlLeftSpace.Dock = System.Windows.Forms.DockStyle.Left;
            this.ctrlLeftSpace.Location = new System.Drawing.Point(0, 20);
            this.ctrlLeftSpace.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ctrlLeftSpace.Name = "ctrlLeftSpace";
            this.ctrlLeftSpace.Size = new System.Drawing.Size(20, 385);
            this.ctrlLeftSpace.TabIndex = 2;
            // 
            // ctrlRightSpace
            // 
            this.ctrlRightSpace.Dock = System.Windows.Forms.DockStyle.Right;
            this.ctrlRightSpace.Font = new System.Drawing.Font("微软雅黑", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.ctrlRightSpace.Location = new System.Drawing.Point(680, 20);
            this.ctrlRightSpace.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ctrlRightSpace.Name = "ctrlRightSpace";
            this.ctrlRightSpace.Size = new System.Drawing.Size(20, 385);
            this.ctrlRightSpace.TabIndex = 3;
            // 
            // ctrlDescriptionControls
            // 
            this.ctrlDescriptionControls.Controls.Add(this.ctrlDescription);
            this.ctrlDescriptionControls.Dock = System.Windows.Forms.DockStyle.Top;
            this.ctrlDescriptionControls.Location = new System.Drawing.Point(20, 20);
            this.ctrlDescriptionControls.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ctrlDescriptionControls.Name = "ctrlDescriptionControls";
            this.ctrlDescriptionControls.Size = new System.Drawing.Size(660, 75);
            this.ctrlDescriptionControls.TabIndex = 4;
            // 
            // ctrlDescription
            // 
            this.ctrlDescription.AutoSize = true;
            this.ctrlDescription.Font = new System.Drawing.Font("微软雅黑", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.ctrlDescription.Location = new System.Drawing.Point(3, 24);
            this.ctrlDescription.Name = "ctrlDescription";
            this.ctrlDescription.Size = new System.Drawing.Size(76, 30);
            this.ctrlDescription.TabIndex = 0;
            this.ctrlDescription.Text = "label1";
            // 
            // ctrlSplitterLine
            // 
            this.ctrlSplitterLine.BackColor = System.Drawing.Color.Gray;
            this.ctrlSplitterLine.Dock = System.Windows.Forms.DockStyle.Top;
            this.ctrlSplitterLine.Location = new System.Drawing.Point(20, 95);
            this.ctrlSplitterLine.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ctrlSplitterLine.Name = "ctrlSplitterLine";
            this.ctrlSplitterLine.Size = new System.Drawing.Size(660, 1);
            this.ctrlSplitterLine.TabIndex = 5;
            // 
            // ctrlWhiteSpace
            // 
            this.ctrlWhiteSpace.Dock = System.Windows.Forms.DockStyle.Top;
            this.ctrlWhiteSpace.Location = new System.Drawing.Point(20, 96);
            this.ctrlWhiteSpace.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ctrlWhiteSpace.Name = "ctrlWhiteSpace";
            this.ctrlWhiteSpace.Size = new System.Drawing.Size(660, 20);
            this.ctrlWhiteSpace.TabIndex = 6;
            // 
            // BaseControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.WhiteSmoke;
            this.Controls.Add(this.ctrlWhiteSpace);
            this.Controls.Add(this.ctrlSplitterLine);
            this.Controls.Add(this.ctrlDescriptionControls);
            this.Controls.Add(this.ctrlRightSpace);
            this.Controls.Add(this.ctrlLeftSpace);
            this.Controls.Add(this.ctrlBottomContainer);
            this.Controls.Add(this.ctrlTopContainer);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "BaseControl";
            this.Size = new System.Drawing.Size(700, 425);
            this.ctrlDescriptionControls.ResumeLayout(false);
            this.ctrlDescriptionControls.PerformLayout();
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
        private System.Windows.Forms.Label ctrlDescription;
    }
}
