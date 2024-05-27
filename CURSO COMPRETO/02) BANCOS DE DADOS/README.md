# BACKUP
## VIA SHELL:
### ABRIR "DATABASE.db":
1. Abra o terminal ou prompt de comando.
2. Navegue até o diretório onde o arquivo "DATABASE.db" está localizado usando o comando `cd`:
   ```sh
   cd C:\Users\...\02) BANCOS DE DADOS
   ```
3. Execute o comando abaixo para abrir o banco de dados "DATABASE.db" com o shell do SQLite:
   ```sh
   sqlite3 DATABASE.db
   ```
4. Agora, você deve ver o prompt do SQLite (`sqlite>`), indicando que o banco de dados foi aberto com sucesso.

### IMPORTAR BANCO DE DADOS:
1. Abra o terminal ou prompt de comando.
2. Navegue até o diretório onde o arquivo SQL de backup está localizado usando o comando `cd`.
3. Execute o comando abaixo para importar o arquivo SQL de backup e reconstruir o banco de dados:
   ```
   sqlite3 novo_nome_do_banco_de_dados.db < DATABASE.sql
   ```
   Certifique-se de substituir "novo_nome_do_banco_de_dados.db" pelo nome desejado para o novo banco de dados.

### EXPORTAR BANCO DE DADOS:
1. Abra o terminal ou prompt de comando.
2. Navegue até o diretório onde o banco de dados SQLite está localizado usando o comando `cd`.
3. Execute o comando abaixo para exportar o banco de dados para um arquivo SQL:
   ```
   sqlite3 nome_do_banco_de_dados.db .dump > backup.sql
   ```
   Isso irá gerar um arquivo chamado "backup.sql" contendo todos os comandos SQL necessários para reconstruir o banco de dados.

## VIA DB BROWSER:
### ABRIR "DATABASE.db":
1. Abra o DB Browser for SQLite.
2. Clique em "File" (Arquivo) no menu superior e selecione "Open Database" (Abrir Banco de Dados).
3. Navegue até o diretório onde o arquivo "DATABASE.db" está localizado:
   ```sh
   cd C:\Users\...\02) BANCOS DE DADOS
   ```
4. Selecione o arquivo "DATABASE.db" e clique em "Open" (Abrir).
5. O banco de dados será aberto e você poderá visualizar e editar as tabelas e registros no DB Browser.

### IMPORTAR BANCO DE DADOS:
1. Abra o DB Browser for SQLite.
2. Clique em "File" (Arquivo) e selecione "Open Database" (Abrir Banco de Dados) no menu.
3. Selecione o arquivo de banco de dados que deseja importar. (./DATABASE.sql).
4. Clique em "File" (Arquivo) e selecione "Import" (Importar) no menu.
5. Selecione o arquivo de backup que deseja importar.
6. Escolha as opções de importação adequadas e clique em "OK".

### EXPORTAR BANCO DE DADOS:
1. Abra o DB Browser for SQLite.
2. Clique em "File" (Arquivo) e selecione "Export" (Exportar) no menu.
3. Selecione o banco de dados que deseja exportar.
4. Escolha o local e o nome do arquivo de destino para o backup.
5. Escolha o formato de exportação (por exemplo, SQL) e clique em "Save" (Salvar).



