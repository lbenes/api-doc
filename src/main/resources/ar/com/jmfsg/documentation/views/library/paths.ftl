<#import "/spring.ftl" as s />

<#if general.relativePath?has_content>
   	<#assign relativePath>
	   	<@s.url "${general.relativePath}" />
   	</#assign>
<#else>
	<#assign relativePath>
		<@s.url "" />
	</#assign>
</#if>

<#if general.methodPath?has_content>
   	<#assign methodPath> 
   		<@s.url "${general.methodPath}" />
   	</#assign>
<#else>
	<#assign methodPath = relativePath />
</#if>

<#if general.resourcesPath?has_content>
	<#assign resourcesPath = relativePath + general.resourcesPath >
<#else>
	<#assign resourcesPath = relativePath >
</#if>
