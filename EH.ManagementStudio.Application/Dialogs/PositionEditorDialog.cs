using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Operations.Entity;

namespace EnterpriseServices.ManagementClient.Dialogs
{
    #region PositionEditorDialog
    /// <summary>
    /// 职位编辑对话框。
    /// </summary>
    public partial class PositionEditorDialog : BaseDialog
    {
        private Position _positionObject;

        #region PositionObject
        /// <summary>
        /// 设置或获取职位对象。
        /// </summary>
        public Position PositionObject
        {
            get { return _positionObject; }
            set { _positionObject = value; }
        }
        #endregion

        public PositionEditorDialog()
        {
            InitializeComponent();
        }

        #region DialogLoad
        /// <summary>
        /// 对话框初次记载事件。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void DialogLoad(object sender, EventArgs e)
        {
            this.CtrlPositionPropertyGrid.SelectedObject = this.PositionObject;
        }
        #endregion
    }
    #endregion
}
