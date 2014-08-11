namespace EnterpriseServices.ManagementClient.Windows
{
    partial class MainWindow
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainWindow));
            this.ctrlMainFeaturesMenu = new System.Windows.Forms.MenuStrip();
            this.ctrlConnectMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlConnectToServerMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlDisconnectToServerMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlExitMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlMainFeaturesMenu.SuspendLayout();
            this.SuspendLayout();
            // 
            // ctrlMainFeaturesMenu
            // 
            this.ctrlMainFeaturesMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ctrlConnectMenuItem});
            this.ctrlMainFeaturesMenu.Location = new System.Drawing.Point(0, 0);
            this.ctrlMainFeaturesMenu.Name = "ctrlMainFeaturesMenu";
            this.ctrlMainFeaturesMenu.RenderMode = System.Windows.Forms.ToolStripRenderMode.System;
            this.ctrlMainFeaturesMenu.Size = new System.Drawing.Size(936, 25);
            this.ctrlMainFeaturesMenu.TabIndex = 0;
            this.ctrlMainFeaturesMenu.Text = "menuStrip1";
            // 
            // ctrlConnectMenuItem
            // 
            this.ctrlConnectMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ctrlConnectToServerMenuItem,
            this.toolStripSeparator1,
            this.ctrlDisconnectToServerMenuItem,
            this.toolStripSeparator2,
            this.ctrlExitMenuItem});
            this.ctrlConnectMenuItem.Name = "ctrlConnectMenuItem";
            this.ctrlConnectMenuItem.Size = new System.Drawing.Size(60, 21);
            this.ctrlConnectMenuItem.Text = "连接(&C)";
            // 
            // ctrlConnectToServerMenuItem
            // 
            this.ctrlConnectToServerMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("ctrlConnectToServerMenuItem.Image")));
            this.ctrlConnectToServerMenuItem.Name = "ctrlConnectToServerMenuItem";
            this.ctrlConnectToServerMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.C)));
            this.ctrlConnectToServerMenuItem.Size = new System.Drawing.Size(181, 22);
            this.ctrlConnectToServerMenuItem.Text = "连接服务器";
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(178, 6);
            // 
            // ctrlDisconnectToServerMenuItem
            // 
            this.ctrlDisconnectToServerMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("ctrlDisconnectToServerMenuItem.Image")));
            this.ctrlDisconnectToServerMenuItem.Name = "ctrlDisconnectToServerMenuItem";
            this.ctrlDisconnectToServerMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.D)));
            this.ctrlDisconnectToServerMenuItem.Size = new System.Drawing.Size(181, 22);
            this.ctrlDisconnectToServerMenuItem.Text = "断开连接";
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(178, 6);
            // 
            // ctrlExitMenuItem
            // 
            this.ctrlExitMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("ctrlExitMenuItem.Image")));
            this.ctrlExitMenuItem.Name = "ctrlExitMenuItem";
            this.ctrlExitMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Alt | System.Windows.Forms.Keys.F4)));
            this.ctrlExitMenuItem.Size = new System.Drawing.Size(181, 22);
            this.ctrlExitMenuItem.Text = "退出";
            this.ctrlExitMenuItem.Click += new System.EventHandler(this.HandleExitMenuItemClickEvent);
            // 
            // MainWindow
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(936, 362);
            this.Controls.Add(this.ctrlMainFeaturesMenu);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.ctrlMainFeaturesMenu;
            this.Name = "MainWindow";
            this.ShowInTaskbar = true;
            this.Text = "MainWindow";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.HandleMainFormClosingEvent);
            this.ctrlMainFeaturesMenu.ResumeLayout(false);
            this.ctrlMainFeaturesMenu.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip ctrlMainFeaturesMenu;
        private System.Windows.Forms.ToolStripMenuItem ctrlConnectMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ctrlConnectToServerMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem ctrlDisconnectToServerMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ctrlExitMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
    }
}