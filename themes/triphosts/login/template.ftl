<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false showAnotherWayIfPresent=true>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TripHosts - ${msg("loginTitle",(realm.displayName!''))}</title>
    
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
            background: #f9fafb;
        }
        
        /* Container principal com duas colunas */
        .triphosts-main {
            display: grid;
            grid-template-columns: 1fr;
            min-height: 100vh;
            position: relative;
        }
        
        /* Background mobile - apenas uma coluna */
        .triphosts-mobile-bg {
            position: absolute;
            inset: 0;
            z-index: 0;
            display: block;
        }
        
        .triphosts-mobile-bg-image {
            position: absolute;
            inset: 0;
            background-image: url("https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        
        .triphosts-mobile-overlay {
            position: absolute;
            inset: 0;
            background: linear-gradient(135deg, rgba(17, 24, 39, 0.85) 0%, rgba(31, 41, 55, 0.80) 50%, rgba(17, 24, 39, 0.85) 100%);
        }
        
        /* Coluna esquerda - Formulário */
        .triphosts-left {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1rem 2rem;
            position: relative;
            z-index: 20;
        }
        
        .triphosts-form-container {
            width: 100%;
            max-width: 28rem;
            display: flex;
            flex-direction: column;
            gap: 2rem;
        }
        
        /* Header */
        .triphosts-header {
            text-align: center;
        }
        
        .triphosts-logo {
            margin: 0 auto 1.5rem;
            width: 6rem;
            height: auto;
            display: block;
        }
        
        .triphosts-title {
            font-size: 1.875rem;
            font-weight: 700;
            color: white;
            margin-bottom: 0.5rem;
        }
        
        .triphosts-subtitle {
            color: rgb(209, 213, 219);
            font-size: 1.125rem;
        }
        
        /* Card do formulário */
        .triphosts-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(12px);
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.25);
            border-radius: 1.25rem;
            border: 0;
            padding: 1.5rem;
        }
        
        .triphosts-card-header {
            text-align: center;
            padding-bottom: 1rem;
        }
        
        .triphosts-card-title {
            font-size: 1.25rem;
            font-weight: 600;
            color: #111827;
            margin-bottom: 0.5rem;
        }
        
        .triphosts-card-description {
            font-size: 0.875rem;
            color: #6b7280;
        }
        
        /* Formulário */
        .triphosts-form {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
            padding-top: 0.5rem;
        }
        
        .triphosts-field {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
        }
        
        .triphosts-label {
            font-weight: 500;
            color: #374151;
            font-size: 0.875rem;
        }
        
        .triphosts-input {
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
        
        .triphosts-input:focus {
            border-color: #14b8a6;
            box-shadow: 0 0 0 4px rgba(20, 184, 166, 0.1);
            background: white;
        }
        
        .triphosts-checkbox-container {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin: 1.25rem 0;
        }
        
        .triphosts-checkbox {
            width: auto;
            margin: 0;
        }
        
        .triphosts-checkbox-label {
            font-size: 0.875rem;
            color: #6b7280;
            font-weight: 400;
            margin: 0;
        }
        
        .triphosts-button {
            width: 100%;
            height: 3rem;
            padding: 1rem 1.5rem;
            background: linear-gradient(135deg, #14b8a6 0%, #0891b2 100%);
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
        
        .triphosts-button:hover {
            background: linear-gradient(135deg, #0891b2 0%, #0e7490 100%);
            transform: translateY(-1px);
            box-shadow: 0 10px 15px -3px rgba(20, 184, 166, 0.3);
        }
        
        .triphosts-link {
            color: #14b8a6;
            text-decoration: none;
            font-weight: 500;
            font-size: 0.875rem;
        }
        
        .triphosts-link:hover {
            color: #0891b2;
            text-decoration: underline;
        }
        
        .triphosts-alert {
            padding: 1rem;
            border-radius: 0.75rem;
            margin-bottom: 1.5rem;
            border: none;
            font-size: 0.875rem;
        }
        
        .triphosts-alert-error {
            background: #fef2f2;
            color: #dc2626;
            border-left: 4px solid #dc2626;
        }
        
        .triphosts-alert-success {
            background: #f0f9ff;
            color: #0369a1;
            border-left: 4px solid #0891b2;
        }
        
        .triphosts-alert-warning {
            background: #fef3c7;
            color: #92400e;
            border-left: 4px solid #f59e0b;
        }
        
        .triphosts-alert-info {
            background: #eff6ff;
            color: #1e40af;
            border-left: 4px solid #3b82f6;
        }
        
        .triphosts-info {
            text-align: center;
            margin-top: 1.5rem;
            padding-top: 1.5rem;
            border-top: 1px solid #e5e7eb;
        }
        
        /* Coluna direita - CTA */
        .triphosts-right {
            position: relative;
            display: none;
        }
        
        .triphosts-right-bg {
            position: absolute;
            inset: 0;
            background-image: url("https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        
        .triphosts-right-overlay {
            position: absolute;
            inset: 0;
            background: linear-gradient(135deg, rgba(17, 24, 39, 0.8) 0%, rgba(31, 41, 55, 0.7) 100%);
        }
        
        .triphosts-cta {
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
        
        .triphosts-cta-card {
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
        
        .triphosts-cta-title {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
            line-height: 1.2;
        }
        
        .triphosts-cta-highlight {
            color: #fbbf24;
        }
        
        .triphosts-cta-description {
            font-size: 1.25rem;
            color: rgba(255, 255, 255, 0.9);
            line-height: 1.6;
        }
        
        .triphosts-stats {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1.5rem;
        }
        
        .triphosts-stat {
            text-align: center;
        }
        
        .triphosts-stat-number {
            font-size: 1.875rem;
            font-weight: 700;
            color: #fbbf24;
            margin-bottom: 0.5rem;
        }
        
        .triphosts-stat-label {
            color: rgba(255, 255, 255, 0.8);
            font-size: 0.875rem;
        }
        
        .triphosts-features {
            display: flex;
            flex-direction: column;
            gap: 1rem;
            text-align: left;
        }
        
        .triphosts-feature {
            display: flex;
            align-items: center;
            gap: 0.75rem;
        }
        
        .triphosts-feature-icon {
            width: 2rem;
            height: 2rem;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 0.5rem;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }
        
        .triphosts-feature-icon::before {
            content: "✓";
            color: white;
            font-weight: bold;
        }
        
        .triphosts-feature-text {
            color: rgba(255, 255, 255, 0.9);
            font-size: 0.875rem;
        }
        
        /* Seletor de idioma */
        .triphosts-locale {
            position: absolute;
            top: 1.25rem;
            right: 1.25rem;
            z-index: 1000;
        }
        
        .triphosts-locale a {
            color: rgba(255, 255, 255, 0.8);
            background: rgba(0, 0, 0, 0.3);
            padding: 0.5rem 0.75rem;
            border-radius: 0.5rem;
            font-size: 0.875rem;
            backdrop-filter: blur(10px);
            text-decoration: none;
        }
        
        .triphosts-locale a:hover {
            background: rgba(0, 0, 0, 0.5);
            color: white;
        }
        
        /* Responsivo */
        @media (min-width: 1024px) {
            .triphosts-mobile-bg {
                display: none;
            }
            
            .triphosts-main {
                grid-template-columns: 1fr 1fr;
            }
            
            .triphosts-right {
                display: block;
            }
            
            .triphosts-left {
                padding: 3rem 2rem;
            }
            
            .triphosts-title {
                color: #111827;
            }
            
            .triphosts-subtitle {
                color: #6b7280;
            }
            
            .triphosts-card {
                background: white;
                backdrop-filter: none;
            }
        }
        
        @media (max-width: 480px) {
            .triphosts-left {
                padding: 1.5rem;
            }
            
            .triphosts-card {
                padding: 1.5rem;
                border-radius: 1rem;
            }
            
            .triphosts-title {
                font-size: 1.5rem;
            }
            
            .triphosts-subtitle {
                font-size: 0.875rem;
            }
            
            .triphosts-input {
                font-size: 1rem;
                padding: 0.875rem 1rem;
            }
        }
    </style>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>

<body>
    <!-- Background mobile -->
    <div class="triphosts-mobile-bg">
        <div class="triphosts-mobile-bg-image"></div>
        <div class="triphosts-mobile-overlay"></div>
    </div>

    <!-- Seletor de idioma -->
    <#if realm.internationalizationEnabled && locale.supported?size gt 1>
        <div class="triphosts-locale">
            <a href="#" onclick="toggleLocale()">${locale.current}</a>
            <div id="locale-dropdown" style="display: none; position: absolute; top: 100%; right: 0; background: rgba(255,255,255,0.95); border-radius: 8px; padding: 8px; margin-top: 4px;">
                <#list locale.supported as l>
                    <a href="${l.url}" style="display: block; padding: 8px 16px; color: #374151; background: transparent;">${l.label}</a>
                </#list>
            </div>
        </div>
    </#if>

    <!-- Container principal com duas colunas -->
    <div class="triphosts-main">
        <!-- Coluna esquerda - Formulário -->
        <div class="triphosts-left">
            <div class="triphosts-form-container">
                <!-- Header -->
                <div class="triphosts-header">
                    <img src="${url.resourcesPath}/img/triphost-logo.png" alt="TripHosts Logo" class="triphosts-logo">
                    <#--  <h1 class="triphosts-title">Entre na Plataforma</h1>  -->
                    <#--  <p class="triphosts-subtitle">Acesse experiências únicas de viagem</p>  -->
                </div>

                <!-- Card do formulário -->
                <div class="triphosts-card">
                    <div class="triphosts-card-header">
                        <#if message?? && message.type == "error">
                            <h2 class="triphosts-card-title">${msg("errorTitle")}</h2>
                            <p class="triphosts-card-description">
                                Algo inesperado aconteceu, mas vamos resolver isso
                            </p>
                        <#elseif url.loginAction?contains("UPDATE_PASSWORD")>
                            <h2 class="triphosts-card-title">${msg("updatePasswordTitle")}</h2>
                            <p class="triphosts-card-description">
                                ${msg("updatePasswordInstruction")}
                            </p>
                        <#elseif isResetPassword?? && isResetPassword>
                            <h2 class="triphosts-card-title">Redefinir Senha</h2>
                            <p class="triphosts-card-description">
                                Digite seu email para receber as instruções sobre como criar uma nova senha
                            </p>
                        <#else>
                            <h2 class="triphosts-card-title">${msg("loginPageTitle")}</h2>
                            <p class="triphosts-card-description">
                                ${msg("loginPageSubtitle")}
                            </p>
                        </#if>
                    </div>

                    <!-- Mensagens -->
                    <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
                        <#assign alertClass = "triphosts-alert-" + message.type>
                        <#if message.summary?contains("emailSentMessage") || message.summary?contains("E-mail enviado") || message.summary?contains("Email sent")>
                            <#assign alertClass = "triphosts-alert-success">
                        </#if>
                        <div class="triphosts-alert ${alertClass}">
                            <#if message.summary?contains("emailSentMessage") || message.summary?contains("E-mail enviado") || message.summary?contains("Email sent")>
                                📧 ${kcSanitize(message.summary)?no_esc}
                            <#else>
                                ${kcSanitize(message.summary)?no_esc}
                            </#if>
                        </div>
                    </#if>

                    <!-- Formulário -->
                    <div class="triphosts-form">
                        <#nested "form">
                    </div>

                    <!-- Informações adicionais -->
                    <#if displayInfo>
                        <div class="triphosts-info">
                            <#nested "info">
                        </div>
                    </#if>

                    <!-- Try another way -->
                    <#if auth?has_content && auth.showTryAnotherWayLink() && showAnotherWayIfPresent>
                        <form action="${url.loginAction}" method="post" style="text-align: center; margin-top: 16px;">
                            <input type="hidden" name="tryAnotherWay" value="on"/>
                            <a href="#" class="triphosts-link" onclick="this.parentNode.submit(); return false;">
                               ${msg("doTryAnotherWay")}
                            </a>
                        </form>
                    </#if>
                </div>
            </div>
        </div>

        <!-- Coluna direita - CTA inspirador -->
        <div class="triphosts-right">
            <div class="triphosts-right-bg"></div>
            <div class="triphosts-right-overlay"></div>
            
            <div class="triphosts-cta">
                <div class="triphosts-cta-card">
                    <div>
                        <h2 class="triphosts-cta-title">
                            Sua próxima aventura <span class="triphosts-cta-highlight">te espera</span>
                        </h2>
                        <p class="triphosts-cta-description">
                            Junte-se a milhares de viajantes que já descobriram experiências únicas
                        </p>
                    </div>

                    <!-- Estatísticas -->
                    <div class="triphosts-stats">
                        <div class="triphosts-stat">
                            <div class="triphosts-stat-number">50+</div>
                            <div class="triphosts-stat-label">Destinos Únicos</div>
                        </div>
                        <div class="triphosts-stat">
                            <div class="triphosts-stat-number">1000+</div>
                            <div class="triphosts-stat-label">Viajantes Felizes</div>
                        </div>
                        <div class="triphosts-stat">
                            <div class="triphosts-stat-number">4.9</div>
                            <div class="triphosts-stat-label">Avaliação Média</div>
                        </div>
                        <div class="triphosts-stat">
                            <div class="triphosts-stat-number">100+</div>
                            <div class="triphosts-stat-label">Influenciadores</div>
                        </div>
                    </div>

                    <!-- Features destacadas -->
                    <div class="triphosts-features">
                        <div class="triphosts-feature">
                            <div class="triphosts-feature-icon"></div>
                            <span class="triphosts-feature-text">Experiências exclusivas e autênticas</span>
                        </div>
                        <div class="triphosts-feature">
                            <div class="triphosts-feature-icon"></div>
                            <span class="triphosts-feature-text">Acompanhe seus influenciadores favoritos</span>
                        </div>
                        <div class="triphosts-feature">
                            <div class="triphosts-feature-icon"></div>
                            <span class="triphosts-feature-text">Comunidade global de viajantes</span>
                        </div>
                        <div class="triphosts-feature">
                            <div class="triphosts-feature-icon"></div>
                            <span class="triphosts-feature-text">Segurança e suporte 24/7</span>
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
            if (!e.target.closest('.triphosts-locale')) {
                const dropdown = document.getElementById('locale-dropdown');
                if (dropdown) dropdown.style.display = 'none';
            }
        });
    </script>
</body>
</html>
</#macro>
