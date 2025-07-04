<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username') displayInfo=true; section>
    <#if section = "form">
        <form class="crediuz-form" action="${url.loginAction}" method="post">
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
                <input type="text" id="username" name="username" class="crediuz-input" 
                       autofocus value="${(auth.attemptedUsername!'')}" 
                       placeholder="Digite seu email"
                       aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                <#if messagesPerField.existsError('username')>
                    <div class="crediuz-alert crediuz-alert-error" style="margin-top: 8px;">
                        ${kcSanitize(messagesPerField.get('username'))?no_esc}
                    </div>
                </#if>
            </div>
            
            <input class="crediuz-button" type="submit" value="${msg("doSubmit")}"/>
        </form>
        
        <div style="text-align: center; margin-top: 24px;">
            <a href="${url.loginUrl}" class="crediuz-link">
                ${msg("backToLogin")}
            </a>
        </div>
    <#elseif section = "info">
        <div style="text-align: center;">
            <div style="background: #fef3c7; border-left: 4px solid #f59e0b; padding: 16px; border-radius: 8px; margin-bottom: 16px;">
                <h3 style="color: #92400e; margin-bottom: 8px; font-weight: 600;">Não se preocupe, acontece</h3>
                <p style="color: #92400e; font-size: 14px; line-height: 1.5;">
                    Vamos te ajudar a voltar aos seus investimentos em instantes
                </p>
            </div>
            
            <div style="background: #f0f9ff; border: 1px solid #5ccfe6; border-radius: 8px; padding: 16px; margin-bottom: 16px;">
                <div style="display: flex; align-items: center; gap: 8px; margin-bottom: 12px;">
                    <span style="color: #5ccfe6; font-size: 18px;">🔒</span>
                    <span style="color: #2b4164; font-weight: 600; font-size: 14px;">Processo seguro e protegido</span>
                </div>
                <div style="display: flex; align-items: center; gap: 8px; margin-bottom: 12px;">
                    <span style="color: #5ccfe6; font-size: 18px;">⚡</span>
                    <span style="color: #2b4164; font-weight: 600; font-size: 14px;">Redefinição rápida e fácil</span>
                </div>
                <div style="display: flex; align-items: center; gap: 8px; margin-bottom: 12px;">
                    <span style="color: #5ccfe6; font-size: 18px;">📧</span>
                    <span style="color: #2b4164; font-weight: 600; font-size: 14px;">Instruções claras por email</span>
                </div>
                <div style="display: flex; align-items: center; gap: 8px;">
                    <span style="color: #5ccfe6; font-size: 18px;">💰</span>
                    <span style="color: #2b4164; font-weight: 600; font-size: 14px;">Seus investimentos te esperam</span>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
