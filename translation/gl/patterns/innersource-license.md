## Title

Licenza InnerSource

## Patlet

dúas entidades xurídicas que pertencen á mesma organización queren compartir o código fonte do software entre elas, mais preocúpanlles as implicacións en termos de responsabilidades legais ou de contabilidade entre as empresas.

Unha **licenza InnerSource** proporciona un marco legal reutilizable para compartir o código fonte dentro da organización. Isto abre novas opcións de colaboración e fai explícitos os dereitos e as obrigas das persoas xurídicas implicadas.

## Problema

Cando dúas ou máis entidades xurídicas dentro dunha organización queren compartir código entre elas, necesitan un acordo sobre os termos e moitas veces un contrato legal. Crear tales acordos con base no proxecto require esforzo e xera unha barreira para compartir; isto é, un equipo dunha entidade xurídica pode decidir non compartir o seu código fonte con outra entidade xurídica da organización por parecer complicado.

As barreiras para compartir poden levar a silos e duplicación de esforzos na reconstrución de solucións similares en varias partes da organización.

No momento de compartir o código fonte, non se pode prever de forma fiable cal será o valor de compartir. Se a actividade compartida require un esforzo significativo (por exemplo, negociar os termos para o uso), as persoas xurídicas teñen menos probabilidades de facelo, xa que están preocupadas polo retorno do investimento.

## Contexto

- Cando unha grande organización con moitas entidades xurídicas (filiais) crece, o valor do modelo en que estas queren compartir código aumenta.
- Por definición, as entidades xurídicas teñen os seus propios dereitos e obrigas legais.
- Varias destas entidades xurídicas están a desenvolver software e empregan os servizos doutras entidades xurídicas. De xeito que existe unha motivación para contribuír ao código fonte do/da outro/a.
- Suficiente complexidade da organización e da súa estrutura.

## Aspectos que mellorar

- **Nivel de esforzo.** Necesario para redactar acordos formais, especialmente se teñen que ter en conta perspectivas técnicas, legais e empresariais.
- **Regulacións internas.** Unha organización grande (formada por moitas entidades xurídicas) ten moitas regulacións internas. Calquera acordo novo terá que cumprir as normativas de, por exemplo, seguridade, privacidade, procesos de contratación etc. O volume das regulacións pode dificultar a valoración de se o uso compartido de software entre dúas entidades xurídicas cumpre coa normativa, especialmente cando non existe un procedemento normalizado.
- **Modelo de negocio.** Deberase discernir se algunha das entidades xurídicas da organización ten un modelo de negocio que depende do código propietario e da contabilidade dos custos de licenza dentro da organización.
- **Cultura da empresa.** Non acostuma a colaborar e compartir código de InnerSource. Isto provoca incerteza sobre os dereitos e as obrigas cando se emprega código compartido.
- A liberdade de usar o software leva á competencia e á difusión da propiedade.
- Existen contratos legais para cubrir o feito de compartir o código fonte. Estes contratos non están estandarizados, polo que crean un esforzo adicional na negociación e comprensión de cada proxecto. Os contratos existentes tamén poderían non permitir compartir o código fonte nun sentido o suficientemente aberto como para apoiar un verdadeiro enfoque InnerSource.
- Alternativamente, non hai contratos legais en vigor, pero o código fonte compártese de forma informal. Isto pode xerar incerteza nos casos en que se precisa claridade sobre a propiedade e os dereitos e obrigas.

## Solucións

Creación dunha **licenza InnerSource** personalizada ás necesidades da organización en cuestión (e das súas entidades xurídicas). Esta licenza terá que ser o suficientemente xenérica como para poderse aplicar ás relacións entre empresas máis importantes.

É necesario escribir a licenza InnerSource de xeito que permita as colaboracións reais de tipo software libre entre os límites das entidades xurídicas implicadas. Polo tanto, as catro liberdades do software libre deberían estar integradas na licenza.

A licenza está escrita como un documento legal formal e pódese utilizar como parte dos contratos entre as entidades xurídicas para rexer os acordos polos que se comparten os códigos.

## Contexto resultante

Coa licenza InnerSource temos unha ferramenta para compartir código entre entidades xurídicas dentro da nosa organización.

A licenza simplifica as conversas dentro da organización sobre o feito de compartir o código fonte, e xa está a motivar as primeiras entidades xurídicas a facelo.

**Nota**: o experimento descrito nos **Exemplos coñecidos** atópase nunha fase inicial. Polo tanto, aínda non se formou un **Contexto resultante** firme. Nun par de meses, con efectos máis claros da licenza InnerSource neste espazo problemático, poderase actualizar.

## Exemplos coñecidos

DB Systel creou a súa propia licenza InnerSource, pódese consultar en [DB Inner Source License][db-inner-source-license]. Usaron a [EUPL][eupl], xa que ofrecía un software libre como punto de partida, e despois elaboraron as limitacións e as regras adicionais necesarias no seu contexto organizativo específico.

As primeiras entidades xurídicas (empresas) dentro da DB AG están a usar a súa licenza InnerSource.

Un efecto positivo e visible é que simplifica a conversación, especialmente se algunhas das partes implicadas aínda non coñecen ben InnerSource. As licenzas son un concepto moi coñecido, polo que ter unha licenza InnerSource é un grande inicio de discusión.

Os experimentos tamén están a descubrir outros retos de colaboración que deben resolverse para chegar a un verdadeiro modelo de colaboración e contribución InnerSource.

Os retos de colaboración mencionados inclúen:

- Facer que os proxectos con licenza InnerSource sexan detectables.
- Crear comunidades para a colaboración en proxectos, como no software libre.

Paga a pena mencionar que, ata agora, o software compartido baixo esta licenza InnerSource consiste principalmente en empregar unha serie de ferramentas e infraestruturas.

## Estado

* Estruturado.
* O experimento que aparece en **Exemplos coñecidos** está en execución desde 02/2020. A experiencia inicial mostra os primeiros efectos positivos, pero necesítase máis experiencia para avaliar completamente o modelo.

## Autoría

- Cornelius Schumacher (DB Systel GmbH)
- Schlomo Schapiro (DB Systel GmbH)
- Sebastian Spier

## Referencias

- Presentación FOSSBack 2020: [Cornelius Schumacher - Blending Open Source and Corporate Values](https://youtu.be/hikC6U8X_Ec) [Cornelius Schumacher: Mesturando código aberto e valores corporativos]; vexa a partir do minuto 27:30 para máis información sobre a licenza InnerSource.
- [DB Inner Source License][db-inner-source-license].

## Glosario

- **Organización**: un paraugas para varias entidades xurídicas. (Sinónimos: grupo, empresa. Por exemplo, Lufthansa.).
- **Entidade xurídica**: unha entidade que ten os seus propios dereitos e obrigas legais. (Sinónimos: empresa, filial. Por exemplo, Lufthansa Systems GmbH, Lufthansa Industry Solutions TS GmbH etc).

[db-inner-source-license]: https://github.com/dbsystel/open-source-policies/tree/master/inner-source-license
[eupl]: https://joinup.ec.europa.eu/collection/eupl/eupl-text-eupl-12

## Tradución

- Leticia Gómez Cadahía
- María Lucía González Castro
