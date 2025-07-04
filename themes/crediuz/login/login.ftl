<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>
    <#if section = "form">
        <#if realm.password>
            <form class="crediuz-form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                <#if !usernameHidden??>
                    <div class="crediuz-field">
                        <label for="username" class="crediuz-label">
                            <#if !realm.loginWithEmailAllowed>
                                ${msg("username")}
                            <#elseif !realm.registrationEmailAsUsername>
                                ${msg("usernameOrEmail")}
                            <#else>
                                ${msg("email")}
                            </#if>
                        </label>
                        <input tabindex="1" id="username" class="crediuz-input" name="username" 
                               value="${(login.username!'')}" type="text" autofocus autocomplete="off"
                               placeholder="Digite seu ${msg("email")}"
                               aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>" />
                        <#if messagesPerField.existsError('username','password')>
                            <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                                ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                            </div>
                        </#if>
                    </div>
                </#if>

                <div class="crediuz-field">
                    <label for="password" class="crediuz-label">${msg("password")}</label>
                    <input tabindex="2" id="password" class="crediuz-input" name="password" 
                           type="password" autocomplete="off" placeholder="Digite sua senha"
                           aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>" />
                </div>

                <div class="crediuz-checkbox-container">
                    <#if realm.rememberMe && !usernameEditDisabled??>
                        <div class="crediuz-checkbox-left">
                            <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" 
                                   class="crediuz-checkbox" <#if login.rememberMe??>checked</#if> />
                            <label for="rememberMe" class="crediuz-checkbox-label">${msg("rememberMe")}</label>
                        </div>
                    </#if>
                    
                    <#if realm.resetPasswordAllowed>
                        <a tabindex="5" href="${url.loginResetCredentialsUrl}" class="crediuz-link">
                            ${msg("doForgotPassword")}
                        </a>
                    </#if>
                </div>

                <input type="hidden" name="credentialId" 
                       <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if> />
                <input tabindex="4" class="crediuz-button" name="login" type="submit" 
                       value="${msg("doLogIn")}" />
            </form>
        </#if>
        
    <#elseif section = "info">
        <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
            <div style="text-align: center;">
                <span style="color: #6b7280; font-size: 14px;">
                    ${msg("noAccount")} 
                    <a tabindex="6" href="${url.registrationUrl}" class="crediuz-link">
                        ${msg("doRegister")}
                    </a>
                </span>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>

