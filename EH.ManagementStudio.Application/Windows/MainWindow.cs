using System;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Commons;
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
    }
    #endregion
}
