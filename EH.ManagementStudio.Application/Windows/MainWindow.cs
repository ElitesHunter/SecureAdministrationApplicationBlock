using System;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Commons;
using EnterpriseServices.ManagementClient.Dialogs;
using EnterpriseServices.ManagementClient.Operations.Resources;

namespace EnterpriseServices.ManagementClient.Windows
{
    #region MainWindow
    /// <summary>
    /// 主窗口。
    /// </summary>
    public partial class MainWindow : BaseWindow
    {
        private bool _confirmExit;

        #region ConfirmExit
        /// <summary>
        /// 用于标记是否确认退出。
        /// </summary>
        private bool ConfirmExit
        {
            get { return _confirmExit; }
            set { _confirmExit = value; }
        }
        #endregion

        public MainWindow()
        {
            InitializeComponent();
            this.InitializeVariables();
        }

        #region InitializeForm
        /// <summary>
        /// 初始化窗体。
        /// </summary>
        protected override void InitializeForm()
        {
            base.InitializeForm();
            this.Text = Messages.ApplicationCaption;
        }
        #endregion

        #region InitializeVariables
        /// <summary>
        /// 初始化全局变量。
        /// </summary>
        private void InitializeVariables()
        {
            this.ConfirmExit = false;
        }
        #endregion

        #region HandleMainFormClosingEvent
        /// <summary>
        /// 处理主窗体将要关闭事件。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void HandleMainFormClosingEvent(object sender, FormClosingEventArgs e)
        {
            if (!this.ConfirmExit)
            {
                if (DialogMethods.Ask(Messages.ExitApplication) == DialogResult.OK)
                {
                    this.ConfirmExit = true;
                    Application.Exit();
                }
                else
                {
                    e.Cancel = true;
                    this.ConfirmExit = false;
                }
            }
            else Application.Exit();
        }
        #endregion

        #region HandleExitMenuItemClickEvent
        /// <summary>
        /// 处理“退出”菜单单击事件。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void HandleExitMenuItemClickEvent(object sender, EventArgs e)
        {
            this.Close();
        }
        #endregion

        #region ShowOrHidePreloaderImage
        /// <summary>
        /// 显示或隐藏Loading图片。
        /// </summary>
        /// <param name="flag">显示或隐藏标记。</param>
        private void ShowOrHidePreloaderImage(bool flag)
        {
            this.ctrlLoadingImage.Visible = flag;
        }
        #endregion

        #region ShowConnectDialog
        /// <summary>
        /// 显示连接服务器对话框。
        /// </summary>
        /// <returns><see cref="DialogResult"/>中的一个值。</returns>
        private DialogResult ShowConnectDialog()
        {
            DialogResult result =DialogResult.OK;
            using (ConnectionDialog dialog = new ConnectionDialog())
            {
                result = dialog.ShowDialog();
            }
            return result;
        }
        #endregion

        #region MainWindow_Load
        /// <summary>
        /// 窗体初次加载时执行的方法。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void MainWindow_Load(object sender, EventArgs e)
        {
            this.ResetControlsState();
            this.DisableToolbars(false);
            this.InitializeThread();
        }
        #endregion

        #region InitializeThread
        /// <summary>
        /// 初始化当前的线程。
        /// </summary>
        private void InitializeThread()
        {
            if (this.ShowConnectDialog() == DialogResult.OK)
            {
                this.ClearFeatureObjects();
            }
        }
        #endregion

        #region ResetControlsState
        /// <summary>
        /// 重置所有控件的状态。
        /// </summary>
        private void ResetControlsState()
        {
            this.Text = Messages.MainWindowCaption;
            this.ctrlConnectMenuItem.Text = string.Format("{0}(&C)", Messages.Connect);
            this.ctrlConnectToServerMenuItem.Text = Messages.ConnectToServer;
            this.ctrlDisconnectToServerMenuItem.Text = Messages.Disconnect;
            this.ctrlExitMenuItem.Text = Messages.Exit;
            this.ctrlHelpMenuItem.Text = string.Format("{0}(&H)", Messages.Help);
            this.ctrlAboutMenuItem.Text = Messages.AboutClient;
            this.ctrlBasicCreationButton.Text = Messages.ParameterDeclaration;
            this.ctrlCreateAppBlockMenuItem.Text = Messages.Blocks;
            this.ctrlCreatePrecodeMenuItem.Text = Messages.Code;
            this.ctrlCreateAdministratorMenuItem.Text = Messages.AdminGroup;
            this.ctrlOrgManagementMenuItem.Text = Messages.OrganizationManagement;
            this.ctrlCreateOrgMenuItem.Text = Messages.Organization;
            this.ctrlCreatePositionMenuItem.Text = Messages.Position;
            this.ctrlCreateUserMenuItem.Text = Messages.Staff;
            this.ctrlPositionRelationMenuItem.Text = Messages.ReportLine;
            this.ctrlPermissionMenuItem.Text = Messages.AuthorizationManagement;
            this.ctrlCreateAppMenuItem.Text = Messages.Application;
            this.ctrlCreateRoleMenuItem.Text = Messages.Role;
            this.ctrlCreatePermissionMenuItem.Text = Messages.Permission;
            this.ctrlAuthorizeMenuItem.Text = Messages.Authorize;
            this.ctrlViewLogMenuItem.Text = Messages.LoggingViewer;
            this.ctrlCreatePwdPolicyMenuItem.Text = Messages.PasswordExpirationPolicy;
        }
        #endregion

        #region DisableToolbars
        /// <summary>
        /// 禁用或启用功能菜单。
        /// </summary>
        /// <param name="flag">标记。</param>
        private void DisableToolbars(bool flag)
        {
            this.ctrlDisconnectToServerMenuItem.Enabled = flag;
            this.ctrlFeaturesToolmenu.Enabled = flag;
        }
        #endregion

        #region ClearFeatureObjects
        /// <summary>
        /// 清空功能对象。
        /// </summary>
        private void ClearFeatureObjects()
        {
            this.ctrlObjectsTree.Nodes.Clear();
            this.ctrlObjectTabContainer.TabPages.Clear();
        }
        #endregion
    }
    #endregion
}
