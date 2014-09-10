using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace EnterpriseServices.ManagementClient.Dialogs
{
    public partial class AccountEditorDialog : BaseDialog
    {
        private string _openID;

        #region OpenID
        /// <summary>
        /// 人员的开放标识。
        /// </summary>
        public string OpenID
        {
            get { return _openID; }
            set { _openID = value; }
        }
        #endregion

        public AccountEditorDialog()
        {
            InitializeComponent();
        }

        #region InitializeForm
        protected override void InitializeForm()
        {
            base.InitializeForm();
            this.CtrlExpirationCycleUnit.SelectedIndex = 0;
        }
        #endregion
    }
}
