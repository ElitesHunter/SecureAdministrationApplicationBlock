#region "PositionHandler"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-27 14:00:44
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Organizations
 * 
 * ####     Type Name : PositionHandler
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Organizations.PositionHandler
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
using EnterpriseServices.ManagementClient.Operations.Entity;
using P = EnterpriseServices.SecurityService.API.OrgService.Position;
using EnterpriseServices.SecurityService.API;

namespace EnterpriseServices.ManagementClient.Operations.Organizations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Organizations.PositionHandler</para>
    /// <para>
    /// 提供了操作职位信息的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class PositionHandler : IOrganizationObjectHandler<Position>
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="PositionHandler" />对象实例。</para>
        /// </summary>
        public PositionHandler()
        {
        }

        #endregion

        #region TransferTo
        /// <summary>
        /// 将<see cref="Postion"/>对象实例转换成<see cref="P"/>对象实例。
        /// </summary>
        /// <param name="p"></param>
        /// <param name="orgID"></param>
        /// <returns></returns>
        static private P TransferTo(Position p, Guid orgID)
        {
            return new P()
            {
                UniqueID = p.UniqueID,
                Name = p.Name,
                OrganizationID = orgID,
                ParentID = orgID,
                Visible = true,
                Category = SecurityService.API.OrgService.OrganizationObjectCategory.Position,
                Enabled = true,
                LogicalRemovedState = false
            };
        }
        #endregion

        #region CreatePosition
        /// <summary>
        /// 创建一个职位。
        /// </summary>
        /// <param name="obj"></param>
        /// <param name="orgID"></param>
        /// <param name="isPrincipal"></param>
        /// <param name="forceCreate"></param>
        /// <returns></returns>
        public int CreatePosition(Position obj, Guid orgID, bool isPrincipal, bool forceCreate)
        {
            return new PositionApi().Create(TransferTo(obj, orgID), isPrincipal, forceCreate);
        }
        #endregion

        public void Create(Position org)
        {
            throw new NotImplementedException();
        }

        public Position GetSingle(string openID)
        {
            throw new NotImplementedException();
        }

        public Position[] GetSubs(string openID)
        {
            throw new NotImplementedException();
        }

        public void Update(Organization org)
        {
            throw new NotImplementedException();
        }
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