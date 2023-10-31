## Title

Casos de uso do Issue Tracker

## Patlet

A equipe responsável pelo InnerSource falha em tornar não apenas os planos e o progresso transparentes, mas também o contexto das mudanças. Isso é resolvido aumentando os casos de uso do Issue Tracker do projeto para também servir como espaço para brainstorming, discussões de implementação e design de recursos.

## Problema

Uma equipe desenvolve um componente no qual muitas equipes na organização dependem. Eles utilizam um Issue Tracker padrão para acompanhar bugs abertos e solicitações de recursos. No entanto, o contexto em cada entrada é muito limitado. Como resultado, possíveis colaboradores não têm como saber exatamente sobre qual alteração cada problema está tratando.

## Contexto

A infraestrutura de ferramentas do projeto InnerSource está toda configurada. No entanto, o Issue Tracker do projeto é principalmente usado para compartilhar o progresso. Nos projetos InnerSource, existem muitos outros casos de uso em que um Issue Tracker pode ser usado para facilitar a comunicação remota e assíncrona.

## Forças

- Os colaboradores gostariam de saber se a funcionalidade que estão procurando já está no roadmap. No entanto, devido à falta de contexto nas issues, é impossível determinar se as issues existentes atendem às necessidades da equipe de contribuição.
- Como resultado, muitas issues duplicadas estão sendo abertas, o que a equipe responsável precisa lidar.
- Como o contexto nas issues abertas é tão limitado, os colaboradores não conseguem ajudar a equipe responsável implementando issues mais simples que já estão abertas. Como resultado, grande parte do trabalho continua nas mãos da equipe responsável.
- Com um foco forte na comunicação verbal, é impossível discernir após alguns meses ou anos por que uma determinada funcionalidade foi escolhida para implementação. Como resultado, refatorações, em particular a simplificação do componente, se tornam um exercício de arqueologia de projetos e de solicitar informações de pessoas que se lembram do que foi discutido.

## Solução

Abraçar a filosofia de "escrito em vez de verbal" não apenas para o desenvolvimento de software puro, mas também durante a fase de planejamento de novas funcionalidades:

- Para bugs, funcionalidades planejadas e ideias de funcionalidades, crie issues separadas. Em cada uma delas, inclua o máximo de informações possível para que potenciais colaboradores externos possam entender o contexto. Idealmente, especialmente para alterações mais simples, inclua informações suficientes para que colaboradores externos possam apoiar a equipe responsável implementando a funcionalidade em questão.
- Potencialmente, use o rastreador de problemas como um canal para fazer perguntas. Isso é especialmente útil se você não tiver outras fontes de comunicação para lidar com perguntas dos usuários.
- Faça uso de tags e categorias para distinguir issues usadas para diferentes propósitos.
- Para iniciar uma sessão de brainstorming de forma assíncrona, abra uma issue para coletar ideias. Quando a discussão começar a diminuir, resuma os pontos identificados nesta issue em um documento separado. Envie-o para revisão como uma solicitação de pull para aprofundar os pontos individuais que ainda precisam de esclarecimentos. O documento resultante pode ser usado para publicar os resultados em outros canais apropriados, bem como para referência futura.
- A maioria das implementações de rastreadores de problemas permite o uso de modelos de issues. Faça uso deles não apenas para coletar informações comumente necessárias para relatórios de bugs, mas também inclua dicas sobre que tipo de informações são necessárias para os outros tipos de uso.

## Contexto Resultante

- Fazer um uso mais intenso do Issue Tracker do projeto para comunicação permite que colaboradores externos acompanhem e tomem melhores decisões sobre o que contribuir.
- Um foco na comunicação escrita estruturada permite que membros da equipe responsável participem remotamente.
- Comunicar consistentemente por escrito significa que a documentação passiva das decisões do projeto acumula-se como um subproduto, em vez de exigir atenção adicional.
- O uso consistente de canais de comunicação públicos atrai mais pessoas para acompanhar uma discussão. Isso significa que há mais pessoas qualificadas que podem responder perguntas, contribuir para issues abertas ou apontar falhas em funcionalidades planejadas que, de outra forma, seriam descobertas apenas muito tempo depois.
- Mover discussões para uma plataforma de discussão pública cria uma oportunidade para potenciais colaboradores futuros observarem, acompanharem, se familiarizarem e aprenderem sobre os caminhos do projeto muito antes de precisarem se envolver pela primeira vez.

## Instâncias Conhecidas

* Europace AG - See blog post [Issue Use Cases](https://tech.europace.de/post/using-issues-for-asking-questions-and-tracking-work/)

## Autores

Isabel Drost-Fromm

## Estado

Structured

## Histórico de Tradução

- **2023-06-13** - Tradução [Eneri Junior](https://github.com/jrcosta)
- **2023-06-13** - Tradução [Humberto Zilio](https://github.com/zilio)
