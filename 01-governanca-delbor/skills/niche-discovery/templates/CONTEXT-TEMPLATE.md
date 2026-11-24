# Contexto de Nicho & Arquitetura de Domínio — [Nome do Projeto / Nicho]

> **Arquivo de Contexto Obrigatório:** Este documento é a fonte única de verdade sobre as regras de negócio, rotina operacional, conformidade fiscal brasileira e arquitetura conceitual para este software. Desenvolvedores e agentes de IA devem consultar este documento antes de planejar rotas, criar tabelas ou codar regras de negócio.

---

## 1. Visão Geral & Rotina Operacional do Nicho

### 1.1 O Nicho e o Perfil do Negócio
- **Segmento / CNAE principal:** [Ex: 4520-0/01 - Serviços de manutenção e reparação mecânica de veículos automotores]
- **Porte do Cliente Típico:** [Ex: Oficinas de pequeno a médio porte, 2 a 10 funcionários, faturamento R$ 30k a R$ 150k/mês]
- **Jornada Diária / Rotina Real do Operador:**
  - *Como o dia começa:* [Ex: Abertura de pátio, conferência de agendamentos do dia, recebimento de veículos]
  - *Gargalos e correria:* [Ex: Cliente esperando orçamento na recepção enquanto mecânico desmonta peça, falta de peça no estoque local]
  - *Fechamento do dia:* [Ex: Baixa de ordens de serviço, emissão de notas fiscais acumuladas, conferência de caixa Pix/Cartão/Boleto]

### 1.2 Glossário Terminológico do Setor
| Termo / Jargão | Significado Prático | Nome Recomendado no Código (Entidade / Campo) |
| :--- | :--- | :--- |
| *[Ex: Checklist de Entrada]* | *Vistoria visual do veículo com fotos e avarias antes do conserto* | `vehicle_inspection` / `InspectionItem` |
| *[Ex: O.S. (Ordem de Serviço)]* | *Documento central que amarra cliente, veículo, mecânico, serviços e peças* | `work_order` / `WorkOrder` |
| *[Ex: Mão de Obra (MO)]* | *Valor cobrado pelo tempo/serviço prestado pelo profissional* | `labor_cost` / `LaborService` |

---

## 2. Escopo do Produto: MVP Obrigatório vs Diferenciais Futuros

### 2.1 Core MVP (Sem isso o cliente não consegue trabalhar)
1. **[Feature 1]:** [Descrição detalhada com regras de negócio específicas do nicho]
2. **[Feature 2]:** [Descrição detalhada]
3. **[Feature 3]:** [Descrição detalhada]

### 2.2 Diferenciais Competitivos (Fase 2 / Pós-MVP)
- **[Diferencial 1]:** [Ex: Notificação de status via WhatsApp automatizado com foto da peça trocada]
- **[Diferencial 2]:** [Ex: Conciliação automática de maquininhas de cartão]

### 2.3 Fora de Escopo Inicial (Anti-Escopo)
- [Listar o que NÃO deve ser implementado no MVP para não inflar o software]

---

## 3. Análise de Concorrentes & Lacunas de Mercado

| Concorrente no Brasil | Pontos Fortes | Principais Reclamações de Usuários (Reclame Aqui / Fóruns) | Nossa Oportunidade / Diferencial |
| :--- | :--- | :--- | :--- |
| *[Nome 1]* | *[Ex: Completo, legado forte]* | *[Ex: Interface dos anos 90, lento, trava ao emitir NFC-e]* | *[Ex: Interface moderna, rápida, emissão fiscal em 1 clique]* |
| *[Nome 2]* | *[Ex: Barato, focado em mobile]* | *[Ex: Suporte horrível, cálculo de imposto monofásico errado]* | *[Ex: Suporte humanizado, automação fiscal para Simples Nacional]* |

---

## 4. Perfis de Acesso & Fluxos Principais

### 4.1 Perfis de Acesso (RBAC)
- **[Perfil 1 - Ex: Administrador/Dono]:** Acesso total, relatórios de DRE, margem de lucro por serviço, configurações fiscais.
- **[Perfil 2 - Ex: Atendente/Balconista]:** Abertura de atendimento, orçamentos, fechamento de caixa, emissão de NFC-e. Não vê margens nem custos de compra.
- **[Perfil 3 - Ex: Técnico/Operacional]:** Visualização da fila de tarefas, checklist de execução, apontamento de tempo e peças usadas.

### 4.2 Fluxo Crítico Operacional (Passo a Passo)
1. **Entrada / Abertura:** [Passo a passo]
2. **Execução / Processamento:** [Passo a passo]
3. **Faturamento / Cobrança:** [Passo a passo]
4. **Finalização & Pós-Venda:** [Passo a passo]

---

## 5. Modelagem Conceitual de Dados

### 5.1 Entidades Centrais & Relacionamentos
- **`[Entidade 1]`**: Representa `[...]`.
  - Campos-chave: `id`, `uuid`, `status`, `created_at`...
- **`[Entidade 2]`**: Representa `[...]`.
  - Relacionamentos: `pertence a Entidade 1 (1:N)`, `possui muitos Entidade 3 (N:N)`...

### 5.2 Estados & Máquinas de Estado Críticas
```
[Rascunho / Aberto] ──> [Em Análise / Orçamento] ──> [Aprovado / Em Execução] ──> [Concluído / Faturado]
                                  │
                                  └──> [Cancelado / Recusado]
```

---

## 6. Integrações Típicas & Ecossistema de APIs Brasileiras

| Categoria | Provedores Recomendados no Brasil | Finalidade & Formato |
| :--- | :--- | :--- |
| **Pagamentos / Pix** | Asaas, Efí (Gerencianet), Mercado Pago, OpenPix | Cobrança Pix com QR Code dinâmico, split de pagamento e webhook |
| **Comunicação** | WhatsApp Business API, Evolution API, Z-API | Envio de orçamentos, avisos de conclusão e lembretes |
| **Consulta Pública** | ReceitaWS, BrasilAPI, CNPJ.ws, ViaCEP | Preenchimento automático de cadastro por CNPJ e CEP |
| **Logística / Frete** | Correios, Melhor Envio, Frenet *(se aplicável)* | Cálculo de prazo e frete |

---

## 7. Conformidade Legal, Fisco & Compliance Brasileiro

### 7.1 Documentos Fiscais Eletrônicos Aplicáveis
- **Tipo de Documento:** [NF-e (Mod 55) / NFC-e (Mod 65) / NFS-e (Padrão Nacional ou Municipal) / SAT / MDF-e / CT-e]
- **Regime Tributário Predominante:** [Simples Nacional (ME/EPP) / Lucro Presumido]
- **Particularidades Tributárias:** [Ex: Produtos monofásicos PIS/COFINS, substituição tributária ICMS-ST, retenções de ISS]

### 7.2 Órgãos Reguladores & Normas Específicas
- **Órgão(s):** [Ex: CFM/CRM, ANTT, CREA, Vigilância Sanitária/ANVISA, Procon]
- **Exigências:** [Ex: Assinatura digital ICP-Brasil, guarda de registros por 5 anos, prontuário eletrônico certificado]
- **LGPD (Lei Geral de Proteção de Dados):**
  - Dados sensíveis tratados: [Ex: Dados de saúde, fotos de documentos, placa/chassi]
  - Políticas necessárias: Consentimento explícito, anonimização para relatórios analíticos, descarte seguro.

---

## 8. Diretrizes Técnicas & Casos de Borda para a IA Desenvolvedora

> [!WARNING]
> **Atenção IAs Desenvolvedoras:** Estas são armadilhas clássicas deste nicho que quebram o sistema em produção se tratadas como CRUD genérico.

1. **[Armadilha 1 - Ex: Conexão Intermitente]:** [Ex: A oficina física costuma ter sinal Wi-Fi ruim no galpão. O checklist precisa funcionar offline ou com fila de re-sincronização local.]
2. **[Armadilha 2 - Ex: Cancelamento com Nota Emitida]:** [Ex: Uma vez emitida a NFC-e, a OS não pode simplesmente sumir do banco. Deve passar por processo de cancelamento fiscal formal dentro do prazo legal de 30 minutos ou emissão de NF-e de devolução.]
3. **[Armadilha 3 - Ex: Alteração de Preço em Histórico]:** [Ex: Itens já orçados ou finalizados devem ter seu valor unitário gravado estaticamente no item da OS, e não apenas referenciado à tabela de produtos, para não distorcer relatórios financeiros passados quando o preço de tabela subir.]

---

## 9. Checklist de Validação com o Cliente Final

Perguntas que o desenvolvedor deve fazer ao cliente/empresa parceira antes de fechar o escopo final:
- [ ] *[Pergunta 1 sobre contabilidade ou emissão fiscal]*
- [ ] *[Pergunta 2 sobre rotina operacional dos funcionários]*
- [ ] *[Pergunta 3 sobre limites de desconto ou comissionamento]*
- [ ] *[Pergunta 4 sobre máquinas de cartão ou banco atual]*