#region "IPAddress"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-15 9:59:42
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Networks
 * 
 * ####     Type Name : IPAddress
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Networks.IPAddress
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
using System.Net.NetworkInformation;
using IP = System.Net.IPAddress;
using System.Net;

namespace EnterpriseServices.ManagementClient.Operations.Networks
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Networks.IPAddress</para>
    /// <para>
    /// Description
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class IPAddress
    {
        private string _value;

        #region Value
        /// <summary>
        /// 设置或获取IP地址。
        /// </summary>
        public string Value
        {
            get { return _value; }
            set { _value = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="IPAddress" />对象实例。</para>
        /// </summary>
        public IPAddress()
        {
        }

        #endregion

        #region GetIPAddress
        /// <summary>
        /// 获取本机的IP地址数组。
        /// </summary>
        /// <returns><paramref name="IPAddress"/>[]。</returns>
        static public IPAddress[] GetIPAddress()
        {
            try
            {
                if (NetworkInterface.GetIsNetworkAvailable())
                {
                    IP[] ips = Dns.GetHostAddresses(Dns.GetHostName());
                    IPAddress[] ipAddresses = new IPAddress[ips.Length];
                    for (var i = 0; i < ips.Length; i++)
                    {
                        ipAddresses[i] = new IPAddress() { Value = ips[i].ToString() };
                    }
                    return ipAddresses;
                }
                else return new IPAddress[1] { new IPAddress() { Value = Environment.MachineName } };
            }
            catch
            {
                return new IPAddress[1] { new IPAddress() { Value = Environment.MachineName } };
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