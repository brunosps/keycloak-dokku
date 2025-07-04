<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "form">
        <div style="text-align: center;">
            <div class="crediuz-alert crediuz-alert-warning">
                <h3 style="margin-bottom: 8px; font-weight: 600;">⏰ Sessão Expirada</h3>
                <p style="margin: 0;">
                    Sua sessão de login expirou. Por favor, tente fazer login novamente.
                </p>
            </div>
            
            <div style="margin-top: 24px;">
                <a href="${url.loginUrl}" class="crediuz-button">Fazer Login Novamente</a>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
