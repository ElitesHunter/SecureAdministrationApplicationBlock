using System;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Commons;
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.ManagementClient.Operations.Organizations;

namespace EnterpriseServices.ManagementClient.Dialogs
{
    public partial class OrganizationEditorDialog : EditorDialog
    {
        private Organization _parentOrganizationObject;

        #region ParentOrganizationObject
        /// <summary>
        /// 设置或获取关联的父级组织机构对象。
        /// </summary>
        public Organization ParentOrganizationObject
        {
            get { return _parentOrganizationObject; }
            set { _parentOrganizationObject = value; }
        }
        #endregion

        public OrganizationEditorDialog()
        {
            InitializeComponent();
        }

        #region OrganizationEditorDialog_Load
        private void OrganizationEditorDialog_Load(object sender, EventArgs e)
        {
            this.ctrlOrganizationProperties.SelectedObject = this.CreateOrganizationInstance();
        }
        #endregion

        #region CreateOrganizationInstance
        /// <summary>
        /// 创建组织机构对象实例。
        /// </summary>
        /// <returns></returns>
        private Organization CreateOrganizationInstance()
        {
            if (this.Action == Commons.EditorAction.Create)
            {
                this.ctrlOrganizationProperties.Enabled = true;
                this.ctrlOKButton.Enabled = true;
                return new Organization() { ParentUniqueID = (object.ReferenceEquals(_parentOrganizationObject, null) ? Guid.Empty : _parentOrganizationObject.UniqueID) };
            }
            return null;
        }
        #endregion

        #region HandleOkButtonClickEvent
        /// <summary>
        /// 处理确定按钮单击事件。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void HandleOkButtonClickEvent(object sender, EventArgs e)
        {
            if (this.Action == Commons.EditorAction.Create || this.Action == Commons.EditorAction.Modify)
            {
                Organization org = this.ctrlOrganizationProperties.SelectedObject as Organization;
                if (!string.IsNullOrEmpty(org.Name))
                {
                    new OrganizationHandler().Create(org);
                    this.DialogResult = DialogResult.OK;
                    this.Close();
                }
                else DialogMethods.Prompt("组织机构名称不可以为空！");
            }
            else
            {
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
        }
        #endregion
    }
}
