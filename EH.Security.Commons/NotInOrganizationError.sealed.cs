#region "NotInOrganizationError"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-04 10:07:45
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : NotInOrganizationError
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.NotInOrganizationError
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
using EnterpriseServices.Framework.Commons;
using EnterpriseServices.SecurityService.Framework.Resources;

namespace EnterpriseServices.SecurityService.Framework.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.NotInOrganizationError</para>
    /// <para>
    /// 当当前的用户不在指定的组织机构中时，抛出此异常。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    [ApplicationBlockCode("SECURECTRL")]
    [ErrorCode("ERROR::00000011")]
    public sealed class NotInOrganizationError : Error
    {
        private string _organizationName;
        private string _organizationVirtualName;

        #region OrganizationName
        /// <summary>
        /// 获取组织机构名称。
        /// </summary>
        public string OrganizationName
        {
            get { return _organizationName; }
            private set { _organizationName = value; }
        }
        #endregion

        #region OrganizationVirtualName
        /// <summary>
        /// 获取组织机构的虚名称。
        /// </summary>
        public string OrganizationVirtualName
        {
            get { return _organizationVirtualName; }
            private set { _organizationVirtualName = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="NotInOrganizationError" />对象实例。</para>
        /// </summary>
        /// <param name="orgName">组织机构名称。</param>
        /// <param name="orgVirtualName">组织机构虚名称。</param>
        /// <param name="innerException">引发了此次异常的<see cref="Exception"/>镀锡iangshil。</param>
        public NotInOrganizationError(string orgName, string orgVirtualName, Exception innerException)
            : base(ErrorMessages.NotInOrganizationError, innerException)
        {
            this.OrganizationName = orgName;
            this.OrganizationVirtualName = orgVirtualName;
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="NotInOrganizationError" />对象实例。</para>
        /// </summary>
        /// <param name="orgName">组织机构名称。</param>
        /// <param name="orgVirtualName">组织机构虚名称。</param>
        public NotInOrganizationError(string orgName, string orgVirtualName)
            : this(orgName, orgVirtualName, null)
        {
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="NotInOrganizationError" />对象实例。</para>
        /// </summary>
        public NotInOrganizationError()
            : this(string.Empty, string.Empty)
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