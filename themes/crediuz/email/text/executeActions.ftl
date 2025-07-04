Crediuz Investimentos - Ação Requerida

Olá!

Sua conta na Crediuz requer algumas ações para ser completamente configurada ou atualizada.

IMPORTANTE: Essas ações são necessárias para manter sua conta segura e em conformidade com nossas políticas de investimento.

AÇÕES PENDENTES:
<#if requiredActions??>
<#list requiredActions as reqActionItem>
- <#if reqActionItem == "VERIFY_EMAIL">Verificar seu endereço de email<#elseif reqActionItem == "UPDATE_PASSWORD">Atualizar sua senha<#elseif reqActionItem == "UPDATE_PROFILE">Completar seu perfil de investidor<#elseif reqActionItem == "CONFIGURE_TOTP">Configurar autenticação de dois fatores<#elseif reqActionItem == "terms_and_conditions">Aceitar novos termos de investimento<#else>${reqActionItem}</#if>
</#list>
<#else>
- Ações de configuração da conta
</#if>

Para completar essas ações, acesse:
${link}

Este link expira em <#if linkExpirationFormatter??>${linkExpirationFormatter(linkExpiration)}<#else>${linkExpiration?datetime}</#if> para sua segurança.

Se tiver problemas com o link, copie e cole o endereço completo no seu navegador.

Crediuz - Investimentos seguros e inteligentes
Atendimento: suporte@crediuz.com

© 2025 Crediuz Investimentos - Plataforma de investimentos licenciada
