<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false showAnotherWayIfPresent=true>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crediuz - ${msg("loginTitle",(realm.displayName!''))}</title>
    
    <style>
        /* Reset completo */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        html, body {
            height: 100%;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            background: #f8fafc;
        }
        
        /* Container principal com duas colunas */
        .crediuz-main {
            display: grid;
            grid-template-columns: 1fr;
            min-height: 100vh;
            position: relative;
        }
        
        /* Background mobile - apenas uma coluna */
        .crediuz-mobile-bg {
            position: absolute;
            inset: 0;
            z-index: 0;
            display: block;
        }
        
        .crediuz-mobile-bg-image {
            position: absolute;
            inset: 0;
            background-image: url("https://images.unsplash.com/photo-1460925895917-afdab827c52f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2015&q=80");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        
        .crediuz-mobile-overlay {
            position: absolute;
            inset: 0;
            background: linear-gradient(135deg, rgba(43, 65, 100, 0.85) 0%, rgba(43, 90, 115, 0.80) 50%, rgba(43, 65, 100, 0.85) 100%);
        }
        
        /* Coluna esquerda - Formulário */
        .crediuz-left {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1rem 2rem;
            position: relative;
            z-index: 20;
        }
        
        .crediuz-form-container {
            width: 100%;
            max-width: 28rem;
            display: flex;
            flex-direction: column;
            gap: 2rem;
        }
        
        /* Header */
        .crediuz-header {
            text-align: center;
        }
        
        .crediuz-logo {
            margin: 0 auto 1.5rem;
            width: 140px;
            height: auto;
            display: block;
        }
        
        .crediuz-title {
            font-size: 1.875rem;
            font-weight: 700;
            color: white;
            margin-bottom: 0.5rem;
        }
        
        .crediuz-subtitle {
            color: rgb(209, 213, 219);
            font-size: 1.125rem;
        }
        
        /* Card do formulário */
        .crediuz-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(12px);
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.25);
            border-radius: 1.25rem;
            border: 0;
            padding: 1.5rem;
        }
        
        .crediuz-card-header {
            text-align: center;
            padding-bottom: 1rem;
        }
        
        .crediuz-card-title {
            font-size: 1.25rem;
            font-weight: 600;
            color: #2b4164;
            margin-bottom: 0.5rem;
        }
        
        .crediuz-card-description {
            font-size: 0.875rem;
            color: #6b7280;
        }
        
        /* Formulário */
        .crediuz-form {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
            padding-top: 0.5rem;
        }
        
        .crediuz-field {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
        }
        
        .crediuz-label {
            font-weight: 500;
            color: #374151;
            font-size: 0.875rem;
        }
        
        .crediuz-input {
            width: 100%;
            padding: 1rem 1.25rem;
            border: 2px solid #e5e7eb;
            border-radius: 0.75rem;
            font-size: 1rem;
            font-family: 'Inter', sans-serif;
            background: rgba(255, 255, 255, 0.9);
            transition: all 0.2s ease;
            outline: none;
        }
        
        .crediuz-input:focus {
            border-color: #5ccfe6;
            box-shadow: 0 0 0 4px rgba(92, 207, 230, 0.1);
            background: white;
        }
        
        .crediuz-checkbox-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin: 1.25rem 0;
        }
        
        .crediuz-checkbox-left {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        
        .crediuz-checkbox {
            width: auto;
            margin: 0;
        }
        
        .crediuz-checkbox-label {
            font-size: 0.875rem;
            color: #6b7280;
            font-weight: 400;
            margin: 0;
        }
        
        .crediuz-button {
            width: 100%;
            height: 3rem;
            padding: 1rem 1.5rem;
            background: linear-gradient(135deg, #2b82ea 0%, #5ccfe6 100%);
            border: none;
            border-radius: 0.75rem;
            color: white;
            font-size: 1rem;
            font-weight: 600;
            font-family: 'Inter', sans-serif;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: none;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
        }
        
        .crediuz-button:hover {
            background: linear-gradient(135deg, #5ccfe6 0%, #2b82ea 100%);
            transform: translateY(-1px);
            box-shadow: 0 10px 15px -3px rgba(92, 207, 230, 0.3);
        }
        
        .crediuz-link {
            color: #5ccfe6;
            text-decoration: none;
            font-weight: 500;
            font-size: 0.875rem;
        }
        
        .crediuz-link:hover {
            color: #2b82ea;
            text-decoration: underline;
        }
        
        .crediuz-alert {
            padding: 1rem;
            border-radius: 0.75rem;
            margin-bottom: 1.5rem;
            border: none;
            font-size: 0.875rem;
        }
        
        .crediuz-alert-error {
            background: #fef2f2;
            color: #dc2626;
            border-left: 4px solid #dc2626;
        }
        
        .crediuz-alert-success {
            background: #f0f9ff;
            color: #0369a1;
            border-left: 4px solid #5ccfe6;
        }
        
        .crediuz-alert-warning {
            background: #fef3c7;
            color: #92400e;
            border-left: 4px solid #f59e0b;
        }
        
        .crediuz-alert-info {
            background: #eff6ff;
            color: #1e40af;
            border-left: 4px solid #3b82f6;
        }
        
        .crediuz-info {
            text-align: center;
            margin-top: 1.5rem;
            padding-top: 1.5rem;
            border-top: 1px solid #e5e7eb;
        }
        
        /* Coluna direita - CTA */
        .crediuz-right {
            position: relative;
            display: none;
        }
        
        .crediuz-right-bg {
            position: absolute;
            inset: 0;
            background-image: url("https://images.unsplash.com/photo-1460925895917-afdab827c52f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2015&q=80");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        
        .crediuz-right-overlay {
            position: absolute;
            inset: 0;
            background: linear-gradient(135deg, rgba(43, 65, 100, 0.8) 0%, rgba(43, 90, 115, 0.7) 100%);
        }
        
        .crediuz-cta {
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: white;
            padding: 3rem;
            position: relative;
            z-index: 10;
        }
        
        .crediuz-cta-card {
            background: rgba(0, 0, 0, 0.6);
            backdrop-filter: blur(12px);
            border-radius: 1.25rem;
            padding: 2rem;
            text-align: center;
            max-width: 28rem;
            display: flex;
            flex-direction: column;
            gap: 2rem;
        }
        
        .crediuz-cta-title {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
            line-height: 1.2;
        }
        
        .crediuz-cta-highlight {
            color: #5ccfe6;
        }
        
        .crediuz-cta-description {
            font-size: 1.25rem;
            color: rgba(255, 255, 255, 0.9);
            line-height: 1.6;
        }
        
        .crediuz-stats {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1.5rem;
        }
        
        .crediuz-stat {
            text-align: center;
        }
        
        .crediuz-stat-number {
            font-size: 1.875rem;
            font-weight: 700;
            color: #5ccfe6;
            margin-bottom: 0.5rem;
        }
        
        .crediuz-stat-label {
            color: rgba(255, 255, 255, 0.8);
            font-size: 0.875rem;
        }
        
        .crediuz-features {
            display: flex;
            flex-direction: column;
            gap: 1rem;
            text-align: left;
        }
        
        .crediuz-feature {
            display: flex;
            align-items: center;
            gap: 0.75rem;
        }
        
        .crediuz-feature-icon {
            width: 2rem;
            height: 2rem;
            background: rgba(92, 207, 230, 0.2);
            border-radius: 0.5rem;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }
        
        .crediuz-feature-icon::before {
            content: "✓";
            color: #5ccfe6;
            font-weight: bold;
        }
        
        .crediuz-feature-text {
            color: rgba(255, 255, 255, 0.9);
            font-size: 0.875rem;
        }
        
        /* Seletor de idioma */
        .crediuz-locale {
            position: absolute;
            top: 1.25rem;
            right: 1.25rem;
            z-index: 1000;
        }
        
        .crediuz-locale a {
            color: rgba(255, 255, 255, 0.8);
            background: rgba(0, 0, 0, 0.3);
            padding: 0.5rem 0.75rem;
            border-radius: 0.5rem;
            font-size: 0.875rem;
            backdrop-filter: blur(10px);
            text-decoration: none;
        }
        
        .crediuz-locale a:hover {
            background: rgba(0, 0, 0, 0.5);
            color: white;
        }
        
        /* Responsivo */
        @media (min-width: 1024px) {
            .crediuz-mobile-bg {
                display: none;
            }
            
            .crediuz-main {
                grid-template-columns: 1fr 1fr;
            }
            
            .crediuz-right {
                display: block;
            }
            
            .crediuz-left {
                padding: 3rem 2rem;
            }
            
            .crediuz-title {
                color: #2b4164;
            }
            
            .crediuz-subtitle {
                color: #6b7280;
            }
            
            .crediuz-card {
                background: white;
                backdrop-filter: none;
            }
        }
        
        @media (max-width: 480px) {
            .crediuz-left {
                padding: 1.5rem;
            }
            
            .crediuz-card {
                padding: 1.5rem;
                border-radius: 1rem;
            }
            
            .crediuz-title {
                font-size: 1.5rem;
            }
            
            .crediuz-subtitle {
                font-size: 0.875rem;
            }
            
            .crediuz-input {
                font-size: 1rem;
                padding: 0.875rem 1rem;
            }
            
            .crediuz-checkbox-container {
                flex-direction: column;
                align-items: flex-start;
                gap: 1rem;
            }
        }
    </style>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>

<body>
    <!-- Background mobile -->
    <div class="crediuz-mobile-bg">
        <div class="crediuz-mobile-bg-image"></div>
        <div class="crediuz-mobile-overlay"></div>
    </div>

    <!-- Seletor de idioma -->
    <#if realm.internationalizationEnabled && locale.supported?size gt 1>
        <div class="crediuz-locale">
            <a href="#" onclick="toggleLocale()">${locale.current}</a>
            <div id="locale-dropdown" style="display: none; position: absolute; top: 100%; right: 0; background: rgba(255,255,255,0.95); border-radius: 8px; padding: 8px; margin-top: 4px;">
                <#list locale.supported as l>
                    <a href="${l.url}" style="display: block; padding: 8px 16px; color: #374151; background: transparent;">${l.label}</a>
                </#list>
            </div>
        </div>
    </#if>

    <!-- Container principal com duas colunas -->
    <div class="crediuz-main">
        <!-- Coluna esquerda - Formulário -->
        <div class="crediuz-left">
            <div class="crediuz-form-container">
                <!-- Header -->
                <div class="crediuz-header">
                    <img src="${url.resourcesPath}/img/crediuz-logo.png" alt="Crediuz Logo" class="crediuz-logo">
                </div>

                <!-- Card do formulário -->
                <div class="crediuz-card">
                    <div class="crediuz-card-header">
                        <#if message?? && message.type == "error">
                            <h2 class="crediuz-card-title">${msg("errorTitle")}</h2>
                            <p class="crediuz-card-description">
                                Algo inesperado aconteceu, mas vamos resolver isso
                            </p>
                        <#elseif url.loginAction?contains("UPDATE_PASSWORD")>
                            <h2 class="crediuz-card-title">${msg("updatePasswordTitle")}</h2>
                            <p class="crediuz-card-description">
                                ${msg("updatePasswordInstruction")}
                            </p>
                        <#elseif isResetPassword?? && isResetPassword>
                            <h2 class="crediuz-card-title">Redefinir Senha</h2>
                            <p class="crediuz-card-description">
                                Digite seu email para receber as instruções sobre como criar uma nova senha
                            </p>
                        <#else>
                            <h2 class="crediuz-card-title">${msg("loginPageTitle")}</h2>
                            <p class="crediuz-card-description">
                                ${msg("loginPageSubtitle")}
                            </p>
                        </#if>
                    </div>

                    <!-- Mensagens -->
                    <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
                        <#assign alertClass = "crediuz-alert-" + message.type>
                        <#if message.summary?contains("emailSentMessage") || message.summary?contains("E-mail enviado") || message.summary?contains("Email sent")>
                            <#assign alertClass = "crediuz-alert-success">
                        </#if>
                        <div class="crediuz-alert ${alertClass}">
                            <#if message.summary?contains("emailSentMessage") || message.summary?contains("E-mail enviado") || message.summary?contains("Email sent")>
                                📧 ${kcSanitize(message.summary)?no_esc}
                            <#else>
                                ${kcSanitize(message.summary)?no_esc}
                            </#if>
                        </div>
                    </#if>

                    <!-- Formulário -->
                    <div class="crediuz-form">
                        <#nested "form">
                    </div>

                    <!-- Informações adicionais -->
                    <#if displayInfo>
                        <div class="crediuz-info">
                            <#nested "info">
                        </div>
                    </#if>

                    <!-- Try another way -->
                    <#if auth?has_content && auth.showTryAnotherWayLink() && showAnotherWayIfPresent>
                        <form action="${url.loginAction}" method="post" style="text-align: center; margin-top: 16px;">
                            <input type="hidden" name="tryAnotherWay" value="on"/>
                            <a href="#" class="crediuz-link" onclick="this.parentNode.submit(); return false;">
                               ${msg("doTryAnotherWay")}
                            </a>
                        </form>
                    </#if>
                </div>
            </div>
        </div>

        <!-- Coluna direita - CTA inspirador -->
        <div class="crediuz-right">
            <div class="crediuz-right-bg"></div>
            <div class="crediuz-right-overlay"></div>
            
            <div class="crediuz-cta">
                <div class="crediuz-cta-card">
                    <div>
                        <h2 class="crediuz-cta-title">
                            Invista no seu <span class="crediuz-cta-highlight">futuro financeiro</span>
                        </h2>
                        <p class="crediuz-cta-description">
                            Junte-se a milhares de investidores que já descobriram oportunidades exclusivas
                        </p>
                    </div>

                    <!-- Estatísticas -->
                    <div class="crediuz-stats">
                        <div class="crediuz-stat">
                            <div class="crediuz-stat-number">R$ 100M+</div>
                            <div class="crediuz-stat-label">Investidos</div>
                        </div>
                        <div class="crediuz-stat">
                            <div class="crediuz-stat-number">5000+</div>
                            <div class="crediuz-stat-label">Investidores</div>
                        </div>
                        <div class="crediuz-stat">
                            <div class="crediuz-stat-number">15%+</div>
                            <div class="crediuz-stat-label">Retorno Médio</div>
                        </div>
                        <div class="crediuz-stat">
                            <div class="crediuz-stat-number">24/7</div>
                            <div class="crediuz-stat-label">Suporte</div>
                        </div>
                    </div>

                    <!-- Features destacadas -->
                    <div class="crediuz-features">
                        <div class="crediuz-feature">
                            <div class="crediuz-feature-icon"></div>
                            <span class="crediuz-feature-text">Oportunidades exclusivas de alto potencial</span>
                        </div>
                        <div class="crediuz-feature">
                            <div class="crediuz-feature-icon"></div>
                            <span class="crediuz-feature-text">Retornos consistentes de longo prazo</span>
                        </div>
                        <div class="crediuz-feature">
                            <div class="crediuz-feature-icon"></div>
                            <span class="crediuz-feature-text">Gestão profissional especializada</span>
                        </div>
                        <div class="crediuz-feature">
                            <div class="crediuz-feature-icon"></div>
                            <span class="crediuz-feature-text">Inovação em tecnologia financeira</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function toggleLocale() {
            const dropdown = document.getElementById('locale-dropdown');
            dropdown.style.display = dropdown.style.display === 'none' ? 'block' : 'none';
        }
        
        // Fechar dropdown ao clicar fora
        document.addEventListener('click', function(e) {
            if (!e.target.closest('.crediuz-locale')) {
                const dropdown = document.getElementById('locale-dropdown');
                if (dropdown) dropdown.style.display = 'none';
            }
        });
    </script>
</body>
</html>
</#macro>
