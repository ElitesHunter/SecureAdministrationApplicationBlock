#region "DialogMethods"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-11 17:10:11
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Commons
 * 
 * ####     Type Name : DialogMethods
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Commons.DialogMethods
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

using System.Windows.Forms;
using EnterpriseServices.Framework.Resources;

namespace EnterpriseServices.ManagementClient.Commons
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Commons.DialogMethods</para>
    /// <para>
    /// 提供了通用的对话框方法。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// </remarks>
    public static class DialogMethods
    {
        #region Ask
        /// <summary>
        /// 弹出询问对话框。
        /// </summary>
        /// <param name="question">问题。</param>
        /// <returns><see cref="DialogResult"/>中的一个值。</returns>
        static public DialogResult Ask(string question)
        {
            return MessageBox.Show(question, CommonPhrases.Information, MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
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