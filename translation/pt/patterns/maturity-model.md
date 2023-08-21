## Title

Modelo de Maturidade

## Patlet

As equipes começaram a adotar o InnerSource. A prática está se espalhando para vários departamentos. No entanto, a compreensão do que constitui um projeto InnerSource varia. A solução é fornecer um modelo de maturidade para permitir que as equipes realizem uma autoavaliação e descubram padrões e práticas das quais ainda não têm conhecimento.

## Problem

Quando a adoção do InnerSource em uma empresa começa a aumentar, o acompanhamento individual de cada projeto por meio de um evangelista se torna inviável. Além disso, cada vez mais pessoas estão adquirindo pelo menos uma compreensão básica do que significa trabalhar em um projeto InnerSource. No entanto, ao observar todos os projetos InnerSource, a profundidade de compreensão do conceito divergirá. As equipes podem não estar cientes de padrões comprovados que as ajudariam a avançar para o próximo nível e a resolver problemas e pontos de dor com os quais estão lidando.

## Context

Diversas equipes começaram a adotar práticas de InnerSource. O nível exato de compreensão da prática varia entre as equipes. Os problemas específicos com os quais as equipes se deparam divergem dependendo do contexto e ambiente de trabalho de cada equipe. Como resultado, a definição do que são práticas recomendadas importantes em um projeto InnerSource difere conforme cada equipe.

## Forces

As equipes que compartilham aprendizados sobre InnerSource enfrentam mal-entendidos, pois não têm consciência do nível respectivo de adoção do InnerSource.

As equipes acreditam que "tudo se resume a migrar para um ambiente de desenvolvimento de software compartilhado [forge](https://en.wikipedia.org/wiki/Forge_%28software%29)" (GitLab, GitHub ou Bitbucket são exemplos bem conhecidos dessas forjas).

As equipes não têm conhecimento das melhores práticas que as ajudariam a resolver problemas com os quais se deparam em suas atividades diárias.

## Solution

Solicite às equipes que façam uma autoavaliação com base no modelo de maturidade proposto.

### Transparency

**Plans & Products**

Os projetos InnerSource se beneficiam do planejamento transparente em toda a organização, permitindo que as partes interessadas compreendam melhor as decisões e as influenciem de maneira que possa ser seguida por outros.

* PP-0: Indivíduos e equipes não divulgam regularmente seus planos ou produtos para múltiplas partes interessadas. Não existem ações formais na organização.
* PP-1: Indivíduos e equipes dão visibilidade aos seus planos ou produtos para múltiplas partes interessadas antes de iniciá-los. Roadmap compartilhado.
* PP-2: Já existem roadmaps compartilhados com diretrizes claras e regras de contribuição onde as partes interessadas podem fornecer feedback. No entanto, isso não é padronizado em toda a organização e nem todos os projetos fornecem essas informações.
* PP-3: Os roadmaps são compartilhados por padrão e há um processo padrão e maneira homogênea de fazer isso em toda a organização no nível de cada projeto InnerSource. Isso contém regras claras para contribuir e influenciar no roadmap.

**Development Process & Tools**

Os projetos InnerSource prosperam quando os contribuidores se tornam ativos e participam. Como resultado, tornar a contribuição mais fácil deve ser equilibrado com objetivos técnicos puros.

* DP-0: Cada equipe segue seu próprio processo de desenvolvimento e ferramentas. Eles não são definidos para compartilhar conhecimento e artefatos fora da equipe de desenvolvimento. Equipes de desenvolvimento isoladas.
* DP-1: As equipes de desenvolvimento usam repositórios de código compartilhados internamente. Algumas equipes desenvolvem seu próprio processo de Integração Contínua (CI), usando ferramentas de CI não corporativas ou padrão. Não há um processo de revisão de código definido, embora algumas equipes de projetos o façam internamente.
* DP-2: A organização patrocina e promove um repositório compartilhado para o conhecimento coletivo. Algumas equipes desenvolvem seu próprio processo de CI, usando ferramentas de CI corporativas. Existem ambientes de CI. Processo de revisão de código definido e usado por alguns projetos. Às vezes, a revisão de código é feita por membros externos da equipe.
* DP-3: A maioria das equipes desenvolve seu próprio processo de CI, usando ferramentas de CI corporativas. Existem ambientes de CI. Processo de revisão de código definido e usado. A revisão de código é feita por membros tanto internos quanto externos à equipe.

**Decisions**

Com o intuito de motivar os colegas a contribuir para trabalhos fora de suas equipes principais, eles precisam ter visibilidade no processo de tomada de decisão do projeto anfitrião - mas também sentir que suas vozes estão sendo ouvidas e valorizadas.

* DC-0: Os tomadores de decisão frequentemente retêm intencionalmente ou por acidente dados e recursos relacionados às decisões do projeto.
* DC-1: Materiais que fazem parte das práticas de tomada de decisão se tornam disponíveis para revisão após as decisões serem finalizadas.
* DC-2: As pessoas sentem que sabem sobre - e estão contribuindo para moldar - a maioria (mas não todas) das decisões importantes à medida que essas decisões estão sendo tomadas. Materiais que fazem parte das práticas de tomada de decisão estão disponíveis em marcos definidos do projeto.
* DC-3: As pessoas sentem que fazem parte de um processo compartilhado e padronizado para tomada de decisões coletivas, endossado pela organização. Materiais que fazem parte das práticas de tomada de decisão são continuamente acessíveis durante os processos de trabalho.

**Helpful Resources**

Para atrair contribuidores, materiais de suporte úteis precisam estar facilmente acessíveis.

* RS-0: Indivíduos e equipes nem contribuem para, nem acessam um repositório compartilhado de conhecimento.
* RS-1: Indivíduos e equipes disponibilizam materiais do projeto para revisão interna após terem concluído o trabalho. Indivíduos e equipes compartilham recursos, mas em sistemas ou repositórios desconexos, fragmentados ou individualizados/isolados. Indivíduos e equipes compartilham recursos, mas não há uma compreensão comum ou compartilhada dos critérios usados para determinar se as informações são sensíveis ou não. Não "compartilham pensamentos com outros".
* RS-2: Indivíduos e equipes tornam os materiais relacionados ao projeto acessíveis a alguns membros das equipes de projeto de acordo com formatos e/ou protocolos claramente definidos e compartilhados. Indivíduos e equipes retêm dados e recursos sensíveis, fornecendo detalhes, contexto e escopo limitados.
* RS-3: Indivíduos e equipes tornam os materiais relacionados ao projeto amplamente acessíveis à organização - e possivelmente também fora da organização - de acordo com formatos e/ou protocolos claramente definidos e compartilhados. Indivíduos e equipes que devem reter dados e recursos sensíveis têm clareza sobre o que não estão compartilhando, e outros entendem por que esses materiais não estão disponíveis para eles.

**Stories**

Quando se trabalha em equipes anfitriãs, os erros serão automaticamente amplamente visíveis. Para manter os níveis de contribuição elevados, a cultura corporativa precisa celebrar o fracasso como uma oportunidade de crescimento e aprendizado.

* ST-0: Indivíduos e equipes não compartilham sucessos nem falhas para que outros possam aprender.
* ST-1: Indivíduos e equipes se sentem à vontade para compartilhar histórias sobre sucessos, mas não sobre falhas.
* ST-2: Indivíduos e equipes se sentem à vontade para compartilhar histórias de sucessos e falhas durante retrospectivas e revisões.
* ST-3: Indivíduos e equipes se sentem à vontade para compartilhar histórias de sucessos e falhas, e aprendem com as falhas de acordo com protocolos formais.

### Collaboration

**Channels for Providing Feedback**

Para reduzir silos, os colegas precisam se sentir à vontade para compartilhar feedback abertamente. Uma maneira fácil de apoiar isso é usar os mesmos princípios de comunicação em todas as hierarquias.

Idealmente, você acabará com canais de comunicação adequados que sejam conhecidos por todos na organização - com canais focados em diferentes objetivos (anúncios, suporte ao usuário, canais de desenvolvimento, discussões de infraestrutura, etc.). Algumas das melhores práticas que você estabelecerá à medida que seus projetos InnerSource amadurecem: Adoção de diretrizes de netiqueta, abertura de um conjunto comprovado de canais padrão (que estão sendo arquivados, acessíveis publicamente, pesquisáveis) para cada novo projeto InnerSource.

* CF-0: Não existem processos nem canais estabelecidos. Alguns membros da organização compartilham materiais por meio de canais ou discussões privadas.
* CF-1: A organização está no processo de estabelecer diretrizes internas e canais para incentivar pontos de vista diversos sobre decisões da empresa/departamentais, para que qualquer pessoa pertencente à organização possa usá-los. Alguns membros da organização compartilham materiais de tomada de decisão informalmente usando plataformas não oficiais. Líderes mantêm pelo menos um canal claro e direto para que os membros da organização compartilhem opiniões construtivas sobre alguns assuntos relevantes para o trabalho.
* CF-2: A organização estabeleceu diretrizes e canais internos, e fornece recursos específicos (programas de treinamento, acesso a conteúdo, etc.) para incentivar e solicitar pontos de vista diversos sobre decisões de equipe ou decisões em geral.
* CF-3: Membros da organização compartilham materiais de tomada de decisão em plataformas oficialmente sancionadas. Membros da organização compartilham materiais abertamente por meio de múltiplos canais e métodos para feedback. Líderes usam esses canais, encorajam abertamente outros a usá-los e mantêm registros voltados para a equipe ou públicos do feedback que receberam e/ou das ações que tomaram para abordar esse feedback.

**Leadership**

Projetos InnerSource incentivam os funcionários a contribuírem para projetos fora da influência direta de seu gerente direto. Isso requer uma cultura de confiança.

* LS-0: Cultura de comando e controle, dentro de uma organização altamente hierárquica.
* LS-1: Alguns líderes estão abertos a receber feedback e a criar um ambiente onde as pessoas se sintam seguras para fornecê-lo.
* LS-2: A maioria dos líderes na organização está aberta a receber feedback e a criar um ambiente onde as pessoas se sintam seguras para fornecê-lo. Os líderes demonstram passividade em entender se todos os membros se sentem capacitados e habilitados a compartilhar. A organização incentiva os líderes a buscarem ativamente vozes não presentes no diálogo para inclusão.
* LS-3: Os membros se sentem capacitados e habilitados a compartilhar opiniões construtivas sobre qualquer assunto relevante para o trabalho ou sobre o qual sintam paixão.

**Organizational and Functional Structure**

Quando o InnerSource sai do nível de codificação pura e entra no nível de comunidade e grupo de trabalho, existe o potencial para reduzir silos, mesmo onde a colaboração direta de código não é possível.

* OF-0: Grupos de trabalho tendem a ser estáticos em termos de membros e conjuntos de habilidades.
* OF-1: Existem equipes multifuncionais, mas os papéis da equipe muitas vezes são obscuros e as estruturas de governança são vagas.
* OF-2: Equipes multifuncionais são comuns e as equipes publicam seus papéis e objetivos abertamente.
* OF-3: Equipes multifuncionais são comuns e tornam suas atividades amplamente conhecidas pela organização; por sua vez, a organização promove as melhores práticas para trabalhar juntos.

**Contribution**

O objetivo ao projetar padrões de contribuição precisa manter a colaboração em mente, se a intenção é reduzir silos.

* CB-0: Totalmente isolado, sem colaboração fora das equipes. Alguma colaboração ocorre devido a equipes multifuncionais.
* CB-1: Membros da organização e equipes colaboram, mas frequentemente afirmam que é "muito difícil". Equipes revisitam raramente os resultados de suas colaborações.
* CB-2: Membros da organização e equipes buscam ativamente oportunidades para colaborar. Equipes discutem, revisitam e debatem rotineiramente os resultados de seus esforços colaborativos e tornam esses resultados disponíveis por padrão.
* CB-3: Membros da organização colaboram interna e externamente de maneiras que beneficiam a todos os envolvidos. Equipes discutem, revisitam e debatem rotineiramente os resultados de seus esforços colaborativos, compartilham suas aprendizagens fora da organização e disponibilizam esses resultados externamente por padrão.

### Community

**Sharing Policies**

Ter uma base de valores compartilhados facilita o trabalho entre as fronteiras das equipes. Cruzar essas fronteiras se torna mais fácil se um conjunto limitado de regras e diretrizes básicas se aplicar em todos os lugares e puder ser facilmente referenciado.

* SP-0: Nenhuma cultura de compartilhamento nem políticas escritas.
* SP-1: Alguns membros da organização se unem para definir valores e princípios, mas não recebem suporte claro ao fazerem isso.
* SP-2: Membros da organização documentam coletivamente visões e acordos compartilhados, como declarações de missão e códigos de conduta, tornam-nos facilmente acessíveis e os referenciam frequentemente. Materiais de integração e rituais de orientação fornecem contexto adequado para ajudar novos membros a entender como a organização se beneficiará de suas contribuições.
* SP-3: Valores e princípios compartilhados orientam processos de tomada de decisão, resolução de conflitos e avaliação entre os membros da organização, que referenciam consistentemente esses valores e princípios em formatos verbais e escritos.

**Feel part of the Organization**

Uma das possíveis razões para introduzir o InnerSource nas organizações pode ser o aumento do engajamento. Este ponto acompanha como o engajamento está mudando ao adotar o InnerSource.

* PA-0: Baixo engajamento, sem colaboração, e as pessoas não se sentem à vontade para compartilhar com os outros.
* PA-1: Membros da organização se sentem à vontade para compartilhar seus pensamentos e opiniões sem medo de retaliação, mas apenas em domínios familiares. As pessoas entendem que as melhores ideias vencem, e as responsabilidades de liderança se acumulam para as pessoas com histórico de contribuição e comprometimento.
* PA-2: Membros da organização se sentem à vontade para compartilhar seus pensamentos e opiniões sem medo de retaliação. Líderes demonstram dedicação aos valores compartilhados da organização.
* PA-3: A organização é proativa em dizer aos membros que se beneficia de suas contribuições; como tal, os membros demonstram consciência compartilhada e execução empoderada, e sentem um senso de responsabilidade para com a comunidade. Líderes entendem que crescem ao ajudar os outros a crescer, e eles mentoram membros juniores da organização.

### Governance

**Rewards**

Para impulsionar a adoção, motivadores extrínsecos podem ser usados para aumentar a colaboração entre equipes.

* RW-0: Sem recompensas.
* RW-1: Líderes são incentivados a recompensar colaborações excepcionais, mas não há políticas ou processos estabelecidos.
* RW-2: Processos padrão são estabelecidos para recompensar colaborações fora das equipes de desenvolvimento. Líderes de equipe ou conselhos decidem quem deve ser recompensado.
* RW-3: Recompensas não são apenas propostas pela organização, mas as comunidades podem definir suas recompensas mais valiosas. A comunidade é responsável por decidir quem deve ser recompensado.

**Monitoring Policies**

Projetos InnerSource precisam de um meio para autoavaliação. Métricas podem ser um aspecto para facilitar essa avaliação. Além disso, em organizações com um nível de adoção maduro do InnerSource, esperamos que a adoção do método seja rastreada com base em métricas claras e acordadas.

* MP-0: Não existem políticas de monitoramento existentes em nenhum nível da organização.
* MP-1: Métricas são importantes para certas equipes, e elas começam a usá-las de maneira isolada.
* MP-2: Existe uma estratégia em nível organizacional em relação às métricas que ajudam a validar políticas específicas em toda a organização. Essa política de monitoramento existe em nível de alguns projetos InnerSource.
* MP-3: Existem diretrizes claras, recomendações e treinamentos sobre o uso de métricas com infraestrutura específica fornecida pela organização. Isso funciona em ambos os níveis: programa InnerSource para entender a adoção geral do InnerSource dentro da organização e no nível dos projetos InnerSource.

**Support and Maintenance**

Não apenas o desenvolvimento de recursos deve ser de responsabilidade das equipes InnerSource - o suporte e a manutenção também fazem parte das tarefas principais das equipes.

* SM-0: Suporte fornecido pela equipe principal de desenvolvimento ou equipe de suporte. Um contrato comercial garante o suporte. Não há conhecimento sobre o produto fora da equipe.
* SM-1: Existem regras e regulamentos para formalizar o suporte ao produto, fornecido por uma equipe de suporte dedicada.
* SM-2: O suporte para contribuições InnerSource é formalizado por meio de padrões InnerSource, como [Garantia de 30 Dias](./30-day-warranty.md) ou [Serviço vs. Biblioteca](./service-vs-library.md).
* SM-3: Existem regras e regulamentos para formalizar o suporte ao produto, fornecido por uma comunidade madura.

**Culture**

Existem vários níveis em direção a uma cultura colaborativa.

* CL-0: Silos - equipes trabalham independentemente, mas também em isolamento.
* CL-1: Reativo - equipes trabalham independentemente, mas sabem como reagir a falhas nas dependências.
* CL-2: Contributivo - equipes ajudam ativamente a melhorar suas dependências contribuindo.
* CL-3: Ativista - equipes buscam ativamente ajuda, orientam e recrutam novos contribuidores.

**InnerSource Roles**

InnerSource traz consigo papéis explícitos. Enquanto nas primeiras etapas alguns padrões podem ser utilizados sem adotar esses papéis, a comunicação dentro dos projetos usando títulos de papel explícitos se torna mais fácil.

* RO-0: Não existem papéis específicos que auxiliem a adoção do InnerSource. Apenas papéis de desenvolvimento comuns estão presentes: desenvolvedor, analista, testador, etc.
* RO-1: Ocasionalmente, alguns indivíduos e equipes contribuem para outros projetos. Essas são contribuições técnicas, onde o papel de usuário/contribuidor é reconhecido. Para algumas equipes, pode ser identificado pelo menos um membro que é uma referência técnica, explicando o processo de desenvolvimento a outros membros da equipe de desenvolvimento. Essa pessoa poderia ser candidata a cobrir o papel de trusted committer.
* RO-2: Um papel de Oficial de InnerSource é responsável pela governança e suporte, incluindo processos, etc. Identifica as necessidades de educação e garante que sejam providenciadas para a organização. Lidera e orienta a organização no envolvimento em projetos InnerSource. É o primeiro passo formal no caminho, definindo a visão e o roteiro do InnerSource. A organização definiu um papel de trusted committer, que é um ponto de contato/referência não apenas para membros da equipe de desenvolvimento, mas também para contribuidores externos. Existe um processo padrão que descreve como contribuir para a comunidade, o papel de contribuidor está presente. O papel de Cientista de Dados é responsável por gerenciar os rastros de atividade deixados pela iniciativa InnerSource, necessários para medir a evolução do InnerSource. O papel de trusted committer evoluirá para um perfil mais técnico, e um Gerente de Comunidade será responsável por "energizar" a comunidade, sendo sua principal responsabilidade atrair e reter novos desenvolvedores/usuários (contribuidores/membros da comunidade).
* RO-3: Evangelistas estão se movimentando dentro da organização, para informar os outros sobre o trabalho atual, o que o InnerSource faz e como fazê-lo, e ajudar os outros a entenderem e se tornarem parte da iniciativa. Contribuidores não técnicos aparecem.

## Resulting Context

Todos as equipes têm conhecimento das melhores práticas disponíveis.

As equipes compreendem seu nível de adoção do InnerSource.

Antes de adotar o InnerSource como um modelo de trabalho, as equipes têm ciência das práticas que se espera delas - tanto a curto prazo quanto a longo prazo.

## Known Instances

* Entelgy
* Zylk
* Bitergia

## Authors

* Daniel Izquierdo Cortazar
* Isabel Drost-Fromm
* Jorge
* Nerea

## Acknowledgements

* Alexander Andrade (special thanks for the spelling fixes)

## Alias

Modelo de Maturidade: Conheça as Melhores Práticas do InnerSource

## Status

* Structured
* Drafted in September 2019

## Histórico de Tradução

- **2022-08-19** - Tradução [Eneri Junior](https://github.com/jrcosta)
- **2022-08-19** - Tradução [Humberto Zilio](https://github.com/zilio)
