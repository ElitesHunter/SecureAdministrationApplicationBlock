namespace EnterpriseServices.ManagementClient.Dialogs
{
    partial class PositionEditorDialog
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
            this.CtrlIsPrincipalPositionContainer = new System.Windows.Forms.Panel();
            this.CtrlIsPrincipal = new System.Windows.Forms.CheckBox();
            this.CtrlPositionPropertyGrid = new System.Windows.Forms.PropertyGrid();
            this.CtrlButtonsContainer.SuspendLayout();
            this.CtrlIsPrincipalPositionContainer.SuspendLayout();
            this.SuspendLayout();
            // 
            // CtrlButtonsContainer
            // 
            this.CtrlButtonsContainer.Controls.Add(this.CtrlCancelButton);
            this.CtrlButtonsContainer.Controls.Add(this.CtrlOkButton);
            this.CtrlButtonsContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.CtrlButtonsContainer.Location = new System.Drawing.Point(0, 322);
            this.CtrlButtonsContainer.Name = "CtrlButtonsContainer";
            this.CtrlButtonsContainer.Size = new System.Drawing.Size(394, 50);
            this.CtrlButtonsContainer.TabIndex = 0;
            // 
            // CtrlCancelButton
            // 
            this.CtrlCancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.CtrlCancelButton.Location = new System.Drawing.Point(212, 11);
            this.CtrlCancelButton.Name = "CtrlCancelButton";
            this.CtrlCancelButton.Size = new System.Drawing.Size(75, 30);
            this.CtrlCancelButton.TabIndex = 0;
            this.CtrlCancelButton.Text = "取消(&Esc)";
            this.CtrlCancelButton.UseVisualStyleBackColor = true;
            // 
            // CtrlOkButton
            // 
            this.CtrlOkButton.Location = new System.Drawing.Point(97, 11);
            this.CtrlOkButton.Name = "CtrlOkButton";
            this.CtrlOkButton.Size = new System.Drawing.Size(75, 30);
            this.CtrlOkButton.TabIndex = 0;
            this.CtrlOkButton.Text = "确定";
            this.CtrlOkButton.UseVisualStyleBackColor = true;
            this.CtrlOkButton.Click += new System.EventHandler(this.OkButtonClick);
            // 
            // CtrlIsPrincipalPositionContainer
            // 
            this.CtrlIsPrincipalPositionContainer.BackColor = System.Drawing.Color.White;
            this.CtrlIsPrincipalPositionContainer.Controls.Add(this.CtrlIsPrincipal);
            this.CtrlIsPrincipalPositionContainer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.CtrlIsPrincipalPositionContainer.Location = new System.Drawing.Point(0, 272);
            this.CtrlIsPrincipalPositionContainer.Name = "CtrlIsPrincipalPositionContainer";
            this.CtrlIsPrincipalPositionContainer.Size = new System.Drawing.Size(394, 50);
            this.CtrlIsPrincipalPositionContainer.TabIndex = 1;
            // 
            // CtrlIsPrincipal
            // 
            this.CtrlIsPrincipal.AutoSize = true;
            this.CtrlIsPrincipal.Location = new System.Drawing.Point(11, 13);
            this.CtrlIsPrincipal.Name = "CtrlIsPrincipal";
            this.CtrlIsPrincipal.Size = new System.Drawing.Size(210, 23);
            this.CtrlIsPrincipal.TabIndex = 0;
            this.CtrlIsPrincipal.Text = "将这个职位设置为主要负责职位";
            this.CtrlIsPrincipal.UseVisualStyleBackColor = true;
            // 
            // CtrlPositionPropertyGrid
            // 
            this.CtrlPositionPropertyGrid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.CtrlPositionPropertyGrid.HelpBackColor = System.Drawing.Color.White;
            this.CtrlPositionPropertyGrid.Location = new System.Drawing.Point(0, 0);
            this.CtrlPositionPropertyGrid.Name = "CtrlPositionPropertyGrid";
            this.CtrlPositionPropertyGrid.Size = new System.Drawing.Size(394, 272);
            this.CtrlPositionPropertyGrid.TabIndex = 2;
            // 
            // PositionEditorDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.CtrlCancelButton;
            this.ClientSize = new System.Drawing.Size(394, 372);
            this.Controls.Add(this.CtrlPositionPropertyGrid);
            this.Controls.Add(this.CtrlIsPrincipalPositionContainer);
            this.Controls.Add(this.CtrlButtonsContainer);
            this.Name = "PositionEditorDialog";
            this.Text = "职位";
            this.Load += new System.EventHandler(this.DialogLoad);
            this.CtrlButtonsContainer.ResumeLayout(false);
            this.CtrlIsPrincipalPositionContainer.ResumeLayout(false);
            this.CtrlIsPrincipalPositionContainer.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel CtrlButtonsContainer;
        private System.Windows.Forms.Panel CtrlIsPrincipalPositionContainer;
        private System.Windows.Forms.PropertyGrid CtrlPositionPropertyGrid;
        private System.Windows.Forms.Button CtrlOkButton;
        private System.Windows.Forms.Button CtrlCancelButton;
        private System.Windows.Forms.CheckBox CtrlIsPrincipal;
    }
}