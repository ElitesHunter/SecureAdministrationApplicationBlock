#region "FeatureTreeNodeType"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-19 9:52:11
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Commons
 * 
 * ####     Type Name : FeatureTreeNodeType
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Commons.FeatureTreeNodeType
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

namespace EnterpriseServices.ManagementClient.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Commons.FeatureTreeNodeType</para>
    /// <para>
    /// 定义了功能树节点的类型。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    [Serializable()]
    public enum FeatureTreeNodeType
    {
        Root = 0,
        Empty = -1,
        ParametersRoot = 1,
        AdministratorsRoot = 2,
        OrganizationsRoot = 3,
        AuthorizationsRoot = 4,
        LoggingsRoot = 5,
        ExpirationPolicyRoot = 6,
        Organzation = 7,
        Position = 8,
        Staff = 9
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