<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false displayInfo=true; section>
    <#if section = "form">
        <div style="text-align: center;">
            <div class="crediuz-alert crediuz-alert-success">
                <h3 style="margin-bottom: 8px; font-weight: 600;">📧 Verifique seu email</h3>
                <p style="margin: 0;">
                    ${msg("emailVerifyInstruction1")}
                </p>
            </div>
            
            <div style="margin: 24px 0;">
                <p style="color: #6b7280; font-size: 14px;">
                    ${msg("emailVerifyInstruction2")}
                </p>
                <form action="${url.loginAction}" method="post" style="margin-top: 16px;">
                    <input type="hidden" name="key" value="${key}"/>
                    <button type="submit" class="crediuz-link" style="background: none; border: none; cursor: pointer; font-size: 14px;">
                        ${msg("doClickHere")} ${msg("emailVerifyInstruction3")}
                    </button>
                </form>
            </div>
            
            <div style="margin-top: 32px;">
                <a href="${url.loginUrl}" class="crediuz-button">Voltar ao Login</a>
            </div>
        </div>
        
    <#elseif section = "info">
        <div style="text-align: center;">
            <div style="background: #f0f9ff; border: 1px solid #5ccfe6; border-radius: 12px; padding: 16px; margin-bottom: 16px;">
                <div style="display: flex; align-items: center; gap: 8px; margin-bottom: 12px; justify-content: center;">
                    <span style="color: #5ccfe6; font-size: 18px;">🔐</span>
                    <span style="color: #2b4164; font-weight: 600; font-size: 14px;">Segurança em primeiro lugar</span>
                </div>
                <p style="color: #2b4164; font-size: 14px; line-height: 1.5; margin: 0;">
                    A verificação de email é uma etapa importante para manter sua conta segura e garantir que você receba informações importantes sobre seus investimentos.
                </p>
            </div>
            
            <div style="background: #fef3c7; border: 1px solid #f59e0b; border-radius: 12px; padding: 16px;">
                <p style="color: #92400e; font-size: 14px; line-height: 1.5; margin: 0;">
                    💡 <strong>Dica:</strong> Verifique também sua pasta de spam ou lixo eletrônico caso não encontre o email em sua caixa de entrada.
                </p>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
