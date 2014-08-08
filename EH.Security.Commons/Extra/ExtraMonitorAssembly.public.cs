#region "ExtraMonitorAssembly"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-05 14:49:23
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons.Extra
 * 
 * ####     Type Name : ExtraMonitorAssembly
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.Extra.ExtraMonitorAssembly
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


namespace EnterpriseServices.SecurityService.Framework.Commons.Extra
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.Extra.ExtraMonitorAssembly</para>
    /// <para>
    /// 定义了附加的监听器程序集。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class ExtraMonitorAssembly
    {
        private string _fileName;

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ExtraMonitorAssembly" />对象实例。</para>
        /// </summary>
        public ExtraMonitorAssembly()
        {
        }

        #endregion

        #region FileName
        /// <summary>
        /// 设置或获取程序集文件完全限定名称。
        /// </summary>
        public virtual string FileName
        {
            get { return _fileName; }
            set { _fileName = value; }
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