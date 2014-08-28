#region "ParameterDeclaration"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-25 14:12:33
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel
 * 
 * ####     Type Name : ParameterDeclaration
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.ParameterDeclaration
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
using System.Data;
using EnterpriseServices.Framework.Commons.Data;

namespace EnterpriseServices.SecurityService.Framework.OperationModel
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.ParameterDeclaration</para>
    /// <para>
    /// 定义了系统参数的基本方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable]
    public abstract class ParameterDeclaration : DbHelper
    {
        private Guid _uniqueID;
        private string _value;
        private string _openID;
        private bool _enabled;

        #region UniqueID
        /// <summary>
        /// 设置或获取唯一标识。
        /// </summary>
        public virtual Guid UniqueID
        {
            get { return _uniqueID; }
            set { _uniqueID = value; }
        }
        #endregion

        #region Value
        /// <summary>
        /// 设置或获取参数值。
        /// </summary>
        public virtual string Value
        {
            get { return _value; }
            set { _value = value; }
        }
        #endregion

        #region OpenID
        /// <summary>
        /// 设置或获取此参数定义的开放标识。
        /// </summary>
        public virtual string OpenID
        {
            get { return _openID; }
            set { _openID = value; }
        }
        #endregion

        #region Enabled
        /// <summary>
        /// 设置或获取是否启用。
        /// </summary>
        public virtual bool Enabled
        {
            get { return _enabled; }
            set { _enabled = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ParameterDeclaration" />对象实例。</para>
        /// </summary>
        protected ParameterDeclaration()
            : base(DbConnectionString.Current)
        {
        }

        #endregion

        #region Initialize
        /// <summary>
        /// 初始化此对象。
        /// </summary>
        /// <param name="data">数据。</param>
        protected abstract void Initialize(DataRow data);
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