#region "ClientStartup"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-11 10:52:32
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : ClientStartup
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.ClientStartup
 * 
 * ####     Machine Name : GLCHQWYCWINW7
 * 
 * ####     UserName : GUOCOLAND/wangyucai
 * 
 * ####     CLR Version : 4.0.30319.18444
 * 
 * ####     Target Framework Version : 3.5
 */

#endregion

using System.Windows.Forms;
using EnterpriseServices.Framework.Commons;
using EnterpriseServices.Framework.Resources;
using EnterpriseServices.ManagementClient.Operations.Resources;
using EnterpriseServices.SecurityService.Framework.Commons;

namespace EnterpriseServices.ManagementClient.Operations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.ClientStartup</para>
    /// <para>
    /// 定义了启动管理客户端的基本方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Monitor]
    public class ClientStartup : _Object, IApplicationStartup
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ClientStartup" />对象实例。</para>
        /// </summary>
        public ClientStartup()
        {
        }

        #endregion

        #region Run
        /// <summary>
        /// 启动此应用。
        /// </summary>
        /// <param name="mainForm"><see cref="Form"/>对象实例。</param>
        [BeforeStartup]
        [InWindowsAdministratorGroup]
        public void Run(Form mainForm)
        {
            try
            {
                Application.Run(mainForm);
            }
            catch
            {
                MessageBox.Show(Messages.IsNotAdministrator, CommonPhrases.Warning, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                Application.Exit();
            }
        }
        #endregion
    }
}

#region README

/*
 * ####     ©2014 Wang Yucai
 * 
 * ####     Contact me
 *                  
 *                  E-mail : Masterduner@Yeah.net
 *                  Mobile : 13621384677
 *                  QQ : 180261899
 */

#endregion