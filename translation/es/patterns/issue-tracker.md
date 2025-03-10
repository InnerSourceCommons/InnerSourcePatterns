## Title

Casos de uso del Gestor de Tareas (Issue Tracker)

## Patlet

El equipo anfitrión de InnerSource no logra hacer transparentes no solo los planes y el progreso sino también el contexto de los cambios. Esto se resuelve aumentando los casos de uso del gestor de tareas del proyecto para también servir como herramienta de lluvia de ideas, discusión de implementación y diseño de funcionalidades.

## Problema

Un equipo desarrolla un componente del que dependen muchos equipos en la organización. Utiliza un gestor de tareas (issue tracker) estándar para rastrear errores abiertos y solicitudes de características. Sin embargo, el contexto en cada entrada es muy limitado. Como resultado, los posibles contribuyentes no tienen forma de saber de qué cambio exactamente está hablando cada issue.

## Contexto

El tooling del proyecto InnerSource está todo configurado. Sin embargo, el gestor de tareas del proyecto se utiliza principalmente para compartir el progreso. En los proyectos de InnerSource hay muchos más casos de uso que un gestor de tareas puede utilizar para facilitar la comunicación remota y asincrónica.

## Resistencias

- A los contribuyentes les gustaría entender si la característica que les falta ya está en la hoja de ruta. Sin embargo, con mucho contexto faltante en los problemas, es imposible decidir si los problemas existentes coinciden con las necesidades del equipo contribuyente.
- Como resultado, se abren muchos problemas duplicados que el equipo anfitrión tiene que manejar.
- Debido a la falta de contexto en los issues abiertos, los contribuyentes no pueden ayudar al equipo anfitrión a implementar tareas más sencillas ya disponibles. Como resultado, mucho trabajo permanece en manos del equipo anfitrión.
- Con un fuerte enfoque en la comunicación verbal, es imposible discernir después de un par de meses o años por qué se eligió implementar una característica en particular. Como resultado, las refactorizaciones, en particular la simplificación del componente, se convierten en un ejercicio de arqueología de proyectos y de recoger ideas de personas que recuerdan lo que se discutió.

## Solución

Adopte la filosofía de 'priorizar lo escrito sobre lo verbal' no solo en el desarrollo de software, sino también durante la fase de planificación de nuevas características:

- Para errores, características planificadas e ideas de características, cree problemas separados. En cada uno de ellos, incluya tanta información como sea posible para que los posibles contribuyentes externos puedan entender el contexto. Idealmente, en particular para cambios más fáciles, incluya suficiente información para que los contribuyentes externos apoyen al equipo anfitrión implementando la funcionalidad en cuestión.
- Potencialmente use el gestor de tareas como un canal para hacer preguntas. Esto es particularmente útil si carece de otras fuentes de comunicación para abordar las preguntas de los usuarios.
- Haga uso de etiquetas y categorías para distinguir problemas utilizados para diferentes propósitos.
- Para iniciar una sesión de lluvia de ideas de manera asincrónica, abra un issue para recopilar ideas. Cuando la discusión comience a calmarse, resuma los puntos identificados en este issue en un documento separado. Publíquelo para revisión como un pull request para profundizar en los puntos individuales que aún necesitan aclaración. El documento resultante se puede utilizar para publicar los resultados en otros canales apropiados, así como para referencia futura.
- La mayoría de las implementaciones de gestor de tareas permiten plantillas de problemas. Utilice estas no solo para recopilar información comúnmente necesaria para informes de errores, sino también incluya pistas sobre qué tipo de información se necesita para los otros tipos de uso.

## Contexto Resultante

- Hacer más uso del gestor de tareas del proyecto para la comunicación permite a los contribuyentes externos seguir y tomar mejores decisiones sobre qué contribuir.
- Un enfoque en la comunicación escrita estructurada permite a los miembros del equipo anfitrión participar de forma remota.
- Comunicarse de manera consistente por escrito significa que la documentación pasiva sobre decisiones del proyecto se acumula como un subproducto en lugar de necesitar atención adicional.
- Utilizar consistentemente canales de comunicación públicos lleva a que más personas sigan una discusión. Esto significa que hay más personas conocedoras que pueden responder preguntas, opinar sobre problemas abiertos o señalar fallos en características planificadas que de otro modo se encontrarían mucho más tarde.
- Mover las discusiones a un medio de discusión público crea una oportunidad para que los posibles futuros contribuyentes observen, sigan, se sientan cómodos y aprendan las formas del proyecto mucho antes de que tengan la primera necesidad de involucrarse.

## Instancias Conocidas

* Europace AG - Ver publicación en el blog [Casos de Uso del Gestor de tareas](https://tech.europace.de/post/using-issues-for-asking-questions-and-tracking-work/)

## Autores

Isabel Drost-Fromm

## Estado

Estructurado

## Histórico de Traducciones

- **2025-04-03** - Traducción [Oscar Lobaton S.](https://github.com/ovas04)
