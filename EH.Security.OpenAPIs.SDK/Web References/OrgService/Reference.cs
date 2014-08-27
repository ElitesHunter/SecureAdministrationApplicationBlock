﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.18444
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

// 
// 此源代码是由 Microsoft.VSDesigner 4.0.30319.18444 版自动生成。
// 
#pragma warning disable 1591

namespace EnterpriseServices.SecurityService.API.OrgService {
    using System;
    using System.Web.Services;
    using System.Diagnostics;
    using System.Web.Services.Protocols;
    using System.Xml.Serialization;
    using System.ComponentModel;
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.18408")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Web.Services.WebServiceBindingAttribute(Name="OrganizationServiceSoap", Namespace="urn:Masterduner@Yeah.net")]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(DbHelper))]
    public partial class OrganizationService : System.Web.Services.Protocols.SoapHttpClientProtocol {
        
        private System.Threading.SendOrPostCallback GetRootOrganizationOperationCompleted;
        
        private System.Threading.SendOrPostCallback CreateOrganizationOperationCompleted;
        
        private System.Threading.SendOrPostCallback GetSubOrganizationsOperationCompleted;
        
        private System.Threading.SendOrPostCallback UpdateOrganizationOperationCompleted;
        
        private System.Threading.SendOrPostCallback CreatePositionOperationCompleted;
        
        private bool useDefaultCredentialsSetExplicitly;
        
        /// <remarks/>
        public OrganizationService() {
            this.Url = global::EnterpriseServices.SecurityService.API.Properties.Settings.Default.EH_Security_OpenAPIs_SDK_OrgService_OrganizationService;
            if ((this.IsLocalFileSystemWebService(this.Url) == true)) {
                this.UseDefaultCredentials = true;
                this.useDefaultCredentialsSetExplicitly = false;
            }
            else {
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        public new string Url {
            get {
                return base.Url;
            }
            set {
                if ((((this.IsLocalFileSystemWebService(base.Url) == true) 
                            && (this.useDefaultCredentialsSetExplicitly == false)) 
                            && (this.IsLocalFileSystemWebService(value) == false))) {
                    base.UseDefaultCredentials = false;
                }
                base.Url = value;
            }
        }
        
        public new bool UseDefaultCredentials {
            get {
                return base.UseDefaultCredentials;
            }
            set {
                base.UseDefaultCredentials = value;
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        /// <remarks/>
        public event GetRootOrganizationCompletedEventHandler GetRootOrganizationCompleted;
        
        /// <remarks/>
        public event CreateOrganizationCompletedEventHandler CreateOrganizationCompleted;
        
        /// <remarks/>
        public event GetSubOrganizationsCompletedEventHandler GetSubOrganizationsCompleted;
        
        /// <remarks/>
        public event UpdateOrganizationCompletedEventHandler UpdateOrganizationCompleted;
        
        /// <remarks/>
        public event CreatePositionCompletedEventHandler CreatePositionCompleted;
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("urn:Masterduner@Yeah.net/GetRootOrganization", RequestNamespace="urn:Masterduner@Yeah.net", ResponseNamespace="urn:Masterduner@Yeah.net", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public Organization GetRootOrganization() {
            object[] results = this.Invoke("GetRootOrganization", new object[0]);
            return ((Organization)(results[0]));
        }
        
        /// <remarks/>
        public void GetRootOrganizationAsync() {
            this.GetRootOrganizationAsync(null);
        }
        
        /// <remarks/>
        public void GetRootOrganizationAsync(object userState) {
            if ((this.GetRootOrganizationOperationCompleted == null)) {
                this.GetRootOrganizationOperationCompleted = new System.Threading.SendOrPostCallback(this.OnGetRootOrganizationOperationCompleted);
            }
            this.InvokeAsync("GetRootOrganization", new object[0], this.GetRootOrganizationOperationCompleted, userState);
        }
        
        private void OnGetRootOrganizationOperationCompleted(object arg) {
            if ((this.GetRootOrganizationCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.GetRootOrganizationCompleted(this, new GetRootOrganizationCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("urn:Masterduner@Yeah.net/CreateOrganization", RequestNamespace="urn:Masterduner@Yeah.net", ResponseNamespace="urn:Masterduner@Yeah.net", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public void CreateOrganization(Organization obj) {
            this.Invoke("CreateOrganization", new object[] {
                        obj});
        }
        
        /// <remarks/>
        public void CreateOrganizationAsync(Organization obj) {
            this.CreateOrganizationAsync(obj, null);
        }
        
        /// <remarks/>
        public void CreateOrganizationAsync(Organization obj, object userState) {
            if ((this.CreateOrganizationOperationCompleted == null)) {
                this.CreateOrganizationOperationCompleted = new System.Threading.SendOrPostCallback(this.OnCreateOrganizationOperationCompleted);
            }
            this.InvokeAsync("CreateOrganization", new object[] {
                        obj}, this.CreateOrganizationOperationCompleted, userState);
        }
        
        private void OnCreateOrganizationOperationCompleted(object arg) {
            if ((this.CreateOrganizationCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.CreateOrganizationCompleted(this, new System.ComponentModel.AsyncCompletedEventArgs(invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("urn:Masterduner@Yeah.net/GetSubOrganizations", RequestNamespace="urn:Masterduner@Yeah.net", ResponseNamespace="urn:Masterduner@Yeah.net", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public OrganizationObjectBase[] GetSubOrganizations(string organizationOpenID) {
            object[] results = this.Invoke("GetSubOrganizations", new object[] {
                        organizationOpenID});
            return ((OrganizationObjectBase[])(results[0]));
        }
        
        /// <remarks/>
        public void GetSubOrganizationsAsync(string organizationOpenID) {
            this.GetSubOrganizationsAsync(organizationOpenID, null);
        }
        
        /// <remarks/>
        public void GetSubOrganizationsAsync(string organizationOpenID, object userState) {
            if ((this.GetSubOrganizationsOperationCompleted == null)) {
                this.GetSubOrganizationsOperationCompleted = new System.Threading.SendOrPostCallback(this.OnGetSubOrganizationsOperationCompleted);
            }
            this.InvokeAsync("GetSubOrganizations", new object[] {
                        organizationOpenID}, this.GetSubOrganizationsOperationCompleted, userState);
        }
        
        private void OnGetSubOrganizationsOperationCompleted(object arg) {
            if ((this.GetSubOrganizationsCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.GetSubOrganizationsCompleted(this, new GetSubOrganizationsCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("urn:Masterduner@Yeah.net/UpdateOrganization", RequestNamespace="urn:Masterduner@Yeah.net", ResponseNamespace="urn:Masterduner@Yeah.net", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public void UpdateOrganization(Organization org) {
            this.Invoke("UpdateOrganization", new object[] {
                        org});
        }
        
        /// <remarks/>
        public void UpdateOrganizationAsync(Organization org) {
            this.UpdateOrganizationAsync(org, null);
        }
        
        /// <remarks/>
        public void UpdateOrganizationAsync(Organization org, object userState) {
            if ((this.UpdateOrganizationOperationCompleted == null)) {
                this.UpdateOrganizationOperationCompleted = new System.Threading.SendOrPostCallback(this.OnUpdateOrganizationOperationCompleted);
            }
            this.InvokeAsync("UpdateOrganization", new object[] {
                        org}, this.UpdateOrganizationOperationCompleted, userState);
        }
        
        private void OnUpdateOrganizationOperationCompleted(object arg) {
            if ((this.UpdateOrganizationCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.UpdateOrganizationCompleted(this, new System.ComponentModel.AsyncCompletedEventArgs(invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("urn:Masterduner@Yeah.net/CreatePosition", RequestNamespace="urn:Masterduner@Yeah.net", ResponseNamespace="urn:Masterduner@Yeah.net", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public int CreatePosition(Position obj, bool isPrincipal, bool force) {
            object[] results = this.Invoke("CreatePosition", new object[] {
                        obj,
                        isPrincipal,
                        force});
            return ((int)(results[0]));
        }
        
        /// <remarks/>
        public void CreatePositionAsync(Position obj, bool isPrincipal, bool force) {
            this.CreatePositionAsync(obj, isPrincipal, force, null);
        }
        
        /// <remarks/>
        public void CreatePositionAsync(Position obj, bool isPrincipal, bool force, object userState) {
            if ((this.CreatePositionOperationCompleted == null)) {
                this.CreatePositionOperationCompleted = new System.Threading.SendOrPostCallback(this.OnCreatePositionOperationCompleted);
            }
            this.InvokeAsync("CreatePosition", new object[] {
                        obj,
                        isPrincipal,
                        force}, this.CreatePositionOperationCompleted, userState);
        }
        
        private void OnCreatePositionOperationCompleted(object arg) {
            if ((this.CreatePositionCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.CreatePositionCompleted(this, new CreatePositionCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        public new void CancelAsync(object userState) {
            base.CancelAsync(userState);
        }
        
        private bool IsLocalFileSystemWebService(string url) {
            if (((url == null) 
                        || (url == string.Empty))) {
                return false;
            }
            System.Uri wsUri = new System.Uri(url);
            if (((wsUri.Port >= 1024) 
                        && (string.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) == 0))) {
                return true;
            }
            return false;
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.18408")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:Masterduner@Yeah.net")]
    public partial class Organization : OrganizationObjectBase {
        
        private bool isVirtualField;
        
        /// <remarks/>
        public bool IsVirtual {
            get {
                return this.isVirtualField;
            }
            set {
                this.isVirtualField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(Position))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(Organization))]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.18408")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:Masterduner@Yeah.net")]
    public partial class OrganizationObjectBase : DbHelper {
        
        private System.Guid uniqueIDField;
        
        private string nameField;
        
        private string openIDField;
        
        private System.Guid parentIDField;
        
        private OrganizationObjectCategory categoryField;
        
        private string virtualNameField;
        
        private string virtualPathField;
        
        private bool logicalRemovedStateField;
        
        private bool enabledField;
        
        private bool visibleField;
        
        private string descriptionField;
        
        /// <remarks/>
        public System.Guid UniqueID {
            get {
                return this.uniqueIDField;
            }
            set {
                this.uniqueIDField = value;
            }
        }
        
        /// <remarks/>
        public string Name {
            get {
                return this.nameField;
            }
            set {
                this.nameField = value;
            }
        }
        
        /// <remarks/>
        public string OpenID {
            get {
                return this.openIDField;
            }
            set {
                this.openIDField = value;
            }
        }
        
        /// <remarks/>
        public System.Guid ParentID {
            get {
                return this.parentIDField;
            }
            set {
                this.parentIDField = value;
            }
        }
        
        /// <remarks/>
        public OrganizationObjectCategory Category {
            get {
                return this.categoryField;
            }
            set {
                this.categoryField = value;
            }
        }
        
        /// <remarks/>
        public string VirtualName {
            get {
                return this.virtualNameField;
            }
            set {
                this.virtualNameField = value;
            }
        }
        
        /// <remarks/>
        public string VirtualPath {
            get {
                return this.virtualPathField;
            }
            set {
                this.virtualPathField = value;
            }
        }
        
        /// <remarks/>
        public bool LogicalRemovedState {
            get {
                return this.logicalRemovedStateField;
            }
            set {
                this.logicalRemovedStateField = value;
            }
        }
        
        /// <remarks/>
        public bool Enabled {
            get {
                return this.enabledField;
            }
            set {
                this.enabledField = value;
            }
        }
        
        /// <remarks/>
        public bool Visible {
            get {
                return this.visibleField;
            }
            set {
                this.visibleField = value;
            }
        }
        
        /// <remarks/>
        public string Description {
            get {
                return this.descriptionField;
            }
            set {
                this.descriptionField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.18408")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:Masterduner@Yeah.net")]
    public enum OrganizationObjectCategory {
        
        /// <remarks/>
        Organization,
        
        /// <remarks/>
        VirtualOrganization,
        
        /// <remarks/>
        Position,
        
        /// <remarks/>
        Staff,
    }
    
    /// <remarks/>
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(OrganizationObjectBase))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(Position))]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(Organization))]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.18408")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:Masterduner@Yeah.net")]
    public partial class DbHelper {
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.18408")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="urn:Masterduner@Yeah.net")]
    public partial class Position : OrganizationObjectBase {
        
        private System.Guid organizationIDField;
        
        /// <remarks/>
        public System.Guid OrganizationID {
            get {
                return this.organizationIDField;
            }
            set {
                this.organizationIDField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.18408")]
    public delegate void GetRootOrganizationCompletedEventHandler(object sender, GetRootOrganizationCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.18408")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class GetRootOrganizationCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal GetRootOrganizationCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public Organization Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((Organization)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.18408")]
    public delegate void CreateOrganizationCompletedEventHandler(object sender, System.ComponentModel.AsyncCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.18408")]
    public delegate void GetSubOrganizationsCompletedEventHandler(object sender, GetSubOrganizationsCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.18408")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class GetSubOrganizationsCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal GetSubOrganizationsCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public OrganizationObjectBase[] Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((OrganizationObjectBase[])(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.18408")]
    public delegate void UpdateOrganizationCompletedEventHandler(object sender, System.ComponentModel.AsyncCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.18408")]
    public delegate void CreatePositionCompletedEventHandler(object sender, CreatePositionCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.18408")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class CreatePositionCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal CreatePositionCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public int Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((int)(this.results[0]));
            }
        }
    }
}

#pragma warning restore 1591