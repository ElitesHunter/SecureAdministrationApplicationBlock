#region "ChoosePlaceEditor"

/*
 * ####     Developer Name : Wang Yucai
 * 
 * ####     Development Tool : Microsoft VisualStudio 2010 Ultimate Edition
 * 
 * ####     Create Time : 2014-08-26 10:44:16
 * 
 * ####     Namespace : EnterpriseServices.ManagementClient.Operations.Entity.Editors
 * 
 * ####     Type Name : ChoosePlaceEditor
 * 
 * ####     Full Name : EnterpriseServices.ManagementClient.Operations.Entity.Editors.ChoosePlaceEditor
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
using System.Drawing.Design;

namespace EnterpriseServices.ManagementClient.Operations.Entity.Editors
{
    /// <summary>
    /// <para>EnterpriseServices.ManagementClient.Operations.Entity.Editors.ChoosePlaceEditor</para>
    /// <para>
    /// 地区区域选择编辑器。
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>Target Framework Version : 3.5</para>
    /// <para>此类不可继承。</para>
    /// </remarks>
    public sealed class ChoosePlaceEditor : UITypeEditor
    {
        #region Constructor

        /// <summary>
        /// <para>构造函数：</para>
        /// <para>初始化一个<see cref="ChoosePlaceEditor" />对象实例。</para>
        /// </summary>
        public ChoosePlaceEditor()
        {
        }

        #endregion

        #region GetEditStyle
        /// <summary>
        /// 获取编辑器样式。
        /// </summary>
        /// <param name="context"></param>
        /// <returns></returns>
        public override UITypeEditorEditStyle GetEditStyle(System.ComponentModel.ITypeDescriptorContext context)
        {
            return UITypeEditorEditStyle.Modal;
        }
        #endregion

        #region EditValue
        /// <summary>
        /// 编辑值。
        /// </summary>
        /// <param name="context"></param>
        /// <param name="provider"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public override object EditValue(System.ComponentModel.ITypeDescriptorContext context, IServiceProvider provider, object value)
        {
            using (ChoosePlaceDialog dialog = new ChoosePlaceDialog())
            {
                if (dialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    return dialog.SelectedPlace;
                }
                else
                {
                    return value;
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