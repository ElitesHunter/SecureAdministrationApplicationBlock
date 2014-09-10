using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.ManagementClient.Dialogs;

namespace EnterpriseServices.ManagementClient.Controls
{
    public partial class StaffViewerControl : BaseControl
    {
        private Staff _person;

        #region Person
        public Staff Person
        {
            get { return _person; }
            set { _person = value; }
        }
        #endregion

        public StaffViewerControl()
        {
            InitializeComponent();
            this.OnBoundTreeNodeChanged += new EventHandler(BoundTreeNodeChanged);
        }

        void BoundTreeNodeChanged(object sender, EventArgs e)
        {
            this.InitializeThis();
        }

        #region GetDescriptionInTabContainer
        public override string GetDescriptionInTabContainer()
        {
            return "组织机构(人员)";
        }
        #endregion

        #region InitializeThis
        protected override void InitializeThis()
        {
            this.Person = this.BoundTreeNode.Tag as Staff;
            this.SetDescription(this.Person.Name);
            this.CtrlVPathDescriptor.Text = this.Person.VirtualPath;
            this.CtrlStaffPropertyGrid.SelectedObject = this.Person;
        }
        #endregion

        #region AdvanceButtonClick
        private void AdvanceButtonClick(object sender, EventArgs e)
        {
            using (AccountEditorDialog dialog = new AccountEditorDialog() { OpenID = this.Person.OpenID })
            {
                if (dialog.ShowDialog() == DialogResult.OK)
                { }
            }
        }
        #endregion
    }
}
