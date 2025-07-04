<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName'); section>
    <#if section = "header">
        ${msg("loginProfileTitle")}
    <#elseif section = "form">
    <div id="kc-form">
      <div id="kc-form-wrapper">
        <div class="container">
          <!-- Left side - Profile update form -->
          <div class="login-form-container">
            <!-- Logo and branding -->
            <div class="login-logo">
              <img src="${url.resourcesPath}/img/logo-triphosts.svg" alt="TripHosts" />
              <h1>Complete seu perfil</h1>
              <p>Adicione algumas informações para personalizar sua experiência</p>
            </div>

            <!-- Error messages -->
            <#if messagesPerField.existsError('firstName','lastName','email','username')>
                <div class="alert alert-error">
                    <span class="kc-feedback-text">${kcSanitize(messagesPerField.getFirstError('firstName','lastName','email','username'))?no_esc}</span>
                </div>
            </#if>

            <!-- Profile form -->
            <form id="kc-update-profile-form" action="${url.loginAction}" method="post">
              <div class="${properties.kcFormGroupClass!}">
                <label for="firstName" class="${properties.kcLabelClass!}">${msg("firstName")}</label>
                <input type="text" id="firstName" name="firstName" value="${(user.firstName!'')}" 
                       class="${properties.kcInputClass!}"
                       aria-invalid="<#if messagesPerField.existsError('firstName')>true</#if>"
                />
                <#if messagesPerField.existsError('firstName')>
                    <span id="input-error-firstname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.getFirstError('firstName'))?no_esc}
                    </span>
                </#if>
              </div>

              <div class="${properties.kcFormGroupClass!}">
                <label for="lastName" class="${properties.kcLabelClass!}">${msg("lastName")}</label>
                <input type="text" id="lastName" name="lastName" value="${(user.lastName!'')}" 
                       class="${properties.kcInputClass!}"
                       aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>"
                />
                <#if messagesPerField.existsError('lastName')>
                    <span id="input-error-lastname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.getFirstError('lastName'))?no_esc}
                    </span>
                </#if>
              </div>

              <div class="${properties.kcFormGroupClass!}">
                <label for="email" class="${properties.kcLabelClass!}">${msg("email")}</label>
                <input type="email" id="email" name="email" value="${(user.email!'')}" 
                       class="${properties.kcInputClass!}"
                       aria-invalid="<#if messagesPerField.existsError('email')>true</#if>"
                />
                <#if messagesPerField.existsError('email')>
                    <span id="input-error-email" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.getFirstError('email'))?no_esc}
                    </span>
                </#if>
              </div>

              <#if user.editUsernameAllowed>
                  <div class="${properties.kcFormGroupClass!}">
                    <label for="username" class="${properties.kcLabelClass!}">${msg("username")}</label>
                    <input type="text" id="username" name="username" value="${(user.username!'')}" 
                           class="${properties.kcInputClass!}"
                           aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                    />
                    <#if messagesPerField.existsError('username')>
                        <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.getFirstError('username'))?no_esc}
                        </span>
                    </#if>
                  </div>
              </#if>

              <!-- Optional info box -->
              <div class="info-box">
                <div class="icon">💡</div>
                <h3>Por que precisamos dessas informações?</h3>
                <p>Usamos seu nome para personalizar sua experiência e facilitar a comunicação com hosts e outros viajantes. Você pode alterar essas informações a qualquer momento em seu perfil.</p>
              </div>

              <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                  <#if isAppInitiatedAction??>
                      <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" 
                             type="submit" value="${msg("doSubmit")}" />
                      <button class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" 
                              type="submit" name="cancel-aia" value="true" style="margin-left: 1rem;">${msg("doCancel")}</button>
                  <#else>
                      <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" 
                             type="submit" value="${msg("doSubmit")}" />
                  </#if>
                </div>
              </div>
            </form>
          </div>

          <!-- Right side - Welcome content -->
          <div class="marketing-content">
            <div class="cta-box">
              <h2>Bem-vindo ao <span class="highlight">TripHosts</span>!</h2>
              <p>Agora você faz parte da maior comunidade de viajantes conectados com influenciadores</p>
              
              <!-- Next steps -->
              <div class="features-list">
                <div class="feature-item">
                  <div class="feature-icon">🎯</div>
                  <span>Personalizaremos suas recomendações</span>
                </div>
                <div class="feature-item">
                  <div class="feature-icon">💬</div>
                  <span>Facilitaremos conexões com outros viajantes</span>
                </div>
                <div class="feature-item">
                  <div class="feature-icon">📱</div>
                  <span>Enviaremos notificações relevantes</span>
                </div>
                <div class="feature-item">
                  <div class="feature-icon">🎁</div>
                  <span>Ofereceremos promoções exclusivas</span>
                </div>
              </div>

              <!-- Privacy assurance -->
              <div style="margin-top: 2rem; padding: 1.5rem; background: rgba(0, 183, 194, 0.2); border-radius: 0.75rem; border: 1px solid rgba(0, 183, 194, 0.3);">
                <p style="margin: 0; font-size: 0.875rem; color: rgba(255, 255, 255, 0.9);">
                  🔒 <strong>Seus dados estão seguros.</strong> Respeitamos sua privacidade e nunca compartilhamos informações pessoais sem sua permissão.
                </p>
              </div>

              <!-- Stats -->
              <div class="stats-grid" style="margin-top: 2rem;">
                <div class="stat-item">
                  <div class="stat-number">100%</div>
                  <div class="stat-label">Seguro</div>
                </div>
                <div class="stat-item">
                  <div class="stat-number">24/7</div>
                  <div class="stat-label">Suporte</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </#if>

</@layout.registrationLayout>
