using System;
using System.Windows.Forms;

namespace EnterpriseServices.ManagementClient.Controls
{
    #region BaseControl
    public partial class BaseControl : UserControl
    {
        public BaseControl()
        {
            InitializeComponent();
        }

        #region OnLoad
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            if (!this.DesignMode)
            {
                this.Dock = DockStyle.Fill;
                this.InitializeThis();
            }
        }
        #endregion

        #region InitializeThis
        /// <summary>
        /// 初始化此控件。
        /// </summary>
        protected virtual void InitializeThis()
        {
        }
        #endregion

        #region SetDescription
        /// <summary>
        /// 设置控件的描述性文字。
        /// </summary>
        /// <param name="description">描述。</param>
        public void SetDescription(string description)
        {
            this.ctrlDescription.Text = description;
        }
        #endregion
    }
    #endregion
}
