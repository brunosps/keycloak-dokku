<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>
    <#if section = "header">
        <script>
            function togglePassword() {
                var x = document.getElementById("password");
                var v = document.getElementById("vi");
                if (x.type === "password") {
                    x.type = "text";
                    v.style.color = "#5ccfe6";
                } else {
                    x.type = "password";
                    v.style.color = "white";
                }
            }
        </script>
        <style>
            .login-page {
                min-height: 100vh;
                width: 100%;
                background-image: url("https://images.unsplash.com/photo-1460925895917-afdab827c52f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2015&q=80");
                background-size: cover;
                background-position: center;
                position: relative;
            }

            .login-page::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background: linear-gradient(135deg, rgba(43, 65, 100, 0.8), rgba(43, 90, 115, 0.8));
            }

            .login-container {
                display: flex;
                min-height: 100vh;
                position: relative;
            }

            .login-section {
                width: 100%;
                padding: 2rem;
                display: flex;
                align-items: center;
                justify-content: center;
                background: rgba(255, 255, 255, 0.1);
                backdrop-filter: blur(10px);
            }

            @media (min-width: 1024px) {
                .login-section {
                    width: 50%;
                }
            }

            .login-box {
                width: 100%;
                max-width: 400px;
            }

            .logo {
                margin-bottom: 2rem;
                text-align: center;
            }

            .logo img {
                max-width: 200px;
            }

            .form-group {
                margin-bottom: 1rem;
            }

            .form-control {
                width: 100%;
                height: 48px;
                padding: 0.75rem 1rem;
                background: rgba(255, 255, 255, 0.1);
                border: 1px solid rgba(255, 255, 255, 0.2);
                border-radius: 0.5rem;
                color: white;
                transition: all 0.2s;
            }

            .form-control:focus {
                outline: none;
                border-color: #5ccfe6;
                box-shadow: 0 0 0 2px rgba(92, 207, 230, 0.2);
            }

            .form-control::placeholder {
                color: rgba(255, 255, 255, 0.6);
            }

            .checkbox {
                display: flex;
                align-items: center;
                margin: 1rem 0;
            }

            .checkbox input {
                margin-right: 0.5rem;
            }

            .checkbox label {
                color: white;
                font-size: 0.875rem;
            }

            .submit-button {
                width: 100%;
                height: 48px;
                background: linear-gradient(to right, #2b82ea, #5ccfe6);
                border: none;
                border-radius: 0.5rem;
                color: white;
                font-weight: 500;
                cursor: pointer;
                transition: all 0.2s;
            }

            .submit-button:hover {
                background: linear-gradient(to right, #2674d6, #4dbfd6);
            }

            .forgot-password {
                color: #5ccfe6;
                font-size: 0.875rem;
                text-decoration: none;
                float: right;
            }

            .forgot-password:hover {
                color: #4dbfd6;
            }

            .info-section {
                display: none;
                width: 50%;
                padding: 2rem;
                color: white;
            }

            @media (min-width: 1024px) {
                .info-section {
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                }
            }

            .info-content {
                max-width: 600px;
                margin: 0 auto;
            }

            .info-title {
                font-size: 2rem;
                font-weight: bold;
                margin-bottom: 2rem;
            }

            .info-list {
                list-style: none;
                padding: 0;
                margin: 0;
                space-y: 1rem;
            }

            .info-item {
                display: flex;
                align-items: flex-start;
                margin-bottom: 1.5rem;
            }

            .info-bullet {
                width: 4px;
                height: 4px;
                background: #5ccfe6;
                border-radius: 50%;
                margin-top: 0.75rem;
                margin-right: 1rem;
                flex-shrink: 0;
            }

            .info-text {
                font-size: 1.125rem;
                line-height: 1.5;
            }

            .info-highlight {
                color: #5ccfe6;
                font-weight: 600;
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
                                <input tabindex="1" id="username" class="form-control" name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" placeholder="Endereço de e-mail" />
                            </div>

                            <div class="form-group">
                                <input tabindex="2" id="password" class="form-control" name="password" type="password" autocomplete="off" placeholder="Senha" />
                            </div>

                            <div class="checkbox">
                                <#if realm.rememberMe && !usernameEditDisabled??>
                                    <div class="checkbox">
                                        <label>
                                            <#if login.rememberMe??>
                                                <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked> Lembrar-me
                                            <#else>
                                                <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"> Lembrar-me
                                            </#if>
                                        </label>
                                    </div>
                                </#if>
                                <a href="${url.loginResetCredentialsUrl}" class="forgot-password">Esqueceu sua senha?</a>
                            </div>

                            <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                            <input tabindex="4" class="submit-button" name="login" id="kc-login" type="submit" value="Entrar"/>
                        </form>
                    </div>
                </div>
                <div class="info-section">
                    <div class="info-content">
                        <h2 class="info-title">Invista no seu futuro financeiro</h2>
                        <div class="info-list">
                            <div class="info-item">
                                <div class="info-bullet"></div>
                                <p class="info-text">
                                    <span class="info-highlight">Oportunidades exclusivas:</span> Acesso a investimentos de alto potencial selecionados por especialistas.
                                </p>
                            </div>
                            <div class="info-item">
                                <div class="info-bullet"></div>
                                <p class="info-text">
                                    <span class="info-highlight">Retornos consistentes:</span> Estratégias de investimento focadas em resultados de longo prazo.
                                </p>
                            </div>
                            <div class="info-item">
                                <div class="info-bullet"></div>
                                <p class="info-text">
                                    <span class="info-highlight">Gestão profissional:</span> Equipe dedicada para maximizar seus ganhos e minimizar riscos.
                                </p>
                            </div>
                            <div class="info-item">
                                <div class="info-bullet"></div>
                                <p class="info-text">
                                    <span class="info-highlight">Inovação financeira:</span> Acesso às mais recentes tecnologias e produtos do mercado financeiro.
                                </p>
                            </div>
                        </div>
                        <p class="info-title" style="font-size: 1.5rem; margin-top: 2rem;">
                            Transforme seu futuro financeiro com a Crediuz
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>

