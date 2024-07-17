# SINTAXE
## TIPOS PRIMITIVOS:
SQLite é um banco de dados relacional que suporta os tipos de dados básicos padrão em SQL. Abaixo estão alguns dos tipos de dados primitivos mais comuns no SQLite:

* **1. INTEGER:** Representa números inteiros, que podem ser armazenados como inteiros de 1, 2, 3, 4, 6 ou 8 bytes de acordo com o valor.
* **2. REAL:** Representa valores numéricos de ponto flutuante, armazenando números decimais.
* **3. TEXT:** Representa texto de qualquer tamanho, armazenando strings de caracteres Unicode.
* **4. BLOB:** Representa um bloco de dados binários, utilizado para armazenar dados como imagens ou arquivos.

Esses tipos de dados primitivos são usados para definir os campos dentro das tabelas no SQLite, oferecendo flexibilidade na representação e armazenamento dos dados.

Aqui está um exemplo de como você pode criar uma tabela no SQLite usando esses tipos de dados:

```sql
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    idade INTEGER,
    altura REAL,
    ativo INTEGER DEFAULT 1,
    data_nascimento DATE,
    endereco TEXT,
    foto_perfil BLOB
);
```

Neste exemplo, criamos uma tabela chamada `usuarios` com vários campos usando diferentes tipos de dados, incluindo INTEGER, TEXT, REAL e BLOB.

## COMANDOS MAIS USADOS:
### NO BANCO DE DADOS:
Aqui estão alguns dos principais comandos do SQLite para criação, seleção e exclusão de bancos de dados:

* **1. .open:** O comando `.open` é usado para abrir ou criar um novo arquivo de banco de dados SQLite.
Exemplo:
```sql
.open meu_banco_de_dados.db
```

* **2. .databases:** O comando `.databases` é usado para listar todos os bancos de dados SQLite abertos na sessão atual.
Exemplo:
```sql
.databases
```

* **3. .quit:** O comando `.quit` é usado para sair do shell do SQLite.
Exemplo:
```sql
.quit
```

Esses são alguns dos comandos básicos do SQLite relacionados à criação, seleção e exclusão de bancos de dados.

### NAS TABELAS:
Aqui estão alguns dos principais comandos do SQLite para criação, alteração e exclusão de tabelas:

* **1. CREATE TABLE:** O comando `CREATE TABLE` é usado para criar uma nova tabela no banco de dados SQLite.
Exemplo:
```sql
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    idade INTEGER
);
```

* **2. ALTER TABLE:** O comando `ALTER TABLE` é usado para adicionar, modificar ou excluir colunas de uma tabela existente.
Exemplo:
```sql
ALTER TABLE usuarios ADD COLUMN altura REAL;
```

* **3. DROP TABLE:** O comando `DROP TABLE` é usado para excluir uma tabela do banco de dados SQLite.
Exemplo:
```sql
DROP TABLE usuarios;
```

Esses são alguns dos principais comandos do SQLite relacionados à criação, alteração e exclusão de tabelas.

## CATEGORIAS DE COMANDOS:
### DDL:
Os comandos DDL (Data Definition Language) são um conjunto de comandos utilizados no SQLite para definir e gerenciar a estrutura dos objetos de banco de dados, como tabelas e índices. Abaixo estão alguns dos principais comandos DDL do SQLite:

* **1. CREATE TABLE:** O comando `CREATE TABLE` é usado para criar uma nova tabela no banco de dados SQLite.
Exemplo:
```sql
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    idade INTEGER
);
```

* **2. ALTER TABLE:** O comando `ALTER TABLE` é usado para adicionar, modificar ou excluir colunas de uma tabela existente.
Exemplo:
```sql
ALTER TABLE usuarios ADD COLUMN altura REAL;
```

* **3. DROP TABLE:** O comando `DROP TABLE` é usado para excluir uma tabela do banco de dados SQLite.
Exemplo:
```sql
DROP TABLE usuarios;
```

* **4. CREATE INDEX:** O comando `CREATE INDEX` é usado para criar um índice em uma ou mais colunas de uma tabela para otimizar consultas.
Exemplo:
```sql
CREATE INDEX idx_nome ON usuarios (nome);
```

* **5. DROP INDEX:** O comando `DROP INDEX` é usado para excluir um índice existente de uma tabela.
Exemplo:
```sql
DROP INDEX idx_nome;
```

Esses são alguns dos principais comandos DDL do SQLite. Eles permitem criar, modificar e excluir objetos de banco de dados, como tabelas e índices.

### DML:
Os comandos DML (Data Manipulation Language) são um conjunto de comandos utilizados no SQLite para manipular dados dentro de tabelas existentes. Eles são usados para inserir, atualizar, excluir e consultar dados. Abaixo estão alguns dos principais comandos DML do SQLite:

* **1. INSERT INTO:** O comando `INSERT INTO` é usado para inserir um novo registro em uma tabela.
Exemplo:
```sql
INSERT INTO usuarios (nome, idade) VALUES ('João', 25);
```

* **2. UPDATE:** O comando `UPDATE` é usado para atualizar os valores de um ou mais registros em uma tabela.
Exemplo:
```sql
UPDATE usuarios SET idade = 26 WHERE nome = 'João';
```

* **3. DELETE FROM:** O comando `DELETE FROM` é usado para excluir registros de uma tabela.
Exemplo:
```sql
DELETE FROM usuarios WHERE nome = 'João';
```

* **4. SELECT:** O comando `SELECT` é usado para recuperar dados de uma ou mais tabelas.
Exemplo:
```sql
SELECT * FROM usuarios WHERE idade > 18;
```

Esses são alguns dos principais comandos DML do SQLite. Eles permitem inserir, atualizar, excluir e consultar dados em tabelas, oferecendo flexibilidade para manipular os dados conforme necessário.

### DCL:
Os comandos DCL (Data Control Language) no SQLite são limitados em comparação com sistemas de banco de dados mais complexos como MySQL ou PostgreSQL. No entanto, o SQLite permite controlar o acesso aos dados através de permissões de arquivo. Aqui estão alguns exemplos:

* **1. PRAGMA:** O comando `PRAGMA` é usado para consultar e configurar opções de comportamento no SQLite, incluindo permissões.
Exemplo:
```sql
PRAGMA foreign_keys = ON;
```

* **2. ATTACH DATABASE:** O comando `ATTACH DATABASE` é usado para conectar um banco de dados SQLite existente a um banco de dados atual.
Exemplo:
```sql
ATTACH DATABASE 'outro_banco.db' AS outro;
```

* **3. DETACH DATABASE:** O comando `DETACH DATABASE` é usado para desconectar um banco de dados SQLite anexado.
Exemplo:
```sql
DETACH DATABASE outro;
```

### TCL:
Os comandos TCL (Transaction Control Language) no SQLite são usados para controlar transações. Aqui estão alguns exemplos:

* **1. BEGIN TRANSACTION:** O comando `BEGIN TRANSACTION` é usado para iniciar uma nova transação no SQLite.
Exemplo:
```sql
BEGIN TRANSACTION;
```

* **2. COMMIT:** O comando `COMMIT` é usado para confirmar as mudanças feitas durante uma transação.
Exemplo:
```sql
COMMIT;
```

* **3. ROLLBACK:** O comando `ROLLBACK` é usado para reverter as mudanças feitas durante uma transação não confirmada.
Exemplo:
```sql
ROLLBACK;
```

### CONCLUSÃO:
O SQLite oferece uma variedade de comandos para criar, modificar e manipular dados em bancos de dados relacionais leves. Desde a definição de tipos de dados primitivos até a execução de comandos DML e DCL, o SQLite permite flexibilidade e eficiência no gerenciamento de dados estruturados.