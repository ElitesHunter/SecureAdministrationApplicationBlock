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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainWindow));
            this.ctrlMainFeaturesMenu = new System.Windows.Forms.MenuStrip();
            this.ctrlConnectMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlConnectToServerMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlDisconnectToServerMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlExitMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlHelpMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlAboutMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlFeaturesToolmenu = new System.Windows.Forms.ToolStrip();
            this.ctrlBasicCreationButton = new System.Windows.Forms.ToolStripSplitButton();
            this.ctrlCreateAppBlockMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlCreatePrecodeMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlCreateAdministratorMenuItem = new System.Windows.Forms.ToolStripButton();
            this.toolStripButton1 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlOrgManagementMenuItem = new System.Windows.Forms.ToolStripSplitButton();
            this.ctrlCreateOrgMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlCreatePositionMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlCreateUserMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlPositionRelationMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlPermissionMenuItem = new System.Windows.Forms.ToolStripSplitButton();
            this.ctrlCreateAppMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlCreateRoleMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlCreatePermissionMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator5 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlAuthorizeMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlCreatePwdPolicyMenuItem = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator6 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlViewLogMenuItem = new System.Windows.Forms.ToolStripButton();
            this.ctrlStatusControlsPanel = new System.Windows.Forms.Panel();
            this.ctrlLoadingImage = new System.Windows.Forms.PictureBox();
            this.ctrlSplitContainer = new System.Windows.Forms.SplitContainer();
            this.ctrlObjectsTree = new System.Windows.Forms.TreeView();
            this.ctrlImageList = new System.Windows.Forms.ImageList(this.components);
            this.ctrlObjectTabContainer = new System.Windows.Forms.TabControl();
            this.ctrlOrganizationRootCtxMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.ctrlCreateRootOrganization = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator7 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlRefreshRootOrganization = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlOrganizationObjCtxMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.ctrlCreateOrgObject = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator8 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlCreatePosition = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator9 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlCreateStaff = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator10 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlRemoveOrgObject = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator11 = new System.Windows.Forms.ToolStripSeparator();
            this.ctrlRefreshOrgObject = new System.Windows.Forms.ToolStripMenuItem();
            this.ctrlMainFeaturesMenu.SuspendLayout();
            this.ctrlFeaturesToolmenu.SuspendLayout();
            this.ctrlStatusControlsPanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ctrlLoadingImage)).BeginInit();
            this.ctrlSplitContainer.Panel1.SuspendLayout();
            this.ctrlSplitContainer.Panel2.SuspendLayout();
            this.ctrlSplitContainer.SuspendLayout();
            this.ctrlOrganizationRootCtxMenu.SuspendLayout();
            this.ctrlOrganizationObjCtxMenu.SuspendLayout();
            this.SuspendLayout();
            // 
            // ctrlMainFeaturesMenu
            // 
            this.ctrlMainFeaturesMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ctrlConnectMenuItem,
            this.ctrlHelpMenuItem});
            this.ctrlMainFeaturesMenu.Location = new System.Drawing.Point(0, 0);
            this.ctrlMainFeaturesMenu.Name = "ctrlMainFeaturesMenu";
            this.ctrlMainFeaturesMenu.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional;
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
            // ctrlHelpMenuItem
            // 
            this.ctrlHelpMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ctrlAboutMenuItem});
            this.ctrlHelpMenuItem.Name = "ctrlHelpMenuItem";
            this.ctrlHelpMenuItem.Size = new System.Drawing.Size(61, 21);
            this.ctrlHelpMenuItem.Text = "帮助(&H)";
            // 
            // ctrlAboutMenuItem
            // 
            this.ctrlAboutMenuItem.Name = "ctrlAboutMenuItem";
            this.ctrlAboutMenuItem.Size = new System.Drawing.Size(234, 22);
            this.ctrlAboutMenuItem.Text = "关于Management Studio(&A)";
            // 
            // ctrlFeaturesToolmenu
            // 
            this.ctrlFeaturesToolmenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ctrlBasicCreationButton,
            this.toolStripSeparator3,
            this.ctrlCreateAdministratorMenuItem,
            this.toolStripButton1,
            this.ctrlOrgManagementMenuItem,
            this.ctrlPermissionMenuItem,
            this.ctrlCreatePwdPolicyMenuItem,
            this.toolStripSeparator6,
            this.ctrlViewLogMenuItem});
            this.ctrlFeaturesToolmenu.Location = new System.Drawing.Point(0, 25);
            this.ctrlFeaturesToolmenu.Name = "ctrlFeaturesToolmenu";
            this.ctrlFeaturesToolmenu.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional;
            this.ctrlFeaturesToolmenu.Size = new System.Drawing.Size(936, 25);
            this.ctrlFeaturesToolmenu.TabIndex = 1;
            this.ctrlFeaturesToolmenu.Text = "toolStrip1";
            // 
            // ctrlBasicCreationButton
            // 
            this.ctrlBasicCreationButton.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ctrlCreateAppBlockMenuItem,
            this.ctrlCreatePrecodeMenuItem});
            this.ctrlBasicCreationButton.Image = ((System.Drawing.Image)(resources.GetObject("ctrlBasicCreationButton.Image")));
            this.ctrlBasicCreationButton.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.ctrlBasicCreationButton.Name = "ctrlBasicCreationButton";
            this.ctrlBasicCreationButton.Size = new System.Drawing.Size(88, 22);
            this.ctrlBasicCreationButton.Text = "参数定义";
            // 
            // ctrlCreateAppBlockMenuItem
            // 
            this.ctrlCreateAppBlockMenuItem.Name = "ctrlCreateAppBlockMenuItem";
            this.ctrlCreateAppBlockMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)(((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Shift) 
            | System.Windows.Forms.Keys.A)));
            this.ctrlCreateAppBlockMenuItem.Size = new System.Drawing.Size(214, 22);
            this.ctrlCreateAppBlockMenuItem.Text = "应用模块";
            // 
            // ctrlCreatePrecodeMenuItem
            // 
            this.ctrlCreatePrecodeMenuItem.Name = "ctrlCreatePrecodeMenuItem";
            this.ctrlCreatePrecodeMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)(((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Shift) 
            | System.Windows.Forms.Keys.P)));
            this.ctrlCreatePrecodeMenuItem.Size = new System.Drawing.Size(214, 22);
            this.ctrlCreatePrecodeMenuItem.Text = "预定义代码";
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(6, 25);
            // 
            // ctrlCreateAdministratorMenuItem
            // 
            this.ctrlCreateAdministratorMenuItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.ctrlCreateAdministratorMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("ctrlCreateAdministratorMenuItem.Image")));
            this.ctrlCreateAdministratorMenuItem.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.ctrlCreateAdministratorMenuItem.Name = "ctrlCreateAdministratorMenuItem";
            this.ctrlCreateAdministratorMenuItem.Size = new System.Drawing.Size(23, 22);
            this.ctrlCreateAdministratorMenuItem.Text = "系统管理员组";
            // 
            // toolStripButton1
            // 
            this.toolStripButton1.Name = "toolStripButton1";
            this.toolStripButton1.Size = new System.Drawing.Size(6, 25);
            // 
            // ctrlOrgManagementMenuItem
            // 
            this.ctrlOrgManagementMenuItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.ctrlOrgManagementMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ctrlCreateOrgMenuItem,
            this.ctrlCreatePositionMenuItem,
            this.ctrlCreateUserMenuItem,
            this.toolStripSeparator4,
            this.ctrlPositionRelationMenuItem});
            this.ctrlOrgManagementMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("ctrlOrgManagementMenuItem.Image")));
            this.ctrlOrgManagementMenuItem.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.ctrlOrgManagementMenuItem.Name = "ctrlOrgManagementMenuItem";
            this.ctrlOrgManagementMenuItem.Size = new System.Drawing.Size(32, 22);
            this.ctrlOrgManagementMenuItem.Text = "组织机构管理";
            // 
            // ctrlCreateOrgMenuItem
            // 
            this.ctrlCreateOrgMenuItem.Name = "ctrlCreateOrgMenuItem";
            this.ctrlCreateOrgMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)(((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Shift) 
            | System.Windows.Forms.Keys.O)));
            this.ctrlCreateOrgMenuItem.Size = new System.Drawing.Size(205, 22);
            this.ctrlCreateOrgMenuItem.Text = "组织机构";
            // 
            // ctrlCreatePositionMenuItem
            // 
            this.ctrlCreatePositionMenuItem.Name = "ctrlCreatePositionMenuItem";
            this.ctrlCreatePositionMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Alt) 
            | System.Windows.Forms.Keys.Shift) 
            | System.Windows.Forms.Keys.P)));
            this.ctrlCreatePositionMenuItem.Size = new System.Drawing.Size(205, 22);
            this.ctrlCreatePositionMenuItem.Text = "职位";
            // 
            // ctrlCreateUserMenuItem
            // 
            this.ctrlCreateUserMenuItem.Name = "ctrlCreateUserMenuItem";
            this.ctrlCreateUserMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)(((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Shift) 
            | System.Windows.Forms.Keys.U)));
            this.ctrlCreateUserMenuItem.Size = new System.Drawing.Size(205, 22);
            this.ctrlCreateUserMenuItem.Text = "人员";
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(202, 6);
            // 
            // ctrlPositionRelationMenuItem
            // 
            this.ctrlPositionRelationMenuItem.Name = "ctrlPositionRelationMenuItem";
            this.ctrlPositionRelationMenuItem.Size = new System.Drawing.Size(205, 22);
            this.ctrlPositionRelationMenuItem.Text = "职位汇报关系";
            // 
            // ctrlPermissionMenuItem
            // 
            this.ctrlPermissionMenuItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.ctrlPermissionMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ctrlCreateAppMenuItem,
            this.ctrlCreateRoleMenuItem,
            this.ctrlCreatePermissionMenuItem,
            this.toolStripSeparator5,
            this.ctrlAuthorizeMenuItem});
            this.ctrlPermissionMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("ctrlPermissionMenuItem.Image")));
            this.ctrlPermissionMenuItem.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.ctrlPermissionMenuItem.Name = "ctrlPermissionMenuItem";
            this.ctrlPermissionMenuItem.Size = new System.Drawing.Size(32, 22);
            this.ctrlPermissionMenuItem.Text = "授权管理";
            // 
            // ctrlCreateAppMenuItem
            // 
            this.ctrlCreateAppMenuItem.Name = "ctrlCreateAppMenuItem";
            this.ctrlCreateAppMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Alt) 
            | System.Windows.Forms.Keys.Shift) 
            | System.Windows.Forms.Keys.A)));
            this.ctrlCreateAppMenuItem.Size = new System.Drawing.Size(227, 22);
            this.ctrlCreateAppMenuItem.Text = "应用管理";
            // 
            // ctrlCreateRoleMenuItem
            // 
            this.ctrlCreateRoleMenuItem.Name = "ctrlCreateRoleMenuItem";
            this.ctrlCreateRoleMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)(((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Shift) 
            | System.Windows.Forms.Keys.R)));
            this.ctrlCreateRoleMenuItem.Size = new System.Drawing.Size(227, 22);
            this.ctrlCreateRoleMenuItem.Text = "应用角色";
            // 
            // ctrlCreatePermissionMenuItem
            // 
            this.ctrlCreatePermissionMenuItem.Name = "ctrlCreatePermissionMenuItem";
            this.ctrlCreatePermissionMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)(((System.Windows.Forms.Keys.Alt | System.Windows.Forms.Keys.Shift) 
            | System.Windows.Forms.Keys.P)));
            this.ctrlCreatePermissionMenuItem.Size = new System.Drawing.Size(227, 22);
            this.ctrlCreatePermissionMenuItem.Text = "应用权限";
            // 
            // toolStripSeparator5
            // 
            this.toolStripSeparator5.Name = "toolStripSeparator5";
            this.toolStripSeparator5.Size = new System.Drawing.Size(224, 6);
            // 
            // ctrlAuthorizeMenuItem
            // 
            this.ctrlAuthorizeMenuItem.Name = "ctrlAuthorizeMenuItem";
            this.ctrlAuthorizeMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)(((System.Windows.Forms.Keys.Alt | System.Windows.Forms.Keys.Shift) 
            | System.Windows.Forms.Keys.A)));
            this.ctrlAuthorizeMenuItem.Size = new System.Drawing.Size(227, 22);
            this.ctrlAuthorizeMenuItem.Text = "应用授权";
            // 
            // ctrlCreatePwdPolicyMenuItem
            // 
            this.ctrlCreatePwdPolicyMenuItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.ctrlCreatePwdPolicyMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("ctrlCreatePwdPolicyMenuItem.Image")));
            this.ctrlCreatePwdPolicyMenuItem.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.ctrlCreatePwdPolicyMenuItem.Name = "ctrlCreatePwdPolicyMenuItem";
            this.ctrlCreatePwdPolicyMenuItem.Size = new System.Drawing.Size(23, 22);
            this.ctrlCreatePwdPolicyMenuItem.Text = "口令过期策略";
            // 
            // toolStripSeparator6
            // 
            this.toolStripSeparator6.Name = "toolStripSeparator6";
            this.toolStripSeparator6.Size = new System.Drawing.Size(6, 25);
            // 
            // ctrlViewLogMenuItem
            // 
            this.ctrlViewLogMenuItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.ctrlViewLogMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("ctrlViewLogMenuItem.Image")));
            this.ctrlViewLogMenuItem.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.ctrlViewLogMenuItem.Name = "ctrlViewLogMenuItem";
            this.ctrlViewLogMenuItem.Size = new System.Drawing.Size(60, 22);
            this.ctrlViewLogMenuItem.Text = "运行日志";
            // 
            // ctrlStatusControlsPanel
            // 
            this.ctrlStatusControlsPanel.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.ctrlStatusControlsPanel.Controls.Add(this.ctrlLoadingImage);
            this.ctrlStatusControlsPanel.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.ctrlStatusControlsPanel.Location = new System.Drawing.Point(0, 332);
            this.ctrlStatusControlsPanel.Name = "ctrlStatusControlsPanel";
            this.ctrlStatusControlsPanel.Size = new System.Drawing.Size(936, 30);
            this.ctrlStatusControlsPanel.TabIndex = 2;
            // 
            // ctrlLoadingImage
            // 
            this.ctrlLoadingImage.Image = ((System.Drawing.Image)(resources.GetObject("ctrlLoadingImage.Image")));
            this.ctrlLoadingImage.Location = new System.Drawing.Point(4, 2);
            this.ctrlLoadingImage.Name = "ctrlLoadingImage";
            this.ctrlLoadingImage.Size = new System.Drawing.Size(25, 27);
            this.ctrlLoadingImage.TabIndex = 0;
            this.ctrlLoadingImage.TabStop = false;
            this.ctrlLoadingImage.Visible = false;
            // 
            // ctrlSplitContainer
            // 
            this.ctrlSplitContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ctrlSplitContainer.Location = new System.Drawing.Point(0, 50);
            this.ctrlSplitContainer.Name = "ctrlSplitContainer";
            // 
            // ctrlSplitContainer.Panel1
            // 
            this.ctrlSplitContainer.Panel1.Controls.Add(this.ctrlObjectsTree);
            // 
            // ctrlSplitContainer.Panel2
            // 
            this.ctrlSplitContainer.Panel2.Controls.Add(this.ctrlObjectTabContainer);
            this.ctrlSplitContainer.Size = new System.Drawing.Size(936, 282);
            this.ctrlSplitContainer.SplitterDistance = 312;
            this.ctrlSplitContainer.TabIndex = 3;
            // 
            // ctrlObjectsTree
            // 
            this.ctrlObjectsTree.BackColor = System.Drawing.Color.White;
            this.ctrlObjectsTree.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.ctrlObjectsTree.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ctrlObjectsTree.ImageIndex = 0;
            this.ctrlObjectsTree.ImageList = this.ctrlImageList;
            this.ctrlObjectsTree.Location = new System.Drawing.Point(0, 0);
            this.ctrlObjectsTree.Name = "ctrlObjectsTree";
            this.ctrlObjectsTree.SelectedImageIndex = 0;
            this.ctrlObjectsTree.Size = new System.Drawing.Size(312, 282);
            this.ctrlObjectsTree.TabIndex = 0;
            this.ctrlObjectsTree.AfterCollapse += new System.Windows.Forms.TreeViewEventHandler(this.HandleAfterTreeNodeCollapsed);
            this.ctrlObjectsTree.AfterExpand += new System.Windows.Forms.TreeViewEventHandler(this.HandleAfterTreeNodeExpanded);
            this.ctrlObjectsTree.NodeMouseClick += new System.Windows.Forms.TreeNodeMouseClickEventHandler(this.HandleFeatureTreeNodeClick);
            // 
            // ctrlImageList
            // 
            this.ctrlImageList.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("ctrlImageList.ImageStream")));
            this.ctrlImageList.TransparentColor = System.Drawing.Color.Transparent;
            this.ctrlImageList.Images.SetKeyName(0, "box.png");
            this.ctrlImageList.Images.SetKeyName(1, "folder.png");
            this.ctrlImageList.Images.SetKeyName(2, "users.png");
            this.ctrlImageList.Images.SetKeyName(3, "wrench_plus_2.png");
            this.ctrlImageList.Images.SetKeyName(4, "user.png");
            // 
            // ctrlObjectTabContainer
            // 
            this.ctrlObjectTabContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ctrlObjectTabContainer.Location = new System.Drawing.Point(0, 0);
            this.ctrlObjectTabContainer.Name = "ctrlObjectTabContainer";
            this.ctrlObjectTabContainer.SelectedIndex = 0;
            this.ctrlObjectTabContainer.Size = new System.Drawing.Size(620, 282);
            this.ctrlObjectTabContainer.TabIndex = 0;
            this.ctrlObjectTabContainer.DoubleClick += new System.EventHandler(this.HandleFeatureTabPageDoubleClick);
            // 
            // ctrlOrganizationRootCtxMenu
            // 
            this.ctrlOrganizationRootCtxMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ctrlCreateRootOrganization,
            this.toolStripSeparator7,
            this.ctrlRefreshRootOrganization});
            this.ctrlOrganizationRootCtxMenu.Name = "ctrlOrganizationRootCtxMenu";
            this.ctrlOrganizationRootCtxMenu.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional;
            this.ctrlOrganizationRootCtxMenu.Size = new System.Drawing.Size(185, 54);
            this.ctrlOrganizationRootCtxMenu.Opening += new System.ComponentModel.CancelEventHandler(this.HandleOrganizationRootNodeCtxMenuOpen);
            // 
            // ctrlCreateRootOrganization
            // 
            this.ctrlCreateRootOrganization.Name = "ctrlCreateRootOrganization";
            this.ctrlCreateRootOrganization.Size = new System.Drawing.Size(184, 22);
            this.ctrlCreateRootOrganization.Text = "创建（根）组织机构";
            this.ctrlCreateRootOrganization.Click += new System.EventHandler(this.CreateRootOrganizationObject);
            // 
            // toolStripSeparator7
            // 
            this.toolStripSeparator7.Name = "toolStripSeparator7";
            this.toolStripSeparator7.Size = new System.Drawing.Size(181, 6);
            // 
            // ctrlRefreshRootOrganization
            // 
            this.ctrlRefreshRootOrganization.Name = "ctrlRefreshRootOrganization";
            this.ctrlRefreshRootOrganization.Size = new System.Drawing.Size(184, 22);
            this.ctrlRefreshRootOrganization.Text = "刷新(&R)";
            this.ctrlRefreshRootOrganization.Click += new System.EventHandler(this.ctrlRefreshRootOrganization_Click);
            // 
            // ctrlOrganizationObjCtxMenu
            // 
            this.ctrlOrganizationObjCtxMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ctrlCreateOrgObject,
            this.toolStripSeparator8,
            this.ctrlCreatePosition,
            this.toolStripSeparator9,
            this.ctrlCreateStaff,
            this.toolStripSeparator10,
            this.ctrlRemoveOrgObject,
            this.toolStripSeparator11,
            this.ctrlRefreshOrgObject});
            this.ctrlOrganizationObjCtxMenu.Name = "ctrlOrganizationObjCtxMenu";
            this.ctrlOrganizationObjCtxMenu.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional;
            this.ctrlOrganizationObjCtxMenu.Size = new System.Drawing.Size(149, 138);
            this.ctrlOrganizationObjCtxMenu.Opening += new System.ComponentModel.CancelEventHandler(this.OrganizationObjectCtxMenuOpening);
            // 
            // ctrlCreateOrgObject
            // 
            this.ctrlCreateOrgObject.Name = "ctrlCreateOrgObject";
            this.ctrlCreateOrgObject.Size = new System.Drawing.Size(148, 22);
            this.ctrlCreateOrgObject.Text = "创建组织机构";
            this.ctrlCreateOrgObject.Click += new System.EventHandler(this.CreateSubOrganization);
            // 
            // toolStripSeparator8
            // 
            this.toolStripSeparator8.Name = "toolStripSeparator8";
            this.toolStripSeparator8.Size = new System.Drawing.Size(145, 6);
            // 
            // ctrlCreatePosition
            // 
            this.ctrlCreatePosition.Name = "ctrlCreatePosition";
            this.ctrlCreatePosition.Size = new System.Drawing.Size(148, 22);
            this.ctrlCreatePosition.Text = "创建职位";
            this.ctrlCreatePosition.Click += new System.EventHandler(this.CreatePositionClick);
            // 
            // toolStripSeparator9
            // 
            this.toolStripSeparator9.Name = "toolStripSeparator9";
            this.toolStripSeparator9.Size = new System.Drawing.Size(145, 6);
            // 
            // ctrlCreateStaff
            // 
            this.ctrlCreateStaff.Name = "ctrlCreateStaff";
            this.ctrlCreateStaff.Size = new System.Drawing.Size(148, 22);
            this.ctrlCreateStaff.Text = "创建用户";
            this.ctrlCreateStaff.Click += new System.EventHandler(this.CreateStaffClick);
            // 
            // toolStripSeparator10
            // 
            this.toolStripSeparator10.Name = "toolStripSeparator10";
            this.toolStripSeparator10.Size = new System.Drawing.Size(145, 6);
            // 
            // ctrlRemoveOrgObject
            // 
            this.ctrlRemoveOrgObject.Name = "ctrlRemoveOrgObject";
            this.ctrlRemoveOrgObject.Size = new System.Drawing.Size(148, 22);
            this.ctrlRemoveOrgObject.Text = "移除";
            this.ctrlRemoveOrgObject.Click += new System.EventHandler(this.RemoveOrganizationObjectClick);
            // 
            // toolStripSeparator11
            // 
            this.toolStripSeparator11.Name = "toolStripSeparator11";
            this.toolStripSeparator11.Size = new System.Drawing.Size(145, 6);
            // 
            // ctrlRefreshOrgObject
            // 
            this.ctrlRefreshOrgObject.Name = "ctrlRefreshOrgObject";
            this.ctrlRefreshOrgObject.Size = new System.Drawing.Size(148, 22);
            this.ctrlRefreshOrgObject.Text = "刷新";
            this.ctrlRefreshOrgObject.Click += new System.EventHandler(this.RefreshOrganizationObjectClick);
            // 
            // MainWindow
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(936, 362);
            this.Controls.Add(this.ctrlSplitContainer);
            this.Controls.Add(this.ctrlStatusControlsPanel);
            this.Controls.Add(this.ctrlFeaturesToolmenu);
            this.Controls.Add(this.ctrlMainFeaturesMenu);
            this.MainMenuStrip = this.ctrlMainFeaturesMenu;
            this.Name = "MainWindow";
            this.ShowInTaskbar = true;
            this.Text = "MainWindow";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.HandleMainFormClosingEvent);
            this.Load += new System.EventHandler(this.MainWindow_Load);
            this.ctrlMainFeaturesMenu.ResumeLayout(false);
            this.ctrlMainFeaturesMenu.PerformLayout();
            this.ctrlFeaturesToolmenu.ResumeLayout(false);
            this.ctrlFeaturesToolmenu.PerformLayout();
            this.ctrlStatusControlsPanel.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.ctrlLoadingImage)).EndInit();
            this.ctrlSplitContainer.Panel1.ResumeLayout(false);
            this.ctrlSplitContainer.Panel2.ResumeLayout(false);
            this.ctrlSplitContainer.ResumeLayout(false);
            this.ctrlOrganizationRootCtxMenu.ResumeLayout(false);
            this.ctrlOrganizationObjCtxMenu.ResumeLayout(false);
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
        private System.Windows.Forms.ToolStripMenuItem ctrlHelpMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ctrlAboutMenuItem;
        private System.Windows.Forms.ToolStrip ctrlFeaturesToolmenu;
        private System.Windows.Forms.ToolStripSplitButton ctrlBasicCreationButton;
        private System.Windows.Forms.ToolStripMenuItem ctrlCreateAppBlockMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ctrlCreatePrecodeMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripButton ctrlCreateAdministratorMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripButton1;
        private System.Windows.Forms.ToolStripSplitButton ctrlOrgManagementMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ctrlCreateOrgMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ctrlCreatePositionMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ctrlCreateUserMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripMenuItem ctrlPositionRelationMenuItem;
        private System.Windows.Forms.ToolStripSplitButton ctrlPermissionMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ctrlCreateAppMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ctrlCreateRoleMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ctrlCreatePermissionMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator5;
        private System.Windows.Forms.ToolStripMenuItem ctrlAuthorizeMenuItem;
        private System.Windows.Forms.ToolStripButton ctrlCreatePwdPolicyMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator6;
        private System.Windows.Forms.ToolStripButton ctrlViewLogMenuItem;
        private System.Windows.Forms.Panel ctrlStatusControlsPanel;
        private System.Windows.Forms.PictureBox ctrlLoadingImage;
        private System.Windows.Forms.SplitContainer ctrlSplitContainer;
        private System.Windows.Forms.TreeView ctrlObjectsTree;
        private System.Windows.Forms.TabControl ctrlObjectTabContainer;
        private System.Windows.Forms.ImageList ctrlImageList;
        private System.Windows.Forms.ContextMenuStrip ctrlOrganizationRootCtxMenu;
        private System.Windows.Forms.ToolStripMenuItem ctrlCreateRootOrganization;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator7;
        private System.Windows.Forms.ToolStripMenuItem ctrlRefreshRootOrganization;
        private System.Windows.Forms.ContextMenuStrip ctrlOrganizationObjCtxMenu;
        private System.Windows.Forms.ToolStripMenuItem ctrlCreateOrgObject;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator8;
        private System.Windows.Forms.ToolStripMenuItem ctrlCreatePosition;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator9;
        private System.Windows.Forms.ToolStripMenuItem ctrlRemoveOrgObject;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator11;
        private System.Windows.Forms.ToolStripMenuItem ctrlRefreshOrgObject;
        private System.Windows.Forms.ToolStripMenuItem ctrlCreateStaff;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator10;
    }
}