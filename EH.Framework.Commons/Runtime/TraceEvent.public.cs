#region "TraceEvent"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-07-31 16:09:49
 * 
 * ####     Namespace : EnterpriseServices.Framework.Commons.Runtime
 * 
 * ####     Type Name : TraceEvent
 * 
 * ####     Full Name : EnterpriseServices.Framework.Commons.Runtime.TraceEvent
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
using System.Diagnostics;
using System.IO;
using System.Web.Hosting;

namespace EnterpriseServices.Framework.Commons.Runtime
{
    /// <summary>
    /// <para>EnterpriseServices.Framework.Commons.Runtime.TraceEvent</para>
    /// <para>
    /// 用于跟踪运行时调试信息。
    /// </para>
    /// </summary>
    /// <typeparam name="T">需要跟踪的类型。</typeparam>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public class TraceEvent<T>
    {
        private static readonly object FileSystemLockObject = new object();

        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="TraceEvent" />对象实例。</para>
        /// </summary>
        public TraceEvent()
        {
        }

        #endregion

        #region AttachTraceEvent
        /// <summary>
        /// 添加一个跟踪信息。
        /// </summary>
        /// <param name="level"><see cref="TraceEventLevel"/>中的一个值。</param>
        /// <param name="message">写入跟踪事件的信息。</param>
        public void AttachTraceEvent(TraceEventLevel level, string message)
        {
            lock (FileSystemLockObject)
            {
                FileInfo traceFile = new FileInfo(Path.Combine(Running.This.IsAspNET ? HostingEnvironment.ApplicationPhysicalPath : AppDomain.CurrentDomain.BaseDirectory, "trace.log"));
                FileMode mode = traceFile.Exists ? FileMode.Append : FileMode.CreateNew;
                using (FileStream traceStream = new FileStream(traceFile.FullName, mode, FileAccess.Write, FileShare.ReadWrite))
                {
                    using (StreamWriter writer = new StreamWriter(traceStream))
                    {
                        try
                        {
                            string msg = new TraceMessageGenerator() { Type = typeof(T), TraceEventLevel = level, Message = message }.TransformText();
                            writer.WriteLine(msg);
                            Debug.WriteLine(msg);
                        }
                        finally
                        {
                            writer.Close();
                            traceStream.Close();
                        }
                    }
                }
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