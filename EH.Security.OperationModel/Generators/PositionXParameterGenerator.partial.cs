#region "PositionXParameterGenerator"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-09-01 10:00:12
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.OperationModel.Generators
 * 
 * ####     Type Name : PositionXParameterGenerator
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.OperationModel.Generators.PositionXParameterGenerator
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
using EnterpriseServices.SecurityService.Framework.OperationModel.Organizations;

namespace EnterpriseServices.SecurityService.Framework.OperationModel.Generators
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.OperationModel.Generators.PositionXParameterGenerator</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    partial class PositionXParameterGenerator
    {
        private Position _position;
        private bool _isPrincipal;
        private Guid _superiorPositionID;
        private bool _forceUpdate;

        internal Position Position
        {
            get { return _position; }
            set { _position = value; }
        }

        internal bool IsPrincipal
        {
            get { return _isPrincipal; }
            set { _isPrincipal = value; }
        }

        internal Guid SuperiorPositionID
        {
            get { return _superiorPositionID; }
            set { _superiorPositionID = value; }
        }

        internal bool ForceUpdate
        {
            get { return _forceUpdate; }
            set { _forceUpdate = value; }
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