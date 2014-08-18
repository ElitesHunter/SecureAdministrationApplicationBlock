namespace EnterpriseServices.ManagementClient.Controls
{
    partial class DescriptionControl
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
            this.ctrlProperties = new System.Windows.Forms.ListView();
            this.ctrlPropertyName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.ctrlPropertyValue = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SuspendLayout();
            // 
            // ctrlProperties
            // 
            this.ctrlProperties.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.ctrlPropertyName,
            this.ctrlPropertyValue});
            this.ctrlProperties.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ctrlProperties.Font = new System.Drawing.Font("微软雅黑", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.ctrlProperties.Location = new System.Drawing.Point(20, 116);
            this.ctrlProperties.Name = "ctrlProperties";
            this.ctrlProperties.Size = new System.Drawing.Size(660, 289);
            this.ctrlProperties.TabIndex = 7;
            this.ctrlProperties.UseCompatibleStateImageBehavior = false;
            this.ctrlProperties.View = System.Windows.Forms.View.Details;
            // 
            // ctrlPropertyName
            // 
            this.ctrlPropertyName.Width = 200;
            // 
            // ctrlPropertyValue
            // 
            this.ctrlPropertyValue.Width = 200;
            // 
            // DescriptionControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.ctrlProperties);
            this.Name = "DescriptionControl";
            this.Load += new System.EventHandler(this.ControlsLoad);
            this.Controls.SetChildIndex(this.ctrlProperties, 0);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListView ctrlProperties;
        private System.Windows.Forms.ColumnHeader ctrlPropertyValue;
        private System.Windows.Forms.ColumnHeader ctrlPropertyName;
    }
}
