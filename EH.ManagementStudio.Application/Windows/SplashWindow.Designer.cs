namespace EnterpriseServices.ManagementClient.Windows
{
    partial class SplashWindow
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
            this.components = new System.ComponentModel.Container();
            this.ctrlSplashImagePresent = new System.Windows.Forms.PictureBox();
            this.ctrlSplashTimeController = new System.Windows.Forms.Timer(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.ctrlSplashImagePresent)).BeginInit();
            this.SuspendLayout();
            // 
            // ctrlSplashImagePresent
            // 
            this.ctrlSplashImagePresent.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ctrlSplashImagePresent.Location = new System.Drawing.Point(0, 0);
            this.ctrlSplashImagePresent.Name = "ctrlSplashImagePresent";
            this.ctrlSplashImagePresent.Size = new System.Drawing.Size(500, 300);
            this.ctrlSplashImagePresent.TabIndex = 0;
            this.ctrlSplashImagePresent.TabStop = false;
            // 
            // ctrlSplashTimeController
            // 
            this.ctrlSplashTimeController.Enabled = true;
            this.ctrlSplashTimeController.Interval = 1000;
            this.ctrlSplashTimeController.Tick += new System.EventHandler(this.HandleSplashTimeControllerTickEvent);
            // 
            // SplashWindow
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(500, 300);
            this.Controls.Add(this.ctrlSplashImagePresent);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "SplashWindow";
            this.ShowIcon = false;
            this.Text = "Management Studio Splash Window";
            ((System.ComponentModel.ISupportInitialize)(this.ctrlSplashImagePresent)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox ctrlSplashImagePresent;
        private System.Windows.Forms.Timer ctrlSplashTimeController;
    }
}