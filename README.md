# 🧠 Plataforma de Sessões Terapêuticas Online

## 📖 Visão Geral
Este projeto é uma plataforma completa para conectar pacientes com terapeutas, agendar sessões, gerenciar pagamentos e realizar encontros virtuais. A solução foi projetada para ser simples e eficiente, com suporte para futuras expansões.

---

## 🛠️ Tecnologias Utilizadas
| Camada             | Ferramenta / Observação                           |
|--------------------|---------------------------------------------------|
| **Backend**        | Ruby on Rails (API + Web, Devise + JWT para APIs futuras) |
| **Frontend**       | Rails com Hotwire/Turbo (padrão), ou React para SPA |
| **Banco de Dados** | PostgreSQL (recomendado para produção)            |
| **Background Jobs**| Sidekiq + Redis (envio de e-mails, lembretes, notificações) |
| **Pagamentos**     | Stripe ou Pagar.me (Pix, cartão, boleto)          |
| **Vídeo**          | Daily.co (simples e fácil) ou Jitsi (grátis e open-source) |
| **Notificações**   | SendGrid (e-mails), Twilio/WhatsApp API (mensagens/SMS) |
| **Hospedagem**     | Render, Fly.io ou Heroku (para iniciar)           |

---

## 📐 MVP – Funcionalidades Básicas
### 👥 Usuários
**Paciente:**
- Cadastro/login
- Visualização de profissionais
- Agendamento (com disponibilidade real)
- Pagamento seguro
- Acesso ao link da sessão
- Avaliação do terapeuta

**Terapeuta:**
- Cadastro com validação/admin aprovação
- Cadastro de especialidades e serviços
- Definição de agenda e horários disponíveis
- Visualização de agenda de sessões
- Prontuário privado (anotações)

**Admin:**
- Aprovação e validação de profissionais
- Monitoramento de sessões, usuários e pagamentos
- Gerenciamento de notificações e suporte
- Exportação de relatórios

---

## 🛠️ Informações Adicionais

### * Ruby version
- Ruby **3.2.2** (ou a versão mais recente estável recomendada).

### * System dependencies
- Redis para background jobs (Sidekiq).
- PostgreSQL como banco de dados padrão.
- Node.js e Yarn para gerenciamento de dependências do frontend.

### * Configuration
1. Configure as variáveis de ambiente no arquivo `.env` ou utilize serviços como **Dotenv**.
2. Variáveis essenciais incluem:
   - `DATABASE_URL`: Conexão com o banco PostgreSQL.
   - `REDIS_URL`: Conexão com o servidor Redis.
   - `STRIPE_API_KEY` / `PAGARME_API_KEY`: Chaves para integração com pagamento.

### * Database creation
- Criação do banco de dados:
  ```bash
  rails db:create
