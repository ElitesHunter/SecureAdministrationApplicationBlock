using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace EnterpriseServices.ManagementClient.Operations.Entity.Editors
{
    #region ChoosePlaceDialog
    /// <summary>
    /// 选择地区区域对话框。
    /// </summary>
    public partial class ChoosePlaceDialog : Form
    {
        private Place _selectedPlace;

        #region SelectedPlace
        /// <summary>
        /// 获取选中的地区区域。
        /// </summary>
        public Place SelectedPlace
        {
            get { return _selectedPlace; }
            private set { _selectedPlace = value; }
        }
        #endregion

        public ChoosePlaceDialog()
        {
            InitializeComponent();
        }

        #region DialogLoad
        /// <summary>
        /// 对话框初始化事件处理函数。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void DialogLoad(object sender, EventArgs e)
        {
            List<Place> places = Place.GetAll();
            this.LoadTreeNodes(places, Guid.Empty, this.ctrlPlaceTree.Nodes);
        }
        #endregion

        #region LoadTreeNodes
        /// <summary>
        /// 加载树节点。
        /// </summary>
        /// <param name="places"></param>
        /// <param name="parentID"></param>
        /// <param name="parents"></param>
        private void LoadTreeNodes(List<Place> places, Guid parentID, TreeNodeCollection parents)
        {
            IEnumerable<Place> enumerator = from item in places
                                            where item.ParentID.Equals(parentID)
                                            select item;
            foreach (Place item in enumerator)
            {
                TreeNode node = new TreeNode() { Text = item.Value, Tag = item };
                this.LoadTreeNodes(places, item.UniqueID, node.Nodes);
                parents.Add(node);
            }
        }
        #endregion

        #region OkButtonClick
        /// <summary>
        /// 确定按钮单击事件。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void OkButtonClick(object sender, EventArgs e)
        {
            if (!object.ReferenceEquals(this.ctrlPlaceTree.SelectedNode, null))
            {
                this.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            }
            else
            {
                this.SelectedPlace = this.ctrlPlaceTree.SelectedNode.Tag as Place;
                this.DialogResult = System.Windows.Forms.DialogResult.OK;
            }
            this.Close();
        }
        #endregion
    }
    #endregion
}
