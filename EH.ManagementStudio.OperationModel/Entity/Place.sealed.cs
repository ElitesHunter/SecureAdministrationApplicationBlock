#region "Place"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-26 9:43:23
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Entity
 * 
 * ####     Type Name : Place
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Entity.Place
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
using EnterpriseServices.SecurityService.API;
using EnterpriseServices.SecurityService.API.ParamsService;

namespace EnterpriseServices.ManagementClient.Operations.Entity
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Entity.Place</para>
    /// <para>
    /// 地区区域信息。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    [Serializable]
    public sealed class Place : ParameterBase
    {
        private const string CacheKey = "PLACE_REGIONS";
        private Guid _parentID;

        #region ParentID
        /// <summary>
        /// 设置或获取父级区域唯一标识。
        /// </summary>
        [Browsable(false)]
        public Guid ParentID
        {
            get { return _parentID; }
            set { _parentID = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Place" />对象实例。</para>
        /// </summary>
        public Place()
        {
            this.UniqueID = Guid.Empty;
            this.Value = string.Empty;
        }

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="Place" />对象实例。</para>
        /// </summary>
        private Place(PlaceRegion region)
        {
            base.UniqueID = region.UniqueID;
            base.Value = region.Value;
            base.OpenID = region.OpenID;
            this.ParentID = region.ParentID;
        }

        #endregion

        #region GetAll
        /// <summary>
        /// 获取所有的地区区域信息。
        /// </summary>
        /// <returns></returns>
        static public List<Place> GetAll()
        {
            object data = LocaleCacheHelper.Get<List<Place>>(CacheKey);
            if (object.ReferenceEquals(data, null))
            {
                PlaceRegion[] regions = new ParametersApi().GetPlaceRegions();
                List<Place> result = new List<Place>();
                foreach (PlaceRegion item in regions)
                {
                    result.Add(new Place(item));
                }
                LocaleCacheHelper.Set(CacheKey, result);
                return result;
            }
            else return data as List<Place>;
        }
        #endregion

        #region Value
        /// <summary>
        /// 设置或获取地区区域名称。
        /// </summary>
        [ReadOnly(true)]
        [DisplayName("地区区域名称")]
        [Description("地区区域名称")]
        //[Editor(typeof(ChoosePlaceEditor), typeof(UITypeEditor))]
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