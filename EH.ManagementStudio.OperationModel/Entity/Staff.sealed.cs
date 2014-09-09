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
using System.Drawing.Design;
using EnterpriseServices.Framework.Commons;
using EnterpriseServices.ManagementClient.Operations.Entity.Editors;
using Person = EnterpriseServices.SecurityService.API.OrgService.Staff;

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
        private string _firstName = string.Empty;
        private string _lastName = string.Empty;
        private Gender _gender = Gender.Man;
        private DateTime _birthDate = DateTime.Now.AddYears(-22);
        private Place _birthPlace;
        private string _residenceAddress = string.Empty;
        private CredentialsType _credentialsType;
        private string _credentialsNO = string.Empty;
        private string _officePhoneNO = string.Empty;
        private string _mobileNO = string.Empty;
        private string _emailAddress = string.Empty;
        private Position _position;
        private DateTime _entryDate = DateTime.Now;
        private bool _onProbation = true;
        private int _probationLength = 6;
        private bool _autoBecomeFullMember = true;

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
            set
            {
                _firstName = value;
                this.Name = string.Format("{0} {1}", this.LastName, this.FirstName);
            }
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
            set
            {
                _lastName = value;
                this.Name = string.Format("{0} {1}", this.LastName, this.FirstName);
            }
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

        #region BirthPlace
        /// <summary>
        /// 设置或获取出生地。
        /// </summary>
        [Category("基本属性")]
        [DisplayName("出生地")]
        [Description("此用户的出生地")]
        [TypeConverter(typeof(ExpandableObjectConverter))]
        [Editor(typeof(ChoosePlaceEditor), typeof(UITypeEditor))]
        public Place BirthPlace
        {
            get { return _birthPlace; }
            set { _birthPlace = value; }
        }
        #endregion

        #region ResidenceAddress
        /// <summary>
        /// 设置或获取居住地址。
        /// </summary>
        [Category("基本属性")]
        [DisplayName("居住地址")]
        [Description("当前用户的居住地址")]
        public string ResidenceAddress
        {
            get { return _residenceAddress; }
            set { _residenceAddress = value; }
        }
        #endregion

        #region CredentialsType
        /// <summary>
        /// 设置或获取证件类型。
        /// </summary>
        [TypeConverter(typeof(ExpandableObjectConverter))]
        [Category("基本属性")]
        [Description("用户的证件类型")]
        [DisplayName("证件类型")]
        [Editor(typeof(ChooseCredentialsTypeEditor), typeof(UITypeEditor))]
        public CredentialsType CredentialsType
        {
            get { return _credentialsType; }
            set { _credentialsType = value; }
        }
        #endregion

        #region CredentialsNO
        /// <summary>
        /// 设置或获取证件号码。
        /// </summary>
        [Category("基本属性")]
        [Description("证件号码")]
        [DisplayName("证件号码")]
        public string CredentialsNO
        {
            get { return _credentialsNO; }
            set { _credentialsNO = value; }
        }
        #endregion

        #region OfficePhoneNO
        /// <summary>
        /// 设置或获取办公电话号码。
        /// </summary>
        [Category("扩展属性")]
        [Description("办公电话号码")]
        [DisplayName("办公电话号码")]
        public string OfficePhoneNO
        {
            get { return _officePhoneNO; }
            set { _officePhoneNO = value; }
        }
        #endregion

        #region MobileNO
        /// <summary>
        /// 设置或获取移动电话号码。
        /// </summary>
        [Category("扩展属性")]
        [Description("移动电话号码")]
        [DisplayName("移动电话号码")]
        public string MobileNO
        {
            get { return _mobileNO; }
            set { _mobileNO = value; }
        }
        #endregion

        #region EmailAddress
        /// <summary>
        /// 设置或获取电子邮件地址。
        /// </summary>
        [Category("扩展属性")]
        [Description("电子邮件地址")]
        [DisplayName("电邮地址")]
        public string EmailAddress
        {
            get { return _emailAddress; }
            set { _emailAddress = value; }
        }
        #endregion

        #region Position
        /// <summary>
        /// 设置或获取当前用户的职位。
        /// </summary>
        [Browsable(false)]
        public Position Position
        {
            get { return _position; }
            set { _position = value; }
        }
        #endregion

        #region EntryDate
        /// <summary>
        /// 设置或获取入职日期。
        /// </summary>
        [Category("入职信息")]
        [Description("设置或获取入职日期"), DisplayName("入职日期"), Editor(typeof(ChooseDateEditor), typeof(UITypeEditor))]
        public DateTime EntryDate
        {
            get { return _entryDate; }
            set { _entryDate = value; }
        }
        #endregion

        #region OnProbation
        /// <summary>
        /// 设置或获取是否处于试用期。
        /// </summary>
        [Category("入职信息"), Description("设置或获取是否处于试用期"), DisplayName("是否试用")]
        public bool OnProbation
        {
            get { return _onProbation; }
            set { _onProbation = value; }
        }
        #endregion

        #region ProbationLength
        /// <summary>
        /// 设置或获取试用期长度。
        /// </summary>
        [Category("入职信息"), Description("设置或获取试用期长度"), DisplayName("试用期长度(月)")]
        public int ProbationLength
        {
            get { return _probationLength; }
            set { _probationLength = value; }
        }
        #endregion

        #region AutoBecomeFullMember
        /// <summary>
        /// 设置或获取是否自动转正。
        /// </summary>
        [Category("入职信息"), Description("设置或获取是否自动转正"), DisplayName("自动转正")]
        public bool AutoBecomeFullMember
        {
            get { return _autoBecomeFullMember; }
            set { _autoBecomeFullMember = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Staff" />对象实例。</para>
        /// </summary>
        public Staff()
        {
            this.ProbationLength = 6;
        }

        #endregion

        #region Name
        /// <summary>
        /// 设置或获取姓名。
        /// </summary>
        [ReadOnly(true)]
        [DisplayName("姓名")]
        [Description("设置或获取姓名")]
        [Category("基本属性")]
        public override string Name
        {
            get
            {
                return base.Name;
            }
            set
            {
                base.Name = value;
            }
        }
        #endregion

        #region TransferTo
        /// <summary>
        /// 执行类型转换。
        /// </summary>
        /// <param name="person"></param>
        /// <returns></returns>
        static internal Person TransferTo(Staff person)
        {
            return new Person()
            {
                AutoBecomeFullMember = person.AutoBecomeFullMember,
                BirthDate = person.BirthDate,
                BirthPlace = new SecurityService.API.OrgService.PlaceRegion() { UniqueID = person.BirthPlace.UniqueID, Value = person.BirthPlace.Value },
                Category = SecurityService.API.OrgService.OrganizationObjectCategory.Staff,
                EmailAddress = person.EmailAddress,
                Enabled = person.Enabled,
                EntryDate = person.EntryDate,
                FirstName = person.FirstName,
                FirstPositionID = person.Position.UniqueID,
                Gender = person.Gender == Gender.Man ? EnterpriseServices.SecurityService.API.OrgService.Gender.Man : SecurityService.API.OrgService.Gender.Woman,
                IsProbation = person.OnProbation,
                LastName = person.LastName,
                LogicalRemovedState = person.HasRemoved,
                MobilePhoneNO = person.MobileNO,
                Name = string.Format("{0} {1}", person.LastName, person.FirstName),
                OfficePhoneNO = person.OfficePhoneNO,
                ParentID = person.Position.UniqueID,
                ProbationLength = person.ProbationLength,
                ResidentialAddress = person.ResidenceAddress,
                UniqueID = person.UniqueID,
                OpenID = person.OpenID,
                UserCredentialsNO = person.CredentialsNO,
                UserCredentialsType = new SecurityService.API.OrgService.UserCredentialsType() { UniqueID = person.CredentialsType.UniqueID, Value = person.CredentialsType.Value },
                Visible = person.Visible
            };
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