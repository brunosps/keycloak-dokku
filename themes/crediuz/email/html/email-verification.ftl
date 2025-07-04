<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Verificar Email - Crediuz</title>
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
        .welcome-note {
            background: #f0fdf4;
            border-left: 4px solid #22c55e;
            padding: 16px;
            margin: 20px 0;
            border-radius: 8px;
        }
        .welcome-note p {
            color: #166534;
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>✉️ Verificar Email</h1>
            <p style="margin: 10px 0 0 0; font-size: 18px;">Credi<span class="brand">uz</span> Investimentos</p>
        </div>
        <div class="content">
            <p><strong>Bem-vindo(a) à Crediuz!</strong></p>
            <p>Para completar o cadastro da sua conta de investimentos, precisamos verificar seu endereço de email.</p>
            <p>Clique no botão abaixo para confirmar:</p>
            
            <div style="text-align: center;">
                <a href="${link}" class="button">Verificar Meu Email</a>
            </div>
            
            <div class="welcome-note">
                <p><strong>🎉 Parabéns!</strong> Você está a um passo de acessar nossa plataforma de investimentos.</p>
            </div>
            
            <p>Após a verificação, você terá acesso a:</p>
            <ul style="color: #374151; line-height: 1.6;">
                <li>Dashboard personalizado de investimentos</li>
                <li>Análises e relatórios detalhados</li>
                <li>Consultoria financeira especializada</li>
                <li>Produtos de investimento exclusivos</li>
            </ul>
            
            <p>Se o botão não funcionar, copie e cole o link abaixo no seu navegador:</p>
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
