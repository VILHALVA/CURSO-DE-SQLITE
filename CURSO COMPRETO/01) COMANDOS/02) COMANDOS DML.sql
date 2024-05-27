-- COMANDOS DML

-- COMANDOS DML: INSERT, UPDATE, DELETE + WHERE

-- Inserir um novo cliente na tabela "clientes" com nome "ALGUSTO", telefone "123456789" e cidade "RIO DE JANEIRO"
INSERT INTO clientes(nome, tel, cidade) VALUES ('ALGUSTO', 123456789, 'RIO DE JANEIRO');

-- Inserir um novo cliente na tabela "clientes" com nome "ANA", telefone "123457659" e cidade "SÃO PAULO"
INSERT INTO clientes(nome, tel, cidade) VALUES ('ANA', 123457659, 'SÃO PAULO');

-- Inserir um novo cliente na tabela "clientes" com nome "CLEBER", telefone "14566457659" e cidade "SANTA CATARINA"
INSERT INTO clientes(nome, tel, cidade) VALUES ('CLEBER', 14566457659, 'SANTA CATARINA');

-- Inserir um novo cliente na tabela "clientes" com nome "DELCIMAR", telefone "145653432" e cidade "SANTA CATARINA"
INSERT INTO clientes(nome, tel, cidade) VALUES ('DELCIMAR', 145653432, 'SANTA CATARINA');

-- Atualizar o telefone do cliente com ID 3 para "987654321"
UPDATE clientes SET tel = 987654321 WHERE id = 3;

-- Atualizar o nome da cidade "RIO DE JANEIRO" para "RJ" na tabela "clientes"
UPDATE clientes SET cidade = 'RJ' WHERE cidade = 'RIO DE JANEIRO';

-- Excluir o cliente com nome 'JOÃO' da tabela "clientes"
DELETE FROM clientes WHERE nome = 'JOÃO';

-- Excluir todos os clientes da cidade "SANTA CATARINA" da tabela "clientes"
DELETE FROM clientes WHERE cidade = 'SANTA CATARINA';

-- Excluir a tabela "clientes" inteira do banco de dados
DROP TABLE clientes;

-- Selecionar todos os registros restantes da tabela "clientes"
SELECT * FROM clientes;
