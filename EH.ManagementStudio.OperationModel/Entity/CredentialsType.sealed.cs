#region "CredentialsType"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-25 15:25:12
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Entity
 * 
 * ####     Type Name : CredentialsType
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Entity.CredentialsType
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
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing.Design;
using EnterpriseServices.ManagementClient.Operations.Entity.Editors;
using EnterpriseServices.SecurityService.API;
using EnterpriseServices.SecurityService.API.ParamsService;

namespace EnterpriseServices.ManagementClient.Operations.Entity
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Entity.CredentialsType</para>
    /// <para>
    /// 定义了用户证件类型。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable, DefaultProperty("Value")]
    public sealed class CredentialsType : ParameterBase
    {
        private const string CacheKey = "USER_CREDENTIALS_TYPE";

        #region Value
        /// <summary>
        /// 设置或获取参数值。
        /// </summary>
        [ReadOnly(true)]
        [DisplayName("证件类型")]
        [Description("用户证件类型")]
        //[Editor(typeof(ChooseCredentialsTypeEditor), typeof(UITypeEditor))]
        public override string Value
        {
            get
            {
                return base.Value;
            }
            set
            {
                base.Value = value;
            }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="CredentialsType" />对象实例。</para>
        /// </summary>
        public CredentialsType()
        {
            this.UniqueID = Guid.Empty;
            this.Value = string.Empty;
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="CredentialsType" />对象实例。</para>
        /// </summary>
        /// <param name="type"><see cref="UserCredentialsType"/>对象实例。</param>
        private CredentialsType(UserCredentialsType type)
        {
            this.TransferTo(type);
        }

        #endregion

        #region TransferTo
        /// <summary>
        /// 将<paramref name="obj"/>转换成<see cref="CredentialsType"/>对象实例。
        /// </summary>
        /// <param name="obj"><see cref="UserCredentialsType"/>对象实例。</param>
        private void TransferTo(UserCredentialsType obj)
        {
            this.UniqueID = obj.UniqueID;
            this.OpenID = obj.OpenID;
            this.Value = obj.Value;
        }
        #endregion

        #region GetAll
        /// <summary>
        /// 获取所有的用户证件类型。
        /// </summary>
        /// <returns></returns>
        static public List<CredentialsType> GetAll()
        {
            object data = LocaleCacheHelper.Get<List<CredentialsType>>(CacheKey);
            if (object.ReferenceEquals(data, null))
            {
                UserCredentialsType[] types = new ParametersApi().GetCredentialsTypes();
                List<CredentialsType> list = new List<CredentialsType>();
                foreach (UserCredentialsType item in types) list.Add(new CredentialsType(item));
                LocaleCacheHelper.Set(CacheKey, list);
                return list;
            }
            else
            {
                return data as List<CredentialsType>;
            }
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