<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Redefinir Senha - TripHosts</title>
    <style>
        body {
            font-family: 'Inter', Arial, sans-serif;
            background-color: #f9fafb;
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
            background: linear-gradient(135deg, #14b8a6 0%, #0891b2 100%);
            color: white;
            padding: 30px;
            text-align: center;
        }
        .header h1 {
            margin: 0;
            font-size: 24px;
            font-weight: 700;
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
            background: linear-gradient(135deg, #14b8a6 0%, #0891b2 100%);
            color: white;
            padding: 12px 24px;
            text-decoration: none;
            border-radius: 8px;
            font-weight: 600;
            margin: 20px 0;
        }
        .footer {
            background: #f9fafb;
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
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🔑 Redefinir Senha</h1>
        </div>
        <div class="content">
            <p><strong>Olá,</strong></p>
            <p>Recebemos uma solicitação para redefinir a senha da sua conta TripHosts.</p>
            <p>Para criar uma nova senha, clique no botão abaixo:</p>
            
            <div style="text-align: center;">
                <a href="${link}" class="button">Redefinir Minha Senha</a>
            </div>
            
            <div class="warning">
                <p><strong>⏰ Importante:</strong> Este link expirará em 30 minutos.</p>
            </div>
            
            <p>Se você não solicitou a redefinição de senha, ignore este email. Sua senha permanecerá inalterada.</p>
            
            <p>Se o botão não funcionar, copie e cole o link abaixo no seu navegador:</p>
            <p style="word-break: break-all; color: #6b7280; font-size: 14px;">${link}</p>
        </div>
        <div class="footer">
            <p>TripHosts - Sua plataforma de experiências de viagem únicas</p>
        </div>
    </div>
</body>
</html>
