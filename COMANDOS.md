# COMANDOS
1. **Criação de Tabela**:
   - **Definição**: Cria uma nova tabela no banco de dados.
   - **SQL**: `CREATE TABLE`
   - **Exemplo**: 
     ```sql
     CREATE TABLE usuarios (
         id INTEGER PRIMARY KEY AUTOINCREMENT,
         nome TEXT NOT NULL,
         email TEXT NOT NULL UNIQUE,
         idade INTEGER
     );
     ```
   - **Explicação**: Este comando cria uma tabela chamada `usuarios` com quatro colunas: `id`, `nome`, `email` e `idade`. A coluna `id` é a chave primária e será incrementada automaticamente.

2. **Inserção de Dados**:
   - **Definição**: Insere novas linhas em uma tabela.
   - **SQL**: `INSERT INTO`
   - **Exemplo**:
     ```sql
     INSERT INTO usuarios (nome, email, idade) VALUES ('Alice', 'alice@example.com', 30);
     ```
   - **Explicação**: Insere uma nova linha na tabela `usuarios` com os valores especificados para `nome`, `email` e `idade`.

3. **Consulta de Dados**:
   - **Definição**: Seleciona dados de uma tabela.
   - **SQL**: `SELECT`
   - **Exemplo**:
     ```sql
     SELECT * FROM usuarios;
     ```
   - **Explicação**: Retorna todas as colunas e linhas da tabela `usuarios`.

4. **Atualização de Dados**:
   - **Definição**: Atualiza dados existentes em uma tabela.
   - **SQL**: `UPDATE`
   - **Exemplo**:
     ```sql
     UPDATE usuarios SET idade = 31 WHERE nome = 'Alice';
     ```
   - **Explicação**: Atualiza a idade para 31 na tabela `usuarios` onde o nome é 'Alice'.

5. **Deleção de Dados**:
   - **Definição**: Remove dados de uma tabela.
   - **SQL**: `DELETE`
   - **Exemplo**:
     ```sql
     DELETE FROM usuarios WHERE nome = 'Alice';
     ```
   - **Explicação**: Remove todas as linhas da tabela `usuarios` onde o nome é 'Alice'.

6. **Transações**:
   - **Definição**: Conjunto de operações que são executadas como uma única unidade de trabalho.
   - **SQL**: `BEGIN TRANSACTION`, `COMMIT`, `ROLLBACK`
   - **Exemplo**:
     ```sql
     BEGIN TRANSACTION;
     INSERT INTO usuarios (nome, email, idade) VALUES ('Bob', 'bob@example.com', 25);
     COMMIT;
     ```
   - **Explicação**: Inicia uma transação, insere uma nova linha na tabela `usuarios` e finaliza a transação com `COMMIT`, garantindo que as operações sejam realizadas atômicamente.

7. **Consultas Compostas (JOIN)**:
   - **Definição**: Combina resultados de múltiplas tabelas.
   - **SQL**: `JOIN`
   - **Exemplo**:
     ```sql
     SELECT usuarios.nome, pedidos.valor
     FROM usuarios
     JOIN pedidos ON usuarios.id = pedidos.usuario_id;
     ```
   - **Explicação**: Realiza um `JOIN` entre as tabelas `usuarios` e `pedidos`, retornando o nome do usuário e o valor dos pedidos associados a ele.

8. **Filtragem de Dados**:
   - **Definição**: Seleciona dados com base em condições específicas.
   - **SQL**: `WHERE`
   - **Exemplo**:
     ```sql
     SELECT * FROM usuarios WHERE idade > 25;
     ```
   - **Explicação**: Retorna todas as colunas e linhas da tabela `usuarios` onde a idade é maior que 25.

9. **Ordenação de Dados**:
   - **Definição**: Ordena os resultados de uma consulta.
   - **SQL**: `ORDER BY`
   - **Exemplo**:
     ```sql
     SELECT * FROM usuarios ORDER BY idade DESC;
     ```
   - **Explicação**: Retorna todas as colunas e linhas da tabela `usuarios`, ordenadas pela coluna `idade` em ordem decrescente.

10. **Agrupamento de Dados**:
    - **Definição**: Agrupa linhas que têm valores iguais em colunas especificadas.
    - **SQL**: `GROUP BY`
    - **Exemplo**:
      ```sql
      SELECT idade, COUNT(*) FROM usuarios GROUP BY idade;
      ```
    - **Explicação**: Agrupa as linhas da tabela `usuarios` pela coluna `idade` e conta o número de linhas em cada grupo.

