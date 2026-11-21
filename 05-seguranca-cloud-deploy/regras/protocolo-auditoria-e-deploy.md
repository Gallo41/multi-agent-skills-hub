# Protocolo de Auditoria de Segurança & Deploy Cloud (Vercel)

## 1. Auditoria de Segurança (`security-audit`)
- Ative antes de liberar código envolvendo autenticação, permissões multi-tenant, APIs públicas, webhooks, pagamentos, uploads ou integrações com LLMs.
- Consulte os módulos específicos dentro de `skills/security-audit/` conforme a superfície de ataque (ex.: `WEB-PROTOCOL-AND-AUTH.md`, `AI-AND-LLM.md`, `CLOUD-AND-DEPLOYMENT.md`, `DATA-ISOLATION-AND-LIFECYCLE.md`) — não carregue todos os 15 guias se apenas um domínio se aplicar.

## 2. Operações Vercel (`deploy-to-vercel`, `vercel-cli-with-tokens`, `vercel-optimize`)
- **Deploy / Preview**: `deploy-to-vercel` (ou `vercel-cli-with-tokens` quando houver `VERCEL_TOKEN` em ambiente automatizado).
- **Redução de Fatura / Latência (`vercel-optimize`)**:
  - Aplique **apenas** em projetos já implantados na Vercel com tráfego real.
  - Siga rigorosamente a doutrina em `references/doctrine.md`: coletar métricas via Vercel CLI (`vercel metrics`, `vercel usage`) antes de investigar código-fonte.
  - Nunca commite tokens reais (`.env` é proibido pelo Setor 01).
