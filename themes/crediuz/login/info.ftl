<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "form">
        <div style="text-align: center;">
            <div class="crediuz-alert crediuz-alert-info">
                <#if messageHeader??>
                    <h3 style="margin-bottom: 8px; font-weight: 600;">${kcSanitize(messageHeader)?no_esc}</h3>
                </#if>
                <#if message?has_content>
                    ${kcSanitize(message.summary)?no_esc}
                </#if>
            </div>
            
            <#if requiredActions?? && requiredActions?size gt 0>
                <div style="margin: 24px 0;">
                    <h4 style="color: #2b4164; margin-bottom: 16px;">Ações necessárias:</h4>
                    <ul style="text-align: left; color: #6b7280; margin: 0 auto; max-width: 300px;">
                        <#list requiredActions as requiredAction>
                            <li style="margin-bottom: 8px;">${msg("${requiredAction}")}</li>
                        </#list>
                    </ul>
                </div>
            </#if>
            
            <div style="margin-top: 24px;">
                <#if (actionUri?has_content)>
                    <a href="${actionUri}" class="crediuz-button">${msg("proceedWithAction")}</a>
                <#elseif client?? && client.baseUrl?has_content>
                    <a href="${client.baseUrl}" class="crediuz-button">${msg("backToApplication")}</a>
                <#else>
                    <a href="${url.loginUrl}" class="crediuz-button">Continuar</a>
                </#if>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
