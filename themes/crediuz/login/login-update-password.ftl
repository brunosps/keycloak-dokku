<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm') displayInfo=true; section>
    <#if section = "form">
        <form id="kc-passwd-update-form" class="crediuz-form" action="${url.loginAction}" method="post">
            <!-- Hidden username field for password managers -->
            <input type="text" id="username" name="username" value="${username!''}" autocomplete="username" readonly="readonly" style="display:none;"/>
            <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

            <div class="crediuz-field">
                <label for="password-new" class="crediuz-label">
                    ${msg("passwordNew")}
                </label>
                <input type="password" 
                       id="password-new" 
                       name="password-new" 
                       class="crediuz-input"
                       autocomplete="new-password"
                       placeholder="Digite sua nova senha"
                       aria-invalid="<#if messagesPerField.existsError('password')>true</#if>"
                       autofocus
                       required />
                <#if messagesPerField.existsError('password')>
                    <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                        ${kcSanitize(messagesPerField.get('password'))?no_esc}
                    </div>
                </#if>
            </div>

            <div class="crediuz-field">
                <label for="password-confirm" class="crediuz-label">
                    ${msg("passwordConfirm")}
                </label>
                <input type="password" 
                       id="password-confirm" 
                       name="password-confirm" 
                       class="crediuz-input"
                       autocomplete="new-password"
                       placeholder="Confirme sua nova senha"
                       aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                       required />
                <#if messagesPerField.existsError('password-confirm')>
                    <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                        ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                    </div>
                </#if>
            </div>

            <#if isAppInitiatedAction??>
                <div class="crediuz-checkbox-container">
                    <div class="crediuz-checkbox-left">
                        <input type="checkbox" id="logout-sessions" name="logout-sessions" value="on" checked class="crediuz-checkbox">
                        <label for="logout-sessions" class="crediuz-checkbox-label">
                            ${msg("logoutOtherSessions")}
                        </label>
                    </div>
                </div>
            </#if>

            <div style="margin-top: 24px;">
                <#if isAppInitiatedAction??>
                    <input type="submit" class="crediuz-button" value="${msg("doSubmit")}" style="margin-bottom: 12px;" />
                    <input type="submit" name="cancel-aia" value="${msg("doCancel")}" class="crediuz-button" 
                           style="background: #f8fafc; color: #64748b; border: 2px solid #e2e8f0;" />
                <#else>
                    <input type="submit" class="crediuz-button" value="${msg("doSubmit")}" />
                </#if>
            </div>
        </form>
    <#elseif section = "info">
        <div style="text-align: center;">
            <div style="background: #f0fdff; border: 1px solid #5ccfe6; border-radius: 12px; padding: 16px; margin-bottom: 16px;">
                <div style="display: flex; align-items: center; gap: 8px; margin-bottom: 12px; justify-content: center;">
                    <span style="color: #5ccfe6; font-size: 18px;">🔒</span>
                    <span style="color: #2b4164; font-weight: 600; font-size: 14px;">Dicas para uma senha segura</span>
                </div>
                <div style="text-align: left; color: #2b4164; font-size: 14px; line-height: 1.5;">
                    <div style="margin-bottom: 8px;">• Use pelo menos 8 caracteres</div>
                    <div style="margin-bottom: 8px;">• Combine letras maiúsculas e minúsculas</div>
                    <div style="margin-bottom: 8px;">• Inclua números e símbolos especiais</div>
                    <div>• Evite informações pessoais óbvias</div>
                </div>
            </div>
            
            <div style="background: #f0f9ff; border: 1px solid #5ccfe6; border-radius: 12px; padding: 16px;">
                <p style="color: #2b4164; font-size: 14px; line-height: 1.5; margin: 0;">
                    🛡️ <strong>Sua segurança é nossa prioridade.</strong> Uma senha forte protege não apenas sua conta, mas também todos os seus investimentos e dados financeiros.
                </p>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
