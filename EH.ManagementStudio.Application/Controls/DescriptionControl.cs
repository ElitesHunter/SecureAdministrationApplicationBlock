using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Operations.Principal;

namespace EnterpriseServices.ManagementClient.Controls
{
    public partial class DescriptionControl : BaseControl
    {
        public DescriptionControl()
        {
            InitializeComponent();
        }

        #region InitializeThis
        /// <summary>
        /// 初始化控件。
        /// </summary>
        protected override void InitializeThis()
        {
            base.InitializeThis();
            ClientPrincipal principal = ClientPrincipal.GetCurrentPrincipal() as ClientPrincipal;
            this.SetDescription(principal.User.Name);
            
        }
        #endregion

        #region ControlsLoad
        private void ControlsLoad(object sender, EventArgs e)
        {

        }
        #endregion
    }
}
