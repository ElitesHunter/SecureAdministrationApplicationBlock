using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace EnterpriseServices.ManagementClient.Windows
{
    #region SplashWindow
    /// <summary>
    /// 闪屏窗口。
    /// </summary>
    public partial class SplashWindow : BaseWindow
    {
        private int _seconds;

        #region Seconds
        /// <summary>
        /// 设置或获取闪屏存在的秒数。
        /// </summary>
        private int Seconds
        {
            get { return _seconds; }
            set { _seconds = value; }
        }
        #endregion

        #region SplashWindow
        public SplashWindow()
        {
            InitializeComponent();
            this.Seconds = 0;
        }
        #endregion

        #region InitializeSplashImageFromResource
        /// <summary>
        /// 从资源中初始化闪屏图片。
        /// </summary>
        private void InitializeSplashImageFromResource()
        {
            this.ctrlSplashImagePresent.Image = Image.FromStream(typeof(SplashWindow).Assembly.GetManifestResourceStream("EnterpriseServices.ManagementClient.Resources.Images.Splash.PNG"));
        }
        #endregion

        #region InitializeControls
        /// <summary>
        /// 初始化窗体中的所有控件。
        /// </summary>
        protected override void InitializeControls()
        {
            base.InitializeControls();
            this.InitializeSplashImageFromResource();
        }
        #endregion

        #region HandleSplashTimeControllerTickEvent
        /// <summary>
        /// 处理闪屏时间控制器。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void HandleSplashTimeControllerTickEvent(object sender, EventArgs e)
        {
            this.Seconds++;
            if (this.Seconds >= 5)
            {
                this.ctrlSplashTimeController.Enabled = false;
                MainWindow mainWindow = new MainWindow();
                mainWindow.Show();
                this.Hide();
                this.WindowState = FormWindowState.Minimized;
            }
        }
        #endregion
    }
    #endregion
}
