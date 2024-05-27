-- COMANDOS DDL: CREATE TABLE, ALTER E DROP

-- Criar o banco de dados "database" 
CREATE DATABASE "DATABASE";

-- Criar a tabela "clientes" com as colunas "id", "nome" e "tel"
CREATE TABLE clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- Chave primária autoincrementada
    nome TEXT,                             -- Nome do cliente
    tel NUMERIC                            -- Número de telefone do cliente
);

-- Inserir um registro na tabela "clientes" com nome "VILHALVA" e número de telefone "987554431"
INSERT INTO clientes(nome, tel) VALUES ("VILHALVA", 987554431);

-- Adicionar a coluna "cidade" à tabela "clientes"
ALTER TABLE clientes
    ADD COLUMN cidade TEXT;

-- Inserir um registro na tabela "clientes" com nome "LUCAS", número de telefone "9875544631" e cidade "SÃO PAULO"
INSERT INTO clientes(nome, tel, cidade) VALUES ("LUCAS", 9875544631, "SÃO PAULO");

-- Remover a coluna "cidade" da tabela "clientes"
ALTER TABLE clientes
    DROP COLUMN cidade;

-- Excluir todos os registros da tabela "clientes"
DELETE FROM clientes;

-- Adicionar a coluna "cidade" à tabela "clientes" e torná-la obrigatória (NOT NULL)
ALTER TABLE clientes
    ADD COLUMN cidade TEXT NOT NULL;

-- Inserir um registro na tabela "clientes" com nome "JOÃO", número de telefone "9875544631" e cidade "RIO DE JANEIRO"
INSERT INTO clientes(nome, tel, cidade) VALUES ("JOÃO", 9875544631, "RIO DE JANEIRO");

-- Selecionar todos os registros da tabela "clientes"
SELECT * FROM clientes;
