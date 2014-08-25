using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace EnterpriseServices.ManagementClient.Operations.Entity.Editors
{
    #region ChooseDateDialog
    /// <summary>
    /// 日期选择对话框。
    /// </summary>
    public partial class ChooseDateDialog : Form
    {
        private DateTime _selectedDate;


        #region SelectedDate
        /// <summary>
        /// 设置当前选中的对话框。
        /// </summary>
        public DateTime SelectedDate
        {
            get { return _selectedDate; }
            set { _selectedDate = value; }
        }
        #endregion

        public ChooseDateDialog()
        {
            this.SelectedDate = DateTime.Now;
            InitializeComponent();
        }

        #region ChooseDateDialog_Load
        private void ChooseDateDialog_Load(object sender, EventArgs e)
        {
            this.ctrlCalendar.SelectionStart = this.SelectedDate;
        }
        #endregion

        #region OkButtonClick
        /// <summary>
        /// 确定按钮单击事件处理函数。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OkButtonClick(object sender, EventArgs e)
        {
            this.SelectedDate = this.ctrlCalendar.SelectionStart;
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
        #endregion
    }
    #endregion
}
