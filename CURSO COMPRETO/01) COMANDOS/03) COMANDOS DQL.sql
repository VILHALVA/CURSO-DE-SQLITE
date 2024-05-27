-- COMANDOS DQL: SELECT - OPERADORES COMPARATIVOS E LOGICOS

-- Criar a tabela "produtos" para armazenar informações sobre os produtos
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,  -- Chave primária autoincrementada
    produto TEXT,                          -- Nome do produto
    cor TEXT,                              -- Cor do produto
    tamanho VARCHAR(2),                    -- Tamanho do produto (pode ser uma combinação de letras e números)
    sexo VARCHAR(1),                       -- Sexo ao qual o produto é destinado (M para masculino, F para feminino, T para unissex)
    valor NUMERIC,                         -- Valor do produto
    mes NUMERIC,                           -- Mês em que o produto foi registrado
    ano NUMERIC                            -- Ano em que o produto foi registrado
);

-- Vá em `arquivo/importar/Tabela apartir do arquivo CSV..` 
-- Selecione o `../BANCOS DE DADOS/produtos`.
-- Certifique-se de selecionar a opção "Nome das colunas em primeira linha"
-- Certifique-se de definir o separador de campos como ";" (ponto e vírgula)

-----------------------------------------------------------------
-- Vamos usar os dados do arquivo CSV para criar comandos SQL que utilizam operadores comparativos e lógicos. Aqui estão alguns exemplos:

-- 1. Selecionar todos os produtos com valor superior a 50:
SELECT * FROM produtos WHERE valor > 50;

-- 2. Selecionar todos os produtos com tamanho igual a 'GG' e cor diferente de 'PRETO':
SELECT * FROM produtos WHERE tamanho = 'GG' AND cor != 'PRETO';

-- 3. Selecionar todos os produtos com valor entre 30 e 60:
SELECT * FROM produtos WHERE valor BETWEEN 30 AND 60;

-- 4. Selecionar todos os produtos com tamanho 'M' ou 'G' e cor 'VERMELHO':
SELECT * FROM produtos WHERE (tamanho = 'M' OR tamanho = 'G') AND cor = 'VERMELHO';

-- 5. Selecionar todos os produtos com valor igual a 50 ou cor igual a 'AZUL':
SELECT * FROM produtos WHERE valor = 50 OR cor = 'AZUL';

-- 6. Selecionar todos os produtos com valor maior ou igual a 60 e menor ou igual a 70:
SELECT * FROM produtos WHERE valor >= 60 AND valor <= 70;

-- 7. Selecionar todos os produtos com cor diferente de 'VERMELHO' e tamanho igual a 'GG':
SELECT * FROM produtos WHERE cor != 'VERMELHO' AND tamanho = 'GG';

-- 8. Selecionar todos os produtos com valor entre 40 e 50 e que não sejam da categoria 'CALÇA':
SELECT * FROM produtos WHERE valor BETWEEN 40 AND 50 AND categoria != 'CALÇA';

-- 9. Selecionar todos os produtos com valor igual a 30 ou 40 e que sejam da categoria 'CAMISA':
SELECT * FROM produtos WHERE (valor = 30 OR valor = 40) AND categoria = 'CAMISA';

-- 10. Selecionar todos os produtos com tamanho 'P', 'M' ou 'G' e cor igual a 'PRETO' ou 'BRANCO':
SELECT * FROM produtos WHERE (tamanho = 'P' OR tamanho = 'M' OR tamanho = 'G') AND (cor = 'PRETO' OR cor = 'BRANCO');

-- 11. Selecionar todos os produtos com valor superior a 50 e que sejam da categoria 'TÊNIS':
SELECT * FROM produtos WHERE valor > 50 AND categoria = 'TÊNIS';

-- 12. Selecionar todos os produtos com cor diferente de 'AMARELO' e tamanho 'GG' ou 'GGG':
SELECT * FROM produtos WHERE cor != 'AMARELO' AND (tamanho = 'GG' OR tamanho = 'GGG');

-- 13. Selecionar todos os produtos com valor entre 30 e 40 e que sejam da categoria 'BERMUDA' ou 'CALÇA':
SELECT * FROM produtos WHERE valor BETWEEN 30 AND 40 AND (categoria = 'BERMUDA' OR categoria = 'CALÇA');

-- 14. Selecionar todos os produtos com cor igual a 'AZUL' e valor inferior a 50 ou superior a 70:
SELECT * FROM produtos WHERE cor = 'AZUL' AND (valor < 50 OR valor > 70);

-- 15. Selecionar todos os produtos com valor igual a 60 e que sejam da categoria 'SANDALHA' ou 'TÊNIS':
SELECT * FROM produtos WHERE valor = 60 AND (categoria = 'SANDALHA' OR categoria = 'TÊNIS');

-- 16. Selecionar todos os produtos com valor entre 40 e 60 e que não sejam da categoria 'CAMISA':
SELECT * FROM produtos WHERE valor BETWEEN 40 AND 60 AND categoria != 'CAMISA';

-- 17. Selecionar todos os produtos com cor diferente de 'VERMELHO' e que não sejam da categoria 'BERMUDA':
SELECT * FROM produtos WHERE cor != 'VERMELHO' AND categoria != 'BERMUDA';

-- 18. Selecionar todos os produtos com valor igual a 50 e que sejam da categoria 'CAMISA' ou 'CALÇA':
SELECT * FROM produtos WHERE valor = 50 AND (categoria = 'CAMISA' OR categoria = 'CALÇA');

-- 19. Selecionar todos os produtos com valor entre 30 e 40 e que tenham tamanho 'P' ou 'PP':
SELECT * FROM produtos WHERE valor BETWEEN 30 AND 40 AND (tamanho = 'P' OR tamanho = 'PP');

-- 20. Selecionar todos os produtos com cor igual a 'ROSA' e que não sejam da categoria 'TÊNIS':
SELECT * FROM produtos WHERE cor = 'ROSA' AND categoria != 'TÊNIS';

