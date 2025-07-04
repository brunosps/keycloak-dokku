<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false displayInfo=true; section>
    <#if section = "form">
        <div class="triphosts-form">
            <!-- Mensagem de erro -->
            <div class="triphosts-alert triphosts-alert-error">
                ${message.summary?no_esc}
            </div>
            
            <!-- Botões de ação -->
            <div style="display: flex; flex-direction: column; gap: 12px;">
                <#if client?? && client.baseUrl?has_content>
                    <a href="${client.baseUrl}" class="triphosts-button" style="text-decoration: none; text-align: center; display: inline-block;">
                        ${msg("backToApplication")}
                    </a>
                </#if>
                
                <a href="${url.loginUrl}" class="triphosts-link" style="text-align: center; display: block;">
                    ${msg("backToLogin")}
                </a>
            </div>
        </div>
    <#elseif section = "info">
        <div style="text-align: center;">
            <div style="background: #fef3c7; border-left: 4px solid #f59e0b; padding: 16px; border-radius: 8px; margin-bottom: 16px;">
                <h3 style="color: #92400e; margin-bottom: 8px; font-weight: 600;">Não se preocupe</h3>
                <p style="color: #92400e; font-size: 14px; line-height: 1.5;">
                    Você pode tentar novamente ou entrar em contato conosco se o problema persistir
                </p>
            </div>
            
            <div style="background: #f0f9ff; border: 1px solid #0284c7; border-radius: 8px; padding: 16px;">
                <div style="display: flex; align-items: center; gap: 8px; justify-content: center; margin-bottom: 12px;">
                    <span style="color: #0284c7; font-size: 18px;">💡</span>
                    <span style="color: #0369a1; font-weight: 600; font-size: 14px;">Dicas para resolver</span>
                </div>
                <div style="text-align: left;">
                    <div style="display: flex; align-items: center; gap: 8px; margin-bottom: 8px;">
                        <span style="color: #0284c7; font-size: 16px;">•</span>
                        <span style="color: #0369a1; font-size: 14px;">Verifique se digitou o email corretamente</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 8px; margin-bottom: 8px;">
                        <span style="color: #0284c7; font-size: 16px;">•</span>
                        <span style="color: #0369a1; font-size: 14px;">Aguarde alguns minutos antes de tentar novamente</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 8px;">
                        <span style="color: #0284c7; font-size: 16px;">•</span>
                        <span style="color: #0369a1; font-size: 14px;">Entre em contato se o problema persistir</span>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
