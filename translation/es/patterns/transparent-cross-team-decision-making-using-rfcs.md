## Title

Toma de Decisiones Transparente Entre Equipos usando RFCs

## Patlet

Los proyectos InnerSource que buscan alcanzar altas tasas de participación y tomar las mejores decisiones posibles para todos los involucrados. Por ello necesitan encontrar formas de crear sistemas participativos a lo largo de todo el ciclo de vida del software. La publicación de documentos internos de Solicitud de Comentarios (RFC-Request for Comments) permite discusiones desde el inicio del proceso de diseño y aumenta las probabilidades de construir soluciones con un alto grado de compromiso de todas las partes involucradas.

## Problema

Para que un proyecto InnerSource prospere, necesita una cantidad sustancial de contribuyentes. Estos contribuyentes (o equipos) pueden tener diferentes requisitos para el proyecto dado. Por ejemplo, pueden querer agregar características al proyecto que no sean compatibles entre sí o que conduzcan a una sobrecarga no saludable en la arquitectura.

Descubrir tales desacuerdos o malentendidos tarde en el proceso, por ejemplo, una vez que el software ya ha sido construido, es muy costoso. Estos desacuerdos pueden llevar a frustraciones por parte de todos los involucrados e incluso pueden ser perjudiciales para la salud de la cultura de colaboración en el proyecto. Una situación común donde surge tal desacuerdo es una solicitud de cambio (pull request) que está abierta durante mucho tiempo porque el autor de la solicitud de cambio y los mantenedores del proyecto esencialmente no están de acuerdo en que el cambio propuesto deba realizarse.

Para un proyecto InnerSource, esta situación ocurre con más frecuencia cuando el proyecto es mantenido por múltiples equipos en la empresa, es decir, propiedad compartida.

## Historia

Un proyecto, o aplicación compuesta por múltiples proyectos, es mantenido por varios equipos diferentes, con cada equipo siendo dueño de diferentes áreas del proyecto o aplicación. Estos equipos hacen contribuciones InnerSource a las áreas de los demás, pero los cambios más grandes y transversales solo son impulsados por los líderes técnicos de los equipos trabajando juntos, o no ocurren en absoluto. Esto resulta en que la mayoría de los ingenieros no pueden efectuar cambios a gran escala y transversales, reduciendo la innovación y las oportunidades de colaboración.

Al implementar un proceso y una plantilla para RFCs, los equipos e individuos están empoderados para proponer cambios grandes y transversales a través de un proceso de toma de decisiones transparente, con consultas entre equipos realizadas de manera asincrónica. Esto resulta en una mayor innovación, una colaboración más estrecha y una mayor difusión del conocimiento. Esto depende del compromiso de todas las disciplinas en todos los niveles y de un entorno de seguridad psicológica para que las personas puedan proponer y debatir ideas abiertamente.

Como con cualquier proceso, este debe mejorarse continuamente. Puede ser necesario realizar cambios en la plantilla o el proceso de RFC para garantizar que sea inclusivo, colaborativo y efectivo.

## Contexto

- propiedad compartida por muchos equipos de un proyecto InnerSource
- las decisiones de diseño generales no pueden ser tomadas por un cuerpo central todo el tiempo (por ejemplo, un grupo de arquitectos) ya que no tienen suficiente tiempo ni conocimiento específico del dominio para tomar buenas decisiones en todos los casos
- varios tipos de usuarios tienen aportes sobre la dirección que está tomando un proyecto determinado. Dichos usuarios pueden ser: Desarrolladores, Propietarios de Producto, Gerentes de Producto, etc.
- las decisiones deben tomarse de manera asincrónica, al menos en parte, ya que no es factible convocar reuniones sincrónicas frecuentes con todos los participantes
- hay un deseo de documentar las decisiones tomadas, es decir, asegurarse de que se hagan por escrito, en lugar de solo verbalmente

## Resistencias

- la mayoría de las veces, las partes involucradas quieren tomar una decisión bastante rápido (por ejemplo, el tiempo de diseño inicial es bastante limitado)
- escribir las cosas (sin ya implementarlas) a menudo es una habilidad nueva para muchas de las personas involucradas

## Esquema

![Proceso de RFC utilizado en el proyecto BaseUI de Uber (ejemplo de código abierto)](../../../assets/img/rfc-process-uber-baseui.png)

## Soluciones

Elegimos un proceso similar a RFC para aumentar la transparencia de nuestro proceso de toma de decisiones entre equipos (ver también las [Solicitudes de Comentarios][requests-for-comments] de IETF).

Elementos importantes de la solución son:

- Una descripción de cuándo publicar un RFC (y cuándo no)
- Una plantilla para documentos RFC
    - Debe provocar que el autor del RFC considere su propuesta desde múltiples ángulos
    - Debe solicitar tanto una visión general accesible de alto nivel como una explicación detallada en profundidad
- Un proceso ligero y bien conocido que rodea a los RFCs, por ejemplo
    - Cómo publicar un RFC y compartirlo con todos los interesados (por ejemplo, Slack, lista de correo)
    - Cómo recopilar comentarios para el RFC
    - Cómo trabajar en los comentarios
    - Cómo llevar el RFC hacia una conclusión o decisión (por ejemplo, mantenedores nominados relevantes para aprobar)
    - Herramientas apropiadas elegidas (por ejemplo, los no ingenieros pueden no tener acceso a herramientas de control de versiones)
- Un compromiso para iterar en la plantilla y el proceso de RFC

### Ejemplos/Plantillas

- [Rust][rust] es un buen ejemplo de código abierto de plantilla y proceso de RFC, y ha sido la base para muchos otros procesos de RFC.
- [Plantilla generalizada de RFC de BBC iPlayer & Sounds](../templates/rfc.md), originalmente basada en la plantilla de [Rust][rust]
- [jakobo/rfc](https://github.com/jakobo/rfc) describe cómo configurar un proceso de RFC interno de la empresa. Contiene una [explicación detallada](https://github.com/jakobo/rfc/blob/master/text/0001-using_rfcs.md) de por qué los RFCs son importantes y una [plantilla de RFC](https://github.com/jakobo/rfc/blob/master/0000-template.md) para ayudarte a escribir tu primer RFC. Contiene información como motivación/razón, guía de implementación, una implementación de referencia, desventajas, así como alternativas al enfoque de RFC. Bonus: La descripción en sí misma es un RFC, por lo que mientras la lees ya estás obteniendo una idea de cómo funciona un RFC.

## Contexto Resultante

Implementar un proceso similar a RFC ha demostrado ser valioso, ya que hace que el proceso de toma de decisiones entre equipos sea más transparente para todos, permitiendo que todas las voces sean escuchadas.

Efectos positivos observables:

- **democratización del proceso de toma de decisiones** para decisiones que impactan a muchos equipos (también descargando a los líderes de equipo de esa carga)
- **un método de comunicación asincrónica abierta** que funciona bien entre múltiples equipos y geografías
- **empodera a individuos y equipos** para efectuar cambios a gran escala
- **registro de decisiones tomadas** para que las personas puedan consultarlas para obtener contexto
- **aumenta el impacto de los ingenieros experimentados** ya que pueden contribuir a soluciones de manera asincrónica y remota, en lugar de necesitar estar presentes en una reunión
- **alineación de terminología** por ejemplo, al explicar nuestra terminología de pruebas como "¿qué es una prueba de sistema?"
- **alineación de procesos** por ejemplo, al explicar el proceso de soporte fuera de horario
- **mayor claridad de pensamiento**, ya que escribir un RFC hace que el autor se desafíe a sí mismo más de lo que normalmente lo haría

El enfoque de RFC también tiene riesgos que queremos señalar:

- ¡No siempre funciona! por ejemplo, algunas personas pueden seguir argumentando en contra de una decisión que ya se tomó a través de un RFC. Sin embargo, tener el proceso de toma de decisiones por escrito sigue siendo beneficioso en estos escenarios, ya que puedes señalar cuándo y por qué se tomó una decisión determinada.
- Escribir propuestas de diseño (arquitectura, protocolos, etc.) por adelantado tiene un elemento de diseño en cascada que no se ajusta al enfoque de desarrollo iterativo que muchos equipos de desarrollo prefieren. Recuerda: "Software funcionando sobre documentación exhaustiva" ([Manifiesto Ágil](https://agilemanifesto.org/)). El proceso de RFC debe ser lo más ligero posible.
- Un RFC puede volverse grande y demasiado complicado. Esto a menudo se muestra en largos hilos de comentarios y discusiones que lo rodean. En esas situaciones, podemos decidir complementar el RFC con comunicación sincrónica, como un grupo de trabajo y reuniones en persona. Pero aún se ahorra tiempo, ya que las personas pueden leer el RFC antes de la reunión en lugar de tener toda la información compartida durante la reunión.

## Justificación

Los RFCs se han demostrado a sí mismos en el mundo del código abierto durante muchos años. Esto es cierto tanto para Internet en su conjunto, donde los RFCs han sido fundamentales en el desarrollo de estándares (ver [30 Años de RFCs][30-years-of-rfcs]), como para otros proyectos de código abierto que han adaptado este método para promover la toma de decisiones transparente en su comunidad (por ejemplo, [RUST][rust], [ZeroMQ][zeromq]).

En el contexto de InnerSource, otras empresas también han compartido sus experiencias con enfoques similares a RFC, como [Uber][uber] y [Europace][europace].

También para la toma de decisiones fuera de las decisiones de diseño de software puro, los modelos de toma de decisiones transparentes pueden ser efectivos, por ejemplo, al trabajar hacia una Organización Abierta. Para un ejemplo, vea el [Marco de Decisión Abierta][open-decision-framework] de Red Hat (lanzado públicamente el 7 de junio de 2016).

## Instancias Conocidas

- **BBC iPlayer & Sounds** - Como se presentó en el ISC Fall Summit 2020 [Usando RFCs Internos para Mejorar la Colaboración][bbc].
- **Europace** - Como se describe en Open Organization: [Estableciendo estándares y mejores prácticas entre equipos de manera abierta][europace].
- **Uber** - Según esta publicación de blog de Gergely Orosz: [Escalando Equipos de Ingeniería a través de RFCs: Escribiendo las Cosas][uber].
- **Google Design Docs** - Como se describe en esta publicación de blog de Malte Ubl [Documentos de Diseño en Google][google]
- **DAZN** (10/2021) - Una forma en que DAZN toma decisiones técnicas es a través de RFCs. Los RFCs se utilizan para decisiones que se aplican solo a procesos de ingeniería a nivel general. Los RFCs viven en un repositorio de GitHub, y los estándares técnicos se adoptan gradualmente dentro de sus herramientas y por sus ingenieros. Cualquier ingeniero puede presentar un RFC y todos los ingenieros pueden votar. Si los votos a favor superan a los votos en contra, el RFC se adopta. Vale la pena señalar que el proceso de votación de RFC aún no ha sido "probado bajo estrés" por decisiones controvertidas. - Como se describe en esta publicación de blog de Lou Bichard: [Construyendo un Equipo de DX: Lecciones Aprendidas][dazn]
- **SAP** (03/2024) - SAP tiene un proceso maduro asistido por herramientas para la revisión de documentos entre equipos. Se utiliza principalmente para la revisión de Registros de Decisiones de Arquitectura (ADR) que se originan en el trabajo entre equipos realizado en el modelo de colaboración de Arquitectura de Producto Cruzado. Algunas diferencias de implementación notables de este patrón: El proceso de revisión no está fácilmente disponible para decisiones en proyectos pequeños. Además, los documentos no están restringidos solo a proyectos InnerSource. - Como se describe en la publicación de blog [Arquitectura de Producto Cruzado: Abrazando la Ley de Conway para una Mejor Arquitectura de Software][sap-cpa].

## Estado

Estructurado

## Autor(es)

- Tom Sadler
- Sebastian Spier

## Aliases

- [Documentos de Diseño][google]
- Registro de Decisiones de Arquitectura (ADRs) - No necesariamente un alias directo, ya que a veces pueden usarse de manera muy diferente, por ejemplo, RFCs para buscar aportes y construir consenso, ADRs para registrar decisiones y detalles de implementación

[requests-for-comments]: https://en.wikipedia.org/wiki/Request_for_Comments
[30-years-of-rfcs]: https://www.rfc-editor.org/rfc/rfc2555.txt
[rust]: https://github.com/rust-lang/rfcs
[zeromq]: https://rfc.zeromq.org
[uber]: https://blog.pragmaticengineer.com/scaling-engineering-teams-via-writing-things-down-rfcs/
[europace]: https://github.com/open-organization/open-org-distributed-work-guide/blob/master/drostfromm-remote-first-through-openess.md#setting-cross-team-standards-and-best-practices-in-the-open
[open-decision-framework]: https://www.redhat.com/en/about/press-releases/red-hat-releases-open-decision-framework-spur-transparent-and-inclusive-leadership
[bbc]: https://www.youtube.com/watch?v=U6zlghE0HcE
[google]: https://www.industrialempathy.com/posts/design-docs-at-google/
[dazn]: https://medium.com/dazn-tech/building-a-dx-team-lessons-learned-4a66446088bc
[sap-cpa]: https://community.sap.com/t5/technology-blogs-by-sap/cross-product-architecture-embracing-conway-s-law-for-better-software/ba-p/13648600

## Histórico de Traducciones

- **2025-04-03** - Traducción [Oscar Lobaton S.](https://github.com/ovas04)
