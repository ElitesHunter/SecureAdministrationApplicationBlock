using System;
using System.Windows.Forms;
using EnterpriseServices.Framework.Resources;
using EnterpriseServices.ManagementClient.Operations.AuthenticateService;
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.ManagementClient.Operations.Resources;
using EnterpriseServices.SecurityService.Framework.Commons;

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
            this.ctrlLoginMethods.SelectedItem = types[0];
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
            this.SetControlsStateInSignProgress(true);
            ICredentials credentials = this.CreateCredentials();
            if (!object.ReferenceEquals(credentials, null))
            {
                WindowsAuthentication authenticate = new WindowsAuthentication();
                WindowsAuthenticateResult result = authenticate.Authenticate(credentials) as WindowsAuthenticateResult;

            }
            this.SetControlsStateInSignProgress(false);
        }
        #endregion

        #region SetControlsStateInSignProgress
        /// <summary>
        /// 设置登录进程中的控件状态。
        /// </summary>
        /// <param name="flag">标记。</param>
        private void SetControlsStateInSignProgress(bool flag)
        {
            this.ctrlSigninLoadingImage.Visible = flag;
            this.ctrlLoginMethods.Enabled = !flag;
            this.ctrlUserID.Enabled = !flag;
            this.ctrlPassword.Enabled = !flag;
            this.ctrlConnectButton.Enabled = !flag;
            this.ctrlCancelButton.Enabled = !flag;
        }
        #endregion

        #region AfterAuthenticate
        /// <summary>
        /// 身份认证后执行的方法。
        /// </summary>
        /// <param name="result"><see cref="AuthenticateResult"/>对象实例。</param>
        private void AfterAuthenticate(AuthenticateResult result)
        {
            if (string.IsNullOrEmpty(result.Token.Token))
            {
                MessageBox.Show(string.Format("{0}({1})", Messages.AuthenticateFailed), CommonPhrases.Error, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
        }
        #endregion

        #region CreateCredentials （待完善）
        /// <summary>
        /// 创建身份认证凭据。
        /// </summary>
        /// <returns><see cref="ICredentials"/>对象实例。</returns>
        private ICredentials CreateCredentials()
        {
            UIAuthenticationType type = this.ctrlLoginMethods.SelectedItem as UIAuthenticationType;
            if (type.Type.Equals(0))
            {
                return WindowsCredentials.GetCurrent();
            }
            else
            {
                return null;
            }
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
