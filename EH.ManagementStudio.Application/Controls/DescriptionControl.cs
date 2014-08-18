﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Operations.Principal;
using EnterpriseServices.ManagementClient.Operations.Resources;

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
            this.ctrlPropertyName.Text = Messages.AttributeName;
            this.ctrlPropertyValue.Text = Messages.Attribute;
            this.ctrlProperties.Items.Add(new ListViewItem(new string[2] { "Host Name", Environment.MachineName }));
            this.ctrlProperties.Items.Add(new ListViewItem(new string[2] { "User Name", string.Format(@"{0}\{1}", Environment.UserDomainName, Environment.UserName) }));
            this.ctrlProperties.Items.Add(new ListViewItem(new string[2] { "Windows", Environment.OSVersion.VersionString }));
            this.ctrlProperties.Items.Add(new ListViewItem(new string[2] { ".NET Framework", Environment.Version.ToString() }));
            this.ctrlProperties.Items.Add(new ListViewItem(new string[2] { "Management Studio", this.GetType().Assembly.GetName().Version.ToString() }));
        }
        #endregion

        #region ControlsLoad
        private void ControlsLoad(object sender, EventArgs e)
        {

        }
        #endregion
    }
}
