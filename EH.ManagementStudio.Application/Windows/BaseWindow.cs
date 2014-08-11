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
    public partial class BaseWindow : Form
    {
        public BaseWindow()
        {
            InitializeComponent();
        }

        #region InitializeControls
        /// <summary>
        /// 初始化控件。
        /// </summary>
        protected virtual void InitializeControls()
        {
        }
        #endregion

        #region InitializeForm
        /// <summary>
        /// 初始化窗体。
        /// </summary>
        protected virtual void InitializeForm()
        {
            if (this.ShowIcon)
                this.Icon = new Icon(this.GetType().Assembly.GetManifestResourceStream("EnterpriseServices.ManagementClient.Resources.Images.Icon.ico"));
        }
        #endregion

        #region OnLoad
        /// <summary>
        /// 窗体初次加载时执行的事件。
        /// </summary>
        /// <param name="e"><see cref="EventArgs"/>对象实例。</param>
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            if (!this.DesignMode)
            {
                this.InitializeForm();
                this.InitializeControls();
            }
        }
        #endregion
    }
}
