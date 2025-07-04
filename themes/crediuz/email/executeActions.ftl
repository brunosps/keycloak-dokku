<#import "template.ftl" as layout>
<@layout.emailLayout>
    <div class="email-content">
        <h2 style="color: #2b4164; margin-bottom: 24px; font-size: 20px;">Ação Necessária na Sua Conta</h2>
        
        <p style="margin-bottom: 20px; color: #374151; font-size: 16px;">
            Olá,
        </p>
        
        <p style="margin-bottom: 20px; color: #374151; font-size: 16px;">
            Uma ação é necessária na sua conta Crediuz. Para manter sua conta segura e em conformidade, 
            clique no botão abaixo para realizar as ações necessárias:
        </p>
        
        <div style="text-align: center; margin: 32px 0;">
            <a href="${link}" class="email-button">Realizar Ação</a>
        </div>
        
        <#if requiredActions?? && requiredActions?size gt 0>
            <div style="background-color: #fef3c7; border: 1px solid #f59e0b; border-radius: 8px; padding: 16px; margin: 24px 0;">
                <div style="color: #92400e; font-weight: 600; margin-bottom: 12px; display: flex; align-items: center; gap: 8px;">
                    ⚠️ Ações Necessárias:
                </div>
                <ul style="color: #92400e; font-size: 14px; margin-left: 20px;">
                    <#list requiredActions as requiredAction>
                        <li style="margin-bottom: 4px;">${msg("${requiredAction}")}</li>
                    </#list>
                </ul>
            </div>
        </#if>
        
        <div class="email-security">
            <div class="email-security-title">
                🔒 Informações de Segurança
            </div>
            <div class="email-security-text">
                Este link expirará em ${linkExpiration} para sua segurança.
                É importante realizar essas ações para manter sua conta em conformidade e protegida.
            </div>
        </div>
        
        <p style="color: #374151; font-size: 16px; margin-bottom: 20px;">
            Caso o botão não funcione, você pode copiar e colar o link abaixo no seu navegador:
        </p>
        
        <p style="background-color: #f8fafc; padding: 12px; border-radius: 6px; word-break: break-all; font-size: 14px; color: #6b7280;">
            ${link}
        </p>
        
        <p style="margin-top: 24px; color: #374151; font-size: 16px;">
            Atenciosamente,<br>
            <strong>Equipe Crediuz</strong>
        </p>
    </div>
</@layout.emailLayout>
