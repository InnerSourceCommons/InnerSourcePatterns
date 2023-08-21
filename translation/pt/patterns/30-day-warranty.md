## Título

Garantia de 30 dias

## Patlet

Ao aceitar contribuições de fora da sua própria equipe, há uma aversão natural em assumir a responsabilidade pelo código que não foi escrito pela própria equipe. Através da Garantia de 30 dias, a equipe contribuinte concorda em fornecer correções de bugs para a equipe receptora, o que aumentará o nível de confiança entre as duas equipes e torna mais provável que as contribuições sejam aceitas.

## Problema

Uma equipe desenvolve um componente que é utilizado em toda a organização. Essa equipe resiste em aceitar ou rejeita completamente contribuições (pedidos de recursos). Esse comportamento bloqueia o progresso e leva a interrupções frequentes devido a escalonamentos.

## Contexto

- As equipes dependem de outra equipe para aceitar suas contribuições para que um componente produzido pela equipe receptora possa ser utilizado pela equipe contribuinte.
- A equipe receptora não possui os recursos, conhecimento, permissão e/ou inclinação para escrever o componente/pedido de recurso por si própria.

## Forças

- Existe desconfiança em relação às contribuições devido a um histórico de trapaças: equipes enviaram contribuições incompletas e posteriormente solicitaram correções para torná-las prontas para uso em produção.
- Se o código é contribuído por uma equipe externa, a equipe receptora tem a suspeita natural de que a outra equipe não sabe como escrever código que atenda às expectativas da equipe receptora.
- Cada equipe olha primeiro para ajudar seus próprios líderes a alcançar seus próprios objetivos. Essa direção de lealdade pode complicar a resolução desse problema.
- Existe uma aversão natural em assumir a responsabilidade pelo código não escrito por si próprio.
- O código contribuído precisa ser amplamente reescrito antes de ser aceito na base de código.
- Existe o medo de que os contribuintes não estejam disponíveis para dar suporte na correção de bugs após o tempo da contribuição.
- As equipes temem que o código contribuído levará a custos de manutenção altos (ou mais altos), mas não sabem como controlar isso.
- As equipes receptoras podem temer que ensinar outras pessoas a contribuir com o código irá expor dívida técnica em seu sistema e que essa visibilidade possa ser prejudicial.
- As equipes receptoras podem não acreditar que receberão um código aceitável, não importa quanto mentoria seja fornecida.
- Qualquer uma das equipes pode não se sentir confiante em medir riscos ou certificar que eles são mitigados em uma contribuição; o próprio sistema é um tanto frágil (pode não haver maneiras de testar completamente e detectar todos os problemas).

## Solução

Aborde os medos tanto da equipe que recebe quanto da equipe que contribui, estabelecendo um **período de garantia de 30 dias** a partir do momento em que o código contribuído entra em produção. Durante este período de garantia, a equipe contribuinte concorda em fornecer correções de bugs à equipe receptora.

Observe que o período de garantia também pode ser de 45, 60 ou 100 dias. A duração pode variar com base nas restrições do projeto, no ciclo de vida do software do projeto, nos compromissos com os clientes e em outros fatores.

Além disso, ajuda a fornecer diretrizes claras de [contribuição](./project-setup/base-documentation.md), especificando as expectativas da equipe receptora e da equipe contribuinte.

![Garantia de 30 dias](../../assets/img/thirtydaywarranty.jpg)

## Contexto Resultante

- A equipe receptora está disposta a aceitar contribuições e é capaz de compartilhar a carga de trabalho de adaptações/correções iniciais.
- Aumenta a transparência e justiça.
- Evita que as escalações se tornem muito pesadas.

## Instâncias Conhecidas

- Isso foi testado e comprovado com sucesso na PayPal.
- O GitHub internamente usa esse padrão com um prazo de garantia modificado de 6 semanas.
- A Microsoft recomenda esse padrão como um princípio - as equipes estabelecem seu próprio tempo específico, correspondendo às suas necessidades e confiança.

## Autores

- Cedric Williams

## Reconhecimento

- Dirk-Willem van Gulik
- Padma Sudarsan
- Klaas-Jan Stol
- Georg Grütter

## Estado

* Structured
* Drafted at the 2017 Spring InnerSource Summit; reviewed 18 July 2017.

## Variações

- Assegurar a cooperação das equipes dependentes, tornando-as numa comunidade, através da nomeação de mais do que um "[Trusted Committers](./trusted-committer.md)" (TCs) por mérito próprio.

## Histórico de Tradução

- **2022-04-13** - Tradução [Eneri Junior](https://github.com/jrcosta)
- **2022-04-13** - Tradução [Humberto Zilio](https://github.com/zilio)
