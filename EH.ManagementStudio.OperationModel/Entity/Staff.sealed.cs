#region "Staff"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-25 13:28:31
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Entity
 * 
 * ####     Type Name : Staff
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Entity.Staff
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
using System.ComponentModel;
using EnterpriseServices.Framework.Commons;
using EnterpriseServices.ManagementClient.Operations.Entity.Editors;
using System.Drawing.Design;

namespace EnterpriseServices.ManagementClient.Operations.Entity
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Entity.Staff</para>
    /// <para>
    /// 定义了人员对象实例。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable, DefaultProperty("FirstName")]
    public sealed class Staff : OrganizationBase
    {
        private string _firstName;
        private string _lastName;
        private Gender _gender;
        private DateTime _birthDate;

        #region FirstName
        /// <summary>
        /// 设置或获取此人员的名字。
        /// </summary>
        [Category("基本属性")]
        [Description("此用户的名字")]
        [DisplayName("名字")]
        public string FirstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }
        #endregion

        #region LastName
        /// <summary>
        /// 设置或获取此人员的姓氏。
        /// </summary>
        [Category("基本属性")]
        [Description("此用户的姓氏")]
        [DisplayName("姓氏")]
        public string LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }
        #endregion

        #region Gender
        /// <summary>
        /// 设置或获取此用户的性别。
        /// </summary>
        [Category("基本属性")]
        [Description("此用户的性别")]
        [DisplayName("性别")]
        public Gender Gender
        {
            get { return _gender; }
            set { _gender = value; }
        }
        #endregion

        #region BirthDate
        /// <summary>
        /// 设置或获取出生日期。
        /// </summary>
        [Category("基本属性"), Description("当前用户的出生日期"), DisplayName("出生日期")]
        [Editor(typeof(ChooseDateEditor), typeof(UITypeEditor))]
        public DateTime BirthDate
        {
            get { return _birthDate; }
            set { _birthDate = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Staff" />对象实例。</para>
        /// </summary>
        public Staff()
        {
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