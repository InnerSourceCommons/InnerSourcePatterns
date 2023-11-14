## Title

Toma de decisións transparente entre equipos mediante RFC

## Patlet

Os proxectos InnerSource que desexan lograr un alto índice de participación e tomar as mellores decisións posibles para tódalas persoas involucradas, necesitan atopar formas de crear sistemas participativos durante todo o ciclo de vida do software. A publicación de documentos internos con peticións de comentarios (RFC) permite manter debates desde o comezo do proceso de deseño. Tamén aumenta as posibilidades de idear solucións cun alto grao de compromiso por parte de tódalas partes implicadas.

## Problema

Para que un proxecto InnerSource goce de boa saúde, precisa dunha cantidade substancial de contribuidores/as. Estes contribuidores/as (ou equipos) poden ter diferentes requisitos para o proxecto en cuestión. Por exemplo, é posible que desexen engadir funcionalidades ao proxecto que, ou ben non sexan compatibles entre si ou ben causen unha inflamación insán da arquitectura.

Descubrir este tipo de desacordos ou malentendidos nunha fase avanzada do proceso, por exemplo, unha vez que o software xa está construído, pode resultar moi custoso. Estes desacordos poden provocar frustracións en tódalas partes, e incluso poden ser prexudiciais para a saúde da cultura de colaboración no proxecto. Unha situación común na que xorde tal desacordo é na *pull request*, a cal se atopa aberta durante moito tempo porque o/a autor/a da solicitude de cambio e as persoas encargadas do mantemento do proxecto non están de acordo en que o cambio proposto deba levarse a cabo.

No caso dun proxecto InnerSource, esta situación ocorre con maior frecuencia cando varios equipos da empresa se encargan do mantemento do proxecto, é dicir, cando se trata dunha propiedade compartida.

## Historia

Un proxecto ou unha aplicación composta por múltiples proxectos mantense grazas a varios equipos diferentes, e cada un deles posúe diferentes áreas do proxecto ou da aplicación. Estes equipos fan contribucións InnerSource ás áreas dos demais, pero os cambios transversais de maior envergadura só os impulsan os/as líderes técnicos/as dos equipos que colaboran entre si, do contrario non se levan a cabo. Isto ten como resultado que a maioría dos/as enxeñeiros/as sexan incapaces de efectuar cambios transversais a grande escala, o que reduce a innovación e as oportunidades de colaboración.

Ao executar un proceso e un prototipo para as RFC, os equipos e as persoas teñen a capacidade de propor cambios transversais importantes a través dun proceso de toma de decisións transparente, con consultas entre equipos levadas a cabo de xeito asíncrono. O resultado é unha maior innovación, unha colaboración máis intensa e unha maior difusión do coñecemento. Isto depende da aceptación de tódalas disciplinas en todos os niveis e da creación dunha contorna de seguridade psicolóxica para que as persoas poidan propor e debater ideas abertamente.

Como en todo proceso, isto debe mellorarse de maneira continua. É posible que sexa necesario realizar cambios no prototipo ou no proceso de RFC para garantir que sexa inclusivo, colaborativo e eficaz.

## Contexto

- Propiedade compartida por moitos equipos dun proxecto de InnerSource.
- As decisións xerais sobre o deseño non poden tomarse sempre desde un organismo central (por exemplo, un grupo de arquitectos/as), xa que non dispoñen do tempo nin amplos coñecementos técnicos para tomar decisións acertadas en calquera situación que se presente.
- Distintos tipos de usuarios/as teñen unha opinión respecto á dirección que está a tomar un determinado proxecto. Con «usuarios/as» referímonos a: desenvolvedores/as, *product owners*, *product managers* etc.
- As decisións deben tomarse de maneira asíncrona, polo menos nalgúns casos, xa que non é factible convocar reunións síncronas con tódalas persoas participantes de maneira frecuente.
- Procúrase documentar as decisións tomadas, é dicir, asegurarse de que se toman por escrito, no canto de só verbalmente.

## Aspectos que mellorar

- A maioría das veces, as partes involucradas queren tomar unha decisión con bastante rapidez (por exemplo, o tempo de deseño inicial é bastante limitado).
- Escribir cousas (sen levalas á práctica previamente) adoita ser unha nova habilidade para moitas das persoas implicadas.

## Exemplo ilustrativo

![Proceso RFC empregado no proxecto BaseUI (exemplo de software libre)](../../../assets/img/rfc-process-uber-baseui.png)

## Solucións

Eliximos un proceso similar a RFC para aumentar a transparencia do noso proceso de toma de decisións entre equipos (vexa tamén [RFC](https://en.wikipedia.org/wiki/Request_for_Comments)).

Os elementos importantes para resolver este caso son:

- Unha descrición que informe do momento no que publicar un RFC (e cando non hai que facelo).
- Un prototipo para documentos RFC:
  - Debe facer que o autor de RFC considere a súa proposta desde múltiples ángulos.
  - Debe apuntar tanto unha descrición xeral accesible de alto nivel como unha explicación detallada en profundidade.
- Un proceso comprensible e ben coñecido arredor dos RFC, por exemplo:
  - Como publicar RFC e compartilo con tódalas partes interesadas (por exemplo, en Slack ou pola listaxe de correo).
  - Como recoller comentarios para RFC.
  - Como traballar a retroalimentación.
  - Como trasladar o RFC cara unha conclusión ou decisión (por exemplo, no caso de designar ás persoas responsables de mantemento pertinentes para que a proben).
  - Elección das ferramentas apropiadas (por exemplo, é posible que os/as non enxeñeiros/as non teñan acceso ás ferramentas de control de código fonte).
- Un compromiso que repetir no proceso e prototipo RFC.

### Exemplos/Prototipos

- [Rust](https://github.com/rust-lang/rfcs) é un bo exemplo de prototipo e proceso RFC dun software libre, e foi a base de moitos outros procesos RFC.
- [Prototipo RFC xeralizado en BBC iPlayer & Sounds](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/2-structured/templates/rfc.md), orixinalmente baseado no prototipo de [Rust](https://github.com/rust-lang/rfcs).

## Contexto resultante

A posta en práctica dun proceso similar a RFC demostrou ser valiosa, xa que fai que o proceso de toma de decisións entre equipos sexa máis transparente para todos/as, o que permite que tódalas voces sexan escoitadas.

Efectos positivos observables:

- **Democratización do proceso de toma de decisións** que afectan a moitos equipos (o que tamén libera aos/ás líderes de equipo desa carga).
- **Un método de comunicación asíncrono e aberto** que funciona ben con múltiples equipos en zonas xeográficas.
- **Apodera a individuos e equipos** para efectuar cambios a grande escala.
- **Rexistro de decisións tomadas** para que as persoas poidan consultalas en contexto.
- **Aumenta o impacto dos/as enxeñeiros/as experimentados/as**, xa que poden dar solucións de forma asíncrona e en remoto, en lugar de ter que estar presentes nunha reunión.
- **Aliñación terminolóxica**, por exemplo, detallando a nosa terminoloxía de diagnose como: «Que é unha proba de sistema?».
- **Aliñación de procesos**, por exemplo, detallando o proceso de soporte fóra de horario laboral.
- **Maior claridade de pensamento**, xa que escribir un RFC fai que a persoa autora se desafíe a si mesma máis que de costume.

O enfoque RFC tamén ten o risco de:

- Non funcionar sempre; por exemplo, algunhas persoas poderían argumentar en contra dunha decisión que xa se tomou a través dun RFC. Porén, que o proceso de toma de decisións sexa por escrito segue sendo beneficioso nestes escenarios, xa que pode indicarlles ás persoas cando e por que se tomou unha determinada decisión.
- Redactar propostas de deseño (arquitectura, protocolos etc.) por adiantado ten un elemento de desenvolvemento en fervenza que non se axusta ao enfoque de desenvolvemento iterativo que prefiren moitos equipos. Lembre: «Software de traballo sobre documentación completa» ([Agile Manifesto](https://agilemanifesto.org/)). O proceso RFC debe ser o máis lixeiro posible.
- Un RFC pode volverse grande e demasiado difícil de manexar. Isto adoita amosarse en forma de longos fíos de comentarios e discusións que o rodean. Nesas situacións, podemos decidir complementar o RFC con comunicación síncrona, elaborando un grupo de traballo e pautando reunións presenciais. Aínda así conséguese aforrar tempo, posto que as persoas poden ler o RFC antes da xuntanza no canto de compartir toda a información só durante a xuntanza.

## Fundamento

Os RFC demostraron a súa valía no mundo do software libre durante moitos anos. Un exemplo disto é o da Internet no seu conxunto, no cal os RFC foron fundamentais no desenvolvemento de estándares (por exemplo, consulte [30 anos de RFC](https://www.rfc-editor.org/rfc/rfc2555.txt)), como para outros proxectos de software libre que adaptaron este método co obxectivo de promover a toma de decisións transparente na súa comunidade (por exemplo, [RUST](https://github.com/rust-lang/rfcs) e [ZeroMQ](https://rfc.zeromq.org)).

No contexto InnerSource, outras empresas tamén compartiron xa as súas experiencias con enfoques similares a RFC, como é o caso de [Uber](https://blog.pragmaticengineer.com/scaling-engineering-teams-via-writing-things-down-rfcs/) e [Europace](https://github.com/open-organization/open-org-distributed-work-guide/blob/master/drostfromm-remote-first-through-openess.md#setting-cross-team-standards-and-best-practices-in-the-open).

Por outra banda, en canto á toma de decisións fóra das puras decisións de deseño de software, os exemplos de transparencia poden ser efectivos, por exemplo, cando se traballa de cara a unha Organización Aberta. Para ver un exemplo, consulte [Red Hat’s Open Decision Framework](https://www.redhat.com/en/about/press-releases/red-hat-releases-open-decision-framework-spur-transparent-and-inclusive-leadership) (feito público o 7 de xuño de 2016).

## Exemplos coñecidos

- **BBC iPlayer & Sounds**: Tal como se presentou no cume de outono de 2020 de ISC, [*Using Internal RFCs to Enhance Collaboration*](https://www.youtube.com/watch?v=U6zlghE0HcE) [O uso de RFC para promover a colaboración]. 
- **Europace:** Como se describe en Open Organization: [*Setting cross-team standards and best practices in the open*](https://github.com/open-organization/open-org-distributed-work-guide/blob/master/drostfromm-remote-first-through-openess.md#setting-cross-team-standards-and-best-practices-in-the-open) [Establecemento de estándares entre equipos e mellores prácticas no marco de decisións aberto].
- **Uber:** Segundo esta publicación de blog de Gergely Orosz: [*Scaling Engineering Teams via RFCs: Writing Things Down*](https://blog.pragmaticengineer.com/scaling-engineering-teams-via-writing-things-down-rfcs/) [A escalada dos equipos de enxeñaría mediante RFC].
- **Google Design Docs:** Como se describe na publicación de blog de Malte Ubl: [Design Docs at Google](https://www.industrialempathy.com/posts/design-docs-at-google/)[](https://www.industrialempathy.com/posts/design-docs-at-google/).
- **DAZN** (10/2021): Un dos xeitos mediante os que DAZN leva a cabo a toma decisións técnicas é a través de RFC. Os RFC empréganse para decisións que se aplican exclusivamente a procesos de enxeñaría! Os RFC atópanse nun repositorio de GitHub, os estándares técnicos adóptanse gradualmente dentro das súas ferramentas e polos/as seus/súas enxeñeiros/as. Así, calquera enxeñeiro/a pode propor un RFC e o resto dos/as enxeñeiros/as poden votar por este RFC. Se os votos a favor superan aos votos en contra, adóptase o RFC. Vale a pena sinalar que o proceso de votación de RFC aínda non foi probado por ningunha decisión contenciosa. Tal e como se describe nesta publicación de blog de Lou Bichard: [*Building A DX Team: Lessons Learned*](https://medium.com/dazn-tech/building-a-dx-team-lessons-learned-4a66446088bc) [A construción dun equipo A DX: Leccións aprendidas].

## Estado

- Estruturado

## Autoría

- Tom Sadler
- Sebastian Spier

## Títulos alternativos

- [*Design Docs*](https://www.industrialempathy.com/posts/design-docs-at-google/)
- Architecture Decision Record (ADR, en inglés, Rexistro das decisións sobre a arquitectura): Non necesariamente un título alternativo, xa que ás veces pódense usar de maneira moi diferente, por exemplo, o uso de RFC para buscar aportes e xerar consenso, o uso de ADR para rexistrar decisións e facer execucións en detalle.

## Tradución

- Leticia Gómez Cadahía
- María Lucía González Castro