-- 1. Inserindo Usuários
-- Senhas em texto puro para testes iniciais (Serão alteradas para BCrypt na Fase 4)
INSERT INTO usuarios (nome, email, senha, role)
VALUES ('Admin Biblioteca', 'admin@biblioteca.com', '123456', 'ADMIN'),
       ('João Silva', 'joao@email.com', '123456', 'USER'),
       ('Maria Oliveira', 'maria@email.com', '123456', 'USER');

-- 2. Inserindo Livros
INSERT INTO livros (titulo, autor, isbn, quantidade)
VALUES ('Spring Boot na Prática', 'Mila Rosa', '9788500000001', 5),
       ('Clean Code', 'Robert C. Martin', '9780132350884', 3),
       ('O Programador Pragmático', 'Andrew Hunt', '9788577807000', 2);

-- 3. Inserindo Empréstimos
-- Empréstimo Pendente (Usuário 2 pegou o Livro 1 hoje)
INSERT INTO emprestimos (usuario_id, livro_id, data_emprestimo, status)
VALUES (2, 1, CURRENT_TIMESTAMP, 'PENDENTE');

-- Empréstimo Devolvido (Simulando um empréstimo feito há 5 dias e devolvido há 1 dia)
-- O PostgreSQL permite fazer contas com datas usando o INTERVAL
INSERT INTO emprestimos (usuario_id, livro_id, data_emprestimo, data_devolucao, status)
VALUES (3, 2, CURRENT_TIMESTAMP - INTERVAL '5 days', CURRENT_TIMESTAMP - INTERVAL '1 day', 'DEVOLVIDO');