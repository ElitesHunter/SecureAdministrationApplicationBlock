#region "DynamicAssembly"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-05 11:01:49
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons.Reflection
 * 
 * ####     Type Name : DynamicAssembly
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.Reflection.DynamicAssembly
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
using System.IO;
using System.Reflection;
using EnterpriseServices.Framework.Commons.IO;

namespace EnterpriseServices.Framework.Commons.Reflection
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.Reflection.DynamicAssembly</para>
    /// <para>
    /// 提供了动态加载程序集的方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class DynamicAssembly
    {
        private static object LockObject = new object();

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="DynamicAssembly" />对象实例。</para>
        /// </summary>
        public DynamicAssembly()
        {
        }

        #endregion

        #region Load
        /// <summary>
        /// 加载程序集文件到当前的应用程序域中。
        /// </summary>
        /// <param name="fileName">程序集文件名称。</param>
        /// <param name="assemblyName">程序集完全限定名称。</param>
        /// <returns><see cref="Assembly"/>对象实例。</returns>
        public virtual Assembly Load(string fileName, string assemblyName)
        {
            lock (LockObject)
            {
                Assembly assembly = null;
                if (!this.AssemblyIsExists(assemblyName, out assembly))
                {
                    if (File.Exists(fileName))
                    {
                        try
                        {
                            byte[] buffer = File.ReadAllBytes(fileName);
                            assembly = Assembly.Load(buffer);
                        }
                        catch (Exception ex)
                        {
                            throw new ReflectionError(ex);
                        }
                    }
                    else throw new FileNotFoundError(fileName);
                }
                return assembly;
            }
        }
        #endregion

        #region AssemblyIsExists
        /// <summary>
        /// 验证程序集是否在当前应用程序集中存在。
        /// </summary>
        /// <param name="assemblyName">程序集完全限定名称。</param>
        /// <param name="assembly">如果程序集存在，则返回。</param>
        /// <returns>true/false。</returns>
        protected virtual bool AssemblyIsExists(string assemblyName, out Assembly assembly)
        {
            bool isExists = false;
            assembly = null;
            Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
            foreach (var item in assemblies)
            {
                if (item.FullName.EndsWith(assemblyName))
                {
                    isExists = true;
                    assembly = item;
                    break;
                }
            }
            return isExists;
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