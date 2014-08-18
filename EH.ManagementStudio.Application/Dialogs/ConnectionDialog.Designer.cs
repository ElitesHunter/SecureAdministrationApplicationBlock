namespace EnterpriseServices.ManagementClient.Dialogs
{
    partial class ConnectionDialog
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ConnectionDialog));
            this.ctrlLoginMethodDescription = new System.Windows.Forms.Label();
            this.ctrlLoginMethods = new System.Windows.Forms.ComboBox();
            this.ctrlUserIDDescription = new System.Windows.Forms.Label();
            this.ctrlPasswordDescription = new System.Windows.Forms.Label();
            this.ctrlPassword = new System.Windows.Forms.TextBox();
            this.ctrlHSplitLine = new System.Windows.Forms.Panel();
            this.ctrlConnectButton = new System.Windows.Forms.Button();
            this.ctrlCancelButton = new System.Windows.Forms.Button();
            this.ctrlUserID = new System.Windows.Forms.TextBox();
            this.ctrlSigninLoadingImage = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.ctrlSigninLoadingImage)).BeginInit();
            this.SuspendLayout();
            // 
            // ctrlLoginMethodDescription
            // 
            this.ctrlLoginMethodDescription.AutoSize = true;
            this.ctrlLoginMethodDescription.Location = new System.Drawing.Point(13, 131);
            this.ctrlLoginMethodDescription.Name = "ctrlLoginMethodDescription";
            this.ctrlLoginMethodDescription.Size = new System.Drawing.Size(61, 19);
            this.ctrlLoginMethodDescription.TabIndex = 0;
            this.ctrlLoginMethodDescription.Text = "登录方式";
            // 
            // ctrlLoginMethods
            // 
            this.ctrlLoginMethods.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.ctrlLoginMethods.FormattingEnabled = true;
            this.ctrlLoginMethods.Location = new System.Drawing.Point(171, 128);
            this.ctrlLoginMethods.Name = "ctrlLoginMethods";
            this.ctrlLoginMethods.Size = new System.Drawing.Size(200, 27);
            this.ctrlLoginMethods.TabIndex = 1;
            this.ctrlLoginMethods.SelectedIndexChanged += new System.EventHandler(this.HandleSignInMethodsSelectedChangedEvent);
            // 
            // ctrlUserIDDescription
            // 
            this.ctrlUserIDDescription.AutoSize = true;
            this.ctrlUserIDDescription.Location = new System.Drawing.Point(13, 162);
            this.ctrlUserIDDescription.Name = "ctrlUserIDDescription";
            this.ctrlUserIDDescription.Size = new System.Drawing.Size(48, 19);
            this.ctrlUserIDDescription.TabIndex = 0;
            this.ctrlUserIDDescription.Text = "用户名";
            // 
            // ctrlPasswordDescription
            // 
            this.ctrlPasswordDescription.AutoSize = true;
            this.ctrlPasswordDescription.Location = new System.Drawing.Point(12, 194);
            this.ctrlPasswordDescription.Name = "ctrlPasswordDescription";
            this.ctrlPasswordDescription.Size = new System.Drawing.Size(35, 19);
            this.ctrlPasswordDescription.TabIndex = 0;
            this.ctrlPasswordDescription.Text = "密码";
            // 
            // ctrlPassword
            // 
            this.ctrlPassword.Location = new System.Drawing.Point(171, 191);
            this.ctrlPassword.Name = "ctrlPassword";
            this.ctrlPassword.Size = new System.Drawing.Size(200, 25);
            this.ctrlPassword.TabIndex = 3;
            this.ctrlPassword.UseSystemPasswordChar = true;
            // 
            // ctrlHSplitLine
            // 
            this.ctrlHSplitLine.BackColor = System.Drawing.Color.Silver;
            this.ctrlHSplitLine.Location = new System.Drawing.Point(2, 235);
            this.ctrlHSplitLine.Name = "ctrlHSplitLine";
            this.ctrlHSplitLine.Size = new System.Drawing.Size(390, 1);
            this.ctrlHSplitLine.TabIndex = 4;
            // 
            // ctrlConnectButton
            // 
            this.ctrlConnectButton.Location = new System.Drawing.Point(66, 250);
            this.ctrlConnectButton.Name = "ctrlConnectButton";
            this.ctrlConnectButton.Size = new System.Drawing.Size(100, 30);
            this.ctrlConnectButton.TabIndex = 4;
            this.ctrlConnectButton.Text = "连接(&C)";
            this.ctrlConnectButton.UseVisualStyleBackColor = true;
            this.ctrlConnectButton.Click += new System.EventHandler(this.HandleConnectButtonClickEvent);
            // 
            // ctrlCancelButton
            // 
            this.ctrlCancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.ctrlCancelButton.Location = new System.Drawing.Point(221, 250);
            this.ctrlCancelButton.Name = "ctrlCancelButton";
            this.ctrlCancelButton.Size = new System.Drawing.Size(100, 30);
            this.ctrlCancelButton.TabIndex = 5;
            this.ctrlCancelButton.Text = "取消(&X)";
            this.ctrlCancelButton.UseVisualStyleBackColor = true;
            // 
            // ctrlUserID
            // 
            this.ctrlUserID.Location = new System.Drawing.Point(171, 160);
            this.ctrlUserID.Name = "ctrlUserID";
            this.ctrlUserID.Size = new System.Drawing.Size(200, 25);
            this.ctrlUserID.TabIndex = 2;
            // 
            // ctrlSigninLoadingImage
            // 
            this.ctrlSigninLoadingImage.Image = ((System.Drawing.Image)(resources.GetObject("ctrlSigninLoadingImage.Image")));
            this.ctrlSigninLoadingImage.InitialImage = ((System.Drawing.Image)(resources.GetObject("ctrlSigninLoadingImage.InitialImage")));
            this.ctrlSigninLoadingImage.Location = new System.Drawing.Point(40, 253);
            this.ctrlSigninLoadingImage.Name = "ctrlSigninLoadingImage";
            this.ctrlSigninLoadingImage.Size = new System.Drawing.Size(24, 24);
            this.ctrlSigninLoadingImage.TabIndex = 6;
            this.ctrlSigninLoadingImage.TabStop = false;
            this.ctrlSigninLoadingImage.Visible = false;
            this.ctrlSigninLoadingImage.WaitOnLoad = true;
            // 
            // ConnectionDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.CancelButton = this.ctrlCancelButton;
            this.ClientSize = new System.Drawing.Size(394, 292);
            this.Controls.Add(this.ctrlSigninLoadingImage);
            this.Controls.Add(this.ctrlCancelButton);
            this.Controls.Add(this.ctrlConnectButton);
            this.Controls.Add(this.ctrlHSplitLine);
            this.Controls.Add(this.ctrlUserID);
            this.Controls.Add(this.ctrlPassword);
            this.Controls.Add(this.ctrlLoginMethods);
            this.Controls.Add(this.ctrlPasswordDescription);
            this.Controls.Add(this.ctrlUserIDDescription);
            this.Controls.Add(this.ctrlLoginMethodDescription);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ConnectionDialog";
            this.Text = "连接服务器";
            ((System.ComponentModel.ISupportInitialize)(this.ctrlSigninLoadingImage)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label ctrlLoginMethodDescription;
        private System.Windows.Forms.ComboBox ctrlLoginMethods;
        private System.Windows.Forms.Label ctrlUserIDDescription;
        private System.Windows.Forms.Label ctrlPasswordDescription;
        private System.Windows.Forms.TextBox ctrlPassword;
        private System.Windows.Forms.Panel ctrlHSplitLine;
        private System.Windows.Forms.Button ctrlConnectButton;
        private System.Windows.Forms.Button ctrlCancelButton;
        private System.Windows.Forms.TextBox ctrlUserID;
        private System.Windows.Forms.PictureBox ctrlSigninLoadingImage;


    }
}