<#import "template.ftl" as layout>
<#assign content>
    <h2>🎉 Bem-vindo à comunidade TripHosts!</h2>
    
    <p>Olá <strong>${user.firstName!''}${user.lastName!''}</strong>,</p>
    
    <p>Estamos muito felizes em ter você conosco! Para começar sua jornada e acessar experiências únicas de viagem, precisamos verificar seu endereço de e-mail.</p>
    
    <div style="text-align: center; margin: 32px 0;">
        <a href="${link}" class="btn">Verificar meu e-mail</a>
    </div>
    
    <div class="info-box">
        <div class="icon">✨</div>
        <h3>O que você pode fazer após a verificação:</h3>
        <p>• Explorar mais de 50 destinos únicos pelo mundo<br>
        • Conectar-se com seus influenciadores favoritos<br>
        • Acessar experiências exclusivas e autênticas<br>
        • Participar da nossa comunidade global de viajantes</p>
    </div>
    
    <p>Se o botão acima não funcionar, copie e cole este link no seu navegador:</p>
    <p style="word-break: break-all; background: #f3f4f6; padding: 12px; border-radius: 6px; font-family: monospace; font-size: 14px;">${link}</p>
    
    <div class="warning-box">
        <div class="icon">⏰</div>
        <h3>Link temporário</h3>
        <p>Por motivos de segurança, este link expira em 24 horas. Se precisar de um novo link de verificação, faça login em sua conta e solicite o reenvio.</p>
    </div>
    
    <p>Se você não criou uma conta no TripHosts, pode ignorar este e-mail com segurança.</p>
    
    <p>Sua jornada está prestes a começar! 🌍✈️</p>
    
    <p style="margin-top: 32px;">
        Atenciosamente,<br>
        <span class="highlight">Equipe TripHosts</span>
    </p>
</#assign>

<@layout.emailLayout content=content />
