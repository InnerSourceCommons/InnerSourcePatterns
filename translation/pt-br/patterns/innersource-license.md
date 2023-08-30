## Title

Licença InnerSource

## Patlet

Duas entidades jurídicas que pertencem à mesma organização desejam compartilhar código-fonte de software entre si, mas estão preocupadas com as implicações em termos de responsabilidades legais ou contabilidade entre empresas.

Uma **Licença InnerSource** fornece uma estrutura legal reutilizável para o compartilhamento de código-fonte dentro da organização. Isso abre novas opções de colaboração e torna explícitos os direitos e obrigações das entidades jurídicas envolvidas.

## Problema

Quando duas ou mais entidades jurídicas dentro de uma organização desejam compartilhar código entre si, elas precisam de um acordo sobre os termos e, muitas vezes, um contrato legal. Criar tais acordos por projeto requer esforço e cria uma barreira para o compartilhamento. Por exemplo, uma equipe dentro de uma entidade jurídica pode decidir não compartilhar seu código-fonte com outra entidade jurídica na organização porque parece complicado.

Barreiras para o compartilhamento podem levar a silos e à duplicação de esforços na reconstrução de soluções semelhantes em várias partes da organização.

No momento do compartilhamento do código-fonte, não é possível prever de forma confiável qual será o valor do compartilhamento. Se a atividade de compartilhamento requer um esforço significativo (ou seja, negociar os termos de uso), as entidades jurídicas têm menos probabilidade de fazê-lo, pois estão preocupadas com o retorno sobre o investimento.

## Contexto

- Uma grande organização com muitas entidades jurídicas (subsidiárias) que desejam compartilhar código. À medida que a organização cresce, o valor desse padrão aumenta.
- Conforme definição, as entidades jurídicas possuem seus próprios direitos e obrigações legais.
- Várias dessas entidades jurídicas estão desenvolvendo software e usando serviços de outras entidades jurídicas. Elas têm motivação para contribuir com o código-fonte umas das outras.
- Uma complexidade suficiente da organização e de sua estrutura organizacional.

## Forças

- **Nível de esforço** necessário para escrever acordos formais, especialmente se eles precisam levar em conta perspectivas técnicas, legais e de negócios.
- Uma grande organização (composta por muitas entidades jurídicas) possui muitas **regulações internas**. Quaisquer novos acordos que sejam feitos devem estar em conformidade com essas regulamentações, como segurança, privacidade, processos de aquisição, etc. O volume de regulamentações pode dificultar a avaliação de se o compartilhamento de software entre duas entidades jurídicas está em conformidade com essas regulamentações, especialmente quando não há um procedimento padrão.
- Se alguma das entidades jurídicas na organização possui um **modelo de negócios** que depende de código proprietário e contabilidade de taxas de licenciamento dentro da organização.
- **Cultura empresarial** que não está acostumada à colaboração InnerSource e ao compartilhamento de código. Isso resulta em incerteza sobre os direitos e obrigações ao usar código compartilhado.
- A liberdade de uso do software leva à competição e à disseminação da propriedade.
- Existem contratos legais em vigor que cobrem o compartilhamento de código-fonte. Esses contratos não são padronizados, o que cria esforço adicional na negociação e compreensão para cada projeto. Os contratos existentes também podem não permitir o compartilhamento de código-fonte de uma maneira aberta o suficiente para suportar uma abordagem verdadeiramente InnerSource.
- Alternativamente, não existem contratos legais em vigor, mas o código-fonte é compartilhado informalmente. Isso pode criar incerteza em casos em que é necessária clareza sobre a propriedade e os direitos e obrigações.

## Solução

Criar uma **Licença InnerSource** personalizada de acordo com as necessidades da organização em questão (e suas entidades jurídicas). Esta licença precisa ser genérica o suficiente para ser aplicada às relações interempresariais mais importantes.

É importante escrever a Licença InnerSource de forma que permita verdadeiras colaborações semelhantes ao OpenSource entre as fronteiras das entidades jurídicas envolvidas. Portanto, as 4 liberdades do software livre devem ser integradas à licença.

A Licença é escrita como um documento legal formal e pode ser usada como parte de contratos entre as entidades jurídicas para governar acordos de compartilhamento de código.

## Contexto Resultante

Com a Licença InnerSource, temos uma ferramenta para compartilhar código entre entidades jurídicas dentro da nossa organização.

A licença simplifica as conversas dentro da nossa organização sobre compartilhamento de código-fonte e está motivando as primeiras entidades jurídicas a fazê-lo.

**Nota**: O experimento descrito em **Instâncias Conhecidas** ainda está em uma fase inicial. Portanto, um **contexto resultante** sólido ainda não foi formado. Em alguns meses, os efeitos da Licença InnerSource nesse espaço de problemas estarão mais claros e esta seção poderá ser atualizada.

## Instâncias Conhecidas

A DB Systel criou sua própria Licença InnerSource, consulte [DB Inner Source License][db-inner-source-license]. Eles usaram a [EUPL][eupl], já que ela oferecia um ponto de partida semelhante ao do código aberto, e depois trabalharam nas restrições e regras adicionais necessárias em seu contexto organizacional específico.

As primeiras entidades legais (empresas) dentro da DB AG estão usando sua Licença InnerSource.

Uma consequência positiva que já está aparecendo é que simplifica a conversa, especialmente se algumas das partes envolvidas ainda não conhecem bem o conceito de InnerSource. Licenças são um conceito bem conhecido, portanto ter uma licença InnerSource é um ótimo ponto de partida para discussão.

Os experimentos também estão revelando que existem outros desafios de colaboração que precisam ser resolvidos para levar a um verdadeiro modelo de contribuição e colaboração InnerSource.

Os desafios de colaboração mencionados incluem:

- tornar os projetos licenciados como InnerSource descobríveis.
- construir comunidades para colaboração em projetos, assim como em Open Source.

Vale mencionar que até agora, o software compartilhado sob essa licença InnerSource é principalmente ferramentas, infraestrutura e ferramentas mais baixas na pilha de tecnologia.

## Estado

* Structured
* O experimento listado em **Exemplos Conhecidos** está em execução desde 02/2020. A experiência inicial mostra os primeiros efeitos positivos, mas mais experiência é necessária para avaliar totalmente o padrão.

## Autores

- Cornelius Schumacher (DB Systel GmbH)
- Schlomo Schapiro (DB Systel GmbH)
- Sebastian Spier

## Referências

- FOSSBack 2020 Presentation: [Cornelius Schumacher - Blending Open Source and Corporate Values](https://youtu.be/hikC6U8X_Ec) - watch 27:30 and onwards for details about the InnerSource License
- [DB Inner Source License][db-inner-source-license]

## Glossário

- organização - um guarda-chuva para várias entidades legais. (sinônimos: grupo, empresa) (e.g., Lufthansa)
-entidade jurídica - Uma entidade que possui seus próprios direitos e obrigações legais (sinônimos: empresa, subsidiária) (por exemplo, Lufthansa Systems GmbH, Lufthansa Industry Solutions TS GmbH, ...)

[db-inner-source-license]: https://github.com/dbsystel/open-source-policies/blob/master/DB-Inner-Source-License.md
[eupl]: https://joinup.ec.europa.eu/collection/eupl/eupl-text-eupl-12

## Histórico de Tradução

- **2022-05-04** - Tradução [Eneri Junior](https://github.com/jrcosta)
- **2022-05-04** - Tradução [Humberto Zilio](https://github.com/zilio)
