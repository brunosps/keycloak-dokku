<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>
    <#if section = "header">
        <style>
            /* Reset básico */
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            /* Correções de layout */
            body {
                overflow: hidden;
                width: 100vw;
                height: 100vh;
            }

            .login-page {
                position: fixed;
                top: 0;
                left: 0;
                width: 100vw;
                height: 100vh;
                background-image: url("https://images.unsplash.com/photo-1460925895917-afdab827c52f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2015&q=80");
                background-size: cover;
                background-position: center;
            }

            .login-page::before {
                content: '';
                position: absolute;
                inset: 0;
                background: linear-gradient(135deg, rgba(43, 65, 100, 0.85), rgba(43, 90, 115, 0.85));
            }

            .login-container {
                position: relative;
                display: flex;
                min-height: 100vh;
            }

            /* Seção de login */
            .login-section {
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                background: rgba(255, 255, 255, 0.03);
                backdrop-filter: blur(10px);
            }

            @media (min-width: 1024px) {
                .login-section {
                    width: 45%;
                }
            }

            .login-box {
                width: 100%;
                max-width: 360px;
                padding: 2rem;
            }

            /* Formulário */
            .form-control {
                width: 100%;
                height: 42px;
                padding: 0.625rem 1rem;
                background: rgba(255, 255, 255, 0.06);
                border: 1px solid rgba(255, 255, 255, 0.12);
                border-radius: 0.375rem;
                color: white;
                font-size: 0.875rem;
            }

            .form-control::placeholder {
                color: rgba(255, 255, 255, 0.5);
            }

            /* Botão */
            .submit-button {
                width: 100%;
                height: 42px;
                background: linear-gradient(to right, #2b82ea, #5ccfe6);
                border: none;
                border-radius: 0.375rem;
                color: white;
                font-weight: 500;
                cursor: pointer;
            }

            /* Seção de informações */
            .info-section {
                display: none;
                width: 55%;
                padding: 2rem;
                color: white;
            }

            @media (min-width: 1024px) {
                .info-section {
                    display: flex;
                }
            }

            /* Ajustes responsivos */
            @media (max-width: 640px) {
                .login-box {
                    padding: 1.5rem;
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
                                    class="form-control"
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
                                    class="form-control"
                                    placeholder="Senha"
                                    id="password"
                                    name="password"
                                    type="password"
                                    autocomplete="off"
                                />
                            </div>

                            <div id="kc-form-options">
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
                            </div>

                            <div id="kc-form-buttons">
                                <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                                <input class="submit-button" name="login" id="kc-login" type="submit" value="Entrar"/>
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

