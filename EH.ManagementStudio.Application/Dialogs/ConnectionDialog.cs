using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Operations.Resources;
using EnterpriseServices.Framework.Resources;
using EnterpriseServices.ManagementClient.Operations.Entity;

namespace EnterpriseServices.ManagementClient.Dialogs
{
    #region ConnectionDialog
    /// <summary>
    /// 连接服务器对话框。
    /// </summary>
    public partial class ConnectionDialog : BaseDialog
    {
        public ConnectionDialog()
        {
            InitializeComponent();
        }

        #region InitializeForm
        /// <summary>
        /// 初始化对话框。
        /// </summary>
        protected override void InitializeForm()
        {
            base.InitializeForm();

            this.Text = Messages.ConnectToServer;
        }
        #endregion

        #region InitializeControls
        /// <summary>
        /// 初始化所有控件。
        /// </summary>
        protected override void InitializeControls()
        {
            base.InitializeControls();

            this.ctrlLoginMethodDescription.Text = Messages.SignInMethod;
            this.ctrlUserIDDescription.Text = CommonPhrases.UserID;
            this.ctrlPasswordDescription.Text = CommonPhrases.Password;
            this.ctrlConnectButton.Text = string.Format("{0}(&C)", Messages.Connect);
            this.ctrlCancelButton.Text = string.Format("{0}(&X)", CommonPhrases.Cancel);
            this.InitializeSigninMethodsDropItems();
        }
        #endregion

        #region InitializeSigninMethodsDropItems
        /// <summary>
        /// 初始化登录方式下拉列表。
        /// </summary>
        private void InitializeSigninMethodsDropItems()
        {
            UIAuthenticationType[] types = UIAuthenticationType.GetAuthenticationTypes();
            foreach (var item in types)
            {
                this.ctrlLoginMethods.Items.Add(item);
            }
        }
        #endregion

        #region HandleConnectButtonClickEvent
        /// <summary>
        /// 处理连接按钮单击事件。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void HandleConnectButtonClickEvent(object sender, EventArgs e)
        {

        }
        #endregion

        #region HandleSignInMethodsSelectedChangedEvent
        /// <summary>
        /// 处理登录方式选择变更事件。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void HandleSignInMethodsSelectedChangedEvent(object sender, EventArgs e)
        {
            if ((this.ctrlLoginMethods.SelectedItem as UIAuthenticationType).Type.Equals(0))
            {
                this.ctrlUserID.Text = string.Format(@"{0}\{1}", Environment.UserDomainName, Environment.UserName);
                this.SetInputControlsEnableState(false);
            }
            else
            {
                this.ctrlUserID.Text = "sa";
                this.SetInputControlsEnableState(true);
            }
        }
        #endregion

        #region SetInputControlsEnableState
        /// <summary>
        /// 设置用户名、密码控件的可用状态。
        /// </summary>
        /// <param name="flag">是否可用标记。</param>
        private void SetInputControlsEnableState(bool flag)
        {
            this.ctrlPassword.Enabled = flag;
            this.ctrlUserID.Enabled = flag;
        }
        #endregion
    }
    #endregion
}
