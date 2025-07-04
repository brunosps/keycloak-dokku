<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "header">
        ${msg("loginErrorTitle")}
    <#elseif section = "form">
    <div id="kc-form">
      <div id="kc-form-wrapper">
        <div class="container">
          <!-- Left side - Error message -->
          <div class="login-form-container">
            <!-- Logo and branding -->
            <div class="login-logo">
              <img src="${url.resourcesPath}/img/logo-triphosts.svg" alt="TripHosts" />
              <h1>Ops! Algo deu errado</h1>
              <p>Não se preocupe, vamos resolver isso juntos</p>
            </div>

            <!-- Error message -->
            <div class="alert alert-error">
              <span class="kc-feedback-text">
                <#if message?has_content>
                    ${kcSanitize(message.summary)?no_esc}
                <#else>
                    Ocorreu um erro inesperado. Tente novamente em alguns instantes.
                </#if>
              </span>
            </div>

            <!-- Solutions -->
            <div class="info-box">
              <div class="icon">💡</div>
              <h3>O que você pode fazer:</h3>
              <p>• Verifique se seu email e senha estão corretos<br>
              • Tente fazer login novamente<br>
              • Use a opção "Esqueci minha senha" se necessário<br>
              • Entre em contato com nosso suporte se o problema persistir</p>
            </div>

            <!-- Action buttons -->
            <div class="${properties.kcFormGroupClass!}">
              <a href="${url.loginUrl}" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}">
                Tentar novamente
              </a>
              
              <#if realm.resetPasswordAllowed>
                <div style="text-align: center; margin-top: 1rem;">
                  <a href="${url.loginResetCredentialsUrl}" style="color: #00b7c2; text-decoration: none; font-weight: 600;">
                    Esqueci minha senha →
                  </a>
                </div>
              </#if>
            </div>

            <!-- Support link -->
            <div style="text-align: center; margin-top: 2rem; padding-top: 1rem; border-top: 1px solid #e5e7eb;">
              <p style="color: #6b7280; font-size: 0.875rem; margin: 0 0 0.5rem 0;">
                Precisando de ajuda?
              </p>
              <a href="#" style="color: #00b7c2; text-decoration: none; font-weight: 600; font-size: 0.875rem;">
                Falar com nosso suporte
              </a>
            </div>
          </div>

          <!-- Right side - Support content -->
          <div class="marketing-content">
            <div class="cta-box">
              <h2>Estamos aqui para <span class="highlight">ajudar</span></h2>
              <p>Nossa equipe de suporte está sempre pronta para garantir que você tenha a melhor experiência</p>
              
              <!-- Support options -->
              <div class="features-list">
                <div class="feature-item">
                  <div class="feature-icon">💬</div>
                  <span>Chat online disponível 24/7</span>
                </div>
                <div class="feature-item">
                  <div class="feature-icon">📧</div>
                  <span>Suporte por email em português</span>
                </div>
                <div class="feature-item">
                  <div class="feature-icon">📱</div>
                  <span>WhatsApp para questões urgentes</span>
                </div>
                <div class="feature-item">
                  <div class="feature-icon">🔧</div>
                  <span>Centro de ajuda com guias completos</span>
                </div>
              </div>

              <div style="margin-top: 2rem; padding: 1.5rem; background: rgba(0, 183, 194, 0.2); border-radius: 0.75rem; border: 1px solid rgba(0, 183, 194, 0.3);">
                <p style="margin: 0; font-size: 0.875rem; color: rgba(255, 255, 255, 0.9);">
                  🛡️ <strong>Sua conta está segura.</strong> Problemas de login são temporários e não afetam a segurança dos seus dados.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </#if>

</@layout.registrationLayout>
