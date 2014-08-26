namespace EnterpriseServices.ManagementClient.Operations.Entity.Editors
{
    partial class ChoosePlaceDialog
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
            this.ctrlButtonsContainer = new System.Windows.Forms.Panel();
            this.ctrlCancelButton = new System.Windows.Forms.Button();
            this.ctrlOkButton = new System.Windows.Forms.Button();
            this.ctrlPlaceTree = new System.Windows.Forms.TreeView();
            this.ctrlButtonsContainer.SuspendLayout();
            this.SuspendLayout();
            // 
            // ctrlButtonsContainer
            // 
            this.ctrlButtonsContainer.Controls.Add(this.ctrlCancelButton);
            this.ctrlButtonsContainer.Controls.Add(this.ctrlOkButton);
            this.ctrlButtonsContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.ctrlButtonsContainer.Location = new System.Drawing.Point(0, 321);
            this.ctrlButtonsContainer.Name = "ctrlButtonsContainer";
            this.ctrlButtonsContainer.Size = new System.Drawing.Size(331, 50);
            this.ctrlButtonsContainer.TabIndex = 0;
            // 
            // ctrlCancelButton
            // 
            this.ctrlCancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.ctrlCancelButton.Location = new System.Drawing.Point(173, 9);
            this.ctrlCancelButton.Name = "ctrlCancelButton";
            this.ctrlCancelButton.Size = new System.Drawing.Size(75, 30);
            this.ctrlCancelButton.TabIndex = 0;
            this.ctrlCancelButton.Text = "取消(&Esc)";
            this.ctrlCancelButton.UseVisualStyleBackColor = true;
            // 
            // ctrlOkButton
            // 
            this.ctrlOkButton.Location = new System.Drawing.Point(80, 9);
            this.ctrlOkButton.Name = "ctrlOkButton";
            this.ctrlOkButton.Size = new System.Drawing.Size(75, 30);
            this.ctrlOkButton.TabIndex = 0;
            this.ctrlOkButton.Text = "确定";
            this.ctrlOkButton.UseVisualStyleBackColor = true;
            this.ctrlOkButton.Click += new System.EventHandler(this.OkButtonClick);
            // 
            // ctrlPlaceTree
            // 
            this.ctrlPlaceTree.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ctrlPlaceTree.Font = new System.Drawing.Font("微软雅黑", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.ctrlPlaceTree.Location = new System.Drawing.Point(0, 0);
            this.ctrlPlaceTree.Name = "ctrlPlaceTree";
            this.ctrlPlaceTree.Size = new System.Drawing.Size(331, 321);
            this.ctrlPlaceTree.TabIndex = 1;
            // 
            // ChoosePlaceDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.ctrlCancelButton;
            this.ClientSize = new System.Drawing.Size(331, 371);
            this.Controls.Add(this.ctrlPlaceTree);
            this.Controls.Add(this.ctrlButtonsContainer);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ChoosePlaceDialog";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "选择地区区域";
            this.TopMost = true;
            this.Load += new System.EventHandler(this.DialogLoad);
            this.ctrlButtonsContainer.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel ctrlButtonsContainer;
        private System.Windows.Forms.TreeView ctrlPlaceTree;
        private System.Windows.Forms.Button ctrlCancelButton;
        private System.Windows.Forms.Button ctrlOkButton;
    }
}