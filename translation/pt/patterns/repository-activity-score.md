## Title

Repositório  Pontuação de Atividade

## Patlet

Potenciais contribuidores desejam encontrar projetos InnerSource ativos que precisem de sua ajuda. Ao calcular uma pontuação de atividade do repositório para cada projeto, uma lista classificada de projetos pode ser criada (por exemplo, no [Portal InnerSource](innersource-portal.md)), para que os potenciais contribuidores possam determinar mais facilmente em qual projeto desejam contribuir.

## Problem

**Em que ordem** os projetos InnerSource devem ser apresentados? Indicadores de classificação típicos, como *GitHub Stars*, *Número de Forks*, *Número de Commits*, *Linhas de Código*, *Última Atualização*, não são suficientes para indicar de forma concisa a atividade de um projeto.

Projetos ativos com muita tração, mas também projetos relativamente novos e entusiasmados que precisam de novos contribuidores, devem ser classificados acima de projetos maduros com pouca atividade ou em modo de manutenção.

Uma nova métrica derivada de vários indicadores de desempenho é necessária para definir uma pontuação confiável e versátil para o nível de atividade de um projeto.
Ela pode ser usada para ordenar projetos de acordo com o nível de atividade deles.

## Story

Quando o InnerSource é praticado por um longo período de tempo ou se expande além de um certo número de projetos (digamos 50 para ter um limite significativo), torna-se difícil encontrar os projetos InnerSource mais populares e ativos no momento. Projetos que existem por muito tempo são conhecidos, mas podem não estar tão ativos. Projetos relativamente novos, por outro lado, não têm reputação ou uma comunidade ativa ainda.

Uma lista de projetos InnerSource não deve ser considerada um recurso estático, mas sim um local emocionante para descobrir e explorar projetos novos e ativos, assim como uma página de notícias que lista os tópicos mais interessantes do dia primeiro. Portanto, é benéfico quando a ordem dos projetos é atualizada regularmente e muda de acordo com a popularidade e atividade do projeto.

Essas considerações levaram a um primeiro protótipo para calcular uma pontuação de atividade do repositório, que funcionou surpreendentemente bem e determina uma ordem sempre em mudança de projetos de acordo com a sua atividade.

## Context

A descoberta de projetos InnerSource pode ser facilitada com o [Portal InnerSource](innersource-portal.md) e o padrão [Gig Marketplace](gig-marketplace.md), ou promovendo projetos em outros canais de comunicação e plataformas. A pontuação de atividade define uma ordem padrão na qual os projetos são apresentados à comunidade.

## Forces

Indicadores-chave de desempenho automatizados que podem ser obtidos consultando a API do GitHub são apenas parte da verdade. E quanto à qualidade do código, a disponibilidade de boa documentação ou uma comunidade ativa e prestativa que torna o projeto um local divertido para contribuir?

Esses KPIs "soft" teriam que ser adicionados manualmente ou de forma semi-automática ao cálculo e à pontuação resultante. Se existirem ferramentas que forneçam mais contexto para o repositório, como relatórios de cobertura de código, eles podem ser facilmente incorporados.

## Sketch

![Ecossistema para a Pontuação de Atividade do Repositório](../../assets/img/repository_activity_score.png)

Abordagem centralizada para calcular e aplicar a pontuação de atividade do repositório. Para mais detalhes, veja [Resulting Context](#resulting-context).

## Solutions

A pontuação de atividade do repositório é um valor numérico que representa a atividade (no GitHub) de um projeto InnerSource. Ela é derivada automaticamente de estatísticas do repositório, como estrelas (GitHub stars), observadores (watches) e forks, e pode ser enriquecida com KPIs de outras ferramentas ou avaliações manuais.

Além disso, considera parâmetros de atividade como a data da última atualização e a data de criação do repositório para impulsionar projetos jovens com muita tração. Projetos com diretrizes de contribuição, estatísticas de participação ativa e problemas (backlog público) recebem uma classificação mais alta também.

Tudo isso pode ser obtido e calculado automaticamente usando o conjunto de resultados da [API de pesquisa do GitHub](https://docs.github.com/en/rest/search#search-repositories) e [API de estatísticas do GitHub](https://docs.github.com/en/rest/metrics/statistics). Outros sistemas de controle de versão de código, como BitBucket, GitLab e Gerrit, podem ser integrados também, se uma API similar estiver disponível.

O código abaixo pressupõe que a variável `repo` contenha uma entidade obtida a partir da API de pesquisa do GitHub (`search`) e que o objeto `participation` contenha uma entidade da API do GitHub (`stats/participation`).

Ajustes manuais de acordo com os KPIs "soft" (consulte [Forças](#forces)) podem ser feitos conforme necessário.

``` javascript
// calcular uma pontuação virtual de InnerSource a partir de estrelas, seguidores, commits e issues
function calculateScore(repo) {
    // a pontuação inicial é 50 para dar a repositórios ativos com baixos KPIs do GitHub (forks, seguidores, estrelas) um ponto de partida melhor
    let iScore = 50;
    // ponderação: forks e seguidores contam mais, depois estrelas, adiciona um pouco de pontuação para issues abertas também
    iScore += repo.forks_count * 5;
    iScore += (repo.subscribers_count ? repo.subscribers_count : 0);
    iScore += repo.stargazers_count / 3;
    iScore += repo.open_issues_count / 5;

    // atualizado nos últimos 3 meses: adiciona um bônus multiplicador entre 0..1 à pontuação geral (1 = atualizado hoje, 0 = atualizado há mais de 100 dias)
    let iDaysSinceLastUpdate = (new Date().getTime() - new Date(repo.updated_at).getTime()) / 1000 / 86400;
    iScore = iScore * ((1 + (100 - Math.min(iDaysSinceLastUpdate, 100))) / 100);

    // avaliar estatísticas de participação nos últimos 3 meses
    repo._InnerSourceMetadata = repo._InnerSourceMetadata || {};
    if (repo._InnerSourceMetadata.participation) {
        // média de commits: adiciona um bônus multiplicador entre 0..1 à pontuação geral (1 = >10 commits por semana, 0 = menos de 3 commits por semana)
        let iAverageCommitsPerWeek = repo._InnerSourceMetadata.participation.slice(-13).reduce((a, b) => a + b) / 13;
        iScore = iScore * ((1 + (Math.min(Math.max(iAverageCommitsPerWeek - 3, 0), 7))) / 7);
    }

    // cálculo do boost:
    // todos os repositórios atualizados no ano anterior receberão um boost de até 1000 diminuindo com os dias desde a última atualização
    let iBoost = (1000 - Math.min(iDaysSinceLastUpdate, 365) * 2.74);
    // dimensionar gradualmente o boost de acordo com a data de criação do repositório para misturar com estatísticas de engajamento "reais"
    let iDaysSinceCreation = (new Date().getTime() - new Date(repo.created_at).getTime()) / 1000 / 86400;
    iBoost *= (365 - Math.min(iDaysSinceCreation, 365)) / 365;
    // adicionar boost à pontuação
    iScore += iBoost;
    // dar aos projetos com uma descrição significativa um boost estático de 50
    iScore += (repo.description?.length > 30 || repo._InnerSourceMetadata.motivation?.length > 30 ? 50 : 0);
    // dar aos projetos com um arquivo de diretrizes de contribuição (CONTRIBUTING.md) um boost estático de 100
    iScore += (repo._InnerSourceMetadata.guidelines ? 100 : 0);
    // construir uma escala logarítmica para projetos muito ativos (aberta, mas estabilizando em torno de 5000)
    if (iScore > 3000) {
        iScore = 3000 + Math.log(iScore) * 100;
    }
    // a pontuação final é um valor arredondado começando de 0 (subtraindo o valor inicial)
    iScore = Math.round(iScore - 50);
    // adicionar pontuação aos metadados instantaneamente
    repo._InnerSourceMetadata.score = iScore;

    return iScore;
}
```

## Resulting Context

Os contribuidores têm a liberdade de dedicar parte do seu tempo a projetos InnerSource. Eles podem optar por contribuir para um projeto do qual dependem para o trabalho em sua equipe regular. No entanto, também podem escolher contribuir para algo completamente diferente, com base em seus interesses e objetivos de desenvolvimento pessoal.

Os projetos podem ser ordenados e apresentados de acordo com a pontuação de atividade do repositório, proporcionando uma ordem significativa em um portal que apresenta projetos a potenciais novos contribuidores. A pontuação pode ser calculada instantaneamente ou em um trabalho de fundo que avalia todos os projetos regularmente e armazena uma lista de resultados.

Um rastreador que pesquisa regularmente todos os repositórios InnerSource (por exemplo, marcados com um [tópico específico](https://github.com/topics) no GitHub) também pode ser uma adição útil. Ele fornece uma lista classificada de projetos que podem ser usados como entrada para ferramentas como o [InnerSource Portal](innersource-portal.md), um mecanismo de busca ou um bot de chat interativo.

## Rationale

A pontuação de atividade do repositório é um cálculo simples baseado na API do GitHub. Pode ser totalmente automatizada e facilmente adaptada a novos requisitos.

## Known Instances

* Usado no portal de projetos InnerSource da SAP para definir a ordem padrão dos projetos InnerSource. Foi criado pela primeira vez em julho de 2020 e vem sendo ajustado e atualizado com frequência desde então. Quando proposto para o InnerSourceCommons em julho de 2020, este padrão emergiu. Veja também [Michael Graf & Harish B (SAP) em ISC.S11 - O Caminho Inesperado da Aplicação de Padrões InnerSource](https://www.youtube.com/watch?v=6r9QOw9dcQo&list=PLCH-i0B0otNQZQt_QzGR9Il_kE4C6cQRy&index=6).

## Status

* Structured

## Author(s)

[Michael Graf (SAP)](mailto:mi.graf@sap.com)

## Acknowledgements

Um agradecimento à comunidade InnerSource Commons por fornecer conselhos extremamente rápidos e muitas contribuições úteis para enriquecer este padrão! Em especial:

* Johannes Tigges
* Sebastian Spier
* Maximilian Capraro
* Tim Yao

## Histórico de Tradução

- **2022-08-20** - Tradução [Eneri Junior](https://github.com/jrcosta)
