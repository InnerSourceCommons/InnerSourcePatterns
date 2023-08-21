## Título

Serviço vs. Biblioteca

## Patlet

Equipes em um ambiente DevOps podem relutar em trabalhar além dos limites de suas equipes em bases de código comuns, devido à ambiguidade sobre quem será responsável por responder a interrupções de serviço. A solução é perceber que muitas vezes é possível implantar o mesmo serviço em ambientes independentes com cadeias de escalonamento separadas no caso de interrupções de serviço, ou separar grande parte do código compartilhado em uma biblioteca única e colaborar nela.

## Problema

Quando as equipes estão trabalhando em um ambiente DevOps, os desenvolvedores são responsáveis por um recurso do início ao fim: desde o cliente até a implantação, manutenção e suporte. Isso representa um desafio ao trabalhar além dos limites da equipe: as cadeias de escalonamento podem não ser as mesmas para erros que ocorrem em qualquer equipe. O acoplamento entre código-fonte e implantação deixa as equipes com a dúvida de quem é responsável pelo suporte de plantão em caso de erros. Como resultado, as equipes relutam em unir forças, mesmo que haja uma sobreposição significativa nos requisitos.

## Contexto

* As equipes estão trabalhando em um ambiente de micro-serviços.
* Elas estão organizadas em equipes de DevOps totalmente funcionais: Cada equipe é responsável por suas contribuições do início ao fim, incluindo manutenção, suporte de plantão e suporte ao cliente.
* Uma equipe tem a tarefa de fornecer um serviço aos seus clientes downstream que é bastante semelhante a um serviço existente construído por outra equipe.

## Forças

* Os caminhos de escalonamento organizacional podem ser diferentes para cada uma das equipes.
* Os membros de cada equipe podem estar relutantes em fornecer suporte de plantão para erros que não afetam seus próprios clientes downstream.
* Os níveis de gravidade para os mesmos tipos de erros podem ser diferentes entre as fronteiras das equipes devido a diferentes definições de SLA por equipe/relacionamento com o cliente.
* As equipes podem ter diferentes restrições de segurança ou regulamentações que regem suas implantações.

## Solução

Separar a responsabilidade pelo código-fonte da implantação: Ambas as equipes trabalham para
identificar exatamente onde existem sobreposições e sinergias.

Apenas o código-fonte partilhado é mantido como parte do projeto InnerSource com responsabilidade partilhada. O código-fonte partilhado deve ser coerente, na medida em que inclui todo o código de teste (incluindo testes de integração, se disponíveis) e o máximo possível do pipeline de CI para facilitar a validação da contribuição.

Separe os pipelines de configuração e implantação da lógica comercial real.
Estabelecer uma segunda implantação do serviço para a segunda equipe.

Tratar a base comum como uma biblioteca que é utilizada por ambas as equipes com código partilhado
propriedade partilhada.

As configurações de implementação podem ser incluídas como projectos separados no seu portfólio InnerSource para permitir que as equipes discutam/colabore ou que uma nova equipe as copie.

## Contexto Resultante

As equipes estão dispostas a colaborar, se beneficiando ao compartilhar o trabalho de implementação da lógica de negócios.

Um serviço que originalmente foi construído especificamente para funcionar em um ambiente é convertido em uma solução mais geral com base em um requisito de negócio específico.

Ambas as equipes conhecem sua respectiva política de escalonamento e configuração de implantação, identificando potencialmente melhorias para sua própria configuração.

A probabilidade de que mudanças sejam necessárias e feitas no código-fonte compartilhado aumenta, levando a oportunidades mais frequentes de refinar, melhorar e otimizar a implementação.

Estimula a padronização operacional incremental no empacotamento de lançamento, telemetria, endpoints de saúde/preparação e assim por diante, à medida que as equipes percebem que podem manter isso de maneira mais eficiente no código compartilhado se concordarem com convenções padrão.

## Veja também

Relacionado a este padrão está o [Garantia de 30 dias](30-day-warranty.md), que adota uma abordagem diferente para lidar com as forças descritas acima.

## Instâncias Conhecidas

* Europace AG
* Flutter Entertainment: [Flutter InnerSource application](https://innersource.flutter.com/sdlc/) possui um repositório de código compartilhado "service" com contribuições entre equipes e uma pipeline de CI para construir e publicar um artefato de release compartilhado. Cada equipe adotante possui um repositório de "configuração de implantação" que define sua própria implantação. Isso é conduzido por diferentes requisitos regulatórios, práticas de gerenciamento de serviço e incidentes e conjuntos de habilidades de infraestrutura em diferentes áreas do negócio.

## Estado

* Structured

## Autores

* Isabel Drost-Fromm
* Rob Tuley

## Reconhecimento

Obrigado, Tobias Gesellchen, pela revisão interna na Europace AG.

## Alias

Serviço vs. Biblioteca: É Inner Source, Não implantação interna

## Histórico de Tradução

- **2022-08-20** - Tradução [Eneri Junior](https://github.com/jrcosta)
- **2022-08-20** - Tradução [Humberto Zilio](https://github.com/zilio)
