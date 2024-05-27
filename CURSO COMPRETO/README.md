# INSTRUÇÕES
## 01) INTRODUÇÃO SQL
### CONCEITOS
**SQL (Structured Query Language)** é a linguagem padrão para gerenciamento e manipulação de bancos de dados relacionais. SQL permite criar, modificar, gerenciar e consultar dados armazenados em sistemas de gerenciamento de banco de dados (SGBDs) como SQLite, MySQL, PostgreSQL, SQL Server, entre outros. Neste guia, vamos abordar os conceitos básicos e comandos fundamentais do SQL.

O SQL é uma linguagem de programação usada para gerenciar e manipular bancos de dados relacionais. Ele permite realizar diversas operações, como criar, modificar, e consultar dados armazenados em um banco de dados. Com o SQL, é possível definir a estrutura de um banco de dados, inserir novos dados, atualizar registros existentes, recuperar informações específicas e muito mais. O SQL é amplamente utilizado em sistemas de gerenciamento de banco de dados relacionais (RDBMS), como SQLite, MySQL, PostgreSQL, SQL Server, Oracle, entre outros.

1. **Banco de Dados**: Um banco de dados é uma coleção organizada de dados. Em um SGBD relacional, os dados são organizados em tabelas.

2. **Tabela**: Uma tabela é uma coleção de registros organizados em linhas e colunas. Cada coluna representa um atributo dos dados e cada linha representa um registro individual.

3. **Registro (Linha)**: Um registro é uma única entrada em uma tabela, contendo dados sobre uma entidade específica.

4. **Campo (Coluna)**: Um campo é uma única unidade de dados em um registro. Cada campo tem um nome e um tipo de dado (por exemplo, texto, número).

### TECNOLOGIAS ONDE O SQLITE É MAIS USADO
Ele é extremamente popular em ambientes que requerem um banco de dados embutido, como aplicativos móveis (iOS, Android), navegadores da web, sistemas de desktop, dispositivos IoT (Internet das Coisas), e outras aplicações que necessitam de armazenamento local de dados. O SQLite é conhecido por sua simplicidade, portabilidade, eficiência e facilidade de uso, o que o torna uma escolha popular para uma ampla gama de aplicativos e dispositivos.

### ANALISTAS DE DADOS
Os analistas de dados são profissionais responsáveis por coletar, processar, analisar e interpretar dados para obter insights valiosos que possam ser utilizados para tomada de decisões estratégicas e melhoria de desempenho em organizações. Eles utilizam uma variedade de técnicas e ferramentas, incluindo SQL, para explorar grandes conjuntos de dados e descobrir padrões, tendências e relações ocultas. O SQL é uma ferramenta fundamental para os analistas de dados, pois lhes permite consultar e manipular dados armazenados em bancos de dados relacionais de forma eficiente e precisa. Com o SQL, os analistas de dados podem realizar consultas complexas, combinar dados de diferentes fontes, calcular métricas importantes e gerar relatórios detalhados para informar as decisões de negócios.

## 02) INSTALANDO O SQLITE E O DB BROWSER
Aqui está um guia passo a passo para instalar o SQLite e o DB Browser for SQLite no seu sistema Windows.

### 1. Instalando o SQLite
**Passo 1: Baixar o SQLite**

1. Acesse a [página de download do SQLite](https://www.sqlite.org/download.html).
2. Na seção "Precompiled Binaries for Windows", baixe os seguintes arquivos:
   - `sqlite-tools-win32-x86-*.zip`: Contém os utilitários de linha de comando (`sqlite3.exe`).
   - `sqlite-dll-win32-x86-*.zip`: Contém a biblioteca de compilação dinâmica (`sqlite3.dll`).

**Passo 2: Extrair os Arquivos**

1. Extraia os arquivos ZIP baixados para uma pasta de sua escolha, por exemplo, `C:\sqlite`.

**Passo 3: Adicionar ao PATH**

1. Adicione o diretório onde você extraiu `sqlite3.exe` ao PATH do sistema:
   - Abra o "Painel de Controle".
   - Vá para "Sistema e Segurança" e depois "Sistema".
   - Clique em "Configurações avançadas do sistema".
   - No diálogo "Propriedades do Sistema", clique no botão "Variáveis de Ambiente".
   - Em "Variáveis do sistema", encontre e selecione a variável "Path", depois clique em "Editar".
   - Adicione o caminho para o diretório onde você extraiu `sqlite3.exe` (por exemplo, `C:\sqlite`).

**Passo 4: Verificar a Instalação**

1. Abra o "Prompt de Comando" e digite:
   ```sh
   sqlite3 --version
   ```
2. Se instalado corretamente, você verá a versão do SQLite.

### 2. Instalando o DB Browser for SQLite
**Passo 1: Baixar o DB Browser for SQLite**
1. Acesse a [página de download do DB Browser for SQLite](https://sqlitebrowser.org/dl/).
2. Baixe a versão adequada para Windows.

**Passo 2: Instalar o DB Browser for SQLite**

1. Execute o instalador baixado e siga as instruções na tela para instalar o DB Browser for SQLite.

**Passo 3: Iniciar o DB Browser for SQLite**

1. Após a instalação, você pode iniciar o DB Browser for SQLite a partir do menu Iniciar.

### Usando o DB Browser for SQLite
#### Criando e Abrindo um Banco de Dados
1. **Criar um Novo Banco de Dados**:
   - Abra o DB Browser for SQLite.
   - Clique em "New Database" para criar um novo banco de dados.
   - Escolha um nome e um local para salvar o arquivo do banco de dados (por exemplo, `meu_banco_de_dados.db`).

2. **Abrir um Banco de Dados Existente**:
   - Clique em "Open Database" e navegue até o arquivo do banco de dados que você deseja abrir.

#### Executando Comandos SQL
1. **Abrir a Aba "Execute SQL"**:
   - Clique na aba "Execute SQL" para abrir o editor de comandos SQL.

2. **Executar Comandos SQL**:
   - No editor, você pode digitar e executar comandos SQL. Por exemplo:
     ```sql
     CREATE TABLE usuarios (
         id INTEGER PRIMARY KEY AUTOINCREMENT,
         nome TEXT NOT NULL,
         email TEXT NOT NULL UNIQUE,
         idade INTEGER
     );

     INSERT INTO usuarios (nome, email, idade) VALUES ('Alice', 'alice@example.com', 30);
     SELECT * FROM usuarios;
     ```
   - Clique em "Execute" para executar os comandos.

#### Visualizando Dados
1. **Aba "Browse Data"**:
   - Clique na aba "Browse Data" para visualizar os dados das tabelas no seu banco de dados.

2. **Selecionar a Tabela**:
   - No menu suspenso, selecione a tabela que você deseja visualizar.

### Conclusão
Com o SQLite e o DB Browser for SQLite instalados no seu sistema Windows, você pode facilmente criar, gerenciar e manipular bancos de dados SQLite. O DB Browser for SQLite fornece uma interface gráfica amigável para trabalhar com seus bancos de dados, tornando-o uma ferramenta útil para desenvolvedores e analistas de dados.

## 03) COMANDOS DDL:  CREATE DATABASE 
### 03.A) CLASSIFICAÇÃO DOS COMANDOS: DDL, DML, DQL
Os comandos SQL podem ser classificados em três categorias principais, com base no tipo de operação que realizam nos dados do banco de dados. Aqui está uma explicação sobre cada categoria e exemplos de comandos associados:

#### 1. DDL (Data Definition Language)
A Linguagem de Definição de Dados (DDL) é usada para definir a estrutura e a organização dos objetos no banco de dados. Os comandos DDL são utilizados para criar, alterar e excluir objetos como tabelas, índices, visões e esquemas. Os comandos DDL afetam a estrutura dos dados, mas não os dados em si.

Exemplos de comandos DDL:

- `CREATE TABLE`: Cria uma nova tabela no banco de dados.
- `ALTER TABLE`: Altera a estrutura de uma tabela existente.
- `DROP TABLE`: Exclui uma tabela do banco de dados.
- `CREATE INDEX`: Cria um novo índice em uma tabela.
- `CREATE VIEW`: Cria uma nova visão baseada em uma consulta SQL.

#### 2. DML (Data Manipulation Language)
A Linguagem de Manipulação de Dados (DML) é usada para manipular os dados armazenados no banco de dados. Os comandos DML são utilizados para inserir, atualizar, recuperar e excluir dados de uma ou mais tabelas no banco de dados.

Exemplos de comandos DML:

- `INSERT`: Insere novos registros em uma tabela.
- `UPDATE`: Atualiza os registros existentes em uma tabela.
- `DELETE`: Exclui os registros de uma tabela.
- `SELECT`: Recupera os dados de uma ou mais tabelas com base em critérios especificados.

#### 3. DQL (Data Query Language)
A Linguagem de Consulta de Dados (DQL) é usada exclusivamente para recuperar dados do banco de dados. Os comandos DQL são usados para consultar e visualizar os dados armazenados nas tabelas do banco de dados.

Exemplo de comando DQL:

- `SELECT`: Recupera os dados de uma ou mais tabelas com base em critérios especificados.

#### Exemplos de Classificação:
- **DDL**:
  - `CREATE TABLE usuarios (...)`
  - `ALTER TABLE clientes ADD COLUMN telefone VARCHAR(20);`
  - `DROP TABLE pedidos;`

- **DML**:
  - `INSERT INTO produtos (nome, preco) VALUES ('Camiseta', 29.99);`
  - `UPDATE clientes SET status = 'Ativo' WHERE id = 123;`
  - `DELETE FROM funcionarios WHERE cargo = 'Estagiário';`

- **DQL**:
  - `SELECT * FROM produtos WHERE categoria = 'Eletrônicos';`
  - `SELECT nome, email FROM clientes WHERE idade > 18;`

### 03.B) COMANDO `CREATE DATABASE`
O comando `CREATE DATABASE` é usado para criar um novo banco de dados dentro do sistema de gerenciamento de banco de dados. Este comando é utilizado principalmente em SGBDs que suportam múltiplos bancos de dados, como MySQL, PostgreSQL, SQL Server, entre outros.

#### Sintaxe:
```sql
CREATE DATABASE nome_do_banco_de_dados;
```

- `nome_do_banco_de_dados`: O nome que será atribuído ao novo banco de dados.

#### Exemplo:
```sql
CREATE DATABASE minha_base_de_dados;
```

Este comando cria um novo banco de dados com o nome "minha_base_de_dados".

#### Considerações:
- O comando `CREATE DATABASE` normalmente requer privilégios administrativos no SGBD.
- O nome do banco de dados deve seguir as regras de nomenclatura específicas do SGBD, como limites de tamanho, caracteres permitidos, entre outros.
- Alguns SGBDs podem oferecer opções adicionais no comando `CREATE DATABASE`, como especificar o conjunto de caracteres, o esquema de armazenamento padrão, entre outros.

### 03.C) CRIANDO DATABASE PELO TERMINAL
1. **Abra o terminal ou prompt de comando**:
   - Navegue até o diretório onde você deseja criar o banco de dados usando o comando `cd`:
     ```bash
     cd C:\Users\...\02) BANCOS DE DADOS
     ```

2. **Crie o banco de dados**:
   - Execute o comando abaixo para criar um novo banco de dados chamado `DATABASE.db`:
     ```bash
     sqlite3 DATABASE.db
     ```

3. **Verifique o banco de dados**:
   - No prompt do SQLite (`sqlite>`), digite o comando `.database` para verificar se o banco de dados foi criado corretamente:
     ```bash
     .database
     ```

   - Você deve ver uma saída semelhante a esta, indicando que o banco de dados `DATABASE.db` está aberto:
     ```plaintext
     main: C:\Users\...\02) BANCOS DE DADOS\DATABASE.db r/w
     ```

4. **Feche o SQLite**:
   - Para sair do shell do SQLite, digite:
     ```bash
     .exit
     ```

### 03.D) IMPORTAR DATABASE CRIADO PARA O DB BROWSER
1. **Abra o DB Browser for SQLite**: Inicie o DB Browser for SQLite no seu computador.

2. **Clique em "Abrir Banco de Dados"**: Na barra de menu superior, clique em "File" (Arquivo) e selecione "Open Database" (Abrir Banco de Dados). Navegue até o local onde o seu banco de dados SQLite está armazenado e selecione-o.

3. **Verifique o Banco de Dados Importado**: Após abrir o banco de dados, você verá uma lista de tabelas e outros objetos no painel à esquerda do DB Browser for SQLite. Isso confirma que o banco de dados foi importado com sucesso.

4. **Explore o Banco de Dados**: Agora você pode explorar o banco de dados, visualizar suas tabelas, executar consultas SQL, modificar a estrutura do banco de dados e realizar outras operações conforme necessário.

Se você não tiver criado um banco de dados SQLite anteriormente, pode seguir os passos anteriores para criar um novo banco de dados usando o DB Browser for SQLite e, em seguida, preencher esse banco de dados com dados, se desejar. Depois de ter um banco de dados SQLite pronto, você pode importá-lo de volta para o DB Browser for SQLite seguindo as etapas acima.

## 04-05) COMANDOS DDL: CREATE TABLE, ALTER E DROP
Os comandos DDL (Data Definition Language) são usados para definir e modificar a estrutura dos objetos no banco de dados. Aqui estão três dos principais comandos DDL:

### 1. CREATE TABLE
O comando `CREATE TABLE` é usado para criar uma nova tabela no banco de dados.

#### Sintaxe:
```sql
CREATE TABLE nome_da_tabela (
    nome_coluna1 tipo_de_dado1 [restricões],
    nome_coluna2 tipo_de_dado2 [restricões],
    ...
);
```

#### Exemplo:
```sql
CREATE TABLE clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT UNIQUE,
    idade INTEGER
);
```

### 2. ALTER TABLE
O comando `ALTER TABLE` é usado para alterar a estrutura de uma tabela existente no banco de dados.

#### Sintaxe:
```sql
ALTER TABLE nome_da_tabela
    ADD COLUMN nome_coluna tipo_de_dado [restricões];

ALTER TABLE nome_da_tabela
    DROP COLUMN nome_coluna;

ALTER TABLE nome_da_tabela
    MODIFY COLUMN nome_coluna tipo_de_dado [restricões];
```

#### Exemplo:
```sql
ALTER TABLE clientes
    ADD COLUMN telefone TEXT;

ALTER TABLE clientes
    DROP COLUMN idade;

ALTER TABLE clientes
    MODIFY COLUMN email TEXT NOT NULL;
```

### 3. DROP TABLE
O comando `DROP TABLE` é usado para excluir uma tabela do banco de dados.

#### Sintaxe:
```sql
DROP TABLE nome_da_tabela;
```

#### Exemplo:
```sql
DROP TABLE clientes;
```

### Conclusão
Os comandos `CREATE TABLE`, `ALTER TABLE` e `DROP TABLE` são fundamentais para definir e modificar a estrutura das tabelas em um banco de dados. Eles permitem criar novas tabelas, adicionar ou remover colunas de tabelas existentes e excluir tabelas quando necessário. Esses comandos fornecem flexibilidade para adaptar a estrutura do banco de dados às necessidades específicas do aplicativo.

## 06-07) COMANDOS DML: INSERT, UPDATE, DELETE + WHERE
### 1. INSERT
O comando `INSERT` é usado para adicionar novos registros a uma tabela existente.

**Exemplo**:

```sql
INSERT INTO clientes(nome, tel) VALUES ('Alice', 123456789);
```

**Explicação**:

- `INSERT INTO clientes`: Indica que queremos adicionar um novo registro à tabela "clientes".
- `(nome, tel)`: Especifica as colunas às quais os valores serão inseridos.
- `VALUES ('Alice', 123456789)`: Especifica os valores que serão inseridos nas colunas correspondentes. Neste caso, o nome 'Alice' será inserido na coluna "nome" e o número de telefone 123456789 será inserido na coluna "tel".

### 2. UPDATE
O comando `UPDATE` é usado para modificar registros existentes em uma tabela.

**Exemplo**:

```sql
UPDATE clientes SET tel = 987654321 WHERE nome = 'Alice';
```

**Explicação**:

- `UPDATE clientes`: Indica que queremos atualizar registros na tabela "clientes".
- `SET tel = 987654321`: Especifica qual coluna será atualizada e para qual valor ela será alterada.
- `WHERE nome = 'Alice'`: Define a condição para identificar qual registro será atualizado. Neste caso, apenas o registro onde o nome é 'Alice' será modificado.

### 3. DELETE
O comando `DELETE` é usado para excluir registros de uma tabela.

**Exemplo**:

```sql
DELETE FROM clientes WHERE nome = 'João';
```

**Explicação**:

- `DELETE FROM clientes`: Indica que queremos excluir registros da tabela "clientes".
- `WHERE nome = 'João'`: Define a condição para identificar qual registro será excluído. Neste caso, apenas o registro onde o nome é 'João' será removido.

### 4. SELECT (com WHERE)
O comando `SELECT` é usado para recuperar dados de uma tabela, e o `WHERE` é usado para filtrar os resultados.

**Exemplo**:

```sql
SELECT * FROM clientes WHERE nome LIKE 'A%';
```

**Explicação**:

- `SELECT * FROM clientes`: Indica que queremos selecionar todos os registros da tabela "clientes".
- `WHERE nome LIKE 'A%'`: Define a condição para filtrar os resultados. Neste caso, apenas os registros onde o nome começa com a letra "A" serão recuperados, devido ao uso do operador `LIKE` e do padrão "A%".

## 08-10) OPERADORES COMPARATIVOS E LÓGICOS
Os operadores comparativos e lógicos são fundamentais para filtrar e condicionar os resultados das consultas SQL em tabelas. Aqui estão os principais operadores e suas explicações, juntamente com exemplos de comandos:

### Operadores Comparativos:
1. **Igual a (`=`)**: Usado para comparar se dois valores são iguais.
   
   **Exemplo**:
   ```sql
   SELECT * FROM clientes WHERE cidade = 'São Paulo';
   ```
   Isso selecionará todos os clientes cuja cidade seja igual a 'São Paulo'.

2. **Diferente de (`<>` ou `!=`)**: Usado para comparar se dois valores não são iguais.

   **Exemplo**:
   ```sql
   SELECT * FROM produtos WHERE categoria <> 'Eletrônicos';
   ```
   Isso selecionará todos os produtos que não pertencem à categoria 'Eletrônicos'.

3. **Maior que (`>`)**: Usado para comparar se um valor é maior que outro.

   **Exemplo**:
   ```sql
   SELECT * FROM pedidos WHERE valor_total > 1000;
   ```
   Isso selecionará todos os pedidos com um valor total superior a 1000.

4. **Menor que (`<`)**: Usado para comparar se um valor é menor que outro.

   **Exemplo**:
   ```sql
   SELECT * FROM clientes WHERE idade < 18;
   ```
   Isso selecionará todos os clientes com idade inferior a 18 anos.

5. **Maior ou igual a (`>=`)** e **Menor ou igual a (`<=`)**: Usados para comparar se um valor é maior ou igual a outro, ou menor ou igual a outro, respectivamente.

   **Exemplo**:
   ```sql
   SELECT * FROM produtos WHERE preco >= 50;
   ```
   Isso selecionará todos os produtos com preço igual ou superior a 50.

### Operadores Lógicos:
1. **AND**: Usado para combinar duas ou mais condições e selecionar registros que atendam a todas elas.

   **Exemplo**:
   ```sql
   SELECT * FROM pedidos WHERE valor_total > 100 AND data_pedido = '2024-05-01';
   ```
   Isso selecionará todos os pedidos com um valor total superior a 100 e realizados em 1º de maio de 2024.

2. **OR**: Usado para combinar duas ou mais condições e selecionar registros que atendam a pelo menos uma delas.

   **Exemplo**:
   ```sql
   SELECT * FROM clientes WHERE cidade = 'São Paulo' OR cidade = 'Rio de Janeiro';
   ```
   Isso selecionará todos os clientes que moram em São Paulo ou no Rio de Janeiro.

3. **NOT**: Usado para negar uma condição.

   **Exemplo**:
   ```sql
   SELECT * FROM produtos WHERE NOT categoria = 'Eletrônicos';
   ```
   Isso selecionará todos os produtos que não pertencem à categoria 'Eletrônicos'.

### Conclusão:
| Operador         | Descrição                                                | Exemplo                                         |
|------------------|----------------------------------------------------------|-------------------------------------------------|
| `=`              | Igual a                                                  | `idade = 30`                                    |
| `<>` ou `!=`     | Diferente de                                             | `cidade <> 'São Paulo'`                         |
| `>`              | Maior que                                                | `preco > 100`                                   |
| `<`              | Menor que                                                | `idade < 18`                                    |
| `>=`             | Maior ou igual a                                         | `idade >= 18`                                   |
| `<=`             | Menor ou igual a                                         | `preco <= 50`                                   |
| `AND`            | Combinação lógica "E" (ambas as condições devem ser verdadeiras) | `idade > 25 AND cidade = 'São Paulo'`    |
| `OR`             | Combinação lógica "OU" (pelo menos uma das condições deve ser verdadeira) | `idade <= 30 OR cidade = 'Rio de Janeiro'` |
| `NOT`            | Negação de uma condição                                 | `NOT cidade = 'São Paulo'`                     |

Os operadores comparativos e lógicos são utilizados para criar condições em consultas SQL, permitindo que você refine os resultados de acordo com critérios específicos. Esses operadores são essenciais para construir consultas flexíveis e poderosas em bancos de dados relacionais.