## Title

Processo de Liberação Padrão

## Patlet

As equipes podem hesitar em adotar um projeto InnerSource se não tiverem certeza de sua maturidade. Para abordar isso, notas de lançamento consistentes e artefatos publicados são cruciais. Essas práticas demonstram um compromisso sólido com o projeto, transmitindo confiança e garantindo aos usuários o comprometimento contínuo com software sustentável e bem gerenciado.

## Problema

Quando uma equipe está decidindo se deve usar um projeto InnerSource, uma de suas considerações é se podem contar com o projeto fornecido por um período prolongado. Mudar as ferramentas/projetos que estão usando tem um custo, portanto, eles só desejam fazer esses investimentos quando for necessário e houver benefícios tangíveis.

É prática comum em projetos de Código Aberto ter lançamentos versionados, com notas que documentam mudanças que quebram a compatibilidade e novos recursos, juntamente com uma binário publicado ou um link para uma imagem Docker. Essa prática pode não ser tão transparente ou bem documentada/visível para projetos InnerSource, módulos, etc.

Projetos InnerSource que não possuem um artefato publicado ou um processo de lançamento reduzem a confiança. As equipes não saberão quando esperar o próximo lançamento, quando mudanças que quebram a compatibilidade forem introduzidas, etc.

## Contexto

Grandes organizações produzem muitos softwares internos, grande parte dos quais poderia ser reutilizada por equipes em toda a empresa. Ferramentas operacionais, bibliotecas de software e módulos de infraestrutura como código (IaC) são exemplos comuns desse tipo de software. No entanto, a maioria das grandes organizações não publica softwares internos para serem consumidos por outras equipes na empresa. Isso pode ocorrer porque estão ocupados demais para fornecer documentação ou não percebem o valor dos projetos para os outros.

Deveria estar disponível um repositório de código-fonte interno ou público onde o código-fonte é armazenado, mas as equipes não têm um processo para tornar o software consumível por outras equipes.

À medida que uma organização cresce e mais software interno é escrito, o valor desse padrão aumenta.

## Forças

### Difícil para organizações que não têm um sistema CI/CD centralizado

Para organizações que não fornecem aos engenheiros um sistema CI/CD centralizado, automatizar o processo de compilação e lançamento pode ser desafiador. A equipe pode precisar implementar sua própria ferramenta (Jenkins, Drone, etc). Sem um sistema CI/CD, as compilações e notas de lançamento ainda podem ser produzidas, no entanto, isso pode exigir uma compilação local do software e o upload manual para a ferramenta que hospeda os artefatos de compilação.

### Carga adicional de publicar notas de lançamento

Além de compilar o código-fonte, escrever notas de lançamento pode ser tedioso sem a capacidade de gerar automaticamente uma lista de commits do Git. Isso ficaria a cargo de alguém fazer manualmente, além de escrever detalhes em um nível mais alto sobre o lançamento.

### Dificuldade aumentada sem um local para hospedar artefatos

Se uma empresa não fornece um local centralizado para armazenar artefatos de compilação (jars, módulos npm, etc.) e imagens Docker, os engenheiros podem ser deixados por conta própria para decidir onde é apropriado armazenar o software versionado. Ferramentas como o GitHub oferecem isso, no entanto, se uma empresa não estiver usando uma dessas ferramentas populares, isso pode representar uma dificuldade.

## Solução

Fornecendo **notas de lançamento** claras e um artefato publicado, você aumenta a confiança das pessoas de que está publicando um produto de qualidade no qual podem confiar.

Os seguintes são elementos-chave para alcançar isso:

- Um pipeline de CI/CD está localizado dentro do seu repositório que [automatiza o processo de lançamento](https://opensource.guide/best-practices/#use-tools-to-automate-basic-maintenance-tasks)
- Os artefatos de compilação são gerados pelo sistema de CI/CD (binário, imagem Docker, jar, etc)
- Os lançamentos são claramente rotulados e marcados com [versionamento semântico](https://github.com/semantic-release/semantic-release)
- Os lançamentos incluem notas sobre Novos Recursos, Correções de Bugs e quaisquer "Mudanças que Quebram"

Um bom exemplo de notas de lançamento de qualidade pode ser encontrado [aqui](https://github.com/jaegertracing/jaeger/releases).

## Contexto Resultante

As equipes que encontrarem o seu projeto verão notas de lançamento publicadas e ganharão confiança em sua ferramenta. Artefatos publicados também facilitam e aceleram a adoção do seu produto. Ter processos bem definidos e visíveis, como esses, também ajuda na colaboração entre equipes e com novos contribuidores. As pessoas podem ter confiança de que suas contribuições serão disponibilizadas e distribuídas em um tempo razoável, com um caminho de uso claro.

As notas de lançamento também são uma ótima oportunidade para [elogiar os participantes](praise-participants.md)! Como sabemos, [a documentação é extremamente importante](project-setup/base-documentation.md) para novas pessoas que desejam se envolver com o seu projeto. Elogiar colegas de outras equipes por suas contribuições, incluindo documentação e notas de lançamento, é uma ótima maneira de fomentar a comunidade e expandir sua base de usuários.

## Instâncias Conhecidas

- Comcast (vários projetos)
- GitHub (vários projetos)

## Autores

David Grizzanti

## Estado

Structured

## Histórico de Tradução

- **2023-10-26** - Tradução [Eneri Junior](https://github.com/jrcosta)
- **2023-10-26** - Tradução [Humberto Zilio](https://github.com/zilio)
