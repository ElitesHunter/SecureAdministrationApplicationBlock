#region "UniversalOperations"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-09-01 14:05:06
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations
 * 
 * ####     Type Name : UniversalOperations
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.UniversalOperations
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

using EnterpriseServices.Framework.Commons;
using EnterpriseServices.SecurityService.API;
using EnterpriseServices.SecurityService.Framework.Commons;

namespace EnterpriseServices.ManagementClient.Operations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.UniversalOperations</para>
    /// <para>
    /// 通用操作方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Monitor]
    public sealed class UniversalOperations : _Object
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="UniversalOperations" />对象实例。</para>
        /// </summary>
        public UniversalOperations()
        {
        }

        #endregion

        #region LogicRemoval
        /// <summary>
        /// 逻辑删除指定开放标识的对象。
        /// </summary>
        /// <param name="openID"></param>
        [TraceOperation]
        public void LogicRemoval(string openID)
        {
            new CommonsApi().RemoveObject(openID);
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