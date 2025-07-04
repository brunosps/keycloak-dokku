<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Redefinir Senha - Crediuz</title>
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
        .button:hover {
            transform: translateY(-1px);
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
        .warning {
            background: #fef3c7;
            border-left: 4px solid #f59e0b;
            padding: 16px;
            margin: 20px 0;
            border-radius: 8px;
        }
        .warning p {
            color: #92400e;
            margin: 0;
        }
        .security-note {
            background: #f0f9ff;
            border-left: 4px solid #0ea5e9;
            padding: 16px;
            margin: 20px 0;
            border-radius: 8px;
        }
        .security-note p {
            color: #0c4a6e;
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🔒 Redefinir Senha</h1>
            <p style="margin: 10px 0 0 0; font-size: 18px;">Credi<span class="brand">uz</span> Investimentos</p>
        </div>
        <div class="content">
            <p><strong>Prezado(a) Investidor(a),</strong></p>
            <p>Recebemos uma solicitação para redefinir a senha de acesso à sua conta Crediuz.</p>
            <p>Para sua segurança, clique no botão abaixo para criar uma nova senha:</p>
            
            <div style="text-align: center;">
                <a href="${link}" class="button">Redefinir Minha Senha</a>
            </div>
            
            <div class="warning">
                <p><strong>⏰ Prazo:</strong> Este link de segurança expirará em 30 minutos.</p>
            </div>
            
            <div class="security-note">
                <p><strong>🛡️ Segurança:</strong> Se você não solicitou esta alteração, entre em contato conosco imediatamente.</p>
            </div>
            
            <p>Se o botão não funcionar, copie e cole o link completo abaixo no seu navegador:</p>
            <p style="word-break: break-all; color: #6b7280; font-size: 14px; background: #f8fafc; padding: 10px; border-radius: 4px;">${link}</p>
            
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
