<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>
    <#if section = "form">
        <#if realm.password>
            <form class="triphosts-form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                <#if !usernameHidden??>
                    <div class="triphosts-field">
                        <label for="username" class="triphosts-label">
                            <#if !realm.loginWithEmailAllowed>
                                ${msg("username")}
                            <#elseif !realm.registrationEmailAsUsername>
                                ${msg("usernameOrEmail")}
                            <#else>
                                ${msg("email")}
                            </#if>
                        </label>
                        <input tabindex="1" id="username" class="triphosts-input" name="username" 
                               value="${(login.username!'')}" type="text" autofocus autocomplete="off"
                               aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>" />
                        <#if messagesPerField.existsError('username','password')>
                            <div class="triphosts-alert triphosts-alert-error" style="margin-top: 8px;">
                                ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                            </div>
                        </#if>
                    </div>
                </#if>

                <div class="triphosts-field">
                    <label for="password" class="triphosts-label">${msg("password")}</label>
                    <input tabindex="2" id="password" class="triphosts-input" name="password" 
                           type="password" autocomplete="off"
                           aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>" />
                </div>

                <#if realm.rememberMe && !usernameEditDisabled??>
                    <div class="triphosts-checkbox">
                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" 
                               <#if login.rememberMe??>checked</#if> />
                        <label for="rememberMe">${msg("rememberMe")}</label>
                    </div>
                </#if>

                <#if realm.resetPasswordAllowed>
                    <div style="text-align: center; margin: 16px 0;">
                        <a tabindex="5" href="${url.loginResetCredentialsUrl}" class="triphosts-link">
                            ${msg("doForgotPassword")}
                        </a>
                    </div>
                </#if>

                <input type="hidden" name="credentialId" 
                       <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if> />
                <input tabindex="4" class="triphosts-button" name="login" type="submit" 
                       value="${msg("doLogIn")}" />
            </form>
        </#if>
        
    <#elseif section = "info">
        <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
            <div style="text-align: center;">
                <span style="color: #6b7280; font-size: 14px;">
                    ${msg("noAccount")} 
                    <a tabindex="6" href="${url.registrationUrl}" class="triphosts-link">
                        ${msg("doRegister")}
                    </a>
                </span>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
