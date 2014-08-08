#region "ApiResultBase"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-08 14:37:34
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.OpenAPIs.Models
 * 
 * ####     Type Name : ApiResultBase
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.OpenAPIs.Models.ApiResultBase
 * 
 * ####     Machine Name : GLCHQWYCWINW7
 * 
 * ####     UserName : GUOCOLAND/wangyucai
 * 
 * ####     CLR Version : 4.0.30319.18444
 * 
 * ####     Target Framework Version : 4.0
 */

#endregion

using System;

namespace EnterpriseServices.SecurityService.OpenAPIs.Models
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.OpenAPIs.Models.ApiResultBase</para>
    /// <para>
    /// 开放式API方法结果基类。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 4.0</para>
    /// </remarks>
    public abstract class ApiResultBase
    {
        private bool _successful;
        private string _version;
        private string _errorCode;
        private Type _resultType;
        private static readonly string VersionString = typeof(ApiResultBase).Assembly.GetName().Version.ToString();
        private string _renderMode;

        #region RenderMode
        /// <summary>
        /// 设置或获取呈现方式。
        /// </summary>
        public virtual string RenderMode
        {
            get { return _renderMode; }
            set { _renderMode = value; }
        }
        #endregion

        #region Successful
        /// <summary>
        /// 设置或获取API是否执行成功。
        /// </summary>
        public virtual bool Successful
        {
            get { return _successful; }
            set { _successful = value; }
        }
        #endregion

        #region Version
        /// <summary>
        /// 获取开放式API的版本号。
        /// </summary>
        public virtual string Version
        {
            get { return _version; }
            protected set { _version = value; }
        }
        #endregion

        #region ErrorCode
        /// <summary>
        /// 设置或获取当API执行失败时的异常代码。
        /// </summary>
        public virtual string ErrorCode
        {
            get { return _errorCode; }
            set { _errorCode = value; }
        }
        #endregion

        #region ResultType
        /// <summary>
        /// 设置或获取返回结果的类型。
        /// </summary>
        public virtual Type ResultType
        {
            get { return _resultType; }
            set { _resultType = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ApiResultBase" />对象实例。</para>
        /// </summary>
        /// <param name="renderMode">呈现方式。</param>
        protected ApiResultBase(string renderMode = "xml")
        {
            this.Version = VersionString;
            this.RenderMode = renderMode;
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