<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Email de Teste - Crediuz</title>
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
        .test-info {
            background: #eff6ff;
            border-left: 4px solid #3b82f6;
            padding: 16px;
            margin: 20px 0;
            border-radius: 8px;
        }
        .test-info p {
            color: #1e40af;
            margin: 0;
        }
        .status-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        .status-table th, .status-table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #e5e7eb;
        }
        .status-table th {
            background: #f8fafc;
            color: #374151;
            font-weight: 600;
        }
        .status-good {
            color: #22c55e;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>📧 Email de Teste</h1>
            <p style="margin: 10px 0 0 0; font-size: 18px;">Credi<span class="brand">uz</span> Investimentos</p>
        </div>
        <div class="content">
            <p><strong>Este é um email de teste da plataforma Crediuz!</strong></p>
            <p>Parabéns! Se você recebeu este email, significa que nossa configuração de SMTP está funcionando corretamente.</p>
            
            <div class="test-info">
                <p><strong>✅ Status:</strong> Configuração de email funcionando perfeitamente!</p>
            </div>
            
            <table class="status-table">
                <tr>
                    <th>Componente</th>
                    <th>Status</th>
                </tr>
                <tr>
                    <td>Servidor SMTP</td>
                    <td class="status-good">✅ Conectado</td>
                </tr>
                <tr>
                    <td>Autenticação</td>
                    <td class="status-good">✅ Autenticado</td>
                </tr>
                <tr>
                    <td>Template Engine</td>
                    <td class="status-good">✅ Funcionando</td>
                </tr>
                <tr>
                    <td>Entrega de Email</td>
                    <td class="status-good">✅ Entregue</td>
                </tr>
            </table>
            
            <p>Este email de teste inclui:</p>
            <ul style="color: #374151; line-height: 1.6;">
                <li>Verificação da conectividade SMTP</li>
                <li>Teste de renderização de templates</li>
                <li>Validação do design responsivo</li>
                <li>Teste de codificação UTF-8</li>
            </ul>
            
            <p>Informações técnicas:</p>
            <ul style="color: #6b7280; font-size: 14px;">
                <li>Data/Hora: ${.now?datetime}</li>
                <li>Realm: ${realmName!"Crediuz"}</li>
                <li>Template: email-test.ftl</li>
            </ul>
            
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
