﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.18444
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace EnterpriseServices.SecurityService.API.Properties {
    
    
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "10.0.0.0")]
    internal sealed partial class Settings : global::System.Configuration.ApplicationSettingsBase {
        
        private static Settings defaultInstance = ((Settings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Settings())));
        
        public static Settings Default {
            get {
                return defaultInstance;
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://localhost:1/AuthenticationService.asmx")]
        public string EH_Security_OpenAPIs_SDK_AuthenticationService_AuthenticationService {
            get {
                return ((string)(this["EH_Security_OpenAPIs_SDK_AuthenticationService_AuthenticationService"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://localhost:1/UserBehaviorService.asmx")]
        public string EH_Security_OpenAPIs_SDK_BehaviorService_UserBehaviorService {
            get {
                return ((string)(this["EH_Security_OpenAPIs_SDK_BehaviorService_UserBehaviorService"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://localhost:1/IdentityService.asmx")]
        public string EH_Security_OpenAPIs_SDK_IdentityService_IdentityService {
            get {
                return ((string)(this["EH_Security_OpenAPIs_SDK_IdentityService_IdentityService"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://localhost:1/OrganizationService.asmx")]
        public string EH_Security_OpenAPIs_SDK_OrgService_OrganizationService {
            get {
                return ((string)(this["EH_Security_OpenAPIs_SDK_OrgService_OrganizationService"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://localhost:1/ParametersService.asmx")]
        public string EH_Security_OpenAPIs_SDK_ParamsService_ParametersService {
            get {
                return ((string)(this["EH_Security_OpenAPIs_SDK_ParamsService_ParametersService"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://localhost:1/CommonsService.asmx")]
        public string EH_Security_OpenAPIs_SDK_ComService_CommonsService {
            get {
                return ((string)(this["EH_Security_OpenAPIs_SDK_ComService_CommonsService"]));
            }
        }
    }
}
