<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "form">
        <div style="text-align: center;">
            <div class="crediuz-alert crediuz-alert-error">
                <#if message?has_content>
                    ${kcSanitize(message.summary)?no_esc}
                <#else>
                    ${msg("errorTitle")}
                </#if>
            </div>
            
            <div style="margin-top: 24px;">
                <#if client?? && client.baseUrl?has_content>
                    <a href="${client.baseUrl}" class="crediuz-button">${msg("backToApplication")}</a>
                <#else>
                    <a href="${url.loginUrl}" class="crediuz-button">Voltar ao Login</a>
                </#if>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
