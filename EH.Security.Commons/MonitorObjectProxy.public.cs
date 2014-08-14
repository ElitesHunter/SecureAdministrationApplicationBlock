#region "MonitorObjectProxy"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-04 16:05:04
 * 
 * ####     Namespace : EnterpriseServices.SecurityService.Framework.Commons
 * 
 * ####     Type Name : MonitorObjectProxy
 * 
 * ####     Full Name : EnterpriseServices.SecurityService.Framework.Commons.MonitorObjectProxy
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
using System.Reflection;
using System.Runtime.Remoting;
using System.Runtime.Remoting.Activation;
using System.Runtime.Remoting.Messaging;
using System.Runtime.Remoting.Proxies;
using System.Runtime.Remoting.Services;
using EnterpriseServices.Framework.Commons;
using EnterpriseServices.Framework.Commons.Reflection;
using EnterpriseServices.Framework.Commons.Runtime;
using EnterpriseServices.SecurityService.Framework.Commons.Extra;

namespace EnterpriseServices.SecurityService.Framework.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.SecurityService.Framework.Commons.MonitorObjectProxy</para>
    /// <para>
    /// 监控对象代理。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class MonitorObjectProxy : RealProxy
    {
        private Type _objectType;
        private _Object _instance;
        protected List<MethodMonitorAttribute> BeforeInterceptors;
        protected List<MethodMonitorAttribute> AfterInterceptors;
        protected List<string> ExtraAssemblies;
        protected Dictionary<Guid, string> BeforeExtraInterceptors;
        protected Dictionary<Guid, string> AfterExtraInterceptors;

        #region ObjectType
        /// <summary>
        /// 获取代理对象的类型。
        /// </summary>
        public virtual Type ObjectType
        {
            get { return _objectType; }
            protected set { _objectType = value; }
        }
        #endregion

        #region Instance
        /// <summary>
        /// 获取代理对象实例。
        /// </summary>
        public virtual _Object Instance
        {
            get { return _instance; }
            protected set { _instance = value; }
        }
        #endregion

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="MonitorObjectProxy" />对象实例。</para>
        /// </summary>
        /// <param name="objectType">代理对象类型。</param>
        /// <param name="obj">代理对象实例。</param>
        public MonitorObjectProxy(Type objectType, _Object obj)
            : base(objectType)
        {
            this.Instance = obj;
            this.ObjectType = objectType;
            this.BeforeInterceptors = new List<MethodMonitorAttribute>();
            this.AfterInterceptors = new List<MethodMonitorAttribute>();
            this.ExtraAssemblies = new List<string>();
            this.BeforeExtraInterceptors = new Dictionary<Guid, string>();
            this.AfterExtraInterceptors = new Dictionary<Guid, string>();
        }

        #endregion

        #region Invoke
        /// <summary>
        /// 执行代理对象的方法。
        /// </summary>
        /// <param name="msg"><see cref="IMessage"/>对象实例。</param>
        /// <returns><see cref="IMessage"/>对象实例。</returns>
        public override IMessage Invoke(IMessage msg)
        {
            if (msg is IConstructionCallMessage) return this.CreateConstructionReturnMessage(msg as IConstructionCallMessage);
            else if (msg is IMethodCallMessage)
            {
                IMethodCallMessage method = msg as IMethodCallMessage;
                Attribute[] attributes = this.GetCustomAttributes(method.MethodBase);
                MonitorContext context = this.CreateMonitorContext(method, attributes);
                bool ignore = this.IsIgnore(attributes);
                try
                {
                    if (!ignore)
                    {
                        this.InitializeExtras(method.MethodName);
                        this.ExecuteBeforeInterceptor(context, attributes);
                        IMethodReturnMessage returnMsg = RemotingServices.ExecuteMessage(this.Instance, method);
                        context.ExpandoProperties.Add("Successful", true);
                        context.ExpandoProperties.Add("Error", null);
                        context.ExpandoProperties.Add("ReturnValue", returnMsg.ReturnValue);
                        this.ExecuteAfterInterceptor(context, attributes);
                        return returnMsg;
                    }
                    else return RemotingServices.ExecuteMessage(this.Instance, method);
                }
                catch (ExtraMonitorError err)
                {
                    new TraceEvent<MonitorObjectProxy>().AttachTraceEvent(
                        TraceEventLevel.Exception,
                        string.Format("{0}(Extra File : {1}; Extra Monitor ID : {2})", err.Message, err.ExtraFileName, err.MonitorID)
                        );
                    if (!ignore)
                    {
                        context.ExpandoProperties.Add("Successful", false);
                        context.ExpandoProperties.Add("Error", err);
                        this.ExecuteAfterInterceptor(context, attributes);
                    }
                    return new ReturnMessage(err, method);
                }
                catch (Exception ex) { return new ReturnMessage(new MonitorError(ex), method); }
            }
            return null;
        }
        #endregion

        #region CreateConstructionReturnMessage
        /// <summary>
        /// 创建一个构造方法消息。
        /// </summary>
        /// <param name="ctor"><see cref="IConstructionCallMessage"/>对象实例。</param>
        /// <returns><see cref="IConstructionReturnMessage"/>对象实例。</returns>
        protected virtual IConstructionReturnMessage CreateConstructionReturnMessage(IConstructionCallMessage ctor)
        {
            try
            {
                RealProxy proxy = RemotingServices.GetRealProxy(this.Instance);
                proxy.InitializeServerObject(ctor);
                MarshalByRefObject obj = (MarshalByRefObject)this.GetTransparentProxy();
                return EnterpriseServicesHelper.CreateConstructionReturnMessage(ctor, obj);
            }
            catch (Exception ex)
            {
                throw new Error(ex);
            }
        }
        #endregion

        #region GetCustomAttributes
        /// <summary>
        /// 获取当前执行方法所有的特性。
        /// </summary>
        /// <param name="methodInfo">方法信息。</param>
        /// <returns><see cref="Attribute"/>[]。</returns>
        protected virtual Attribute[] GetCustomAttributes(MethodBase methodInfo)
        {
            return Attribute.GetCustomAttributes(methodInfo);
        }
        #endregion

        #region IsIgnore
        /// <summary>
        /// 验证当前的方法是否需要忽略监听。
        /// </summary>
        /// <param name="attributes"><see cref="Attribute"/>[]数组。</param>
        /// <returns>true/false。</returns>
        protected virtual bool IsIgnore(Attribute[] attributes)
        {
            if (!object.ReferenceEquals(attributes, null) && attributes.Length > 0)
            {
                bool ignore = false;
                foreach (var item in attributes)
                {
                    if (!object.ReferenceEquals(item, null) && item.GetType().Equals(typeof(IgnoreThisMethodAttribute)))
                    {
                        ignore = true; break;
                    }
                }
                return ignore;
            }
            else
            {
                return false;
            }
        }
        #endregion

        #region CreateMonitorContext
        /// <summary>
        /// 创建一个<see cref="MonitorContext"/>对象实例。
        /// </summary>
        /// <param name="msg"><see cref="IMethodCallMessage"/>对象实例。</param>
        /// <param name="attributes">此方法施加的所有特性。</param>
        /// <returns><see cref="MonitorContext"/>对象实例。</returns>
        protected virtual MonitorContext CreateMonitorContext(IMethodCallMessage msg, Attribute[] attributes)
        {
            MonitorContext context = new MonitorContext(msg.MethodName, msg.TypeName, msg.ArgCount, msg.InArgCount);
            context.ExpandoProperties.Add("IsPublic", msg.MethodBase.IsPublic);
            context.ExpandoProperties.Add("IsPrivate", msg.MethodBase.IsPrivate);
            context.ExpandoProperties.Add("IsStatic", msg.MethodBase.IsStatic);
            context.ExpandoProperties.Add("IsVirtual", msg.MethodBase.IsVirtual);
            context.ExpandoProperties.Add("IsAbstract", msg.MethodBase.IsAbstract);
            context.ExpandoProperties.Add("IsProperty", msg.MethodBase.MemberType == MemberTypes.Property ? true : false);
            context.ExpandoProperties.Add("IsConstructor", msg.MethodBase.IsConstructor);
            context.ExpandoProperties.Add("IsGenericMethod", msg.MethodBase.IsGenericMethod);
            context.ExpandoProperties.Add("DeclaringType", msg.MethodBase.DeclaringType.AssemblyQualifiedName);
            context.ExpandoProperties.Add("CustomAttributes", attributes);
            return context;
        }
        #endregion

        #region InitializeBeforeMonitors
        /// <summary>
        /// 初始化（前）监听工具。
        /// </summary>
        /// <param name="attributes"><see cref="Attribute"/>[]。</param>
        protected virtual void InitializeBeforeMonitors(Attribute[] attributes)
        {
            if (!object.ReferenceEquals(attributes, null) && attributes.Length > 0)
            {
                foreach (var item in attributes)
                {
                    if (item is MethodMonitorAttribute && (item as MethodMonitorAttribute).MonitorOrder == MethodMonitorOrder.Before)
                    {
                        this.BeforeInterceptors.Add(item as MethodMonitorAttribute);
                    }
                }
            }
        }
        #endregion

        #region InitializeAfterMonitors
        /// <summary>
        /// 初始化（后）监听工具。
        /// </summary>
        /// <param name="attributes"><see cref="Attribute"/>[]。</param>
        protected virtual void InitializeAfterMonitors(Attribute[] attributes)
        {
            if (!object.ReferenceEquals(attributes, null) && attributes.Length > 0)
            {
                foreach (var item in attributes)
                {
                    if (item is MethodMonitorAttribute && (item as MethodMonitorAttribute).MonitorOrder == MethodMonitorOrder.After)
                    {
                        this.AfterInterceptors.Add(item as MethodMonitorAttribute);
                    }
                }
            }
        }
        #endregion

        #region ExecuteBeforeInterceptor
        /// <summary>
        /// 执行（前）拦截。
        /// </summary>
        /// <param name="context"><see cref="MonitorContext"/>对象实例。</param>
        /// <param name="methodAttributes">当前方法的特性。</param>
        protected virtual void ExecuteBeforeInterceptor(MonitorContext context, Attribute[] methodAttributes)
        {
            this.InitializeBeforeMonitors(methodAttributes);
            foreach (var item in this.BeforeInterceptors)
            {
                IMethodMonitor monitor = Activator.CreateInstance(item.GetMonitorClassType()) as IMethodMonitor;
                monitor.Intercept(context);
            }
            foreach (Guid key in this.BeforeExtraInterceptors.Keys)
            {
                try
                {
                    IMethodMonitor monitor = Activator.CreateInstance(Type.GetType(this.BeforeExtraInterceptors[key])) as IMethodMonitor;
                    monitor.Intercept(context);
                }
                catch (Exception ex) { throw new ExtraMonitorError(context.TypeName, context.MethodName, key, ex); }
            }
        }
        #endregion

        #region ExecuteAfterInterceptor
        /// <summary>
        /// 执行（后）监听器。
        /// </summary>
        /// <param name="context"><see cref="MonitorContext"/>对象实例。</param>
        /// <param name="attributes">当前方法的<see cref="Attribute"/>[]。</param>
        protected virtual void ExecuteAfterInterceptor(MonitorContext context, Attribute[] attributes)
        {
            this.InitializeAfterMonitors(attributes);
            foreach (var item in this.AfterInterceptors)
            {
                (Activator.CreateInstance(item.GetMonitorClassType()) as IMethodMonitor).Intercept(context);
            }
            foreach (Guid key in this.AfterExtraInterceptors.Keys)
            {
                try
                {
                    IMethodMonitor monitor = Activator.CreateInstance(Type.GetType(this.AfterExtraInterceptors[key])) as IMethodMonitor;
                    monitor.Intercept(context);
                }
                catch (Exception ex) { throw new ExtraMonitorError(context.TypeName, context.MethodName, key, ex); }
            }
        }
        #endregion

        #region InitializeExtras
        /// <summary>
        /// 初始化附加的监听器。
        /// </summary>
        /// <param name="methodName">需要监听的方法名称。</param>
        protected virtual void InitializeExtras(string methodName)
        {
            try
            {
                ExtraMonitor extraMonitor = ExtraMonitor.CreateFromExtraFile(this.ObjectType.FullName, methodName);
                if (!object.ReferenceEquals(extraMonitor, null))
                {
                    DynamicAssembly dynamicAssLoader = new DynamicAssembly();
                    foreach (var item in extraMonitor.MonitorAssemblyCollection)
                    {
                        this.ExtraAssemblies.Add(item.FileName);
                        AssemblyName assName = AssemblyName.GetAssemblyName(item.FileName);
                        dynamicAssLoader.Load(item.FileName, assName.FullName);
                    }
                    foreach (var item in extraMonitor.MonitorCollection)
                    {
                        if (item.Order == MethodMonitorOrder.After) this.AfterExtraInterceptors.Add(item.MonitorID, item.TypeName);
                        else this.BeforeExtraInterceptors.Add(item.MonitorID, item.TypeName);
                    }
                }
            }
            catch (Exception ex)
            {
                throw new ExtraMonitorError(this.ObjectType.FullName, methodName, Guid.Empty, ex);
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