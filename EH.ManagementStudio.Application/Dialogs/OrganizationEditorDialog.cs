using System;
using EnterpriseServices.ManagementClient.Operations.Entity;

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
                return new Organization();
            }
            return null;
        }
        #endregion
    }
}
