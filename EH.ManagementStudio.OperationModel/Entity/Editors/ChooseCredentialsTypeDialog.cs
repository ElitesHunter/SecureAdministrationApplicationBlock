using System;
using System.Collections.Generic;
using System.Windows.Forms;

namespace EnterpriseServices.ManagementClient.Operations.Entity.Editors
{
    #region ChooseCredentialsTypeDialog
    public partial class ChooseCredentialsTypeDialog : Form
    {
        private CredentialsType _selectedCredentialsType;

        #region SelectedCredentialsType
        /// <summary>
        /// 设置或获取选中的用户证件类型。
        /// </summary>
        public CredentialsType SelectedCredentialsType
        {
            get { return _selectedCredentialsType; }
            set { _selectedCredentialsType = value; }
        }
        #endregion

        public ChooseCredentialsTypeDialog()
        {
            InitializeComponent();
        }

        #region DialogLoad
        /// <summary>
        /// 对话框初次加载事件处理函数。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void DialogLoad(object sender, EventArgs e)
        {
            List<CredentialsType> types = CredentialsType.GetAll();
            if (types.Count > 0)
            {
                foreach (CredentialsType item in types)
                    this.ctrlCredentialsTypeList.Items.Add(item);
                if (!object.ReferenceEquals(this.SelectedCredentialsType, null))
                    this.ctrlCredentialsTypeList.SelectedItem = this.SelectedCredentialsType;
                else
                    this.ctrlCredentialsTypeList.SelectedItem = types[0];
            }
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
            this.SelectedCredentialsType = this.ctrlCredentialsTypeList.SelectedItem as CredentialsType;
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
        #endregion
    }
    #endregion
}
