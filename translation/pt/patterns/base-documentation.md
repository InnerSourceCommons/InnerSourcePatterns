## Title

Documentação Base Padrão

## Patlet

Novos contributors para um projeto InnerSource têm dificuldade em descobrir quem é o responsável pelo projeto, o que trabalhar e como contribuir. Fornecer documentação em arquivos padrão como `README.md`/`CONTRIBUTING.md` permite um processo de autoatendimento para novos contributors, para que possam encontrar as respostas para as perguntas mais comuns por conta própria.

## Problem

Uma equipe deseja compartilhar um projeto recém-iniciado ou já existente com toda a organização e receber contribuições. Os potenciais contributors muitas vezes ficam perdidos: eles não conseguem identificar os canais de comunicação preferidos da equipe. Eles têm dificuldade em julgar rapidamente se uma nova funcionalidade faz sentido ser adicionada ou não. Eles têm dificuldade em entender exatamente quais colegas estão mantendo ativamente o projeto no momento.

## Context

Um projeto será compartilhado com outros como um projeto InnerSource. Para que outros possam entender do que se trata o projeto e como contribuir, o projeto precisa fornecer alguma documentação básica. Até agora, o projeto não tem nenhuma documentação ou faltam alguns aspectos necessários para que os usuários possam testá-lo de forma autônoma e para que os contributors possam se atualizar rapidamente.

## Forces

- O projeto foi convertido em um projeto InnerSource apenas recentemente. Antes, os usuários eram apenas internos ou passavam por sessões pessoais presenciais para serem integrados. Da mesma forma, as pessoas que trabalhavam no projeto passavam por sessões pessoais de integração que não escalavam com o aumento do número de contribuidores ou contribuidores remotos. Como resultado, falta documentação de autoatendimento.
- O projeto foi recém-criado como um projeto InnerSource. No entanto, a equipe anfitriã não tem experiência com InnerSource. Como resultado, eles precisam de orientação sobre quais informações incluir em sua documentação, onde colocar essa documentação para que outros possam encontrá-la e quais tipos de leitores abordar em sua documentação.
- O projeto foi convertido em um projeto InnerSource apenas recentemente e a equipe anfitriã tem pouca experiência com InnerSource. Como resultado, a documentação existente aborda muitos aspectos técnicos, mas não abrange a comunicação, coordenação e informações necessárias para facilitar o planejamento transparente.
- O projeto foi convertido em um projeto InnerSource apenas recentemente. Como resultado, muito conhecimento implícito que existe dentro da equipe não está escrito ou não é óbvio para os contributors.
- A falta de documentação faz com que potenciais contributors levem muito tempo para configurar e começar a trabalhar. Produzir documentação (e mantê-la atualizada) requer um investimento de tempo. Mesmo que a equipe anfitriã conte com contributors para ajudar com a documentação ausente, essas contribuições ainda precisam de tempo para serem revisadas.
- Os membros do projeto estão gastando muito tempo respondendo perguntas de como começar. Manter um banco de dados abrangente do que poderia ser considerado perguntas de suporte requer muito tempo e esforço.
- Diferentes equipes dentro da organização têm padrões divergentes para formatar o código-fonte e usar padrões de software. Como resultado, as contribuições muitas vezes acabam sendo reescritas em grande parte ou até mesmo completamente. Padronizar tudo isso e fazer cumprir o padrão muitas vezes exigiria muito tempo e trabalho.
- O trabalho adicional de explicações repetidas e reescritas diminui a utilidade da abordagem InnerSource.
- Escalações frequentes devido ao trabalho extra e atrasos devido a reescritas levam a uma situação de grande problema ("big cheese situation").

## Solution

Abordar a necessidade de documentação mais clara para novos contribuidores. O objetivo ao criar essa documentação deve ser tornar o processo de início o mais automatizado possível, com perguntas frequentes respondidas em um formato padrão de documentação.

### README.md

Se ainda não existir, crie um arquivo `README.md para o seu projeto. Ele deve conter:

* [Missão do projeto](https://producingoss.com/en/producingoss.html#mission-statement) de forma concisa possível. Deve responder qual é o propósito do projeto e permitir que os contributors façam uma boa primeira avaliação se um recurso sugerido provavelmente estará dentro do escopo do projeto ou não.
* Uma seção "Primeiros passos" para os usuários downstream do projeto. Deve explicar como configurar/integrar os artefatos do projeto, bem como uma explicação dos primeiros passos típicos para usuários iniciantes.
* Documentação mais detalhada para usuários do projeto - ou um link para isso.
* Documentação necessária para fazer modificações no projeto - ou um link para isso.
* Documentação sobre como contribuir para o projeto - ou um link para isso.
* Uma seção "Iniciando" que explique quais canais públicos, arquivados e vinculáveis de comunicação o projeto utiliza. Isso deve incluir um link para o rastreador de problemas do projeto, mas também para quaisquer outras mídias de discussão utilizadas.
* Uma seção "Quem somos" explicando quem são os [Trusted Committers](../trusted-committer.md) por trás do projeto - com uma explicação de que, em vez de entrar em contato com essas pessoas em particular, os canais públicos de comunicação acima devem ser usados para comunicação.
* Uma explicação dos critérios para o projeto transformar contributors em Trusted Committers - se esse caminho existir.

![README.md](../../../assets/img/standard-base-documentation/README-for-users.png)

### CONTRIBUTING.md

Se a explicação dos passos para fazer uma contribuição for muito complexa, crie um documento separado `CONTRIBUTING.md`. Este documento deve responder a perguntas frequentes que os contribuidores fizeram no passado. Não é necessário fornecer um livro abrangente de uma vez. Em vez disso, compartilhe informações que se mostraram necessárias para os contribuidores. Provavelmente, isso abordará um ou mais dos seguintes tópicos:

* Como fazer checkout do código fonte do projeto do controle de versão.
* Como fazer modificações no projeto (potencialmente incluindo informações sobre diretrizes de codificação).
* Como fazer build do projeto.
* Como executar testes para garantir que as modificações acima não estejam introduzindo novos bugs.
* Como enviar suas modificações de volta ao projeto.
* Algumas informações sobre o tempo de resposta esperado para as modificações feitas.

![CONTRIBUTING.md](../../../assets/img/standard-base-documentation/CONTRIBUTING-for-contributors.png)

Existem muitos bons exemplos de como escrever um arquivo `README.md` e que tipo de informações incluir em um arquivo `CONTRIBUTING.md` em vários projetos de código aberto. Páginas como [como escrever um readme que se destaca](https://m.dotdev.co/how-to-write-a-readme-that-rocks-bc29f279611a), o [Guia de Código Aberto do GitHub](https://opensource.guide/) e o livro [Producing Open Source](https://producingoss.com/en/producingoss.html) têm informações valiosas sobre que tipo de informações fornecer. Embora Producing Open Source não tenha um capítulo sobre como escrever um bom README em si, o capítulo [Começando a partir do que você tem](https://producingoss.com/en/producingoss.html#starting-from-what-you-have) fornece uma lista bastante extensa de coisas que os membros da equipe, usuários e contributors precisarão. Os projetos InnerSource provavelmente não cobrirão todos esses aspectos desde o início, mas a própria lista é útil para inspiração do que pode ser abordado.

Além disso, este padrão vem com dois modelos básicos para você começar imediatamente: [README-template.md](templates/README-template.md) e [CONTRIBUTING-template.md](templates/CONTRIBUTING-template.md)

## Resulting Context

* O tempo necessário para que os contribuidores se ambientem é significativamente reduzido.
* O tempo gasto respondendo às perguntas iniciais de [Trusted Committers](../trusted-committer.md) é significativamente reduzido, deixando-os mais tempo para trabalhar em outras tarefas.
* As escalonamentos devido a mal-entendidos e falta de alinhamento são significativamente reduzidos.

## Known Instances

* Europace AG - Veja a postagem do blog [InnerSource: Adicionando documentação básica](https://tech.europace.de/post/innersource-base-documentation/)
* Paypal Inc.
* Mercado Libre - criado um site de documentação que contendo informações sobre como começar com InnerSource e definido também os artefatos básicos que um repositório deve ter para ser InnerSource (README, CONTRIBUTING, CODING_GUIDELINES, etc.).

## Authors

* Isabel Drost-Fromm

## Alias

Fornecer documentação básica padrão através de um README

## Status

* Structured
* Drafted in December 2019.

## References

* [README-template.md](templates/README-template.md) and
* [CONTRIBUTING-template.md](templates/CONTRIBUTING-template.md)

## Credits

[Web](https://storyset.com/web) and [People](https://storyset.com/people) illustrations by Storyset

## Histórico de Tradução

- **2022-04-14** - Tradução [Eneri Junior](https://github.com/jrcosta)
- **2022-04-14** - Tradução [Humberto Zilio](https://github.com/zilio)
