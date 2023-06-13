## Title

Portal InnerSource

## Patlet

Potenciais contribuidores não conseguem descobrir facilmente os projetos de InnerSource que lhes interessam. Ao criar um site de intranet que indexa todas as informações disponíveis sobre projetos de InnerSource, você permite que os contribuidores aprendam sobre projetos que possam interessá-los e que os proprietários de projetos de InnerSource atraiam um público externo.

## Problem

Os times de projetos de InnerSource estão achando difícil atrair contribuições externas.

Os projetos de InnerSource em sua organização estão aumentando, mas os potenciais contribuidores não têm uma maneira fácil de descobri-los.

## Story

Você está tentando estabelecer uma prática de InnerSource dentro de sua organização. Você está ciente de que alguns projetos estão sendo executados usando um modelo InnerSource, mas sua existência é comunicada apenas por boca a boca, e-mail ou conversas laterais com outros funcionários. Como resultado, os proprietários de projetos de InnerSource estão achando difícil atrair contribuidores.

Não há um recurso único e compartilhado para os funcionários em toda a organização acessarem, que permita descobrir facilmente todos os projetos de InnerSource em andamento. Isso está limitando severamente o potencial de crescimento de cada projeto de InnerSource.

O que pode ser feito para ajudar todos os projetos de InnerSource a aumentar sua visibilidade para o maior público possível e atrair contribuidores em toda a organização?

## Context

* Sua organização está interessada em adotar um estilo de trabalho InnerSource.
* Os proprietários de projetos de InnerSource estão procurando uma maneira de atrair audiências para seus projetos. No entanto, eles estão limitados pelos canais de comunicação disponíveis para eles, através dos quais poderiam anunciar para potenciais contribuidores.
* Os projetos de InnerSource em sua organização estão aumentando.
* Agravando esse problema está o fato de que o aplicativo compartilhado de gerenciamento de controle de _código fonte_ em uso tem capacidades de pesquisa tão limitadas que até mesmo os desenvolvedores em busca de projetos de InnerSource acham frustrante localizá-los.

### Prerequisites

* Os gerentes deram aceitação tácita de que seus funcionários devem participar de projetos de InnerSource.
* Um sistema compartilhado de gerenciamento de controle de _código fonte_ está em uso, que fornece acesso programático ao conteúdo dos repositórios que hospeda.
* Há um departamento dentro de sua organização com a responsabilidade de promover a colaboração em InnerSource.

## Forces

* O potencial completo das equipes de engenharia separadas de colaborar em desafios compartilhados não está sendo realizado.
* É difícil para indivíduos descobrir quais projetos InnerSource existem.
* É difícil para proprietários de projetos InnerSource atrair uma audiência de contribuidores externos.

## Solutions

Crie um site de intranet de Portal InnerSource onde os proprietários de projetos InnerSource possam anunciar facilmente a disponibilidade de seus projetos.

As propriedades chave do portal são:

* Os visitantes do Portal InnerSource devem ser capazes de ver todos os projetos disponíveis, bem como buscar projetos específicos com base em vários critérios, como nome do projeto, tecnologias em uso, nomes de contribuintes, unidade de negócios patrocinadora, etc.
* As informações exibidas por meio do Portal InnerSource devem estar sob o controle total dos proprietários do projeto InnerSource em todos os momentos. Preferencialmente, obtendo essas informações diretamente de um arquivo de dados específico ou metadados armazenados no próprio repositório do projeto.
* Os proprietários do projeto devem incluir todas as informações relevantes sobre seus projetos nesses arquivos de dados, incluindo o nome do projeto, nomes dos contribuintes confiáveis, uma breve descrição e links para o repositório de código ou qualquer documentação de suporte.
(opcional) Embora a maioria das organizações opte por tornar seu portal disponível apenas na intranet, algumas organizações escolheram disponibilizar seu portal na internet pública. Esta * última opção pode ser interessante para organizações que desejam mostrar informações adicionais sobre sua abordagem InnerSource em seu portal, por exemplo, para fins de marca e recrutamento.

Ao lançar o portal, deve-se considerar uma campanha de comunicação promovendo a adição de arquivos de dados ou metadados do InnerSource aos repositórios de código, a fim de aumentar o número de projetos exibidos no portal.

Uma [implementação de referência](https://github.com/SAP/project-portal-for-innersource) de um portal InnerSource está disponível no GitHub e aberta para contribuições. Ele lista todos os projetos InnerSource de uma organização de maneira interativa e fácil de usar. Os projetos podem se registrar automaticamente usando um tópico dedicado no GitHub e fornecer metadados adicionais.

![Exemplo de um Portal InnerSource](../../assets/img/portal-overview.png "Exemplo de um Portal InnerSource")

## Resulting Context

* O Portal InnerSource permitiu que os proprietários de projetos InnerSource divulgassem seus projetos para um público em toda a organização. Devido a essa maior visibilidade, eles estão atraindo comunidades de contribuidores muito maiores do que nunca.
* Para aqueles que desejam se envolver em projetos InnerSource, o Portal InnerSource permitiu que eles descobrissem exatamente o tipo de oportunidades em que estão interessados, pesquisando simultaneamente todos os projetos InnerSource disponíveis com base em critérios específicos.
* Atender às necessidades desses dois públicos ajudou a estabelecer o InnerSource como uma opção viável e atraente para todas as áreas da organização aproveitarem para realizar coisas juntas que não poderiam ter feito separadamente.

## Known Instances

* **Uma grande organização de serviços financeiros** utilizou a criação de um Portal InnerSource para fornecer um mecanismo de publicidade e descoberta de projetos InnerSource existentes em diferentes unidades de negócios.
* **SAP** promove projetos InnerSource no Portal InnerSource - os projetos podem se registrar automaticamente usando tópicos do GitHub. O [Repository Activity Score](repository-activity-score.md) define a ordem padrão dos projetos InnerSource no portal. Veja também [Michael Graf & Harish B (SAP) at ISC.S11 - The Unexpected Path of Applying InnerSource Patterns](https://www.youtube.com/watch?v=6r9QOw9dcQo&list=PLCH-i0B0otNQZQt_QzGR9Il_kE4C6cQRy&index=6). Seu código-fonte é publicado como uma [implementação de referência](https://github.com/SAP/project-portal-for-innersource) e está aberto para contribuições.
* **Elbit Systems** utilizou esse padrão e adicionou gamificação por cima.
  * [Gamification As Means of Cultural Change and InnerSource Engagement Booster](https://www.oreilly.com/library/view/oscon-2018-/9781492026075/video321579.html) | Shelly Nizri | OSCON 2018 - Portland, Oregon
  * Of Islands, Monsters & InnerSource [(slides)](https://docs.google.com/presentation/d/1P1OCEK9B6eSrVRUclVWY6meSI-qHOBjM_UAPNvCZamU/edit#slide=id.p15), [(video)](https://drive.google.com/file/d/1pM89uHMn0vhE3ayFJDGYcCO8R0tAXXZD/view?usp=drivesdk) | InnerSource Spring Summit 2019 (Galway, Ireland)
  * O código que implementa essa plataforma foi disponibilizado como código aberto e está disponível em [gitlab.com/gilda2](https://gitlab.com/gilda2)
* **American Airlines** promove projetos InnerSource por meio de um [Mercado Interno InnerSource](https://tech.aa.com/2020-10-30-innersource/). Da mesma forma que a SAP, os projetos se registram adicionando `innersource` como um tópico no GitHub. Os projetos podem ser pesquisados e filtrados por linguagem, tópicos, número de problemas abertos, etc.
* **Banco Santander** criou um portal público chamado "Santander ONE Europe InnerSource Community" para apoiar e aumentar a adoção do InnerSource. Além do catálogo de projetos, o portal inclui conteúdo relevante, como documentação, forma de trabalho, notícias e eventos.

![Santander InnerSource Portal](../../assets/img/santander_portal.png "Banco Santander InnerSource Portal")

* **Airbus** implantou o [portal SAP](https://github.com/SAP/project-portal-for-innersource) com modificações mínimas para se adequar à identidade visual da Airbus. Além disso, o [rastreador Python](https://github.com/zkoppert/innersource-crawler) foi corrigido para funcionar com instâncias do GitHub Enterprise.

* **Mercado Libre** utiliza uma instância do [portal SAP](https://github.com/SAP/project-portal-for-innersource) para descobrir projetos InnerSource existentes dentro da organização.

## References

* O padrão de Portal InnerSource tem se mostrado extremamente eficiente quando combinado com o padrão de [Mercado de Trabalhos InnerSource](./gig-marketplace.md) associado, nesse contexto.

## Status

* Structured

## Author(s)

* Stephen McCall

## Acknowledgements

* Shelly Nizri
* Melinda Malmgren
* Michael Graf
* Jesús Alonso Gutierrez

## Histórico de Tradução 

- **2022-06-13** - Tradução [Eneri Junior](https://github.com/jrcosta)