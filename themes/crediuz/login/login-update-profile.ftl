<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username') displayInfo=true; section>
    <#if section = "form">
        <form id="kc-update-profile-form" class="crediuz-form" action="${url.loginAction}" method="post">
            <#if user.editUsernameAllowed>
                <div class="crediuz-field">
                    <label for="username" class="crediuz-label">${msg("username")}</label>
                    <input type="text" id="username" name="username" class="crediuz-input"
                           value="${(user.username!'')}" readonly="readonly"
                           aria-invalid="<#if messagesPerField.existsError('username')>true</#if>" />
                    <#if messagesPerField.existsError('username')>
                        <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                            ${kcSanitize(messagesPerField.get('username'))?no_esc}
                        </div>
                    </#if>
                </div>
            </#if>

            <div class="crediuz-field">
                <label for="email" class="crediuz-label">${msg("email")}</label>
                <input type="email" id="email" name="email" class="crediuz-input"
                       value="${(user.email!'')}" readonly="readonly"
                       aria-invalid="<#if messagesPerField.existsError('email')>true</#if>" />
                <#if messagesPerField.existsError('email')>
                    <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                        ${kcSanitize(messagesPerField.get('email'))?no_esc}
                    </div>
                </#if>
            </div>

            <div class="crediuz-field">
                <label for="firstName" class="crediuz-label">${msg("firstName")}</label>
                <input type="text" id="firstName" name="firstName" class="crediuz-input"
                       value="${(user.firstName!'')}" autofocus
                       placeholder="Digite seu primeiro nome"
                       aria-invalid="<#if messagesPerField.existsError('firstName')>true</#if>" />
                <#if messagesPerField.existsError('firstName')>
                    <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                        ${kcSanitize(messagesPerField.get('firstName'))?no_esc}
                    </div>
                </#if>
            </div>

            <div class="crediuz-field">
                <label for="lastName" class="crediuz-label">${msg("lastName")}</label>
                <input type="text" id="lastName" name="lastName" class="crediuz-input"
                       value="${(user.lastName!'')}"
                       placeholder="Digite seu sobrenome"
                       aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>" />
                <#if messagesPerField.existsError('lastName')>
                    <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                        ${kcSanitize(messagesPerField.get('lastName'))?no_esc}
                    </div>
                </#if>
            </div>

            <div style="margin-top: 32px;">
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
            <div style="background: #f0f9ff; border: 1px solid #5ccfe6; border-radius: 12px; padding: 16px; margin-bottom: 16px;">
                <div style="display: flex; align-items: center; gap: 8px; margin-bottom: 12px; justify-content: center;">
                    <span style="color: #5ccfe6; font-size: 18px;">👤</span>
                    <span style="color: #2b4164; font-weight: 600; font-size: 14px;">Complete seu perfil</span>
                </div>
                <p style="color: #2b4164; font-size: 14px; line-height: 1.5; margin: 0;">
                    Para garantir a segurança e personalização dos nossos serviços financeiros, precisamos que você complete algumas informações do seu perfil.
                </p>
            </div>
            
            <div style="background: #fef3c7; border: 1px solid #f59e0b; border-radius: 12px; padding: 16px;">
                <p style="color: #92400e; font-size: 14px; line-height: 1.5; margin: 0;">
                    💡 <strong>Importante:</strong> Essas informações são necessárias para cumprir requisitos regulamentares e oferecer um atendimento personalizado.
                </p>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
