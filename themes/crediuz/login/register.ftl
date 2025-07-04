<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username','password','password-confirm') displayInfo=true; section>
    <#if section = "form">
        <form id="kc-register-form" class="crediuz-form" action="${url.registrationAction}" method="post">
            <div class="crediuz-field">
                <label for="firstName" class="crediuz-label">${msg("firstName")}</label>
                <input type="text" id="firstName" name="firstName" class="crediuz-input"
                       value="${(register.formData.firstName!'')}" autofocus
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
                       value="${(register.formData.lastName!'')}"
                       placeholder="Digite seu sobrenome"
                       aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>" />
                <#if messagesPerField.existsError('lastName')>
                    <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                        ${kcSanitize(messagesPerField.get('lastName'))?no_esc}
                    </div>
                </#if>
            </div>

            <div class="crediuz-field">
                <label for="email" class="crediuz-label">${msg("email")}</label>
                <input type="email" id="email" name="email" class="crediuz-input"
                       value="${(register.formData.email!'')}" autocomplete="email"
                       placeholder="Digite seu email"
                       aria-invalid="<#if messagesPerField.existsError('email')>true</#if>" />
                <#if messagesPerField.existsError('email')>
                    <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                        ${kcSanitize(messagesPerField.get('email'))?no_esc}
                    </div>
                </#if>
            </div>

            <#if !realm.registrationEmailAsUsername>
                <div class="crediuz-field">
                    <label for="username" class="crediuz-label">${msg("username")}</label>
                    <input type="text" id="username" name="username" class="crediuz-input"
                           value="${(register.formData.username!'')}" autocomplete="username"
                           placeholder="Digite um nome de usuário"
                           aria-invalid="<#if messagesPerField.existsError('username')>true</#if>" />
                    <#if messagesPerField.existsError('username')>
                        <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                            ${kcSanitize(messagesPerField.get('username'))?no_esc}
                        </div>
                    </#if>
                </div>
            </#if>

            <#if passwordRequired??>
                <div class="crediuz-field">
                    <label for="password" class="crediuz-label">${msg("password")}</label>
                    <input type="password" id="password" name="password" class="crediuz-input"
                           autocomplete="new-password"
                           placeholder="Digite uma senha segura"
                           aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>" />
                    <#if messagesPerField.existsError('password')>
                        <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                            ${kcSanitize(messagesPerField.get('password'))?no_esc}
                        </div>
                    </#if>
                </div>

                <div class="crediuz-field">
                    <label for="password-confirm" class="crediuz-label">${msg("passwordConfirm")}</label>
                    <input type="password" id="password-confirm" name="password-confirm" class="crediuz-input"
                           autocomplete="new-password"
                           placeholder="Confirme sua senha"
                           aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>" />
                    <#if messagesPerField.existsError('password-confirm')>
                        <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                            ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                        </div>
                    </#if>
                </div>
            </#if>

            <input class="crediuz-button" type="submit" value="${msg("doRegister")}" />
        </form>
        
        <div style="text-align: center; margin-top: 24px;">
            <span style="color: #6b7280; font-size: 14px;">
                Já tem uma conta? 
                <a href="${url.loginUrl}" class="crediuz-link">Faça login</a>
            </span>
        </div>
        
    <#elseif section = "info">
        <div style="text-align: center;">
            <div style="background: #f0f9ff; border: 1px solid #5ccfe6; border-radius: 12px; padding: 16px; margin-bottom: 16px;">
                <div style="display: flex; align-items: center; gap: 8px; margin-bottom: 12px; justify-content: center;">
                    <span style="color: #5ccfe6; font-size: 18px;">🚀</span>
                    <span style="color: #2b4164; font-weight: 600; font-size: 14px;">Comece sua jornada de investimentos</span>
                </div>
                <p style="color: #2b4164; font-size: 14px; line-height: 1.5; margin: 0;">
                    Junte-se a milhares de investidores que já descobriram oportunidades exclusivas de crescimento financeiro.
                </p>
            </div>
            
            <div style="background: #fef3c7; border: 1px solid #f59e0b; border-radius: 12px; padding: 16px;">
                <p style="color: #92400e; font-size: 14px; line-height: 1.5; margin: 0;">
                    💡 <strong>Dica:</strong> Use uma senha forte com pelo menos 8 caracteres, incluindo letras, números e símbolos especiais.
                </p>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
