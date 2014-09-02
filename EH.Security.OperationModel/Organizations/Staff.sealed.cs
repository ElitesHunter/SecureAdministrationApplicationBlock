#region "Staff"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-09-02 14:49:00
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel.Organizations
 * 
 * ####     Type Name : Staff
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.Organizations.Staff
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
using EnterpriseServices.Framework.Commons;

namespace EnterpriseServices.SecurityService.Framework.OperationModel.Organizations
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.Organizations.Staff</para>
    /// <para>
    /// 人员信息实体。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    public sealed class Staff : OrganizationObjectBase
    {
        private string _lastName;
        private string _firstName;
        private Guid _firstPositionID;
        private Gender _gender;
        private DateTime _birthDate;
        private PlaceRegion _birthPlace;
        private string _residentialAddress;
        private UserCredentialsType _userCredentialsType;
        private string _userCredentialsNO;
        private Guid _firstOrganizationID;
        private string _officePhoneNO;
        private string _mobilePhoneNO;
        private string _emailAddress;
        private DateTime _entryDate;
        private bool _isProbation;
        private int _probationLength;
        private bool _autoBecomeFullMember;

        #region LastName
        /// <summary>
        /// 设置或获取人员的形式。
        /// </summary>
        public string LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }
        #endregion

        #region FirstName
        /// <summary>
        /// 设置或获取人员的名字。
        /// </summary>
        public string FirstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }
        #endregion

        #region FirstPositionID
        /// <summary>
        /// 设置或获取首要职位标识。
        /// </summary>
        public Guid FirstPositionID
        {
            get { return _firstPositionID; }
            set
            {
                _firstPositionID = value;
                base.ParentID = value;
            }
        }
        #endregion

        #region Gender
        /// <summary>
        /// 设置或获取人员的性别。
        /// </summary>
        public Gender Gender
        {
            get { return _gender; }
            set { _gender = value; }
        }
        #endregion

        #region BirthDate
        /// <summary>
        /// 设置或获取人员的出生日期。
        /// </summary>
        public DateTime BirthDate
        {
            get { return _birthDate; }
            set { _birthDate = value; }
        }
        #endregion

        #region BirthPlace
        /// <summary>
        /// 设置或获取人员的出生地。
        /// </summary>
        public PlaceRegion BirthPlace
        {
            get { return _birthPlace; }
            set { _birthPlace = value; }
        }
        #endregion

        #region ResidentialAddress
        /// <summary>
        /// 设置或获取人员的居住地址。
        /// </summary>
        public string ResidentialAddress
        {
            get { return _residentialAddress; }
            set { _residentialAddress = value; }
        }
        #endregion

        #region UserCredentialsType
        /// <summary>
        /// 设置或获取用户所持有的证件类型。
        /// </summary>
        public UserCredentialsType UserCredentialsType
        {
            get { return _userCredentialsType; }
            set { _userCredentialsType = value; }
        }
        #endregion

        #region UserCredentialsNO
        /// <summary>
        /// 设置或获取用户所持有的证件编号。
        /// </summary>
        public string UserCredentialsNO
        {
            get { return _userCredentialsNO; }
            set { _userCredentialsNO = value; }
        }
        #endregion

        #region FirstOrganizationID
        /// <summary>
        /// 设置或获取人员首选就职单位标识。
        /// </summary>
        public Guid FirstOrganizationID
        {
            get { return _firstOrganizationID; }
            set { _firstOrganizationID = value; }
        }
        #endregion

        #region OfficePhoneNO
        /// <summary>
        /// 设置或获取办公电话号码。
        /// </summary>
        public string OfficePhoneNO
        {
            get { return _officePhoneNO; }
            set { _officePhoneNO = value; }
        }
        #endregion

        #region MobilePhoneNO
        /// <summary>
        /// 设置或获取移动电话号码。
        /// </summary>
        public string MobilePhoneNO
        {
            get { return _mobilePhoneNO; }
            set { _mobilePhoneNO = value; }
        }
        #endregion

        #region EmailAddress
        /// <summary>
        /// 设置或获取人员的电子邮件地址。
        /// </summary>
        public string EmailAddress
        {
            get { return _emailAddress; }
            set { _emailAddress = value; }
        }
        #endregion

        #region EntryDate
        /// <summary>
        /// 设置或获取入职日期。
        /// </summary>
        public DateTime EntryDate
        {
            get { return _entryDate; }
            set { _entryDate = value; }
        }
        #endregion

        #region IsProbation
        /// <summary>
        /// 设置或获取人员是否处于试用期。
        /// </summary>
        public bool IsProbation
        {
            get { return _isProbation; }
            set { _isProbation = value; }
        }
        #endregion

        #region ProbationLength
        /// <summary>
        /// 设置或获取试用期长度。
        /// </summary>
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
        }

        #endregion

        #region InitializeInstance
        /// <summary>
        /// 初始化人员对象实例。
        /// </summary>
        /// <param name="data">人员信息数据。</param>
        protected override void InitializeInstance(DataRow data)
        {
            base.InitializeInstance(data);
            this.LastName = base.IsDBNull(data["StaffLastName"]) ? string.Empty : data["StaffLastName"].ToString();
            this.FirstName = base.IsDBNull(data["StaffFirstName"]) ? string.Empty : data["StaffFirstName"].ToString();
            this.FirstOrganizationID = (Guid)data["StaffOwnedOrganizationID"];
            this.Gender = (EnterpriseServices.Framework.Commons.Gender)Enum.Parse(typeof(Gender), data["StaffGender"].ToString().ToUpper());
            this.BirthDate = base.IsDBNull(data["StaffBirthDay"]) ? DateTime.Now : (DateTime)data["StaffBirthDay"];
            this.BirthPlace = new PlaceRegion()
            {
                UniqueID = base.IsDBNull(data["StaffBirthPlaceRegionID"]) ? Guid.Empty : (Guid)data["StaffBirthPlaceRegionID"],
                Value = base.IsDBNull(data["StaffBirthPlaceRegionName"]) ? string.Empty : data["StaffBirthPlaceRegionName"].ToString()
            };
            this.ResidentialAddress = base.IsDBNull(data["StaffResidenceAddress"]) ? string.Empty : data["StaffResidenceAddress"].ToString();
            this.UserCredentialsType = new UserCredentialsType()
            {
                UniqueID = base.IsDBNull(data["StaffCredentialsType"]) ? Guid.Empty : (Guid)data["StaffCredentialsType"],
                Value = base.IsDBNull(data["StaffCredentialsTypeName"]) ? string.Empty : data["StaffCredentialsTypeName"].ToString()
            };
            this.UserCredentialsNO = base.IsDBNull(data["StaffCredentialsNO"]) ? string.Empty : data["StaffCredentialsNO"].ToString();
            this.FirstPositionID = (Guid)data["StaffPosition"];
            this.OfficePhoneNO = base.IsDBNull(data["StaffOfficePhone"]) ? string.Empty : data["StaffOfficePhone"].ToString();
            this.MobilePhoneNO = base.IsDBNull(data["StaffMobile"]) ? string.Empty : data["StaffMobile"].ToString();
            this.EmailAddress = base.IsDBNull(data["StaffEmail"]) ? string.Empty : data["StaffEmail"].ToString();
            this.EntryDate = (DateTime)data["StaffInductionDate"];
            this.ProbationLength = (int)data["StaffProbationLength"];
            this.AutoBecomeFullMember = data["StaffProbationLength"].ToString().TransferFromDB();
            this.IsProbation = data["StaffProbationaryState"].ToString().TransferFromDB();
            DateTime probationDeadline = this.EntryDate.AddMonths(this.ProbationLength);
            if (this.AutoBecomeFullMember && (probationDeadline - DateTime.Now).TotalDays > 0 && this.Enabled && !this.LogicalRemovedState)
                this.IsProbation = false;
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