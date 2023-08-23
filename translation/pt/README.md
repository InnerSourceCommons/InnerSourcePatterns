# Processo de Tradução e Recomendações

Se você deseja contribuir para a tradução dos Padrões InnerSource, ótimo! Adoraríamos trabalhar com você!

Primeiro, consulte [CONTRIBUTING.md](/CONTRIBUTING.md) para obter instruções básicas de contribuição.

Este documento aborda princípios básicos de tradução, como você pode contribuir e o processo de revisão.

Observação: Este documento contém recomendações com o objetivo de eliminar barreiras para novos colaboradores no processo de tradução. Caso note algo faltando, sinta-se à vontade para fazer sugestões.

## Os Princípios de Tradução e Recomendações

- O alvo da tradução são padrões estruturados. Encontre-os na pasta [/patterns/2-structured/](../../patterns/2-structured/). Apenas os padrões estruturados serão publicados no Gitbook.
- O inglês é recomendado para mensagens de commit. Se suas alterações forem mescladas, suas mensagens de commit serão vistas por membros de todo o mundo. Isso facilitará para os membros globais encontrar suas atividades e também acelerará a colaboração.
- Em relação a Pull Requests e Issues, é uma boa ideia usar o inglês, pelo menos para o título e a declaração de propósito no prefácio. Contribuições em seu idioma e discussões acompanhantes podem ser úteis para outros projetos de tradução no futuro.
- Cada país tem seu próprio contexto cultural e histórico, assim como diferentes contextos linguísticos. Não é necessário discutir nuances específicas de idioma e expressões linguísticas difíceis em inglês em sua revisão. Especialmente se for uma comunidade local de várias pessoas traduzindo juntas, priorize a facilidade de tradução nessa comunidade.

## Como Contribuir para a Tradução

### Melhorando uma Tradução Existente

- Faça suas alterações no respectivo arquivo `.md`.
- Quando estiver pronto, envie um Pull Request.

### Traduzindo um Novo Padrão InnerSource

- Copie o padrão que deseja traduzir de `/patterns/2-structured/<arquivo>.md` para `/translation/<SEU_IDIOMA>/patterns/<arquivo>.md`.[^1] Certifique-se de manter o mesmo nome de arquivo.
- Inicie sua tradução nesse novo arquivo.
- Quando estiver pronto, envie um Pull Request.

### Iniciando a Tradução de um Novo Idioma

Isso é incrível! Agradecemos sua paixão. Ao implementar práticas InnerSource em sua região, podem existir barreiras de idioma. Há um grande valor em fazer com que as pessoas em sua organização entendam InnerSource em seu próprio idioma.

Antes de iniciar uma nova tradução, converse conosco no Slack (no canal `#innersource-patterns`). Alternativamente, abra uma issue neste repositório do GitHub para iniciar uma conversa assíncrona sobre seu projeto de tradução.

A tradução deve começar criando um branch `book-<SEU_IDIOMA>` para trabalhar.[^1]
Por exemplo, `book-jp` é usado para a tradução japonesa.

Existem algumas coisas que você deve preparar antes de iniciar um projeto de tradução.

- `/translation/<SEU_IDIOMA>/patterns/`
- `/translation/<SEU_IDIOMA>/templates/`
- `/translation/<SEU_IDIOMA>/README.md`

No entanto, como o git não cria pastas vazias, é melhor criar diretórios correspondentes ou adicionar arquivos `.keep` para manter as pastas.

### Qualidade da Tradução e Processo de Revisão

Consideramos uma boa prática ter **pelo menos um falante nativo** revisando a tradução.

Especificamente para termos especiais, como "Trusted Committer", revise não apenas a correção gramatical, mas também a adequação. Se encontrar um termo ou expressão difícil de entender, não hesite em perguntar.

### Publicação das Traduções

Os livros atualmente disponíveis estão em inglês e japonês.

Os Trusted Committers neste repositório também serão integrados durante o processo de tradução.

Quando completar uma tradução em `/translation/<SEU_IDIOMA>/`, um pipeline do GitHub Actions será executado para gerar a saída para publicação no Gitbook. O processo é detalhado em [/book/README.md](/book/README.md).

[^1]: Substitua `<SEU_IDIOMA>` pelo código de idioma [ISO 639-1 de 2 letras](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) para seu idioma.
