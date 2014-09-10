#region "StaffHandler"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-09-09 11:24:35
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Organizations
 * 
 * ####     Type Name : StaffHandler
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Organizations.StaffHandler
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
using Person = EnterpriseServices.SecurityService.API.OrgService.Staff;

namespace EnterpriseServices.ManagementClient.Operations.Organizations
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Organizations.StaffHandler</para>
    /// <para>
    /// 提供了操作人员信息的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class StaffHandler:IOrganizationObjectHandler<Staff>
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="StaffHandler" />对象实例。</para>
        /// </summary>
        public StaffHandler()
        {
        }

        #endregion

        public void Create(Staff org)
        {
            new StaffApi().Create(Staff.TransferTo(org));
        }

        public Staff GetSingle(string openID)
        {
            throw new NotImplementedException();
        }

        #region GetSubs
        /// <summary>
        /// 获取指定职位的所有人员信息。
        /// </summary>
        /// <param name="openID"></param>
        /// <returns></returns>
        public Staff[] GetSubs(string openID)
        {
            List<Staff> list = new List<Staff>();
            Person[] p = new PositionApi().GetStaffs(openID);
            foreach (Person item in p)
                list.Add(Staff.TransferTo(item));
            return list.ToArray();
        }
        #endregion

        public void Update(Staff org)
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