<?xml version="1.0" encoding="utf-8"?>
<configurationSectionModel xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="36e000c9-19d2-47bd-971d-aafe33ec58a8" namespace="EnterpriseServices.SecurityService.API.Configuration" xmlSchemaNamespace="urn:Masterduner@Yeah.net" assemblyName="EH.Security.OpenAPIs.SDK" xmlns="http://schemas.microsoft.com/dsltools/ConfigurationSectionDesigner">
  <typeDefinitions>
    <externalType name="String" namespace="System" />
    <externalType name="Boolean" namespace="System" />
    <externalType name="Int32" namespace="System" />
    <externalType name="Int64" namespace="System" />
    <externalType name="Single" namespace="System" />
    <externalType name="Double" namespace="System" />
    <externalType name="DateTime" namespace="System" />
    <externalType name="TimeSpan" namespace="System" />
  </typeDefinitions>
  <configurationElements>
    <configurationElement name="ServiceReferenceUrlConfigureElement" inheritanceModifier="Sealed" documentation="服务引用配置。">
      <attributeProperties>
        <attributeProperty name="Name" isRequired="true" isKey="true" isDefaultCollection="false" xmlName="name" isReadOnly="false" documentation="设置或获取服务名称。">
          <type>
            <externalTypeMoniker name="/36e000c9-19d2-47bd-971d-aafe33ec58a8/String" />
          </type>
        </attributeProperty>
        <attributeProperty name="Url" isRequired="true" isKey="false" isDefaultCollection="false" xmlName="url" isReadOnly="false" documentation="设置或获取服务地址。">
          <type>
            <externalTypeMoniker name="/36e000c9-19d2-47bd-971d-aafe33ec58a8/String" />
          </type>
        </attributeProperty>
      </attributeProperties>
    </configurationElement>
    <configurationElementCollection name="ServiceReferenceUrlConfigureElementCollection" inheritanceModifier="Sealed" documentation="ServiceReferenceUrlConfigureElement集合。" xmlItemName="add" codeGenOptions="Indexer">
      <itemType>
        <configurationElementMoniker name="/36e000c9-19d2-47bd-971d-aafe33ec58a8/ServiceReferenceUrlConfigureElement" />
      </itemType>
    </configurationElementCollection>
    <configurationSection name="ApiServiceReferenceUrlSection" inheritanceModifier="Sealed" documentation="服务引用地址配置。" codeGenOptions="XmlnsProperty" xmlSectionName="enterpriseServices.openApi">
      <attributeProperties>
        <attributeProperty name="BaseUrl" isRequired="true" isKey="false" isDefaultCollection="false" xmlName="baseUrl" isReadOnly="false" documentation="设置或获取服务基地址。">
          <type>
            <externalTypeMoniker name="/36e000c9-19d2-47bd-971d-aafe33ec58a8/String" />
          </type>
        </attributeProperty>
      </attributeProperties>
      <elementProperties>
        <elementProperty name="References" isRequired="false" isKey="false" isDefaultCollection="true" xmlName="" isReadOnly="false">
          <type>
            <configurationElementCollectionMoniker name="/36e000c9-19d2-47bd-971d-aafe33ec58a8/ServiceReferenceUrlConfigureElementCollection" />
          </type>
        </elementProperty>
      </elementProperties>
    </configurationSection>
  </configurationElements>
  <propertyValidators>
    <validators />
  </propertyValidators>
</configurationSectionModel>