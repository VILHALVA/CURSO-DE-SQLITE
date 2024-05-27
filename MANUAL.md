# MANUAL
## INSTALAÇÃO DO SQLITE
### WINDOWS
1. **Baixar o SQLite**:
   - Acesse a [página de download do SQLite](https://www.sqlite.org/download.html).
   - Baixe os seguintes arquivos na seção "Precompiled Binaries for Windows":
     - `sqlite-tools-win32-x86-*.zip`: Contém os utilitários de linha de comando (`sqlite3.exe`).
     - `sqlite-dll-win32-x86-*.zip`: Contém a biblioteca de compilação dinâmica (`sqlite3.dll`).

2. **Extrair os Arquivos**:
   - Extraia os arquivos ZIP para uma pasta de sua escolha, por exemplo, `C:\sqlite`.

3. **Adicionar ao PATH**:
   - Adicione o diretório onde você extraiu o `sqlite3.exe` ao PATH do sistema para facilitar o uso do comando SQLite de qualquer lugar no prompt de comando.
   - Instruções:
     - Abra o "Painel de Controle".
     - Vá para "Sistema e Segurança" e depois "Sistema".
     - Clique em "Configurações avançadas do sistema".
     - No diálogo "Propriedades do Sistema", clique no botão "Variáveis de Ambiente".
     - Em "Variáveis do sistema", encontre e selecione a variável "Path", depois clique em "Editar".
     - Adicione o caminho para o diretório onde você extraiu `sqlite3.exe` (por exemplo, `C:\sqlite`).

4. **Verificar a Instalação**:
   - Abra o "Prompt de Comando" e digite:
     ```sh
     sqlite3 --version
     ```
   - Se instalado corretamente, você verá a versão do SQLite.

### MACOS
1. **Usando Homebrew**:
   - Se você não tem o Homebrew instalado, instale-o com o seguinte comando:
     ```sh
     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
     ```
   - Depois de instalar o Homebrew, instale o SQLite:
     ```sh
     brew install sqlite
     ```

2. **Verificar a Instalação**:
   - Abra o "Terminal" e digite:
     ```sh
     sqlite3 --version
     ```
   - Se instalado corretamente, você verá a versão do SQLite.

### LINUX
1. **Usando o Gerenciador de Pacotes**:
   - Para distribuições baseadas em Debian (como Ubuntu), use:
     ```sh
     sudo apt-get update
     sudo apt-get install sqlite3
     ```
   - Para distribuições baseadas em Red Hat (como Fedora), use:
     ```sh
     sudo dnf install sqlite
     ```

2. **Verificar a Instalação**:
   - Abra o "Terminal" e digite:
     ```sh
     sqlite3 --version
     ```
   - Se instalado corretamente, você verá a versão do SQLite.

## USANDO O SQLITE
### CRIANDO UM BANCO DE DADOS
1. **Abrir o Shell do SQLite**:
   - No terminal ou prompt de comando, digite:
     ```sh
     sqlite3 meu_banco_de_dados.db
     ```
   - Isso cria um arquivo de banco de dados chamado `meu_banco_de_dados.db` no diretório atual e abre o shell interativo do SQLite.

2. **Criar uma Tabela**:
   - No shell do SQLite, digite:
     ```sql
     CREATE TABLE usuarios (
         id INTEGER PRIMARY KEY AUTOINCREMENT,
         nome TEXT NOT NULL,
         email TEXT NOT NULL UNIQUE,
         idade INTEGER
     );
     ```

3. **Inserir Dados**:
   - No shell do SQLite, digite:
     ```sql
     INSERT INTO usuarios (nome, email, idade) VALUES ('Alice', 'alice@example.com', 30);
     ```

4. **Consultar Dados**:
   - No shell do SQLite, digite:
     ```sql
     SELECT * FROM usuarios;
     ```

5. **Sair do Shell**:
   - Para sair do shell do SQLite, digite:
     ```sh
     .quit
     ```

## CONFIGURAÇÕES ADICIONAIS
### AJUSTANDO AS CONFIGURAÇÕES DO SQLITE
- **Configurações de Timeout**:
  - Ajustar o tempo de espera para bloqueios de banco de dados:
    ```sql
    PRAGMA busy_timeout = 5000; -- 5000 ms = 5 segundos
    ```

- **Habilitar Verificação de Integridade**:
  - Para verificar a integridade do banco de dados:
    ```sql
    PRAGMA integrity_check;
    ```

- **Modo de Jornal**:
  - Ajustar o modo de jornal para melhorar a confiabilidade ou o desempenho:
    ```sql
    PRAGMA journal_mode = WAL; -- Write-Ahead Logging
    ```

- **Sincronização de Escrita**:
  - Controlar como o SQLite sincroniza as operações de escrita no disco:
    ```sql
    PRAGMA synchronous = FULL;
    ```

## FERRAMENTAS E CLIENTES SQLITE
- **DB Browser for SQLite**:
  - Uma ferramenta de interface gráfica para trabalhar com bancos de dados SQLite. Pode ser baixada em: [DB Browser for SQLite](https://sqlitebrowser.org/).

- **SQLiteStudio**:
  - Outra ferramenta de interface gráfica, disponível em: [SQLiteStudio](https://sqlitestudio.pl/).

## CONCLUSÃO
SQLite é uma solução poderosa e leve para muitas necessidades de banco de dados. Sua instalação é simples e sua configuração mínima permite que você comece a usar rapidamente. Este guia deve ajudá-lo a instalar e configurar o SQLite em vários sistemas operacionais e a realizar operações básicas de banco de dados. Para mais detalhes e funcionalidades avançadas, consulte a [documentação oficial do SQLite](https://www.sqlite.org/docs.html).