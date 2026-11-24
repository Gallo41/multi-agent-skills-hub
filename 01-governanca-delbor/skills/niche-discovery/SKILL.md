---
name: niche-discovery
description: Especialista em descoberta de nichos, modelagem de negócios e contextualização técnica de software no Brasil. Pesquisa rotina operacional real, jargões, concorrentes, dores de usuários, normas fiscais (NF-e, NFC-e, NFS-e) e gera o documento CONTEXT.md estruturado para consumo por desenvolvedores e IAs.
---

# Niche Discovery & Contextualização de Software

O **niche-discovery** é a skill mandatória a ser executada **antes** de codar qualquer software ou sistema voltado para um segmento específico de mercado. O seu objetivo é eliminar a superficialidade de "CRUD genérico", pesquisar a fundo o ecossistema brasileiro do nicho e gerar o documento estruturado **`CONTEXT.md`** na raiz do projeto.

---

## Fluxo Obrigatório de Execução (4 Fases)

```
[Início: Nicho Proposto]
       │
       ▼
[Fase 1: Alinhamento Prévio (3 a 5 Perguntas Rápidas)]
       │  (Aguardar respostas do desenvolvedor/usuário)
       ▼
[Fase 2: Pesquisa Ativa & Grounding Brasil]
       │  (CNAE, rotina, concorrentes, Reclame Aqui, fisco, APIs)
       ▼
[Fase 3: Modelagem Técnica & Casos de Borda]
       │  (Entidades, RBAC, máquinas de estado, armadilhas para IA)
       ▼
[Fase 4: Geração do CONTEXT.md]
```

---

### Fase 1: Alinhamento Prévio (NUNCA pule esta fase)
Ao ser acionado para um novo projeto ou nicho, **não gere o documento imediatamente**. Faça primeiro de **3 a 5 perguntas curtas e diretas** para calibrar a pesquisa:

1. **Porte e Perfil do Negócio:** O software é para microempreendedores (MEI/autônomos), pequenas empresas familiares, ou redes/médio porte?
2. **Escopo do MVP (Dor Nº 1):** Qual é o problema crítico que o sistema DEVE resolver na versão 1.0 para o cliente pagar/usar (ex: controle de ordens de serviço, agendamento com pagamento, comanda móvel)?
3. **Plataforma e Stack Pretendida:** O projeto será Web (Next.js/React), Mobile (React Native), Desktop (Electron/Delphi) ou Híbrido?
4. **Restrições ou Integrações Pré-definidas:** Já existe banco legado (Firebird, MySQL, PostgreSQL), maquineta de cartão ou provedor de WhatsApp/Pix que o cliente exige?
5. **Modelo de Faturamento do Software:** Será um SaaS de assinatura mensal, licença única ou taxa percentual por transação?

> Aguarde as respostas do desenvolvedor antes de avançar para a Fase 2. Se o desenvolvedor já tiver fornecido todas essas informações no prompt inicial, confirme o entendimento e inicie a pesquisa.

---

### Fase 2: Pesquisa Ativa Orientada ao Brasil
Utilize suas ferramentas de busca (`search_web` ou referências locais) e consulte o checklist em [`references/research-checklist.md`](references/research-checklist.md) para levantar dados reais:

- **Rotina Prática do Operador:** Como o atendente, técnico ou dono trabalha fisicamente? Onde ocorrem os gargalos e papeladas?
- **Vocabulário & Jargões Locais:** Termos autênticos do setor que devem virar nomes de tabelas, telas e campos (ex: "O.S.", "Comanda", "Grade", "Checklist", "Mão de Obra").
- **Concorrentes & Reclamações:** Quem são os líderes do segmento no Brasil? Quais são os maiores motivos de queixas no Reclame Aqui e avaliações de lojas de apps (ex: lentidão na emissão fiscal, perda de histórico, relatórios confusos)?
- **Fisco e Tributação Brasileira:**
  - DF-e aplicável: NF-e (mod 55), NFC-e (mod 65), NFS-e padrão nacional/municipal, CT-e, MDF-e.
  - Regimes: Simples Nacional, monofásico PIS/COFINS, substituição tributária (ST).
  - Órgãos fiscalizadores e reguladores (CFM, ANTT, CREA, Vigilância Sanitária, OAB).
- **APIs Brasileiras Naturais:** Pix dinâmico via BACEN/gateway (Asaas, Efí, Mercado Pago), WhatsApp API (Z-API, Evolution, Cloud API), consulta de CNPJ/CEP (BrasilAPI, ReceitaWS, ViaCEP).

---

### Fase 3: Modelagem Técnica & Casos de Borda
Traduza os fatos levantados em arquitetura de software:
- **Perfis de Acesso (RBAC):** Quem vê o quê (ex: Atendente não vê margem de lucro; Mecânico não vê preço de compra da peça).
- **Entidades Conceituais Centrais:** Relacionamentos, campos essenciais e regras de integridade.
- **Máquina de Estados dos Processos Críticos:** Ex: `Rascunho -> Orçamento -> Em Execução -> Faturado -> Concluído`.
- **Casos de Borda Críticos para IAs:** Liste explicitamente armadilhas do nicho que LLMs de código costumam falhar se tratarem o sistema como um CRUD genérico (ex: perda de histórico de preços, cancelamento de notas fora do prazo, sincronização offline).

---

### Fase 4: Entrega do `CONTEXT.md`
Gere o documento final completo no repositório do projeto seguindo estritamente a estrutura do template em [`templates/CONTEXT-TEMPLATE.md`](templates/CONTEXT-TEMPLATE.md):

1. **Visão Geral & Rotina Operacional** (com Glossário do Nicho)
2. **Escopo do Produto** (MVP Obrigatório vs Diferenciais vs Anti-Escopo)
3. **Análise de Concorrentes & Lacunas de Mercado**
4. **Perfis de Acesso (RBAC) & Fluxos Operacionais**
5. **Modelagem Conceitual de Dados** (Entidades e Máquinas de Estado)
6. **Integrações Típicas & Ecossistema de APIs Brasileiras**
7. **Conformidade Legal, Fisco & Compliance Brasileiro**
8. **Diretrizes Técnicas & Casos de Borda para IAs Desenvolvedoras**
9. **Checklist de Validação com o Cliente Final**

---

## Regras de Qualidade e Anti-Padrões

| Proibido (Anti-Padrão) | Obrigatório (Padrão Niche Discovery) |
| :--- | :--- |
| Criar lista genérica de "Tela de login, CRUD de clientes, cadastro de produtos e dashboard". | Especificar campos e particularidades do nicho (ex: placa/chassi em oficina, CRM/prontuário em clínica, grade cor/tamanho em moda). |
| Misturar suposições com fatos legais. | Identificar claramente o que é lei/fisco oficial vs o que é hipótese que o desenvolvedor deve checar com a contabilidade do cliente. |
| Linguagem prolixa de marketing. | Linguagem técnica, objetiva, estruturada em tabelas e markdown pronto para ingestão por LLMs de código. |
| Esquecer a contingência fiscal. | Toda menção a NFC-e ou NF-e no Brasil deve prever contingência offline e cancelamento dentro dos prazos legais. |

---

## Como Invocar a Skill

- No chat com a IA:  
  *"Preciso desenvolver um software para pet shops com banho e tosa. Inicie a skill niche-discovery."*
- Ao iniciar um novo projeto:  
  *"Vamos iniciar o projeto da clínica odontológica. Rode a descoberta de nicho e gere o CONTEXT.md."*