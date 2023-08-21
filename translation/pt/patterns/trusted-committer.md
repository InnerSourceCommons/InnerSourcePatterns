## Título

Trusted Committer

## Patlet

Muitos projetos InnerSource se encontram em uma situação em que
consistentemente recebem feedback, funcionalidades e correções de bugs de contribuidores.
Nessas situações, os mantenedores do projeto buscam maneiras de reconhecer e recompensar
o trabalho do contribuidor acima e além de contribuições individuais.

## Problema

- Os mantenedores do projeto desejam encontrar maneiras de aumentar a capacidade de suporte a um projeto.
- Os mantenedores do projeto desejam encontrar maneiras de prolongar o valor entregue por um projeto.
- Os mantenedores do projeto desejam recompensar visivelmente os contribuidores frequentes e capacitá-los a ampliar sua contribuição de valor.
- Falta de mecanismo e linguagem para reconhecer contribuições entre equipes dentro de uma organização.

## Contexto

- Você é o mantenedor de uma biblioteca, serviço ou recurso compartilhado entre equipes.
- Você recebe contribuições regulares.
- Você recebe solicitações regulares de novos recursos.
- Você recebe solicitações regulares de correções de bugs.
- Existem contribuidores motivados buscando construir experiência por meio de projetos InnerSource.

## Forças

- Ao longo do ciclo de vida de um projeto, o foco dos mantenedores pode se deslocar para acomodar as mudanças nas prioridades comerciais.
- Os contribuidores buscam reconhecimento visível de suas contribuições, demonstrando valor.
- Manter um projeto de complexidade razoável é desgastante para uma equipe pequena.
- Desenvolver recursos do projeto em escala é desgastante para uma equipe pequena.

## Solução

### Definindo o Papel de Trusted Committer para um Projeto

O que um Trusted Committer lida depende de cada projeto e de seus mantenedores. Certifique-se de documentar dentro do projeto o escopo do seu papel de Trusted Committer. A documentação clara estabelece as expectativas para novos membros da comunidade e estabelece o papel para futuros candidatos.

As seguintes são algumas diretrizes para identificar um possível Trusted Committer:

* Um participante ativo nos canais da comunidade (Slack, triagem de problemas no JIRA, etc.) se torna um Trusted Committer, formalizando assim seu papel no suporte à comunidade.
* Alguém que frequentemente submete código, documentação ou outras mudanças no repositório. Comece incluindo essa pessoa em pull requests. Se eles estão participando ativamente de pull requests, considere abordá-los sobre oportunidades de colaboração adicional no projeto.

### Formalizando Trusted Committers

O primeiro passo é abordar os candidatos para se tornarem Trusted Committers.
Os mantenedores devem educar os candidatos sobre o papel de um Trusted Committer. Não há expectativa de que os candidatos aceitem o papel de Trusted Committer. Cada candidato
deve avaliar se tem a disponibilidade necessária para assumir as responsabilidades.

Quando um candidato aceita o papel, cabe aos mantenedores do projeto
reconhecer publicamente a transição de usuário para Trusted Committer. Também é uma
boa ideia adicionar o nome deles a uma seção de Trusted Committers no README do seu projeto.
Como exemplo:

```markdown
# nome-do-projeto

... o readme do seu projeto ...

## Líderes do Projeto

### Mantenedores

  - Sua equipe

### [Trusted Committers]

  - O nome do novo trusted committer

[Trusted Committers]: https://exemplo.com/link/para/sua/documentacao-de-trusted-committer.md
```

### Mantendo Relacionamentos com Trusted Committers

Depois de formalizar um novo Trusted Committer, é uma boa ideia mantê-los informados à medida que você continua a iterar no projeto. Manter eles informados pode ser tão simples quanto convidá-los para o canal do projeto ou tão envolvente quanto incluí-los em suas sessões de planejamento. Mais oportunidades de envolvimento oferecem aos Trusted Committers um caminho para se tornarem Mantenedores, se assim desejarem.

Além de manter os Trusted Committers informados, é bom fazer verificações regulares. Uma cadência sugerida é começar com todas as semanas antes de progredir gradualmente para a cada poucas semanas. O objetivo dessas verificações é garantir que o Trusted Committer se sinta apoiado em seu novo papel. Analogamente a uma reunião individual com seu gerente, se houver problemas, ouça e demonstre empatia para entender o que está impedindo o Trusted Committer de ter sucesso. Sempre [agradeça ao Trusted Committer pelo esforço contínuo][praise] em tornar o projeto bem-sucedido e defina uma nova data para a próxima verificação.

### Encerrando a Participação de um Trusted Committer

Existem momentos que podem exigir a remoção de um Trusted Committer, como quando o Trusted Committer:

* Não está mais disposto a participar;
* Não consegue mais desempenhar suas funções;
* Não está mais empregado pela empresa.

Um plano para remover o acesso aos recursos do projeto deve ser acordado por ambas as partes, incluindo a transição de sua entrada na seção de **Trusted Committers** do projeto para uma lista de contribuidores passados.

Ao remover o acesso, [agradeça ao Trusted Committer pela participação publicamente][praise]. O reconhecimento público garante uma comunicação clara da transição e continuidade dentro da comunidade.

## Contexto Resultante

### Para os Contribuidores

Alcançar o status de Trusted Committer para um projeto demonstra iniciativa em
contribuir para o projeto da comunidade. O reconhecimento por esses esforços
pode ser usado durante as revisões anuais com os gerentes.

### Para os Mantenedores

Conforme um projeto amadurece, os mantenedores podem ficar menos familiarizados com aspectos-chave
de um projeto. Trusted Committers preenchem essas lacunas, garantindo que todos os
aspectos do projeto sejam melhor atendidos ao longo do tempo.

Um conjunto saudável de Trusted Committers garante que, se os mantenedores do projeto se afastarem,
haja um plano para a administração responsável.

## Instâncias Conhecidas

Isso foi experimentado e comprovado como bem-sucedido em:

- Nike
- PayPal
- Mercado Libre - adiciona uma seção no arquivo `CONTRIBUTING.md` para informar quem são os Trusted Committers.
- Robert Bosch GmbH - nós não chamamos o papel de 'Trusted Committer', mas tivemos esse papel no início de nossa jornada InnerSource. Os Trusted Committers eram financiados em 100% do tempo para poderem se concentrar nesse papel.

![Trusted Committer section in CONTRIBUTING.md of Mercado Libre](../../assets/img/mercadolibre-trusted-committers.png "Trusted Committer section in CONTRIBUTING.md of Mercado Libre")

## Estado

- Structured
- Published internally at Nike; drafted via pull-request in June of 2018.

## Autores

- [Fernando Freire]

## Reconhecimento

- [Russell Rutledge]
- [Loren Sanz]
- [Noah Cawley]
- [Jeremy Hicks]
- [Doron Katz]

[Doron Katz]: https://github.com/doronkatz
[Russell Rutledge]: https://github.com/rrrutledge
[Loren Sanz]: https://github.com/mrsanz
[Jeremy Hicks]: https://github.com/greatestusername
[Noah Cawley]: https://github.com/utanapishtim
[praise]: ./praise-participants.md
[Fernando Freire]: https://github.com/dogonthehorizon

## Histórico de Tradução

- **2022-08-20** - Tradução [Eneri Junior](https://github.com/jrcosta)
- **2022-08-20** - Tradução [Humberto Zilio](https://github.com/zilio)
