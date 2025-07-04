<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
        <div class="container">
            <!-- Left side - Update password form -->
            <div class="form-side">
                <!-- Logo and branding -->
                <div class="logo-section">
                    <img src="${url.resourcesPath}/img/logo-triphosts.svg" alt="TripHosts" class="logo" />
                    <h1 class="page-title">${msg("updatePasswordTitle")}</h1>
                    <p class="page-subtitle">${msg("updatePasswordInstruction")}</p>
                </div>

                <!-- Update password form -->
                <form id="kc-passwd-update-form" class="login-form" action="${url.loginAction}" method="post">
                    <!-- Hidden username field for password managers -->
                    <input type="text" id="username" name="username" value="${username!''}" autocomplete="username" readonly="readonly" style="display:none;"/>
                    <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

                    <div class="form-group">
                        <label for="password-new" class="form-label">
                            ${msg("passwordNew")}
                        </label>
                        <input type="password" 
                               id="password-new" 
                               name="password-new" 
                               class="form-input <#if messagesPerField.existsError('password')>input-error</#if>"
                               autocomplete="new-password"
                               aria-invalid="<#if messagesPerField.existsError('password')>true</#if>"
                               autofocus
                               required />
                        <#if messagesPerField.existsError('password')>
                            <div class="input-error-message">
                                ${kcSanitize(messagesPerField.get('password'))?no_esc}
                            </div>
                        </#if>
                    </div>

                    <div class="form-group">
                        <label for="password-confirm" class="form-label">
                            ${msg("passwordConfirm")}
                        </label>
                        <input type="password" 
                               id="password-confirm" 
                               name="password-confirm" 
                               class="form-input <#if messagesPerField.existsError('password-confirm')>input-error</#if>"
                               autocomplete="new-password"
                               aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                               required />
                        <#if messagesPerField.existsError('password-confirm')>
                            <div class="input-error-message">
                                ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                            </div>
                        </#if>
                    </div>

                    <#if isAppInitiatedAction??>
                        <div class="form-group">
                            <div class="checkbox-group">
                                <input type="checkbox" id="logout-sessions" name="logout-sessions" value="on" checked class="form-checkbox">
                                <label for="logout-sessions" class="checkbox-label">
                                    ${msg("logoutOtherSessions")}
                                </label>
                            </div>
                        </div>
                    </#if>

                    <div class="form-actions">
                        <#if isAppInitiatedAction??>
                            <button type="submit" class="btn btn-primary btn-block">
                                ${msg("doSubmit")}
                            </button>
                            <button type="submit" name="cancel-aia" value="true" class="btn btn-secondary btn-block" style="margin-top: 0.5rem;">
                                ${msg("doCancel")}
                            </button>
                        <#else>
                            <button type="submit" class="btn btn-primary btn-block">
                                ${msg("doSubmit")}
                            </button>
                        </#if>
                    </div>
                </form>
            </div>

            <!-- Right side - Security information -->
            <div class="info-side">
                <div class="info-content">
                    <div class="info-icon">🔒</div>
                    <h2 class="info-title">Segurança em primeiro lugar</h2>
                    <p class="info-description">Proteja sua conta e suas aventuras com uma senha forte</p>
                    
                    <div class="features-list">
                        <div class="feature-item">
                            <div class="feature-icon">♦</div>
                            <span>Use pelo menos 8 caracteres</span>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon">♦</div>
                            <span>Combine letras maiúsculas e minúsculas</span>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon">🔢</div>
                            <span>Inclua números e símbolos especiais</span>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon">✨</div>
                            <span>Evite informações pessoais óbvias</span>
                        </div>
                    </div>

                    <div class="info-tip">
                        <p>
                            🛡️ <strong>Sua segurança é nossa prioridade.</strong> Uma senha forte protege não apenas sua conta, mas também todas as suas experiências e dados de viagem.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
