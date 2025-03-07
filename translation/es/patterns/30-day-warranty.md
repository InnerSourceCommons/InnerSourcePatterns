## Title

Garantía de 30 Días

## Resumen

Al aceptar contribuciones de fuera de tu propio equipo, existe una aversión natural a asumir la responsabilidad del código no escrito por el equipo mismo. A través de la Garantía de 30 Días, el equipo contribuyente se compromete a proporcionar correcciones de errores al equipo receptor, lo que aumentará el nivel de confianza entre ambos equipos y hace más probable que se acepten las contribuciones.

## Problema

Un equipo desarrolla un componente que se utiliza en toda una organización. Este equipo se resiste a aceptar o directamente rechaza contribuciones (solicitudes de funcionalidades). Este comportamiento bloquea el progreso y conduce a interrupciones frecuentes por escalamientos.

## Contexto

- Los equipos dependen de que otro equipo acepte sus contribuciones para que un componente producido por el equipo receptor pueda ser utilizado por el equipo contribuyente.
- El equipo receptor no tiene los recursos, conocimientos, permisos y/o inclinación para escribir el componente/funcionalidad contribuido por sí mismos.

## Fuerzas

- Existe desconfianza hacia las contribuciones debido a un historial de engaños: los equipos enviaron contribuciones a medio terminar y posteriormente presentaron solicitudes de correcciones para hacerlas listas para su uso en producción.
- Si el código es contribuido desde fuera del equipo, el equipo tiene la sospecha natural de que el otro equipo no sabe cómo escribir código que cumpla con las expectativas del equipo receptor.
- Cada equipo busca primero ayudar a sus propios líderes a alcanzar sus objetivos. Esta dirección de lealtad puede complicar la resolución de este problema.
- Existe una aversión natural a asumir la responsabilidad del código no escrito por uno mismo.
- El código contribuido necesita ser reescrito considerablemente antes de ser aceptado en la base de código.
- Existe el temor de que los contribuyentes no estén disponibles para el soporte en la corrección de errores después del momento de la contribución.
- Los equipos temen que el código contribuido lleve a costos de mantenimiento más altos pero no saben cómo controlarlo.
- Los equipos receptores pueden temer que enseñar a otros cómo contribuir código expondrá deuda técnica en su sistema y que esa visibilidad pueda ser dañina.
- Los equipos receptores pueden no creer que recibirán código aceptable sin importar cuánta tutoría proporcionen.
- Cualquiera de los equipos puede no sentirse seguro al medir riesgos o certificar que están mitigados en una contribución; el sistema en sí es algo frágil (puede no haber formas de probar completamente y detectar todos los problemas).

## Solución

Aborda los temores de ambos equipos, tanto el receptor como el contribuyente, estableciendo un **período de garantía de 30 días** que comienza cuando el código contribuido entra en producción. Durante este período de garantía, el equipo contribuyente acepta proporcionar correcciones de errores al equipo receptor.

Ten en cuenta que el período de garantía podría ser de 45, 60 o 100 días también. La duración puede variar según las restricciones del proyecto, el ciclo de vida del software del proyecto, los compromisos con los clientes y otros factores.

Además, ayuda proporcionar [directrices de contribución](./base-documentation.md) claras, detallando las expectativas tanto del equipo receptor como del equipo contribuyente.

![Garantía de 30 Días](../../../assets/img/thirtydaywarranty.jpg)

## Contexto Resultante

- El equipo receptor está dispuesto a aceptar contribuciones y puede compartir la carga de trabajo de adaptaciones/correcciones iniciales.
- Mayor transparencia y equidad.
- Evita que los escalamientos se vuelvan demasiado pesados.

## Instancias Conocidas

- Esto fue probado y demostrado exitoso en PayPal.
- GitHub internamente usa este patrón con un período de garantía modificado de 6 semanas.
- Microsoft recomienda este patrón como principio - los equipos establecen su propio objetivo de tiempo específico que coincida con sus necesidades y confianza.
- SAP aprovecha este patrón en su proyecto Everest basado en InnerSource para transformar la colaboración, asegurando que las contribuciones no solo sean aceptadas sino también apoyadas, mejorando la confianza e impulsando la cultura de responsabilidad compartida e innovación. Ver: [InnerSource: Primera Contribución Explorada](https://community.sap.com/t5/open-source-blogs/innersource-first-contribution-explored/ba-p/13644916)

## Autores

- Cedric Williams

## Agradecimientos

- Dirk-Willem van Gulik
- Padma Sudarsan
- Klaas-Jan Stol
- Georg Grütter

## Estado

* Estructurado
* Redactado en la Cumbre InnerSource de Primavera 2017; revisado el 18 de julio de 2017.

## Variantes

- Asegurar la cooperación de equipos dependientes convirtiéndolos en una comunidad al tener más de un "[Trusted Committer](./trusted-committer.md)" (TC) designado meritocráticamente que asuma la responsabilidad.

## Histórico de Traducciones

- **2025-04-03** - Tradución [Oscar Lobaton S.](https://github.com/ovas04)
