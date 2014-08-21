using System;
using System.Windows.Forms;

namespace EnterpriseServices.ManagementClient.Controls
{
    #region BaseControl
    public partial class BaseControl : UserControl
    {
        private TreeNode _boundTreeNode;
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

        #region GetDescriptionInTabContainer
        /// <summary>
        /// 获取控件在分页卡中的描述信息。
        /// </summary>
        /// <returns>描述信息。</returns>
        public virtual string GetDescriptionInTabContainer()
        {
            return string.Empty;
        }
        #endregion

        #region BoundTreeNode
        /// <summary>
        /// 设置或获取此控件绑定的树控件。
        /// </summary>
        public TreeNode BoundTreeNode
        {
            get { return _boundTreeNode; }
            set
            {
                _boundTreeNode = value;
                if (!object.ReferenceEquals(this.OnBoundTreeNodeChanged, null))
                {
                    this.OnBoundTreeNodeChanged(this, new EventArgs());
                }
            }
        }
        #endregion

        /// <summary>
        /// 当绑定的树节点发生变更时触发。
        /// </summary>
        public event EventHandler OnBoundTreeNodeChanged;
    }
    #endregion
}
