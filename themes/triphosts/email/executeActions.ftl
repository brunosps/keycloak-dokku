<#import "template.ftl" as layout>
<#assign content>
    <h2>🎊 Sua conta foi verificada com sucesso!</h2>
    
    <p>Olá <strong>${user.firstName!''}${user.lastName!''}</strong>,</p>
    
    <p>Parabéns! Sua conta no TripHosts foi verificada e você agora faz parte da nossa incrível comunidade de viajantes.</p>
    
    <div style="text-align: center; margin: 32px 0;">
        <a href="${baseUrl}" class="btn">Explorar experiências agora</a>
    </div>
    
    <div class="info-box">
        <div class="icon">🗺️</div>
        <h3>Sua jornada começa aqui:</h3>
        <p>• <strong>Descubra destinos únicos:</strong> Explore mais de 50 locais incríveis pelo mundo<br>
        • <strong>Conecte-se com influenciadores:</strong> Siga seus criadores de conteúdo favoritos<br>
        • <strong>Experiências exclusivas:</strong> Acesse viagens que não encontrará em nenhum outro lugar<br>
        • <strong>Comunidade global:</strong> Faça parte de uma rede de mais de 1000 viajantes</p>
    </div>
    
    <h3 style="color: #00b7c2; margin: 32px 0 16px 0;">🚀 Primeiros passos recomendados:</h3>
    
    <div style="background: #f8fafc; border-radius: 8px; padding: 20px; margin: 16px 0;">
        <p style="margin: 0 0 12px 0;"><strong>1. Complete seu perfil</strong></p>
        <p style="margin: 0; font-size: 14px; color: #6b7280;">Adicione suas preferências de viagem, interesses e uma foto para personalizar sua experiência.</p>
    </div>
    
    <div style="background: #f8fafc; border-radius: 8px; padding: 20px; margin: 16px 0;">
        <p style="margin: 0 0 12px 0;"><strong>2. Explore destinos</strong></p>
        <p style="margin: 0; font-size: 14px; color: #6b7280;">Navegue pelos destinos disponíveis e descubra experiências que combinam com seu estilo.</p>
    </div>
    
    <div style="background: #f8fafc; border-radius: 8px; padding: 20px; margin: 16px 0;">
        <p style="margin: 0 0 12px 0;"><strong>3. Siga influenciadores</strong></p>
        <p style="margin: 0; font-size: 14px; color: #6b7280;">Conecte-se com criadores de conteúdo e receba notificações sobre suas próximas viagens.</p>
    </div>
    
    <div class="warning-box">
        <div class="icon">🛡️</div>
        <h3>Dicas de segurança</h3>
        <p>• Nunca compartilhe suas credenciais de login<br>
        • Use nossa plataforma oficial para todas as comunicações<br>
        • Mantenha suas informações pessoais atualizadas<br>
        • Entre em contato conosco se notar atividade suspeita</p>
    </div>
    
    <p>Precisando de ajuda? Nossa equipe de suporte está sempre pronta para ajudar você a aproveitar ao máximo sua experiência no TripHosts.</p>
    
    <div style="text-align: center; margin: 32px 0;">
        <a href="${baseUrl}/suporte" style="color: #00b7c2; text-decoration: none; font-weight: 600;">Centro de Ajuda →</a>
    </div>
    
    <p>Bem-vindo à família TripHosts! Sua próxima aventura está a apenas um clique de distância. 🌟</p>
    
    <p style="margin-top: 32px;">
        Com carinho,<br>
        <span class="highlight">Equipe TripHosts</span>
    </p>
</#assign>

<@layout.emailLayout content=content />
