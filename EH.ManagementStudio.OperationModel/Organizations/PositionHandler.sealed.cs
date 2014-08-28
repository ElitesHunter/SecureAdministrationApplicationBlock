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
using System.Collections.Generic;
using EnterpriseServices.ManagementClient.Operations.Entity;
using EnterpriseServices.SecurityService.API;
using P = EnterpriseServices.SecurityService.API.OrgService.Position;

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
                Visible = p.Visible,
                Category = SecurityService.API.OrgService.OrganizationObjectCategory.Position,
                Enabled = p.Enabled,
                LogicalRemovedState = p.HasRemoved
            };
        }

        static private Position TransferTo(P position)
        {
            return new Position()
            {
                UniqueID = position.UniqueID,
                Name = position.Name,
                ParentUniqueID = position.OrganizationID,
                Enabled = position.Enabled,
                HasRemoved = position.LogicalRemovedState,
                OpenID = position.OpenID,
                VirtualName = position.VirtualName,
                VirtualPath = position.VirtualPath,
                Visible = position.Visible
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

        #region GetPositionsExcludeSpeified
        /// <summary>
        /// 获取除指定的职位标识外的职位信息。
        /// </summary>
        /// <param name="specifiedPositionID"></param>
        /// <returns></returns>
        public List<Position> GetPositionsExcludeSpeified(Guid specifiedPositionID)
        {
            P[] input = new PositionApi().GetPositionsExcludeSpecified(specifiedPositionID);
            List<Position> list = new List<Position>();
            foreach (P item in input)
                list.Add(TransferTo(item));
            return list;
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