# Setor 05 — Segurança, Auditoria & Cloud Deploy (Vercel)

Este setor reúne auditoria de segurança de código/infraestrutura e operações de deploy, tokens e redução de custos em projetos Vercel.

## Regras do Setor
- [`regras/protocolo-auditoria-e-deploy.md`](./regras/protocolo-auditoria-e-deploy.md) — Gatilhos obrigatórios de auditoria de segurança (`security-audit`), deploy seguro e otimização orientada a métricas (`vercel-optimize`).

## Skills do Setor (`skills/`)

| Skill | Especialidade | Arquivo Principal |
| :--- | :--- | :--- |
| `security-audit` | Auditoria profunda de segurança (Cloudflare Security Audit: auth, XSS/CSRF, SSRF, supply chain, AI/LLM, isolamento de dados). | [`SKILL.md`](./skills/security-audit/SKILL.md) |
| `vercel-optimize` | Otimização de custos e performance em produção na Vercel (métricas + gates determinísticos). | [`SKILL.md`](./skills/vercel-optimize/SKILL.md) · [`INDEX_REGRAS.md`](./skills/vercel-optimize/INDEX_REGRAS.md) |
| `deploy-to-vercel` | Deploy direto de projetos para a Vercel (inclusive sem autenticação prévia via claimable preview). | [`SKILL.md`](./skills/deploy-to-vercel/SKILL.md) |
| `vercel-cli-with-tokens` | Execução automatizada do Vercel CLI usando `VERCEL_TOKEN` em CI/CD ou ambiente local. | [`SKILL.md`](./skills/vercel-cli-with-tokens/SKILL.md) |
