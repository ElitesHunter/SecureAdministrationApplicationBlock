namespace EnterpriseServices.ManagementClient.Operations.Entity.Editors
{
    partial class ChooseDateDialog
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
            this.ctrlCalendar = new System.Windows.Forms.MonthCalendar();
            this.ctrlButtonsContainer.SuspendLayout();
            this.SuspendLayout();
            // 
            // ctrlButtonsContainer
            // 
            this.ctrlButtonsContainer.Controls.Add(this.ctrlCancelButton);
            this.ctrlButtonsContainer.Controls.Add(this.ctrlOkButton);
            this.ctrlButtonsContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.ctrlButtonsContainer.Location = new System.Drawing.Point(0, 182);
            this.ctrlButtonsContainer.Name = "ctrlButtonsContainer";
            this.ctrlButtonsContainer.Size = new System.Drawing.Size(220, 50);
            this.ctrlButtonsContainer.TabIndex = 0;
            // 
            // ctrlCancelButton
            // 
            this.ctrlCancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.ctrlCancelButton.Location = new System.Drawing.Point(122, 9);
            this.ctrlCancelButton.Name = "ctrlCancelButton";
            this.ctrlCancelButton.Size = new System.Drawing.Size(75, 30);
            this.ctrlCancelButton.TabIndex = 0;
            this.ctrlCancelButton.Text = "取消";
            this.ctrlCancelButton.UseVisualStyleBackColor = true;
            // 
            // ctrlOkButton
            // 
            this.ctrlOkButton.Location = new System.Drawing.Point(25, 9);
            this.ctrlOkButton.Name = "ctrlOkButton";
            this.ctrlOkButton.Size = new System.Drawing.Size(75, 30);
            this.ctrlOkButton.TabIndex = 0;
            this.ctrlOkButton.Text = "确定";
            this.ctrlOkButton.UseVisualStyleBackColor = true;
            this.ctrlOkButton.Click += new System.EventHandler(this.OkButtonClick);
            // 
            // ctrlCalendar
            // 
            this.ctrlCalendar.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ctrlCalendar.Location = new System.Drawing.Point(0, 0);
            this.ctrlCalendar.MaxSelectionCount = 1;
            this.ctrlCalendar.Name = "ctrlCalendar";
            this.ctrlCalendar.ShowTodayCircle = false;
            this.ctrlCalendar.TabIndex = 1;
            // 
            // ChooseDateDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.WhiteSmoke;
            this.CancelButton = this.ctrlCancelButton;
            this.ClientSize = new System.Drawing.Size(220, 232);
            this.Controls.Add(this.ctrlCalendar);
            this.Controls.Add(this.ctrlButtonsContainer);
            this.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ChooseDateDialog";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "选择日期";
            this.TopMost = true;
            this.Load += new System.EventHandler(this.ChooseDateDialog_Load);
            this.ctrlButtonsContainer.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel ctrlButtonsContainer;
        private System.Windows.Forms.Button ctrlCancelButton;
        private System.Windows.Forms.Button ctrlOkButton;
        private System.Windows.Forms.MonthCalendar ctrlCalendar;

    }
}