<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=true displayInfo=false; section>
    <#if section = "header">
        ${msg("passwordUpdatedTitle")}
    <#elseif section = "form">
        <div class="container">
            <!-- Left side - Success message -->
            <div class="form-side">
                <!-- Logo and branding -->
                <div class="logo-section">
                    <img src="${url.resourcesPath}/img/logo-triphosts.svg" alt="TripHosts" class="logo" />
                    <h1 class="page-title">${msg("passwordUpdatedTitle")}</h1>
                    <p class="page-subtitle">${msg("passwordUpdatedMessage")}</p>
                </div>

                <div class="success-content">
                    <div class="success-icon">✅</div>
                    <h2 class="success-title">${msg("passwordUpdatedSuccessTitle")}</h2>
                    <p class="success-description">${msg("passwordUpdatedSuccessMessage")}</p>
                    
                    <div class="form-actions">
                        <a href="${url.loginUrl}" class="btn btn-primary btn-block">
                            ${msg("backToLogin")}
                        </a>
                    </div>
                </div>
            </div>

            <!-- Right side - Security information -->
            <div class="info-side">
                <div class="info-content">
                    <div class="info-icon">🛡️</div>
                    <h2 class="info-title">Sua conta está segura</h2>
                    <p class="info-description">Sua senha foi atualizada com sucesso. Mantenha suas credenciais seguras.</p>
                    
                    <div class="features-list">
                        <div class="feature-item">
                            <div class="feature-icon">🔐</div>
                            <span>Nova senha definida</span>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon">🔄</div>
                            <span>Outras sessões encerradas</span>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon">✨</div>
                            <span>Conta protegida</span>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon">🌟</div>
                            <span>Pronto para suas aventuras</span>
                        </div>
                    </div>

                    <div class="info-tip">
                        <p>
                            🌍 <strong>Continue explorando!</strong> Sua conta está segura e pronta para descobrir experiências únicas de viagem.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
