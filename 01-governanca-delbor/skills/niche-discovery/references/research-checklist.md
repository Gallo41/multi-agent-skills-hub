# Guia de Pesquisa Setorial & Fontes Oficiais Brasileiras

Este guia orienta o agente durante a **Fase de Pesquisa Ativa** no Brasil para evitar alucinações e garantir regras reais de negócio.

---

## 1. Identificação Fiscal & Econômica (CNAE)
- **Consulta Nacional de Atividades Econômicas (IBGE / Concla):**
  - Identifique o código CNAE exato do nicho (ex: `4711-3/02` - Hipermercados/Supermercados).
  - Verifique se a atividade permite enquadramento no **Simples Nacional** (Anexo I, II, III, IV ou V).
  - Descubra se há fator "r" para serviços (impacto em alíquota tributária).

---

## 2. Documentos Fiscais Eletrônicos (DF-e) por Segmento

| Tipo de DF-e | Modelo | Quando se Aplica no Brasil |
| :--- | :--- | :--- |
| **NF-e** | 55 | Venda de mercadorias entre empresas (B2B), devoluções, exportação e remessas. Exige certificado A1/A3. |
| **NFC-e** | 65 | Venda a consumidor final no varejo físico (B2C). Requer CSC (Código de Segurança do Contribuinte) e contingência offline. |
| **NFS-e** | Padrão ABRASF / Nacional | Prestação de serviços de qualquer natureza. Atenção ao novo padrão nacional da NFS-e para MEI e municípios integrados. |
| **CT-e** | 57 | Transporte rodoviário, aéreo ou aquaviário de cargas. |
| **MDF-e** | 58 | Manifesto de documentos fiscais para transporte interestadual ou intermunicipal com frota própria ou terceirizada. |
| **CF-e SAT** | - | Exclusivo de São Paulo e Ceará (MFE). Requer comunicação com hardware físico local se for desktop. |

---

## 3. Órgãos Reguladores e Normas Específicas

| Setor | Órgãos Reguladores | Normas Críticas |
| :--- | :--- | :--- |
| **Saúde / Clínicas** | CFM, CFO, COFEN, Anvisa, ANS | Resolução CFM nº 1.821 (prontuário digital), Padrão TISS/TUSS para convênios, RDC 63 Anvisa. |
| **Transporte / Logística** | ANTT | RNTRC (Registro Nacional de Transportadores Rodoviários de Cargas), CIOT, seguro obrigatório RCTR-C. |
| **Alimentos / Bares / Restaurantes** | Vigilância Sanitária (Visa municipal/estadual), Mapa | Controle de validade/lotes (PVPS/PEPS), ficha técnica de pratos, comanda eletrônica e taxa de serviço (Lei da Gorjeta nº 13.419). |
| **Imobiliário / Locação** | CRECI, Lei do Inquilinato (Lei 8.245/91) | Vistoria de entrada/saída com fotos, retenção de IR em aluguel de pessoa física para jurídica, repasse com split. |
| **Educação / Cursos** | MEC, CNE, Conselhos Estaduais | Registro de frequência, boletim acadêmico, emissão de diploma digital (Portaria MEC 554/2019). |
| **Financeiro / Fintechs** | Banco Central (Bacen), CVM | Resoluções Pix, arranjos de pagamento, regras de KYC (Know Your Customer) e AML (Anti-Money Laundering). |

---

## 4. Mineração de Dores Reais (Market Intelligence)
Ao pesquisar os concorrentes mais conhecidos do nicho, busque especificamente:
- **Reclame Aqui:** Busque pelo nome dos 3 principais ERPs/softwares do nicho. Filtre por "Problemas com Nota Fiscal", "Lentidão", "Perda de dados", "Suporte inexistente".
- **Comunidades e Fóruns:** Grupos de Facebook, Reddit (r/brdev, r/empreendedorismo) e canais do YouTube de profissionais do setor ("como abrir oficina mecânica", "rotina de pet shop").
- **Play Store / App Store:** Avaliações de 1 e 2 estrelas dos apps concorrentes para descobrir o que os operadores odeiam.

---

## 5. Ecossistema de APIs Brasileiras Comuns
- **Consulta de CNPJ / CEP:**
  - `https://brasilapi.com.br/` (Gratuita / Open Source)
  - `https://receitaws.com.br/`
  - `https://viacep.com.br/`
- **Pagamentos & Pix com Split:**
  - Asaas API (Excelente para cobrança recorrente, carnê, Pix e split)
  - Efí (antiga Gerencianet - especialista em Pix direto Bacen)
  - Mercado Pago / Pagar.me
- **WhatsApp Automation:**
  - WhatsApp Cloud API oficial (Meta)
  - Evolution API / Z-API (Soluções pragmáticas populares em softwares PME no Brasil)