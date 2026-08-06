# API Gerenciamento de Biblioteca

Projeto de uma API RESTful desenvolvida em Java com Spring Boot para o gerenciamento de uma biblioteca. O sistema permite o controle do acervo de livros, cadastro de usuários e a gestão completa do fluxo de empréstimos e devoluções.

## Tecnologias Utilizadas

*   **Java 17+**
*   **Spring Boot** (Web, Data JPA, Validation)
*   **PostgreSQL** (Banco de dados relacional principal)
*   **Flyway** (Controle de versionamento do banco de dados e migrations)
*   **Lombok** (Redução de código boilerplate)
*   *Futuramente:* **Angular** (Frontend SPA), Spring Security & JWT (Autenticação), Swagger/OpenAPI (Documentação), Docker (Containerização), JUnit/Mockito (Testes).

## Estrutura de Dados

O banco de dados é gerido de forma automatizada pelo Flyway e mapeado através de Entidades JPA. As principais tabelas são:

*   `usuarios`: Gerencia os leitores e administradores do sistema (Contém roles de ADMIN e USER).
*   `livros`: Registra o catálogo, controle de estoque (quantidade) e ISBN.
*   `emprestimos`: Registra a transação entre o usuário e o livro, incluindo datas de devolução e status (PENDENTE, DEVOLVIDO, ATRASADO).

## Roadmap de Desenvolvimento

O projeto foi estruturado em fases de entregas. Atualmente, encontra-se na fase de construção dos CRUDs.

- [x] Fase 1: Criar projeto, Conectar PostgreSQL, Configurar Flyway, Criar Tabelas e Entidades JPA.
- [ ] Fase 2: CRUD de Livros.
- [ ] Fase 3: CRUD de Usuários.
- [ ] Fase 4: Login JWT (Segurança e Autenticação).
- [ ] Fase 5: Lógica de Empréstimos.
- [ ] Fase 6: Documentação com Swagger.
- [ ] Fase 7: Containerização com Docker.
- [ ] Fase 8: Testes Unitários e de Integração.
- [ ] Fase 9: Desenvolvimento do Frontend com Angular.

## Como Executar o Projeto Localmente

### Pré-requisitos
*   Java Development Kit (JDK) instalado.
*   PostgreSQL instalado e rodando localmente (ou via Docker).
*   Maven configurado no ambiente.

### Passos para execução

1. Clone o repositório:
   ```bash
   git clone [https://github.com/seu-usuario/seu-repositorio.git](https://github.com/seu-usuario/seu-repositorio.git)
   ```

2. Configure as credenciais do banco de dados no arquivo `src/main/resources/application.properties`:
   ```properties
   spring.datasource.url=jdbc:postgresql://localhost:5432/biblioteca_db
   spring.datasource.username=seu_usuario
   spring.datasource.password=sua_senha
   
   # O Flyway rodará automaticamente ao iniciar a aplicação
   spring.flyway.enabled=true
   ```

3. Execute a aplicação via Maven ou através da sua IDE de preferência:
   ```bash
   mvn spring-boot:run
   ```

4. A API estará disponível em `http://localhost:8080`. (As migrations V1 e V2 do Flyway rodarão automaticamente no primeiro startup, criando as tabelas e inserindo os dados iniciais).

---
Desenvolvido por Luiz Othávio Francisconi Alano
