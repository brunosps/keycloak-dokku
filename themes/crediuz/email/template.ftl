<#macro emailLayout>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crediuz</title>
    <style>
        /* Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Inter', Arial, sans-serif;
            line-height: 1.6;
            color: #2b4164;
            background-color: #f8fafc;
        }
        
        .email-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }
        
        .email-header {
            background: linear-gradient(135deg, #2b82ea 0%, #5ccfe6 100%);
            padding: 32px;
            text-align: center;
        }
        
        .email-logo {
            width: 120px;
            height: auto;
            margin-bottom: 16px;
        }
        
        .email-title {
            color: white;
            font-size: 24px;
            font-weight: 700;
            margin: 0;
        }
        
        .email-body {
            padding: 40px 32px;
        }
        
        .email-content {
            margin-bottom: 32px;
        }
        
        .email-button {
            display: inline-block;
            background: linear-gradient(135deg, #2b82ea 0%, #5ccfe6 100%);
            color: white;
            text-decoration: none;
            padding: 16px 32px;
            border-radius: 8px;
            font-weight: 600;
            font-size: 16px;
            text-align: center;
            margin: 24px 0;
        }
        
        .email-footer {
            background-color: #f8fafc;
            padding: 24px 32px;
            text-align: center;
            border-top: 1px solid #e5e7eb;
        }
        
        .email-footer-text {
            color: #6b7280;
            font-size: 14px;
            margin-bottom: 16px;
        }
        
        .email-security {
            background-color: #f0f9ff;
            border: 1px solid #5ccfe6;
            border-radius: 8px;
            padding: 16px;
            margin: 24px 0;
        }
        
        .email-security-title {
            color: #2b4164;
            font-weight: 600;
            margin-bottom: 8px;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        
        .email-security-text {
            color: #2b4164;
            font-size: 14px;
        }
        
        .email-link {
            color: #5ccfe6;
            text-decoration: none;
        }
        
        .email-link:hover {
            text-decoration: underline;
        }
        
        @media (max-width: 600px) {
            .email-header,
            .email-body,
            .email-footer {
                padding: 24px 20px;
            }
            
            .email-title {
                font-size: 20px;
            }
            
            .email-button {
                padding: 14px 24px;
                font-size: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="email-container">
        <div class="email-header">
            <h1 class="email-title">Crediuz</h1>
        </div>
        
        <div class="email-body">
            <#nested>
        </div>
        
        <div class="email-footer">
            <p class="email-footer-text">
                Este é um email automático. Não responda esta mensagem.
            </p>
            <p class="email-footer-text">
                © 2025 Crediuz. Todos os direitos reservados.
            </p>
        </div>
    </div>
</body>
</html>
</#macro>
