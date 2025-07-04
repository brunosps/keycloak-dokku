<#import "template.ftl" as layout>
<@layout.emailLayout>
    <div class="email-content">
        <h2 style="color: #2b4164; margin-bottom: 24px; font-size: 20px;">Verificar Endereço de Email</h2>
        
        <p style="margin-bottom: 20px; color: #374151; font-size: 16px;">
            Olá,
        </p>
        
        <p style="margin-bottom: 20px; color: #374151; font-size: 16px;">
            Bem-vindo ao Crediuz! Para completar o seu cadastro e começar a explorar oportunidades exclusivas de investimento,
            você precisa verificar seu endereço de email.
        </p>
        
        <div style="text-align: center; margin: 32px 0;">
            <a href="${link}" class="email-button">Verificar Email</a>
        </div>
        
        <div class="email-security">
            <div class="email-security-title">
                🔒 Informações de Segurança
            </div>
            <div class="email-security-text">
                Este link de verificação expirará em ${linkExpiration} para sua segurança.
                A verificação de email é uma etapa importante para manter sua conta protegida.
            </div>
        </div>
        
        <p style="color: #374151; font-size: 16px; margin-bottom: 20px;">
            Caso o botão não funcione, você pode copiar e colar o link abaixo no seu navegador:
        </p>
        
        <p style="background-color: #f8fafc; padding: 12px; border-radius: 6px; word-break: break-all; font-size: 14px; color: #6b7280;">
            ${link}
        </p>
        
        <div style="background-color: #f0f9ff; border: 1px solid #5ccfe6; border-radius: 8px; padding: 16px; margin: 24px 0;">
            <p style="color: #2b4164; font-size: 14px; margin: 0;">
                💡 <strong>Dica:</strong> Se você não conseguir encontrar este email, verifique sua pasta de spam ou lixo eletrônico.
            </p>
        </div>
        
        <p style="margin-top: 24px; color: #374151; font-size: 16px;">
            Se você não criou uma conta no Crediuz, pode ignorar este email com segurança.
        </p>
        
        <p style="margin-top: 24px; color: #374151; font-size: 16px;">
            Atenciosamente,<br>
            <strong>Equipe Crediuz</strong>
        </p>
    </div>
</@layout.emailLayout>
