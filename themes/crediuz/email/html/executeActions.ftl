<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Ação Requerida - Crediuz</title>
    <style>
        body {
            font-family: 'Inter', Arial, sans-serif;
            background-color: #f8fafc;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .header {
            background: linear-gradient(135deg, #2b4164 0%, #1e3a8a 100%);
            color: white;
            padding: 30px;
            text-align: center;
        }
        .header h1 {
            margin: 0;
            font-size: 24px;
            font-weight: 700;
        }
        .brand {
            color: #5ccfe6;
            font-weight: 800;
        }
        .content {
            padding: 30px;
        }
        .content p {
            color: #374151;
            line-height: 1.6;
            margin: 0 0 20px 0;
        }
        .button {
            display: inline-block;
            background: linear-gradient(135deg, #2b4164 0%, #1e3a8a 100%);
            color: white;
            padding: 14px 32px;
            text-decoration: none;
            border-radius: 8px;
            font-weight: 600;
            margin: 20px 0;
            transition: transform 0.2s;
        }
        .footer {
            background: #f8fafc;
            padding: 20px;
            text-align: center;
            border-top: 1px solid #e5e7eb;
        }
        .footer p {
            color: #6b7280;
            font-size: 14px;
            margin: 0;
        }
        .important-note {
            background: #fef3c7;
            border-left: 4px solid #f59e0b;
            padding: 16px;
            margin: 20px 0;
            border-radius: 8px;
        }
        .important-note p {
            color: #92400e;
            margin: 0;
        }
        .actions-list {
            background: #f8fafc;
            padding: 20px;
            border-radius: 8px;
            margin: 20px 0;
        }
        .action-item {
            display: flex;
            align-items: center;
            margin: 10px 0;
            color: #374151;
        }
        .action-item::before {
            content: "📋";
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>⚡ Ação Requerida</h1>
            <p style="margin: 10px 0 0 0; font-size: 18px;">Credi<span class="brand">uz</span> Investimentos</p>
        </div>
        <div class="content">
            <p><strong>Olá!</strong></p>
            <p>Sua conta na Crediuz requer algumas ações para ser completamente configurada ou atualizada.</p>
            
            <div class="important-note">
                <p><strong>⚠️ Importante:</strong> Essas ações são necessárias para manter sua conta segura e em conformidade com nossas políticas de investimento.</p>
            </div>
            
            <div class="actions-list">
                <h3 style="margin-top: 0; color: #2b4164;">Ações Pendentes:</h3>
                <#if requiredActions??>
                    <#list requiredActions as reqActionItem>
                        <div class="action-item">
                            <#if reqActionItem == "VERIFY_EMAIL">
                                Verificar seu endereço de email
                            <#elseif reqActionItem == "UPDATE_PASSWORD">
                                Atualizar sua senha
                            <#elseif reqActionItem == "UPDATE_PROFILE">
                                Completar seu perfil de investidor
                            <#elseif reqActionItem == "CONFIGURE_TOTP">
                                Configurar autenticação de dois fatores
                            <#elseif reqActionItem == "terms_and_conditions">
                                Aceitar novos termos de investimento
                            <#else>
                                ${reqActionItem}
                            </#if>
                        </div>
                    </#list>
                <#else>
                    <div class="action-item">Ações de configuração da conta</div>
                </#if>
            </div>
            
            <p>Para completar essas ações, clique no botão abaixo:</p>
            
            <div style="text-align: center;">
                <a href="${link}" class="button">Completar Ações</a>
            </div>
            
            <p>Se o botão não funcionar, copie e cole o link abaixo no seu navegador:</p>
            <p style="word-break: break-all; color: #6b7280; font-size: 14px; background: #f8fafc; padding: 10px; border-radius: 4px;">${link}</p>
            
            <p style="color: #6b7280; font-size: 14px;">
                Este link expira em 
                <#if linkExpirationFormatter??>
                    ${linkExpirationFormatter(linkExpiration)}
                <#else>
                    ${linkExpiration?datetime}
                </#if>
                para sua segurança.
            </p>
            
            <p style="margin-top: 30px; color: #6b7280; font-size: 14px;">
                <strong>Crediuz</strong> - Investimentos seguros e inteligentes<br>
                Atendimento: suporte@crediuz.com
            </p>
        </div>
        <div class="footer">
            <p>© 2025 Crediuz Investimentos - Plataforma de investimentos licenciada</p>
        </div>
    </div>
</body>
</html>
