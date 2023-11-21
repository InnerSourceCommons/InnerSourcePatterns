## Title

Tomada de Decisão Transparente entre Equipes usando RFCs

## Patlet

Projetos InnerSource que desejam alcançar altas taxas de participação e tomar as melhores decisões possíveis para todos os envolvidos precisam encontrar maneiras de criar sistemas participativos ao longo de todo o ciclo de vida do software. A publicação de documentos internos de "Requests for Comments" (RFCs) permite discussões desde o início do processo de design e aumenta as chances de construir soluções com um alto grau de comprometimento de todas as partes envolvidas.

## Problema

Para que um projeto InnerSource seja saudável, ele precisa de um número substancial de contribuidores. Esses contribuidores (ou equipes) podem ter diferentes requisitos para o projeto em questão, por exemplo, eles podem querer adicionar recursos ao projeto que não são compatíveis entre si ou que levem a um excesso de complexidade na arquitetura.

Descobrir tais desacordos ou mal-entendidos tardiamente no processo, por exemplo, após o software já ter sido construído, é muito custoso. Esses desacordos podem levar à frustração de todas as partes envolvidas e até mesmo serem prejudiciais para a cultura de colaboração saudável do projeto. Uma situação comum em que tal desacordo surge é uma solicitação de alteração (pull request) que fica aberta por muito tempo, pois o autor da solicitação e os mantenedores do projeto basicamente não concordam que a alteração proposta deva ser feita.

Para um projeto InnerSource, essa situação ocorre com mais frequência quando o projeto é mantido por várias equipes na empresa, ou seja, possui propriedade compartilhada.

## História

Um projeto ou aplicação composta por vários projetos é mantido por várias equipes diferentes, cada uma delas sendo responsável por diferentes áreas do projeto ou aplicação. Essas equipes fazem contribuições InnerSource nas áreas umas das outras, mas mudanças maiores que afetam várias partes do projeto são apenas conduzidas pelos líderes técnicos das equipes trabalhando juntos, ou nem acontecem. Isso resulta na maioria dos engenheiros não sendo capazes de realizar mudanças em larga escala que cortem várias partes do projeto, o que reduz a inovação e as oportunidades de colaboração.

Ao implementar um processo e um modelo para RFCs (Requests for Comments), as equipes e indivíduos são capacitados a propor mudanças significativas que afetem várias partes do projeto através de um processo de tomada de decisão transparente, com consulta entre as equipes feita de forma assíncrona. Isso resulta em maior inovação, colaboração mais próxima e disseminação de conhecimento. Isso depende do comprometimento de todas as disciplinas em todos os níveis e de um ambiente de segurança psicológica para que as pessoas possam propor e debater ideias abertamente.

Assim como em qualquer processo, isso deve ser continuamente aprimorado. Pode ser necessário fazer alterações no modelo ou no processo de RFC para garantir que seja inclusivo, colaborativo e eficaz.

## Contexto

- Compartilhamento de Propriedade por Muitas Equipes de um Projeto InnerSource
- Decisões de design abrangentes não podem ser sempre tomadas por um órgão central (por exemplo, um grupo de arquitetos), pois eles não têm tempo suficiente nem conhecimento específico do domínio para tomar boas decisões em todos os casos.
- Vários tipos de usuários têm entrada sobre a direção que um determinado projeto está tomando. Esses usuários podem ser: Desenvolvedores, Proprietários de Produto, Gerentes de Produto, etc.
- As decisões precisam ser tomadas de forma assíncrona, pelo menos em parte, já que não é viável realizar reuniões síncronas frequentes com todos os participantes.
- Existe o desejo de documentar as decisões tomadas, ou seja, garantir que sejam registradas por escrito, em vez de apenas verbalmente.

## Forças

- Na maioria das vezes, as partes envolvidas desejam tomar uma decisão bastante rápida (por exemplo, o tempo de design inicial é bastante limitado).
- Escrever as coisas (sem implementá-las imediatamente) muitas vezes é uma nova habilidade para muitas das pessoas envolvidas.

## Esboço

![Processo de RFC usado no projeto BaseUI da Uber (exemplo de código aberto)](../../../assets/img/rfc-process-uber-baseui.png)

## Solução

Escolhemos um processo semelhante ao RFC para aumentar a transparência do nosso processo de tomada de decisão entre equipes (consulte também [Requests for Comments][requests-for-comments]).

Elementos importantes da solução são:

- uma descrição de quando publicar um RFC (e quando não fazê-lo)
- um modelo para documentos RFC
    - deve provocar o autor do RFC a considerar sua proposta a partir de várias perspectivas
    - deve fornecer uma visão geral acessível de alto nível e uma explicação detalhada em profundidade
- um processo bem conhecido e leve em torno de RFCs, por exemplo,
    - como publicar um RFC e compartilhá-lo com todas as partes interessadas (por exemplo, Slack, lista de discussão)
    - como coletar feedback para o RFC
    - como trabalhar no feedback recebido
    - como levar o RFC a uma conclusão ou decisão (por exemplo, mantenedores relevantes nomeados para aprovar)
    - ferramentas adequadas escolhidas (por exemplo, não-engenheiros podem não ter acesso a ferramentas de controle de código fonte)
- um compromisso em iterar no modelo de RFC e no processo

### Exemplos/Modelos

- [Rust][rust] é um bom exemplo de código aberto para modelo e processo de RFC, e tem sido a base para muitos outros processos de RFC.
- [Modelo de RFC genérico do BBC iPlayer & Sounds](../../../patterns/2-structured//templates/rfc.md), originalmente baseado no modelo do [Rust][rust]

## Contexto Resultante

Implementar um processo semelhante a um RFC provou ser valioso, pois torna o processo de tomada de decisão entre equipes mais transparente para todos, permitindo que todas as vozes sejam ouvidas.

Efeitos positivos observáveis:

- **democratização do processo de tomada de decisão** para decisões que impactam muitas equipes (aliviando também os líderes das equipes dessa carga)
- **um método de comunicação assíncrono e aberto** que funciona bem entre várias equipes e localidades
- **empodera indivíduos e equipes** a efetuar mudanças em grande escala
- **registro de decisões tomadas** para que as pessoas possam consultar para obter contexto
- **amplia o impacto dos engenheiros experientes** pois eles podem contribuir com soluções de forma assíncrona e remota, em vez de precisar estar presente em uma reunião
- **alinhamento de terminologia**, por exemplo, ao esclarecer nossa terminologia de testes, como "o que é um teste de sistema?"
- **alinhamento de processos**, por exemplo, ao esclarecer o processo de suporte fora do horário comercial
- **maior clareza de pensamento**, já que escrever um RFC faz com que o autor se desafie mais do que normalmente faria

A abordagem de RFC também possui riscos que queremos destacar:

- Nem sempre funciona! Por exemplo, algumas pessoas ainda podem discordar de uma decisão que já foi tomada por meio de um RFC. No entanto, ter o processo de tomada de decisão por escrito ainda é benéfico nesses cenários, pois você pode direcionar as pessoas para quando e por que uma determinada decisão foi tomada.
- Escrever propostas de design (arquitetura, protocolos, etc.) antecipadamente tem um elemento de design semelhante ao waterfall que não se encaixa na abordagem de desenvolvimento iterativo que muitas equipes de desenvolvimento preferem. Lembre-se: "Software em funcionamento sobre documentação abrangente" ([Manifesto Ágil](https://agilemanifesto.org/)). O processo de RFC deve ser o mais leve possível.
- Um RFC pode se tornar extenso e difícil de gerenciar. Isso muitas vezes é evidenciado por longas conversas e discussões a seu respeito. Nessas situações, podemos decidir complementar o RFC com comunicação síncrona, como um grupo de trabalho e reuniões presenciais. Mas o tempo ainda é economizado, pois as pessoas podem ler o RFC antes da reunião em vez de terem todas as informações compartilhadas durante a reunião.

## Justificativa

As RFCs têm se mostrado eficazes no mundo do código aberto há muitos anos. Isso é verdade tanto para a Internet como um todo, onde as RFCs têm sido instrumentais no desenvolvimento de padrões (por exemplo, veja [30 Anos de RFCs][30-years-of-rfcs]), quanto para outros projetos de código aberto que adaptaram esse método para promover a tomada de decisões transparente em suas comunidades (por exemplo, [RUST][rust], [ZeroMQ][zeromq]).

No contexto do InnerSource, outras empresas também compartilharam suas experiências com abordagens semelhantes às RFCs, como [Uber][uber] e [Europace][europace].

Além disso, para a tomada de decisões fora das decisões puramente de design de software, modelos transparentes de tomada de decisões podem ser eficazes, por exemplo, ao trabalhar em direção a uma Organização Aberta. Para um exemplo, veja o [Framework de Decisões Abertas][open-decision-framework] da Red Hat (lançado publicamente em 7 de junho de 2016).

## Instâncias Conhecidas

- **BBC iPlayer & Sounds** - Como apresentado na ISC Fall Summit 2020 [Using Internal RFCs to Enhance Collaboration][bbc].
- **Europace** - Como descrito em Open Organization: [Setting cross-team standards and best practices in the open][europace].
- **Uber** - Conforme descrito neste post no blog por Gergely Orosz: [Scaling Engineering Teams via RFCs: Writing Things Down][uber].
- **Google Design Docs** - Como descrito neste post no blog por Malte Ubl: [Design Docs at Google][google].
- **DAZN** (10/2021) - Uma forma pela qual a DAZN toma decisões técnicas é por meio de RFCs. RFCs são usados para decisões que se aplicam apenas a processos em toda a engenharia! As RFCs ficam em um repositório do GitHub, e os padrões técnicos são gradualmente adotados em suas ferramentas e por seus engenheiros. Uma RFC pode ser proposta por qualquer engenheiro e votada por todos os engenheiros. Se os votos a favor excederem os votos contra, a RFC é adotada. Vale ressaltar que o processo de votação de RFCs ainda não foi "testado sob pressão" por nenhuma decisão controversa. - Como descrito neste post no blog por Lou Bichard: [Building A DX Team: Lessons Learned][dazn].

## Estado

Structured

## Autores

- Tom Sadler
- Sebastian Spier

## Aliases

- [Design Docs][google]
- Architecture Decision Record (ADRs) - Não necessariamente um equivalente direto, pois às vezes eles podem ser usados de maneira diferente, por exemplo, RFCs para buscar opiniões e construir consenso, ADRs para registrar decisões e detalhes de implementação.

[requests-for-comments]: https://en.wikipedia.org/wiki/Request_for_Comments
[30-years-of-rfcs]: https://www.rfc-editor.org/rfc/rfc2555.txt
[rust]: https://github.com/rust-lang/rfcs
[zeromq]: https://rfc.zeromq.org
[uber]: https://blog.pragmaticengineer.com/scaling-engineering-teams-via-writing-things-down-rfcs/
[europace]: https://github.com/open-organization/open-org-distributed-work-guide/blob/master/drostfromm-remote-first-through-openess.md#setting-cross-team-standards-and-best-practices-in-the-open
[open-decision-framework]: https://www.redhat.com/en/about/press-releases/red-hat-releases-open-decision-framework-spur-transparent-and-inclusive-leadership
[bbc]: https://www.youtube.com/watch?v=U6zlghE0HcE
[google]: https://www.industrialempathy.com/posts/design-docs-at-google/
[dazn]: https://medium.com/dazn-tech/building-a-dx-team-lessons-learned-4a66446088bc

## Histórico de Tradução

- **2023-08-20** - Tradução [Eneri Junior](https://github.com/jrcosta)
- **2023-08-20** - Tradução [Humberto Zilio](https://github.com/zilio)
