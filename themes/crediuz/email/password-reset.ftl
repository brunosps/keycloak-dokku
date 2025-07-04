<#import "template.ftl" as layout>
<@layout.emailLayout>
    <div class="email-content">
        <h2 style="color: #2b4164; margin-bottom: 24px; font-size: 20px;">Redefinir Senha</h2>
        
        <p style="margin-bottom: 20px; color: #374151; font-size: 16px;">
            Olá,
        </p>
        
        <p style="margin-bottom: 20px; color: #374151; font-size: 16px;">
            Recebemos uma solicitação para redefinir a senha da sua conta Crediuz. 
            Se você fez esta solicitação, clique no botão abaixo para criar uma nova senha:
        </p>
        
        <div style="text-align: center; margin: 32px 0;">
            <a href="${link}" class="email-button">Redefinir Senha</a>
        </div>
        
        <div class="email-security">
            <div class="email-security-title">
                🔒 Informações de Segurança
            </div>
            <div class="email-security-text">
                Este link expirará em ${linkExpiration} para sua segurança.
                Se você não solicitou a redefinição de senha, pode ignorar este email com segurança.
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
