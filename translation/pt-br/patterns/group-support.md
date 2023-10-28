## Title

Suporte em Grupo

## Patlet

O que acontece se uma equipe ou indivíduo não suporta mais um projeto InnerSource?
Mantenha o projeto vivo formando um grupo de indivíduos interessados.

## Problema

* Um projeto InnerSource popular está órfão.
* Não há um destino óbvio para ele.

## História

Uma biblioteca de widgets de interface do usuário é usada por mais de 50 projetos em toda a empresa.
O financiamento da equipe que é proprietária da biblioteca se esgota e a equipe se dissipa.
No início, ninguém percebe, mas depois de um tempo, sempre que alguém pergunta "quem é o responsável", não há uma resposta.
O que acontecerá em seguida?
As novas equipes evitarão usá-lo?
O projeto estagnará e permanecerá até que seus usuários eventualmente sejam forçados a migrar para outra solução?
Que pena se isso acontecer a um projeto perfeitamente bom e útil!

## Contexto

* Projeto InnerSource popular.
* Consumido como uma dependência de tempo de compilação (por exemplo, módulo de código).
* Ninguém está oferecendo suporte ativamente.
* A empresa não pode alocar uma equipe para oferecer suporte.

## Forças

* Ninguém é designado por seu trabalho diário para trabalhar nele.
* Todos estão ocupados.
* Alto custo para migrar do projeto.

## Solução

Chamar voluntários interessados de qualquer parte da empresa para formar um grupo de [Trusted Committer][]s para oferecer suporte ao projeto.
Você pode precisar entrar em contato com indivíduos específicos com base no histórico de commits ou uso.
É importante que haja pessoas suficientes para que a carga sobre cada uma seja razoavelmente pequena.

Ao formar este grupo, ele deve identificar ou criar [Standard Base Documentation][] e [Communication Tooling][].

O grupo deve fazer o melhor para gerenciar esses aspectos do projeto:

* **Manutenção**. Se o projeto estiver completamente quebrado para o caso de uso padrão, então conserte-o.
Mantenha o projeto atualizado à medida que as dependências e estruturas que ele usa continuam a evoluir.
* **Integração**. Se alguém tiver uma pergunta sobre como usar o projeto, certifique-se de que eles obtenham uma resposta razoável.
* **Atualizações**. Se alguém desejar adicionar um novo recurso ao projeto, forneça o suporte de design e técnico necessário para que eles o construam, de modo que funcione para eles e seja uma boa adição ao projeto.
Revise as solicitações de pull que chegam de forma oportuna.

Uma vez que este grupo é composto por voluntários, é importante comunicar que o suporte é "melhor esforço" apenas.
Portanto, este modelo de suporte não é adequado para projetos críticos em tempo de execução, como APIs em produção.
Ele é mais adequado para projetos que são consumidos no momento de compilação, como bibliotecas/pacotes/módulos.
Não se espera que o grupo implemente qualquer nova funcionalidade para outros.

## Contexto Resultante

* Existe algum suporte frágil para o projeto InnerSource.
* A longo prazo, é provável que o suporte do grupo se dissolva novamente em algum momento. Se o projeto continuar a longo prazo, aproveite este período de suporte estável do grupo para encontrar uma maneira duradoura de suportá-lo (por exemplo, [Core Team][]).

## Justificativa

As pessoas geralmente querem ajudar.
Se houver uma abordagem pessoal para que alguém se junte como um [Trusted Committer][], geralmente haverá várias pessoas que dirão "sim".
Sentir-se parte de um grupo e ser atribuído a alguma estrutura e responsabilidade geralmente motiva as pessoas a fazer o seu melhor, o que muitas vezes acaba sendo suficiente.

## Instâncias Conhecidas

* WellSky

## Estado

Structured

## Autores

[Russell R. Rutledge][]

[Russell R. Rutledge]: https://github.com/rrrutledge
[Standard Base Documentation]: ../base-documentation.md
[Communication Tooling]: ../communication-tooling.md
[Trusted Committer]: ../trusted-committer.md
[Core Team]: ../core-team.md

## Histórico de Tradução

- **2023-10-26** - Tradução [Eneri Junior](https://github.com/jrcosta)
- **2023-10-26** - Tradução [Humberto Zilio](https://github.com/zilio)
