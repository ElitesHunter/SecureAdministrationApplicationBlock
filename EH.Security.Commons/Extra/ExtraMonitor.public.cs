#region "ExtraMonitor"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-05 14:51:51
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons.Extra
 * 
 * ####     Type Name : ExtraMonitor
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.Extra.ExtraMonitor
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
using System.IO;
using System.Linq;
using System.Xml.Linq;
using EnterpriseServices.Framework.Commons.IO;

namespace EnterpriseServices.SecurityService.Framework.Commons.Extra
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.Extra.ExtraMonitor</para>
    /// <para>
    /// 定义了一个附加的监听器。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class ExtraMonitor
    {
        private string _typeName;
        private string _methodName;
        private List<ExtraMonitorAssembly> _monitorAssemblyCollection;
        private List<ExtraMethodMonitor> _monitorCollection;

        #region TypeName
        /// <summary>
        /// 设置或获取需要监听的类型完全限定名称。
        /// </summary>
        public virtual string TypeName
        {
            get { return _typeName; }
            set { _typeName = value; }
        }
        #endregion

        #region MethodName
        /// <summary>
        /// 设置或获取需要监听的方法名称。
        /// </summary>
        public virtual string MethodName
        {
            get { return _methodName; }
            set { _methodName = value; }
        }
        #endregion

        #region MonitorAssemblyCollection
        /// <summary>
        /// 获取监听器程序集。
        /// </summary>
        public virtual List<ExtraMonitorAssembly> MonitorAssemblyCollection
        {
            get { return _monitorAssemblyCollection; }
            protected set { _monitorAssemblyCollection = value; }
        }
        #endregion

        #region MonitorCollection
        /// <summary>
        /// 获取方法监听器。
        /// </summary>
        public virtual List<ExtraMethodMonitor> MonitorCollection
        {
            get { return _monitorCollection; }
            protected set { _monitorCollection = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ExtraMonitor" />对象实例。</para>
        /// </summary>
        public ExtraMonitor()
        {
            this.MonitorAssemblyCollection = new List<ExtraMonitorAssembly>();
            this.MonitorCollection = new List<ExtraMethodMonitor>();
        }

        #endregion

        #region Save
        /// <summary>
        /// 保存到附加监听器文件。
        /// </summary>
        public virtual void Save()
        {
            new ExtraMonitorFileGenerator(this).Write();
        }
        #endregion

        #region CreateFromExtraFile
        /// <summary>
        /// 从附加文件创建<see cref="ExtraMonitor"/>对象实例。
        /// </summary>
        /// <param name="typeName">类型的完全限定名称。</param>
        /// <param name="methodName">需要监听的方法名称。</param>
        /// <returns><see cref="ExtraMonitor"/>对象实例。</returns>
        static public ExtraMonitor CreateFromExtraFile(string typeName, string methodName)
        {
            FileInfo extraFileInfo = CreateExtraFileInfo(typeName, methodName);
            if (!object.ReferenceEquals(extraFileInfo, null))
            {
                ExtraMonitor monitor = ParseExtraFile(extraFileInfo);
                monitor.MethodName = methodName;
                monitor.TypeName = typeName;
                return monitor;
            }
            else return null;
        }
        #endregion

        #region CreateExtraFileInfo
        /// <summary>
        /// 构建附加文件的信息。
        /// </summary>
        /// <param name="typeName">类型的完全限定名称。</param>
        /// <param name="methodName">需要监听的方法名称。</param>
        /// <returns><see cref="FileInfo"/>对象实例。</returns>
        static private FileInfo CreateExtraFileInfo(string typeName, string methodName)
        {
            DirectoryInfo extraFolderDir = new DirectoryInfo(Path.Combine(CommonsDirectoryInfo.Current.CommonsDirectory.FullName, "Extras"));
            if (!extraFolderDir.Exists) return null;
            else
            {
                string fileName = string.Format("{0}({1}).Monitor.extras", typeName, methodName);
                FileInfo extraFileInfo = new FileInfo(Path.Combine(extraFolderDir.FullName, fileName));
                return extraFileInfo.Exists ? extraFileInfo : null;
            }
        }
        #endregion

        #region ParseExtraFile
        /// <summary>
        /// 解析附加监听文件。
        /// </summary>
        /// <param name="extraFileInfo">附加家庭文件信息。</param>
        /// <returns><see cref="ExtraMonitor"/>对象实例。</returns>
        static private ExtraMonitor ParseExtraFile(FileInfo extraFileInfo)
        {
            ExtraMonitor monitor = new ExtraMonitor();
            XDocument xExtraDoc = XDocument.Load(extraFileInfo.FullName);
            XNamespace eh = "urn:Masterduner@Yeah.net";
            var assemblies = from xElement in xExtraDoc.Element(eh + "EnterpriseServices").Element(eh + "SecurityService").Element(eh + "ExtraMethodMonitor").Element(eh + "MonitorResources").Element(eh + "Assemblies").Elements(eh + "Reference")
                             select xElement;
            foreach (var item in assemblies)
                monitor.MonitorAssemblyCollection.Add(new ExtraMonitorAssembly() { FileName = item.Attribute("Path").Value });
            var monitors = from xElement in xExtraDoc.Element(eh + "EnterpriseServices").Element(eh + "SecurityService").Element(eh + "ExtraMethodMonitor").Element(eh + "MonitorResources").Element(eh + "Monitors").Elements(eh + "Attach")
                           select xElement;
            foreach (var item in assemblies)
                monitor.MonitorCollection.Add(new ExtraMethodMonitor()
                {
                    MonitorID = new Guid(item.Attribute("ID").Value),
                    Order = (MethodMonitorOrder)Enum.Parse(typeof(MethodMonitorOrder), item.Attribute("Order").Value),
                    TypeName = item.Attribute("TypeName").Value
                });
            return monitor;
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