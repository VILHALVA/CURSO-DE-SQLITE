# CURSO DE SQLITE
👨‍⚖️SQLITE É UM SISTEMA DE GERENCIAMENTO DE BANCO DE DADOS RELACIONAL QUE É EMBUTIDO NA MAIORIA DAS APLICAÇÕES MÓVEIS E EM VÁRIOS OUTROS TIPOS DE SOFTWARE. ELE UTILIZA UMA LINGUAGEM SQL PARA REALIZAR OPERAÇÕES DE CONSULTA E MANIPULAÇÃO DE DADOS.

<img src="FOTO.png" align="center" width="400"> <br>

## CONCEITO:
**SQLite** é um sistema de gerenciamento de banco de dados relacional (RDBMS) que se destaca por ser "self-contained", "serverless", "zero-configuration" e por ocupar um espaço mínimo em disco. Desenvolvido por D. Richard Hipp em 2000, o SQLite foi projetado para ser embutido diretamente em programas em vez de funcionar como um serviço separado, como muitos outros sistemas de banco de dados.

1. **Banco de Dados Relacional**:
   - **Definição**: SQLite é um Sistema de Gerenciamento de Banco de Dados Relacional (RDBMS), o que significa que ele armazena dados em tabelas que podem se relacionar entre si.
   - **Exemplo**: Tabelas `usuarios` e `pedidos` onde cada `pedido` está relacionado a um `usuario`.

2. **Self-contained**:
   - **Definição**: SQLite é autossuficiente, significando que toda a configuração e os dados estão contidos em um único arquivo no sistema de arquivos.
   - **Exemplo**: Um arquivo de banco de dados SQLite (`meu_banco_de_dados.db`) pode ser copiado para qualquer lugar e usado diretamente.

3. **Serverless**:
   - **Definição**: SQLite não requer um servidor separado para gerenciar as conexões. As aplicações acessam diretamente o arquivo de banco de dados.
   - **Exemplo**: Ao contrário de MySQL ou PostgreSQL, não há um serviço de banco de dados em execução em segundo plano. As aplicações interagem diretamente com o arquivo.

4. **Zero-configuration**:
   - **Definição**: Não é necessário configurar o banco de dados antes de usá-lo. Basta criar o arquivo de banco de dados e começar a usá-lo.
   - **Exemplo**: Criar um banco de dados SQLite pode ser tão simples quanto executar `sqlite3 meu_banco_de_dados.db` no terminal.

5. **Tipos de Dados Dinâmicos**:
   - **Definição**: SQLite usa um sistema de tipagem dinâmica, o que significa que você pode armazenar qualquer tipo de dado em qualquer coluna, embora seja recomendado seguir as convenções de tipos.
   - **Exemplo**: Você pode definir uma coluna como `INTEGER`, mas ainda assim armazenar uma string nela.

## ESTRUTURA BÁSICA:
1. **Tabelas**:
   - **Definição**: Estruturas que armazenam dados em linhas e colunas.
   - **Exemplo**: Tabela `usuarios` com colunas `id`, `nome`, `email`, `idade`.

2. **Colunas**:
   - **Definição**: Cada tabela contém colunas que definem os tipos de dados que a tabela pode armazenar.
   - **Exemplo**: Coluna `nome` do tipo `TEXT`.

3. **Linhas**:
   - **Definição**: Cada linha representa um registro na tabela.
   - **Exemplo**: Uma linha na tabela `usuarios` pode conter `1, 'Alice', 'alice@example.com', 30`.

4. **Chave Primária (Primary Key)**:
   - **Definição**: Uma coluna ou um conjunto de colunas que identificam exclusivamente cada linha em uma tabela.
   - **Exemplo**: Coluna `id` na tabela `usuarios` como chave primária.

5. **Chave Estrangeira (Foreign Key)**:
   - **Definição**: Uma coluna ou um conjunto de colunas que estabelecem uma relação entre duas tabelas.
   - **Exemplo**: Coluna `usuario_id` na tabela `pedidos` que referencia `id` na tabela `usuarios`.

## SUA HISTÓRIA:
1. **Início (2000)**:
   - **Desenvolvedor**: D. Richard Hipp.
   - **Motivação**: Hipp precisava de um banco de dados leve para uma aplicação de um cliente, mas não queria lidar com a complexidade e os requisitos de configuração de sistemas como PostgreSQL ou MySQL. Assim, ele criou o SQLite para ser um banco de dados que pudesse ser usado com o mínimo de configuração e gerenciamento possível.
   - **Primeira Versão**: Lançada em agosto de 2000. A primeira versão do SQLite já incluía as funcionalidades básicas de um banco de dados relacional, mas era muito mais limitada em comparação com as versões posteriores.

2. **Evolução (2000-2003)**:
   - **Características Adicionadas**: Suporte a transações, triggers, e integridade referencial. Durante esses primeiros anos, o SQLite começou a ganhar tração, especialmente em projetos de software embarcado e sistemas operacionais.
   - **Crescente Adoção**: Devido à sua simplicidade e eficiência, o SQLite começou a ser adotado por desenvolvedores em várias plataformas, incluindo dispositivos móveis e aplicações desktop.

3. **Ampliação da Adoção (2004-2008)**:
   - **Integração em Navegadores**: O Firefox e outros navegadores começaram a usar o SQLite para armazenar dados localmente, como histórico de navegação e caches.
   - **Sistemas Operacionais Móveis**: A popularidade do SQLite aumentou significativamente com a explosão dos smartphones. Sistemas operacionais móveis, como Android e iOS, incorporaram o SQLite como seu banco de dados nativo devido à sua leveza e facilidade de integração.

4. **SQLite3 (2004)**:
   - **Grande Atualização**: O lançamento do SQLite3 trouxe muitas melhorias significativas, incluindo melhor suporte a tipos de dados, junções mais complexas, e maior conformidade com o padrão SQL.
   - **Nova Arquitetura**: A versão 3 introduziu um novo sistema de armazenamento que melhorou a eficiência e a capacidade de manipulação de dados.

5. **Parcerias e Suporte Corporativo (2008-2012)**:
   - **Google**: Adoção do SQLite no Android.
   - **Apple**: Adoção do SQLite no iOS e MacOS.
   - **Serviços Web**: Vários serviços e frameworks web começaram a usar o SQLite como um banco de dados embutido.

6. **Melhorias Contínuas (2013-presente)**:
   - **Novas Funcionalidades**: Inclusão de suporte a JSON, melhorias em segurança, e desempenho otimizado para consultas complexas.
   - **Ampla Adoção**: Atualmente, o SQLite é uma das bibliotecas de software mais usadas no mundo, presente em bilhões de dispositivos. Desde smart TVs, smartphones, dispositivos IoT, até em aplicações de desktop e servidores web.

## CARACTERISTICAS:
### POSITIVAS:
- **Autossuficiência**: Não depende de um servidor externo. O banco de dados é armazenado em um único arquivo.
- **Zero Configuração**: Basta copiar o arquivo do banco de dados para começar a usar. Não há necessidade de configuração administrativa.
- **Leveza**: A biblioteca SQLite é muito pequena, geralmente menos de 500 KB.
- **Confiabilidade**: Suporte robusto para transações ACID (Atomicidade, Consistência, Isolamento e Durabilidade).

### NEGATIVAS:
1. **Suporte Limitado para Conexões Simultâneas**:
   - **Descrição**: SQLite é projetado para ser usado em cenários onde o número de conexões simultâneas é relativamente baixo. Não é adequado para aplicações de alto tráfego que requerem muitas conexões simultâneas ao banco de dados.
   - **Impacto**: Em um ambiente de alta concorrência, como servidores web de alto tráfego, pode haver contenção de bloqueios e degradação de desempenho.

2. **Falta de Suporte a Recursos Avançados de Banco de Dados**:
   - **Descrição**: SQLite não suporta alguns recursos avançados disponíveis em sistemas de gerenciamento de banco de dados mais robustos, como procedimentos armazenados, usuários e permissões granulares.
   - **Impacto**: Projetos que exigem essas funcionalidades podem precisar de um RDBMS mais completo, como PostgreSQL ou MySQL.

3. **Tamanho de Banco de Dados Limitado**:
   - **Descrição**: Embora o SQLite possa gerenciar bancos de dados de até 281 TB, o desempenho pode se degradar significativamente com bancos de dados muito grandes.
   - **Impacto**: Para bancos de dados com muitos gigabytes de dados, pode ser mais apropriado usar um sistema de banco de dados que seja projetado para lidar com volumes de dados massivos.

4. **Desempenho em Escrituras Pesadas**:
   - **Descrição**: SQLite pode ter problemas de desempenho em cenários onde há muitas operações de escrita simultâneas devido à sua arquitetura de bloqueio de arquivo único.
   - **Impacto**: Aplicações que exigem muitas escrituras simultâneas podem experimentar bloqueios e lentidão.

5. **Capacidade de Escalabilidade Limitada**:
   - **Descrição**: SQLite é mais adequado para aplicações de pequeno a médio porte. Não é projetado para escalar horizontalmente ou lidar com grandes clusters de servidores.
   - **Impacto**: Em arquiteturas de microsserviços ou sistemas distribuídos de grande escala, pode ser necessário usar um banco de dados que suporte melhor a escalabilidade horizontal.

6. **Recuperação de Desastres e Backup**:
   - **Descrição**: Embora seja possível fazer backups de um banco de dados SQLite, ele não possui recursos integrados avançados para recuperação de desastres e backup contínuo.
   - **Impacto**: Organizações que necessitam de soluções robustas de backup e recuperação podem precisar implementar soluções personalizadas ou optar por um RDBMS que ofereça esses recursos nativamente.

7. **Controle de Acesso e Segurança**:
   - **Descrição**: SQLite não possui um sistema de gerenciamento de usuários e permissões sofisticado. Ele se baseia no sistema de arquivos subjacente para controle de acesso.
   - **Impacto**: Para aplicações que requerem controle de acesso detalhado e gerenciamento de usuários, um banco de dados com um sistema de permissões mais robusto pode ser necessário.

8. **Suporte a Consultas Complexas**:
   - **Descrição**: SQLite suporta uma ampla gama de operações SQL, mas pode não ser tão eficiente em consultas complexas ou operações de análise de dados comparado a outros RDBMS.
   - **Impacto**: Aplicações que dependem de consultas SQL complexas e intensivas podem precisar de um banco de dados com capacidades de otimização e execução de consultas mais avançadas.

9. **Manutenção e Suporte**:
   - **Descrição**: Como SQLite é uma biblioteca de banco de dados embutida, não oferece os mesmos níveis de suporte empresarial ou serviços de manutenção que alguns RDBMS comerciais oferecem.
   - **Impacto**: Organizações que necessitam de suporte técnico robusto e garantias de serviço podem preferir uma solução de banco de dados que ofereça contratos de suporte formalizados.

10. **Compatibilidade e Portabilidade**:
    - **Descrição**: Embora SQLite seja amplamente portátil, algumas variações de SQL ou funcionalidades específicas podem não ser compatíveis com outros sistemas de banco de dados.
    - **Impacto**: Projetos que necessitam de portabilidade perfeita entre diferentes sistemas de banco de dados podem enfrentar desafios ao migrar de ou para SQLite.

## SUBSIDIOS:
- [CURSO CRIADO PELO "DEV IDEIAS"](https://youtube.com/playlist?list=PLTYLKz3zyxKonrLifrisb02uIjIIVvGnZ&si=sTmMyZGHHusfJzaD)
- [CURSO FEITO PELO VILHALVA](https://github.com/VILHALVA)
- [VEJA A DOCUMENTAÇÃO](https://www.sqlite.org/docs.html)
- [MUITO USADO COM A LINGUAGEM PYTHON](https://github.com/VILHALVA/CURSO-DE-PYTHON-COM-SQLITE)
- [VEJA O MANUAL](./MANUAL.md)
- [VEJA OS COMANDOS](./COMANDOS.md)
- [VEJA OS PROJETOS](https://github.com/VILHALVA?tab=repositories&q=topic:SQLITE)