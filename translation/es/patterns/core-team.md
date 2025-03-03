## Title

Equipo Principal (Core Team)

## Resumen

Incluso cuando un proyecto InnerSource es ampliamente necesario, las contribuciones y el uso pueden verse obstaculizados porque el proyecto es difícil de trabajar.
Establece un equipo principal dedicado a ocuparse de los elementos fundamentales del proyecto.
Su trabajo permite que los contribuyentes agreguen y utilicen las funciones que aportan valor a sus escenarios.

## Problema

* Es difícil contribuir al proyecto.
Esto puede deberse a aspectos como:
  * No se puede ejecutar el proyecto localmente.
  * Documentación deficiente.
  * Código complejo.
  * Pruebas inadecuadas.
* Es difícil usar el proyecto.
Algunas posibles causas:
  * Documentación deficiente (de nuevo).
  * Errores frecuentes.
  * Configuración no intuitiva.

## Historia

Hay un proyecto central del que todos dependen.
¡Qué gran candidato para InnerSource!
Desafortunadamente, el proyecto ha crecido orgánicamente, con varias contribuciones y adiciones hechas de manera desordenada.
Ahora es un lío espeso de código que nadie entiende y todos temen tocar.
Claramente necesita una revisión (por ejemplo, refactorización, pruebas, documentación, etc.), pero aunque todos necesitan y quieren que ese trabajo se realice, nadie se toma el tiempo para hacerlo.

## Contexto

* Muchos equipos necesitan el proyecto.
* El proyecto tiene una deuda técnica significativa.
* Adopción e iteración lenta en el proyecto.
* No hay un propietario o mantenedor que se responsabilice del proyecto y del ecosistema de contribución en su conjunto.

## Fuerzas

* Cada equipo contribuyente está ocupado y, por lo tanto, prioriza el trabajo que resulta en un beneficio inmediato para ellos.
* A medida que el proyecto crece, la tendencia natural es que se vuelva más difícil de usar y modificar.

## Solución

Forma un equipo principal cuyo trabajo sea mantener este proyecto en un estado que permita a otros integrarse y contribuir fácilmente.
Este equipo principal realiza el trabajo necesario para un ecosistema de uso y contribución saludable.
Este trabajo crítico tiende a no ser priorizado como una contribución.
Las categorías de este tipo de trabajo incluyen comunicación, entorno local e infraestructura de DevOps.

Aquí hay algunos ejemplos específicos:

* Errores de producción
* Documentación
* Tutoriales y ejemplos de incorporación
* Pruebas automatizadas
* CI/CD
* Entorno local
* Modularización
* Versionado
* Monitoreo
* Pioneros en nuevas clases/categorías de funciones

Cada uno de estos elementos es muy importante para un ecosistema de producto saludable, pero es poco probable que se prioricen como una contribución.

El equipo principal puede estar compuesto por un pequeño número de personas a tiempo completo o parcial.
La elección depende de la cantidad de trabajo necesario, la disponibilidad de recursos y la cultura de la organización.
La consideración más importante es formar el equipo de una manera que permita a la organización empoderarlos y responsabilizarlos de la misma manera que a cualquier otro equipo.

Debido a su papel central, los miembros del equipo principal casi siempre deben desempeñar el papel de **Trusted Committers** también (para más información sobre ese concepto, ver [Ruta de Aprendizaje][tc-learning-path] y [Patrón][tc-pattern]).
Mientras que el rol de Trusted Committer se centra principalmente en facilitar la contribución y el uso del proyecto por parte de otros, un miembro del equipo principal contribuye regularmente al proyecto también.
El equipo principal no tiene su propia agenda comercial que determine sus contribuciones.
Deciden en qué trabajar en función de lo que más ayudará a otros a usar y contribuir al proyecto.

Una buena manera de recordar continuamente al equipo principal este objetivo es hacer que informen regularmente sobre:

* número de equipos activos que usan el proyecto
* número de contribuciones fuera del equipo al proyecto.

El enfoque continuo en estas métricas naturalmente llevará al equipo principal a priorizar generalmente el trabajo correcto para crear un ecosistema InnerSource próspero alrededor del proyecto.

![Responsabilidades del Equipo Principal y Contribuyentes InnerSource](../../../assets/img/core-team.png)

## Contexto Resultante

* Es fácil usar y contribuir al proyecto.
* Muchos equipos usan y contribuyen al proyecto.
* El éxito del equipo principal se define en términos de la interacción y respuesta de otros a su proyecto.

## Racional

Separar un equipo principal y asignarles esta tarea ayuda a llenar los vacíos que un proyecto exitoso necesita, pero que son dejados por los contribuyentes que solo persiguen su propia agenda.
El equipo principal llena esos vacíos y engrasa las ruedas para que el ecosistema de contribución se mantenga saludable.

## Instancias Conocidas

* **Nike** implementó este patrón para gestionar el esfuerzo InnerSource en torno a sus pipelines reutilizables de CI/CD.
* **WellSky** estableció un Equipo Principal para un proyecto clave. Esto les permitió escalar significativamente sus contribuciones InnerSource a ese proyecto - ver [Wide-Scaled InnerSource with a Core Team](https://www.youtube.com/watch?v=kgxexjYdhIc).
* **BBVA AI Factory** implementó este patrón como parte de una estrategia InnerSource para fomentar la contribución y reutilización del código de ciencia de datos - ver [Mercury: Scaling Data Science reusability at BBVA](https://www.bbvaaifactory.com/mercury-acelerando-la-reutilizacion-en-ciencia-de-datos-dentro-de-bbva/).

## Estado

Estructurado

## Autor

[Russell R. Rutledge](https://github.com/rrrutledge)

[tc-learning-path]: https://innersourcecommons.org/learn/learning-path/trusted-committer/
[tc-pattern]: ../2-structured/trusted-committer.md

## Histórico de Traducciones

- **2025-04-03** - Tradución [Oscar Lobaton S.](https://github.com/ovas04)