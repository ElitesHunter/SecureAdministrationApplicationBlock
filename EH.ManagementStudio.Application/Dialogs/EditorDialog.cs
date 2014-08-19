using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Commons;

namespace EnterpriseServices.ManagementClient.Dialogs
{
    #region EditorDialog
    /// <summary>
    /// 编辑对话框基类。
    /// </summary>
    public partial class EditorDialog : BaseDialog
    {
        private EditorAction _action = EditorAction.Create;

        public EditorAction Action
        {
            get { return _action; }
            set { _action = value; }
        }

        public EditorDialog()
        {
            InitializeComponent();
        }
    }
    #endregion
}
