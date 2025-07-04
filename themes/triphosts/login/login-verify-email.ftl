<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "header">
        ${msg("emailVerifyTitle")}
    <#elseif section = "form">
    <div id="kc-form">
      <div id="kc-form-wrapper">
        <div class="container">
          <!-- Left side - Email verification info -->
          <div class="login-form-container">
            <!-- Logo and branding -->
            <div class="login-logo">
              <img src="${url.resourcesPath}/img/logo-triphosts.svg" alt="TripHosts" />
              <h1>📧 Verifique seu email</h1>
              <p>Estamos quase lá! Só precisamos confirmar seu email</p>
            </div>

            <!-- Information message -->
            <div class="info-box">
              <div class="icon">✉️</div>
              <h3>Email enviado com sucesso!</h3>
              <p>Enviamos um link de verificação para <strong>${user.email}</strong>. Clique no link para ativar sua conta e começar sua jornada no TripHosts.</p>
            </div>

            <!-- Instructions -->
            <div style="background: #f8fafc; border-radius: 0.5rem; padding: 1.5rem; margin: 1.5rem 0;">
              <h4 style="margin: 0 0 1rem 0; color: #374151; font-size: 1rem; font-weight: 600;">Como proceder:</h4>
              <ol style="margin: 0; padding-left: 1.5rem; color: #4b5563; font-size: 0.875rem; line-height: 1.6;">
                <li style="margin-bottom: 0.5rem;">Abra seu email</li>
                <li style="margin-bottom: 0.5rem;">Procure por um email do TripHosts</li>
                <li style="margin-bottom: 0.5rem;">Clique no botão "Verificar meu email"</li>
                <li style="margin-bottom: 0;">Você será redirecionado automaticamente</li>
              </ol>
            </div>

            <!-- Resend form -->
            <form id="kc-verify-email-form" action="${url.loginAction}" method="post">
              <div class="${properties.kcFormGroupClass!}">
                <input class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" 
                       type="submit" value="Reenviar email" style="background: #f3f4f6; color: #374151; border: 1px solid #d1d5db;"/>
              </div>
            </form>

            <!-- Alternative actions -->
            <div style="text-align: center; margin-top: 1.5rem;">
              <p style="color: #6b7280; font-size: 0.875rem; margin: 0 0 1rem 0;">
                Email incorreto?
              </p>
              <a href="${url.loginUrl}" style="color: #00b7c2; text-decoration: none; font-weight: 600; font-size: 0.875rem;">
                ← Voltar ao login
              </a>
            </div>

            <!-- Warning box -->
            <div class="warning-box" style="margin-top: 2rem;">
              <div class="icon">⏰</div>
              <h3>Não encontra o email?</h3>
              <p>• Verifique sua caixa de spam ou lixo eletrônico<br>
              • O email pode demorar alguns minutos para chegar<br>
              • Certifique-se de que o email está digitado corretamente<br>
              • Use o botão "Reenviar email" se necessário</p>
            </div>
          </div>

          <!-- Right side - Success content -->
          <div class="marketing-content">
            <div class="cta-box">
              <h2>Quase <span class="highlight">chegando</span> lá!</h2>
              <p>Falta apenas um passo para você fazer parte da maior comunidade de viajantes do Brasil</p>
              
              <!-- What's waiting -->
              <div class="features-list">
                <div class="feature-item">
                  <div class="feature-icon">🌍</div>
                  <span>50+ destinos únicos te esperando</span>
                </div>
                <div class="feature-item">
                  <div class="feature-icon">👥</div>
                  <span>Comunidade de 1000+ viajantes</span>
                </div>
                <div class="feature-item">
                  <div class="feature-icon">✨</div>
                  <span>Experiências exclusivas com influenciadores</span>
                </div>
                <div class="feature-item">
                  <div class="feature-icon">🎯</div>
                  <span>Viagens personalizadas para você</span>
                </div>
              </div>

              <!-- Stats reminder -->
              <div class="stats-grid" style="margin-top: 2rem;">
                <div class="stat-item">
                  <div class="stat-number">4.9★</div>
                  <div class="stat-label">Avaliação Média</div>
                </div>
                <div class="stat-item">
                  <div class="stat-number">98%</div>
                  <div class="stat-label">Satisfação</div>
                </div>
              </div>

              <div style="margin-top: 2rem; padding: 1.5rem; background: rgba(251, 191, 36, 0.2); border-radius: 0.75rem; border: 1px solid rgba(251, 191, 36, 0.3);">
                <p style="margin: 0; font-size: 0.875rem; color: rgba(255, 255, 255, 0.9);">
                  🎉 <strong>Oferta especial:</strong> Primeiros usuários ganham 10% de desconto na primeira viagem!
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </#if>

</@layout.registrationLayout>
