#region "ChooseDateEditor"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-25 13:59:29
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Entity.Editors
 * 
 * ####     Type Name : ChooseDateEditor
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Entity.Editors.ChooseDateEditor
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
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms;

namespace EnterpriseServices.ManagementClient.Operations.Entity.Editors
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Entity.Editors.ChooseDateEditor</para>
    /// <para>
    /// 选择日期编辑器。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class ChooseDateEditor : UITypeEditor
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ChooseDateEditor" />对象实例。</para>
        /// </summary>
        public ChooseDateEditor()
        {
        }

        #endregion

        #region GetEditStyle
        /// <summary>
        /// 获取编辑器样式。
        /// </summary>
        /// <param name="context"></param>
        /// <returns></returns>
        public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
        {
            return UITypeEditorEditStyle.Modal;
        }
        #endregion

        #region EditValue
        public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
        {
            using (ChooseDateDialog dialog = new ChooseDateDialog() { SelectedDate = (DateTime)value })
            {
                if (dialog.ShowDialog() == DialogResult.OK) return dialog.SelectedDate;
                else return value;
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