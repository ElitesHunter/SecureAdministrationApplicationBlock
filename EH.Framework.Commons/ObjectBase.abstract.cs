#region "ObjectBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-07-31 11:45:46
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons
 * 
 * ####     Type Name : ObjectBase
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.ObjectBase
 * 
 * ####     Machine Name : GLCHQWYCWINW7
 * 
 * ####     UserName : GUOCOLAND/wangyucai
 * 
 * ####     CLR Version : 4.0.30319.18444
 * 
 * ####     Target Framework Version : 3.5
 */

#endregion

using System;

namespace EnterpriseServices.Framework.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.ObjectBase</para>
    /// <para>
    /// 定义了系统所需的对象基类。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    public abstract class ObjectBase : _Object, IObjectBase
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ObjectBase" />对象实例。</para>
        /// </summary>
        protected ObjectBase()
            : base()
        {
            this.SetUniqueID(Guid.Empty);
            this.SetEnabledState(true);
            this.SetOpenID(string.Empty);
            this.SetRemoveState(false);
            this.SetVisibleState(true);
        }

        #endregion

        #region Comments
        private string _comments;

        /// <summary>
        /// 设置或获取此对象的备注信息。
        /// </summary>
        public virtual string Comments
        {
            get
            {
                return this._comments;
            }
            set
            {
                this._comments = value;
            }
        }
        #endregion

        #region UniqueID
        private Guid _uniqueID;

        /// <summary>
        /// 获取对象的唯一标识。
        /// </summary>
        public virtual Guid UniqueID
        {
            get { return this._uniqueID; }
        }
        #endregion

        #region Enabled
        private bool _enabled;

        /// <summary>
        /// 获取此对象是否启用。
        /// </summary>
        public virtual bool Enabled
        {
            get { return this._enabled; }
        }
        #endregion

        #region OpenID
        private string _openID;

        /// <summary>
        /// 获取此对象的对外公开的唯一标识。
        /// </summary>
        public virtual string OpenID
        {
            get { return this._openID; }
        }
        #endregion

        #region IsRemoved
        private bool _isRemoved;

        /// <summary>
        /// 获取此对象是否被逻辑移除。
        /// </summary>
        public virtual bool IsRemoved
        {
            get { return this._isRemoved; }
        }
        #endregion

        #region Visible
        private bool _visible;

        /// <summary>
        /// 获取此对象是否可见。
        /// </summary>
        public virtual bool Visible
        {
            get { return this._visible; }
        }
        #endregion

        #region SetUniqueID
        /// <summary>
        /// 设置此对象的唯一标识。
        /// </summary>
        /// <param name="id"><see cref="Guid"/>型的唯一标识。</param>
        protected virtual void SetUniqueID(Guid id)
        {
            this._uniqueID = id;
        }
        #endregion

        #region SetEnabledState
        /// <summary>
        /// 设置对象的启用状态。
        /// </summary>
        /// <param name="enabled">是否启用。</param>
        protected virtual void SetEnabledState(bool enabled)
        {
            this._enabled = enabled;
        }
        #endregion

        #region SetOpenID
        /// <summary>
        /// 设置此对象的开放唯一标识。
        /// </summary>
        /// <param name="id">开放标识。</param>
        protected virtual void SetOpenID(string id)
        {
            this._openID = id;
        }
        #endregion

        #region SetRemoveState
        /// <summary>
        /// 设置逻辑移除状态。
        /// </summary>
        /// <param name="isRemoved">是否被逻辑移除。</param>
        protected virtual void SetRemoveState(bool isRemoved)
        {
            this._isRemoved = isRemoved;
        }
        #endregion

        #region SetVisibleState
        /// <summary>
        /// 设置可视化状态。
        /// </summary>
        /// <param name="visible">是否可见。</param>
        protected virtual void SetVisibleState(bool visible)
        {
            this._visible = visible;
        }
        #endregion
    }
}

#region README

/*
 * ####     ©2014 Wang Yucai
 * 
 * ####     Contact me
 *                  
 *                  E-mail : Masterduner@Yeah.net
 *                  Mobile : 13621384677
 *                  QQ : 180261899
 */

#endregion