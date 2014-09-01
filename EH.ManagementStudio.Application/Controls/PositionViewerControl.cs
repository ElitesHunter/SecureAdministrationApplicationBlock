﻿using System;
using System.Windows.Forms;
using EnterpriseServices.ManagementClient.Dialogs;
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.ManagementClient.Operations.Organizations;

namespace EnterpriseServices.ManagementClient.Controls
{
    #region PositionViewerControl
    /// <summary>
    /// 职位信息查看控件。
    /// </summary>
    public partial class PositionViewerControl : BaseControl
    {
        private Position _currentPosition;
        private int _isPrincipalState;
        private Guid _superiorPositionID;
        private bool _forceUpdate;

        #region CurrentPosition
        private Position CurrentPosition
        {
            get { return _currentPosition; }
            set { _currentPosition = value; }
        }
        #endregion

        #region IsPrincipalState
        /// <summary>
        /// 
        /// </summary>
        public int IsPrincipalState
        {
            get { return _isPrincipalState; }
            set { _isPrincipalState = value; }
        }
        #endregion

        #region SuperiorPositionID
        public Guid SuperiorPositionID
        {
            get { return _superiorPositionID; }
            set { _superiorPositionID = value; }
        }
        #endregion

        #region ForceUpdate
        /// <summary>
        /// 设置或获取是否强制更新职位的附加信息。
        /// </summary>
        private bool ForceUpdate
        {
            get { return _forceUpdate; }
            set { _forceUpdate = value; }
        }
        #endregion

        public PositionViewerControl()
        {
            InitializeComponent();
            this.OnBoundTreeNodeChanged += new EventHandler(BoundTreeNodeChanged);
            this.ForceUpdate = false;
        }

        #region BoundTreeNodeChanged
        void BoundTreeNodeChanged(object sender, EventArgs e)
        {
            Position pos = this.BoundTreeNode.Tag as Position;
            this.SetDescription(pos.Name);
            this.CtrlPositionPropertyGrid.SelectedObject = pos;
            this.CtrlVirtualPathDescription.Text = pos.VirtualPath;
            this.CurrentPosition = pos;
        }
        #endregion

        #region InitializeThis
        /// <summary>
        /// 初始化此控件。
        /// </summary>
        protected override void InitializeThis()
        {
            base.InitializeThis();
            Position pos = (this.Tag as PositionTreeNode).Tag as Position;
            this.CurrentPosition = pos;
            this.SetDescription(pos.Name);
            this.CtrlVirtualPathDescription.Text = pos.VirtualPath;
            this.CtrlPositionPropertyGrid.SelectedObject = pos;
        }
        #endregion

        #region GetDescriptionInTabContainer
        /// <summary>
        /// 获取在分页卡中的描述信息。
        /// </summary>
        /// <returns></returns>
        public override string GetDescriptionInTabContainer()
        {
            return "组织机构(职位信息)";
        }
        #endregion

        #region ControlLoad
        /// <summary>
        /// 控件初次加载事件处理函数。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ControlLoad(object sender, EventArgs e)
        {

        }
        #endregion

        #region AdvancedButtonClick
        /// <summary>
        /// 高级按钮单击事件处理函数。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void AdvancedButtonClick(object sender, EventArgs e)
        {
            using (PositionAdvancedDialog dialog = new PositionAdvancedDialog() { PositionID = this.CurrentPosition.UniqueID })
            {
                if (dialog.ShowDialog() == DialogResult.OK)
                {
                    this.IsPrincipalState = dialog.PrincipalState;
                    this.SuperiorPositionID = dialog.SuperiorID;
                    this.ForceUpdate = true;
                }
            }
        }
        #endregion

        #region SaveButtonClick
        private void SaveButtonClick(object sender, EventArgs e)
        {
            Position p = this.CtrlPositionPropertyGrid.SelectedObject as Position;
            new PositionHandler().Update(p, this.ForceUpdate, this.IsPrincipalState.Equals(2) ? true : false, this.SuperiorPositionID);
        }
        #endregion
    }
    #endregion
}
