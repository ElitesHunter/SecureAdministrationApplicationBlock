using System;
using System.Threading;
using System.Windows.Forms;
using EnterpriseServices.Framework.Commons.Runtime;
using EnterpriseServices.Framework.Resources;
using EnterpriseServices.ManagementClient.Operations;
using EnterpriseServices.ManagementClient.Operations.Resources;
using EnterpriseServices.ManagementClient.Windows;
using EnterpriseServices.SecurityService.Framework.Commons;

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
            AppDomain.CurrentDomain.UnhandledException += new UnhandledExceptionEventHandler(ProcessUnhandleException);
            Application.SetUnhandledExceptionMode(UnhandledExceptionMode.CatchException);
            Application.ThreadException += new ThreadExceptionEventHandler(ProcessApplicationThreadException);
            SetCurrentThreadCultureInfo();
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            ClientStartup start = new ClientStartup();
            start.Run(new SplashWindow());
        }

        #region ProcessApplicationThreadException
        static void ProcessApplicationThreadException(object sender, ThreadExceptionEventArgs e)
        {
            if (e.Exception is IsNotSystemAdministratorError)
            {
                MessageBox.Show(Messages.IsNotAdministrator, CommonPhrases.Warning, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                Application.Exit();
            }
            else
            {
                TraceEvent<Object> trace = new TraceEvent<Object>();
                trace.AttachTraceEvent(TraceEventLevel.Exception, e.Exception.Message);
            }
        }
        #endregion

        #region ProcessUnhandleException
        static void ProcessUnhandleException(object sender, UnhandledExceptionEventArgs e)
        {
            if (e.ExceptionObject is Exception && e.ExceptionObject is IsNotSystemAdministratorError)
            {
                MessageBox.Show(Messages.IsNotAdministrator, CommonPhrases.Warning, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                Application.Exit();
            }
            else
            {
                TraceEvent<Object> trace = new TraceEvent<Object>();
                trace.AttachTraceEvent(TraceEventLevel.Exception, (e.ExceptionObject as Exception).Message);
            }
        }
        #endregion

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
