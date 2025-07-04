<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${subject}</title>
    <style>
        /* Reset styles */
        body, table, td, p, h1, h2, h3, h4, h5, h6 {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            vertical-align: baseline;
        }
        
        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen', 'Ubuntu', 'Cantarell', sans-serif;
            line-height: 1.6;
            color: #374151;
            background-color: #f9fafb;
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
        }
        
        table {
            border-collapse: collapse;
            mso-table-lspace: 0pt;
            mso-table-rspace: 0pt;
        }
        
        img {
            border: 0;
            height: auto;
            line-height: 100%;
            outline: none;
            text-decoration: none;
            -ms-interpolation-mode: bicubic;
            max-width: 100%;
        }
        
        /* Main container */
        .email-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
            overflow: hidden;
        }
        
        /* Header */
        .email-header {
            background: linear-gradient(135deg, #00b7c2 0%, #0891b2 100%);
            padding: 32px 24px;
            text-align: center;
        }
        
        .email-header .logo {
            margin-bottom: 16px;
        }
        
        .email-header h1 {
            color: #ffffff;
            font-size: 28px;
            font-weight: 700;
            margin: 0;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        
        .email-header p {
            color: rgba(255, 255, 255, 0.9);
            font-size: 16px;
            margin: 8px 0 0 0;
        }
        
        /* Content */
        .email-content {
            padding: 40px 32px;
        }
        
        .email-content h2 {
            color: #111827;
            font-size: 24px;
            font-weight: 600;
            margin: 0 0 16px 0;
            line-height: 1.3;
        }
        
        .email-content p {
            color: #4b5563;
            font-size: 16px;
            line-height: 1.6;
            margin: 0 0 16px 0;
        }
        
        .email-content .highlight {
            color: #00b7c2;
            font-weight: 600;
        }
        
        /* Button */
        .btn {
            display: inline-block;
            padding: 16px 32px;
            background: linear-gradient(135deg, #00b7c2 0%, #0891b2 100%);
            color: #ffffff !important;
            text-decoration: none;
            border-radius: 8px;
            font-weight: 600;
            font-size: 16px;
            text-align: center;
            margin: 24px 0;
            box-shadow: 0 4px 12px rgba(0, 183, 194, 0.3);
            transition: all 0.3s ease;
        }
        
        .btn:hover {
            background: linear-gradient(135deg, #0891b2 0%, #0e7490 100%);
            box-shadow: 0 6px 16px rgba(0, 183, 194, 0.4);
            transform: translateY(-1px);
        }
        
        /* Info box */
        .info-box {
            background: #f0fdff;
            border: 1px solid #b3f0ff;
            border-radius: 8px;
            padding: 20px;
            margin: 24px 0;
        }
        
        .info-box .icon {
            font-size: 24px;
            margin-bottom: 8px;
        }
        
        .info-box h3 {
            color: #0891b2;
            font-size: 18px;
            font-weight: 600;
            margin: 0 0 8px 0;
        }
        
        .info-box p {
            color: #0e7490;
            margin: 0;
            font-size: 14px;
        }
        
        /* Warning box */
        .warning-box {
            background: #fffbeb;
            border: 1px solid #fed7aa;
            border-radius: 8px;
            padding: 20px;
            margin: 24px 0;
        }
        
        .warning-box .icon {
            font-size: 24px;
            margin-bottom: 8px;
        }
        
        .warning-box h3 {
            color: #d97706;
            font-size: 18px;
            font-weight: 600;
            margin: 0 0 8px 0;
        }
        
        .warning-box p {
            color: #92400e;
            margin: 0;
            font-size: 14px;
        }
        
        /* Stats */
        .stats {
            background: #f8fafc;
            border-radius: 8px;
            padding: 24px;
            margin: 24px 0;
            text-align: center;
        }
        
        .stats-grid {
            display: table;
            width: 100%;
            table-layout: fixed;
        }
        
        .stat-item {
            display: table-cell;
            text-align: center;
            padding: 0 16px;
        }
        
        .stat-number {
            display: block;
            font-size: 32px;
            font-weight: 700;
            color: #00b7c2;
            margin-bottom: 4px;
        }
        
        .stat-label {
            font-size: 14px;
            color: #6b7280;
        }
        
        /* Footer */
        .email-footer {
            background: #f8fafc;
            padding: 32px;
            text-align: center;
            border-top: 1px solid #e5e7eb;
        }
        
        .email-footer p {
            color: #6b7280;
            font-size: 14px;
            margin: 0 0 16px 0;
        }
        
        .email-footer .social-links {
            margin: 16px 0;
        }
        
        .email-footer .social-links a {
            display: inline-block;
            margin: 0 8px;
            color: #00b7c2;
            text-decoration: none;
            font-size: 14px;
        }
        
        .email-footer .unsubscribe {
            font-size: 12px;
            color: #9ca3af;
        }
        
        .email-footer .unsubscribe a {
            color: #9ca3af;
            text-decoration: underline;
        }
        
        /* Mobile responsiveness */
        @media only screen and (max-width: 600px) {
            .email-container {
                width: 100% !important;
                border-radius: 0;
            }
            
            .email-header {
                padding: 24px 16px;
            }
            
            .email-header h1 {
                font-size: 24px;
            }
            
            .email-content {
                padding: 32px 16px;
            }
            
            .email-footer {
                padding: 24px 16px;
            }
            
            .stats-grid {
                display: block;
            }
            
            .stat-item {
                display: block;
                padding: 8px 0;
            }
        }
        
        /* Dark mode support */
        @media (prefers-color-scheme: dark) {
            body {
                background-color: #111827 !important;
            }
            
            .email-container {
                background-color: #1f2937 !important;
            }
            
            .email-content h2 {
                color: #f9fafb !important;
            }
            
            .email-content p {
                color: #d1d5db !important;
            }
            
            .stats {
                background: #374151 !important;
            }
            
            .email-footer {
                background: #374151 !important;
                border-top-color: #4b5563 !important;
            }
        }
    </style>
</head>
<body>
    <div class="email-container">
        <!-- Header -->
        <div class="email-header">
            <div class="logo">
                <!-- Logo seria inserido aqui -->
                <div style="width: 64px; height: 64px; background: rgba(255, 255, 255, 0.2); border-radius: 16px; margin: 0 auto; display: flex; align-items: center; justify-content: center; font-size: 32px;">🌍</div>
            </div>
            <h1>TripHosts</h1>
            <p>Sua plataforma de experiências de viagem</p>
        </div>
        
        <!-- Content -->
        <div class="email-content">
            ${content}
        </div>
        
        <!-- Footer -->
        <div class="email-footer">
            <p><strong>TripHosts</strong> - Conectando viajantes a experiências únicas</p>
            
            <div class="stats">
                <div class="stats-grid">
                    <div class="stat-item">
                        <span class="stat-number">50+</span>
                        <span class="stat-label">Destinos</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">1000+</span>
                        <span class="stat-label">Viajantes</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">4.9★</span>
                        <span class="stat-label">Avaliação</span>
                    </div>
                </div>
            </div>
            
            <div class="social-links">
                <a href="#">Instagram</a>
                <a href="#">Facebook</a>
                <a href="#">YouTube</a>
                <a href="#">LinkedIn</a>
            </div>
            
            <p class="unsubscribe">
                Se você não deseja mais receber estes e-mails, <a href="#">cancele sua inscrição</a><br>
                TripHosts • São Paulo, SP • Brasil
            </p>
        </div>
    </div>
</body>
</html>
