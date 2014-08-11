using System;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Operations;
using EnterpriseServices.ManagementClient.Windows;

namespace EnterpriseServices.ManagementClient
{
    static class Program
    {
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main()
        {
            SetCurrentThreadCultureInfo();
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            ClientStartup start = new ClientStartup();
            start.Run(new SplashWindow());
        }

        #region SetCurrentThreadCultureInfo
        /// <summary>
        /// 设置当前线程的语言区域。
        /// </summary>
        static private void SetCurrentThreadCultureInfo()
        {
            ApplicationCultureInfo culture = new ApplicationCultureInfo();
            culture.SetUI();
            culture.Set();
        }
        #endregion
    }
}
