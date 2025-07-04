<#import "template.ftl" as layout>
<#assign content>
    <h2>🔐 Redefinição de senha solicitada</h2>
    
    <p>Olá <strong>${user.firstName!''}${user.lastName!''}</strong>,</p>
    
    <p>Recebemos uma solicitação para redefinir a senha da sua conta no TripHosts. Se você fez esta solicitação, clique no botão abaixo para criar uma nova senha:</p>
    
    <div style="text-align: center; margin: 32px 0;">
        <a href="${link}" class="btn">Redefinir minha senha</a>
    </div>
    
    <div class="info-box">
        <div class="icon">🛡️</div>
        <h3>Processo seguro e rápido</h3>
        <p>Você será direcionado para uma página segura onde poderá criar uma nova senha forte para proteger sua conta e suas experiências de viagem.</p>
    </div>
    
    <p>Se o botão acima não funcionar, copie e cole este link no seu navegador:</p>
    <p style="word-break: break-all; background: #f3f4f6; padding: 12px; border-radius: 6px; font-family: monospace; font-size: 14px;">${link}</p>
    
    <div class="warning-box">
        <div class="icon">⚠️</div>
        <h3>Importante - Segurança da sua conta</h3>
        <p>• Este link expira em 1 hora por motivos de segurança<br>
        • Se você não solicitou esta redefinição, ignore este e-mail<br>
        • Sua senha atual continuará funcionando normalmente<br>
        • Recomendamos usar uma senha forte e única</p>
    </div>
    
    <h3 style="color: #00b7c2; margin: 24px 0 16px 0;">💡 Dicas para uma senha segura:</h3>
    
    <div style="background: #f0fdff; border-radius: 8px; padding: 20px; margin: 16px 0; border: 1px solid #b3f0ff;">
        <p style="margin: 0 0 8px 0; color: #0e7490;">• Use pelo menos 8 caracteres</p>
        <p style="margin: 0 0 8px 0; color: #0e7490;">• Combine letras maiúsculas e minúsculas</p>
        <p style="margin: 0 0 8px 0; color: #0e7490;">• Inclua números e símbolos especiais</p>
        <p style="margin: 0; color: #0e7490;">• Evite informações pessoais óbvias</p>
    </div>
    
    <p>Se você não solicitou esta redefinição de senha, pode ignorar este e-mail com segurança. Sua conta permanece protegida e nenhuma alteração será feita.</p>
    
    <p>Caso tenha dúvidas ou precise de ajuda, nossa equipe de suporte está sempre disponível para você.</p>
    
    <div style="text-align: center; margin: 24px 0;">
        <a href="${baseUrl}/suporte" style="color: #00b7c2; text-decoration: none; font-weight: 600;">Falar com o suporte →</a>
    </div>
    
    <p>Cuidamos da segurança da sua conta para que você possa focar no que realmente importa: suas próximas aventuras! 🌍</p>
    
    <p style="margin-top: 32px;">
        Atenciosamente,<br>
        <span class="highlight">Equipe de Segurança TripHosts</span>
    </p>
</#assign>

<@layout.emailLayout content=content />
