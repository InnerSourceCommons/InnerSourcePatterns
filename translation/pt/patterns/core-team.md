## Título

Equipe Central

## Patlet

Mesmo quando um projeto InnerSource é amplamente necessário, as contribuições e uso podem ser prejudicados porque o projeto é difícil de trabalhar.
Estabelecer uma equipe central dedicada a cuidar dos itens fundamentais do projeto.
O trabalho deles permite que os contributors adicionem e usem recursos que oferecem valor para seus cenários.

## Problema

* É difícil contribuir para o projeto.
Isso pode ser devido a coisas como:
  * Não é possível executar o projeto localmente.
  * Documentação insuficiente.
  * Código confuso.
  * Testes inadequados.
* É difícil usar o projeto.
Algumas possíveis causas:
  * Documentação ruim (novamente).
  * Bugs frequentes.
  * Configuração não intuitiva.

## História

Existe um projeto central do qual todos dependem.
Que ótimo candidato para InnerSource!
Infelizmente, o projeto cresceu organicamente, com várias contribuições e adições feitas de forma descuidada.
Agora é uma massa espessa e confusa de código que ninguém entende e todos têm medo de tocar.
É claramente necessário uma revisão completa (por exemplo, refatoração, testes, documentação, etc.), mas mesmo que todos precisem e queiram que esse trabalho aconteça, ninguém tira tempo para fazê-lo.

## Contexto

- Muitas equipes precisam do projeto.
- O projeto tem uma dívida técnica significativa.
- Adoção e iteração lentas no projeto.
- Não há um proprietário ou mantenedor que assuma a responsabilidade pelo ecossistema de projeto e contribuição como um todo.

## Forças

- Cada equipe contribuinte está ocupada e, portanto, prioriza o trabalho que resulta em um retorno imediato para si mesmos.
- Conforme o projeto cresce, a tendência natural é que ele se torne mais difícil de usar e modificar.

## Solução

Forme uma equipe central cujo trabalho é manter este projeto em um estado para que outros possam facilmente aderir e contribuir para ele.
Esta equipe central faz o trabalho necessário para um ecossistema de uso e contribuição saudável.
Este trabalho crítico tende a não ser priorizado como uma contribuição.
Categorias desse tipo de trabalho incluem comunicação, ambiente local e infraestrutura de DevOps.

Aqui estão alguns exemplos específicos:

- Bugs em produção
- Documentação
- Tutoriais e exemplos para integração de novos colaboradores
- Testes automatizados
- Integração e entrega contínua (CI/CD)
- Ambiente local de desenvolvimento
- Modularização
- Versionamento
- Monitoramento
- Desbravamento de novas classes/categorias de funcionalidades.

Cada um desses itens é muito importante para um ecossistema de produto saudável, mas é improvável que seja priorizado como uma contribuição.

A equipe central pode ser composta por um pequeno número de pessoas em tempo integral ou parcial.
A escolha depende da quantidade de trabalho necessário, da disponibilidade de recursos e da cultura da organização.
A consideração mais importante é formar a equipe de forma que permita que a organização a capacite e a responsabilize da mesma maneira que qualquer outra equipe.

Due to their central role, core team members should nearly always fill the role of **Trusted Committers** as well (for more on that concept see [Learning Path][tc-learning-path] and [Pattern][tc-pattern]).
While the Trusted Committer role focuses mostly on facilitating others' contribution and use of the project, a core team member regularly contributes to the project as well.
The core team doesn't have its own business agenda that determines its contributions.
They decide what to work on based on what will help others most to use and contribute to the project.

Devido ao seu papel central, os membros da equipe central devem quase sempre ocupar também o papel de **Trusted Committers** (para mais informações sobre esse conceito, consulte [Learning Path][tc-learning-path] e [Pattern][tc-pattern]).
Enquanto o papel do Trusted Committer se concentra principalmente em facilitar a contribuição e uso do projeto por outros, um membro da equipe central contribui regularmente para o projeto também.
A equipe central não possui sua própria agenda de negócios que determine suas contribuições.
Eles decidem sobre o que trabalhar com base no que ajudará mais os outros a usar e contribuir para o projeto.

Uma boa maneira de lembrar constantemente a equipe central desse objetivo é pedir que eles relatem regularmente sobre:

- número de equipes ativas que usam o projeto
- número de contribuições fora das equipes para o projeto.

O foco contínuo nesses indicadores naturalmente levará a equipe central a priorizar geralmente o trabalho correto para criar um ecossistema InnerSource próspero em torno do projeto.

![Responsibilities of Core Team and InnerSource Contributors](../../assets/img/core-team.png)

## Contexto Resultante

- O projeto é fácil de usar e contribuir.
- Muitas equipes usam e contribuem para o projeto.
- A equipe central tem o sucesso definido em termos da interação e resposta dos outros ao seu projeto.

## Fundamentação

Separar uma equipe central e encarregá-la dessa forma ajuda a preencher as lacunas que um projeto de sucesso precisa, mas são deixadas para trás por contribuidores que estão perseguindo apenas sua própria agenda. A equipe central preenche essas lacunas e lubrifica as engrenagens para que o ecossistema de contribuição permaneça saudável.

## Instâncias Conhecidas

* **Nike** implementou esse padrão para gerenciar o esforço de InnerSource em torno de seus pipelines de CI/CD reutilizáveis.
* **WellSky** estabeleceu uma equipe central para um projeto importante. Isso permitiu que eles escalassem significativamente suas contribuições de InnerSource para esse projeto - veja [Wide-Scaled InnerSource with a Core Team](https://www.youtube.com/watch?v=kgxexjYdhIc).
* **BBVA AI Factory** implementou esse padrão como parte de uma estratégia de InnerSource para promover a contribuição e reutilização de código de ciência de dados - veja [Mercury: Scaling Data Science reusability at BBVA](https://www.bbvaaifactory.com/mercury-acelerando-la-reutilizacion-en-ciencia-de-datos-dentro-de-bbva/).

## Estado

Structured

## Autores

[Russell R. Rutledge](https://github.com/rrrutledge)

[tc-learning-path]: https://innersourcecommons.org/learn/learning-path/trusted-committer/
[tc-pattern]: ../2-structured/trusted-committer.md

## Histórico de Tradução

- **2022-04-21** - Tradução [Eneri Junior](https://github.com/jrcosta)
- **2022-04-21** - Tradução [Humberto Zilio](https://github.com/zilio)
