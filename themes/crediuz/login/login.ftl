<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>
    <#if section = "header">
        <style>
            /* Reset e configurações globais */
            * {
                margin: 0 !important;
                padding: 0 !important;
                box-sizing: border-box !important;
            }

            body {
                margin: 0 !important;
                padding: 0 !important;
                height: 100vh !important;
                width: 100vw !important;
                overflow: hidden !important;
                -webkit-font-smoothing: antialiased !important;
                -moz-osx-font-smoothing: grayscale !important;
            }

            /* Esconder elementos padrão do Keycloak */
            #kc-page-title,
            #kc-header,
            #kc-header-wrapper {
                display: none !important;
            }

            /* Container principal */
            .login-page {
                position: fixed !important;
                top: 0 !important;
                left: 0 !important;
                right: 0 !important;
                bottom: 0 !important;
                background-image: url("https://images.unsplash.com/photo-1460925895917-afdab827c52f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2015&q=80") !important;
                background-size: cover !important;
                background-position: center !important;
                margin: 0 !important;
                padding: 0 !important;
            }

            .login-page::before {
                content: '' !important;
                position: absolute !important;
                top: 0 !important;
                left: 0 !important;
                right: 0 !important;
                bottom: 0 !important;
                background: linear-gradient(135deg, rgba(43, 65, 100, 0.85), rgba(43, 90, 115, 0.85)) !important;
                z-index: 1 !important;
            }

            .login-container {
                position: relative !important;
                z-index: 2 !important;
                display: flex !important;
                min-height: 100vh !important;
                width: 100% !important;
            }

            /* Seção de login */
            .login-section {
                width: 100% !important;
                display: flex !important;
                align-items: center !important;
                justify-content: center !important;
                background: rgba(255, 255, 255, 0.03) !important;
                backdrop-filter: blur(10px) !important;
                -webkit-backdrop-filter: blur(10px) !important;
                padding: 20px !important;
            }

            .login-box {
                width: 100% !important;
                max-width: 360px !important;
                margin: 0 auto !important;
                padding: 0 20px !important;
            }

            /* Logo */
            .logo {
                text-align: center !important;
                margin-bottom: 2rem !important;
            }

            .logo img {
                width: 140px !important;
                height: auto !important;
                max-width: 100% !important;
            }

            /* Formulário */
            .form-group {
                margin-bottom: 16px !important;
            }

            #kc-form-login input[type="text"],
            #kc-form-login input[type="password"] {
                width: 100% !important;
                height: 44px !important;
                padding: 0 16px !important;
                background: rgba(255, 255, 255, 0.06) !important;
                border: 1px solid rgba(255, 255, 255, 0.12) !important;
                border-radius: 8px !important;
                color: white !important;
                font-size: 16px !important;
                margin-bottom: 16px !important;
            }

            #kc-form-login input::placeholder {
                color: rgba(255, 255, 255, 0.5) !important;
            }

            /* Checkbox e link esqueceu senha */
            .checkbox {
                display: flex !important;
                align-items: center !important;
                justify-content: space-between !important;
                margin: 16px 0 !important;
                padding: 0 !important;
                width: 100% !important;
            }

            .checkbox label {
                display: flex !important;
                align-items: center !important;
                color: rgba(255, 255, 255, 0.9) !important;
                font-size: 14px !important;
                margin: 0 !important;
            }

            .checkbox input[type="checkbox"] {
                margin-right: 8px !important;
                width: 16px !important;
                height: 16px !important;
            }

            .forgot-password {
                color: #5ccfe6 !important;
                font-size: 14px !important;
                text-decoration: none !important;
                margin-left: 16px !important;
            }

            /* Botão de login */
            #kc-login {
                width: 100% !important;
                height: 44px !important;
                background: linear-gradient(to right, #2b82ea, #5ccfe6) !important;
                border: none !important;
                border-radius: 8px !important;
                color: white !important;
                font-size: 16px !important;
                font-weight: 500 !important;
                cursor: pointer !important;
                margin-top: 24px !important;
            }

            /* Seção de informações (desktop) */
            .info-section {
                display: none !important;
            }

            @media (min-width: 1024px) {
                .login-section {
                    width: 45% !important;
                }

                .login-box {
                    padding: 0 40px !important;
                }

                .info-section {
                    display: flex !important;
                    width: 55% !important;
                    padding: 40px !important;
                    color: white !important;
                    align-items: center !important;
                    justify-content: center !important;
                }

                .info-content {
                    max-width: 560px !important;
                }

                .info-title {
                    font-size: 32px !important;
                    font-weight: bold !important;
                    margin-bottom: 32px !important;
                }

                .info-item {
                    display: flex !important;
                    align-items: flex-start !important;
                    margin-bottom: 24px !important;
                }

                .info-bullet {
                    width: 4px !important;
                    height: 4px !important;
                    background: #5ccfe6 !important;
                    border-radius: 50% !important;
                    margin: 8px 12px 0 0 !important;
                    flex-shrink: 0 !important;
                }

                .info-highlight {
                    color: #5ccfe6 !important;
                    font-weight: 600 !important;
                }
            }

            /* Ajustes específicos para mobile */
            @media (max-width: 480px) {
                .login-box {
                    padding: 0 16px !important;
                }

                .logo img {
                    width: 120px !important;
                }

                #kc-form-login input[type="text"],
                #kc-form-login input[type="password"] {
                    font-size: 14px !important;
                }

                .checkbox {
                    flex-direction: row !important;
                    align-items: center !important;
                    font-size: 14px !important;
                }

                .checkbox label {
                    font-size: 13px !important;
                }

                .forgot-password {
                    font-size: 13px !important;
                }

                #kc-login {
                    font-size: 15px !important;
                }
            }

            /* Ajustes para telas muito pequenas */
            @media (max-width: 360px) {
                .login-box {
                    padding: 0 12px !important;
                }

                .logo img {
                    width: 100px !important;
                }
            }
        </style>
    </#if>
    <#if section = "form">
        <div class="login-page">
            <div class="login-container">
                <div class="login-section">
                    <div class="login-box">
                        <div class="logo">
                            <img src="${url.resourcesPath}/img/crediuz-logo.png" alt="Crediuz">
                        </div>
                        <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                            <div class="form-group">
                                <input 
                                    placeholder="Endereço de e-mail"
                                    id="username"
                                    name="username"
                                    value="${(login.username!'')}"
                                    type="text"
                                    autofocus
                                    autocomplete="off"
                                />
                            </div>

                            <div class="form-group">
                                <input
                                    placeholder="Senha"
                                    id="password"
                                    name="password"
                                    type="password"
                                    autocomplete="off"
                                />
                            </div>

                            <div class="checkbox">
                                <#if realm.rememberMe && !usernameEditDisabled??>
                                    <label>
                                        <#if login.rememberMe??>
                                            <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked> Lembrar-me
                                        <#else>
                                            <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"> Lembrar-me
                                        </#if>
                                    </label>
                                </#if>
                                <a href="${url.loginResetCredentialsUrl}" class="forgot-password">Esqueceu sua senha?</a>
                            </div>

                            <div id="kc-form-buttons">
                                <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                                <input name="login" id="kc-login" type="submit" value="Entrar"/>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="info-section">
                    <div class="info-content">
                        <h2 class="info-title">Invista no seu futuro financeiro</h2>
                        <div class="info-list">
                            <div class="info-item">
                                <div class="info-bullet"></div>
                                <p>
                                    <span class="info-highlight">Oportunidades exclusivas:</span> Acesso a investimentos de alto potencial selecionados por especialistas.
                                </p>
                            </div>
                            <div class="info-item">
                                <div class="info-bullet"></div>
                                <p>
                                    <span class="info-highlight">Retornos consistentes:</span> Estratégias de investimento focadas em resultados de longo prazo.
                                </p>
                            </div>
                            <div class="info-item">
                                <div class="info-bullet"></div>
                                <p>
                                    <span class="info-highlight">Gestão profissional:</span> Equipe dedicada para maximizar seus ganhos e minimizar riscos.
                                </p>
                            </div>
                            <div class="info-item">
                                <div class="info-bullet"></div>
                                <p>
                                    <span class="info-highlight">Inovação financeira:</span> Acesso às mais recentes tecnologias e produtos do mercado financeiro.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>

