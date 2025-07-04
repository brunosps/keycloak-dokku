<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "form">
        <div style="text-align: center;">
            <div class="crediuz-alert crediuz-alert-warning">
                <h3 style="margin-bottom: 8px; font-weight: 600;">⏰ Ação Necessária</h3>
                <p style="margin: 0;">
                    ${msg("loginTimeout")}
                </p>
            </div>
            
            <div style="margin-top: 24px;">
                <a href="${url.loginUrl}" class="crediuz-button">Tentar Novamente</a>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
