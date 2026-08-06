-- Tabela de Usuários
CREATE TABLE usuarios
(
    id            BIGSERIAL PRIMARY KEY,
    nome          VARCHAR(255) NOT NULL,
    email         VARCHAR(255) NOT NULL UNIQUE,
    senha         VARCHAR(255) NOT NULL,
    role          VARCHAR(50)  NOT NULL,
    criado_em     TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP
);

-- Tabela de Livros
CREATE TABLE livros
(
    id            BIGSERIAL PRIMARY KEY,
    titulo        VARCHAR(255) NOT NULL,
    autor         VARCHAR(255) NOT NULL,
    isbn          VARCHAR(20)  NOT NULL UNIQUE,
    quantidade    INTEGER      NOT NULL CHECK (quantidade >= 0),
    criado_em     TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP
);

-- Tabela de Empréstimos
CREATE TABLE emprestimos
(
    id              BIGSERIAL PRIMARY KEY,
    usuario_id      BIGINT      NOT NULL,
    livro_id        BIGINT      NOT NULL,
    data_emprestimo TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_devolucao  TIMESTAMP,
    status          VARCHAR(50) NOT NULL,
    criado_em       TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    atualizado_em   TIMESTAMP,
    CONSTRAINT fk_emprestimo_usuario FOREIGN KEY (usuario_id) REFERENCES usuarios (id) ON DELETE CASCADE,
    CONSTRAINT fk_emprestimo_livro FOREIGN KEY (livro_id) REFERENCES livros (id) ON DELETE CASCADE
);