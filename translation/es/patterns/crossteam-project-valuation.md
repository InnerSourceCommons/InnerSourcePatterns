## Title

Valoración de Proyectos Cross-Team

## Patlet

Es difícil demostrar el valor de los proyectos InnerSource cross-team que no proporcionan un impacto directo en los ingresos de la empresa.
Aquí hay una forma basada en datos para representar tu proyecto que articula y amplifica su valor.

## Contexto

* Eres responsable de un equipo cross-team que sirve como plataforma para otros en la empresa.
* El proyecto cross-team no genera ningún valor directo para los ingresos de la empresa.

## Problema

Los proyectos cross-team pueden tener potencialmente un gran impacto en la empresa, pero son difíciles de representar de manera basada en datos.
Como resultado, es fácil y común perseguir proyectos que no proporcionan valor real o subfinanciar lo que de otro modo produciría gran valor.

## Resistencias

* Los proyectos necesitan mostrar valor (objetivo o subjetivo) al liderazgo de la empresa para ser financiados.
* El valor del proyecto cross-team está disperso a través de múltiples unidades de negocio finales.
* Debido a esta dispersión, el valor del proyecto cross-team es difícil de medir directamente.

## Solución

Establece un patrón y modelo sobre cómo valorar proyectos cross-team.
Estos modelos nos proporcionan las herramientas necesaria para enfocar y amplificar la colaboración de alto valor para la empresa.

El núcleo de todo el valor del proyecto cross-team es la idea de que podemos hacer más juntos que separados.
Asignar valor a un esfuerzo cross-team es un ejercicio de cuantificar _cuánto más_ se está logrando juntos.
El delta exacto en productividad variará según el dominio y el proyecto.
Hay un proceso común, mediante el cual puedes crear un modelo para calcularlo.

### Explicación

Reúne un pequeño equipo de expertos en tu dominio.
Usando ese equipo de expertos, estima 4 cosas sobre cada consumidor de la salida de tu proyecto:

* ¿Cuánto tiempo les lleva consumir el output de tu proyecto?
* ¿Cuánto tiempo les llevaría de otra manera crear por sí mismos el valor de la salida de tu proyecto?
* ¿Qué porcentaje de la salida de tu proyecto es realmente útil para ellos?
* ¿Cuánto tiempo de manera continua (idealmente por uso) gastarían de otra manera manteniendo su solución propia?

Al hacer estas estimaciones, es imposible saber con alta precisión _exactamente_ cuánto tiempo toman las actividades. Ese no es tu objetivo.
En lugar de exactitud, debes esforzarte por _**establecer un límite de peor caso**_ en estas estimaciones.
La idea es que el grupo de expertos pueda decirse entre sí, "No sabemos exactamente cuánto tiempo tomaría, pero todos podemos estar de acuerdo en que es _al menos_ esto."
Específicamente, debes estimar un tiempo razonable _máximo_ para consumir la salida de tu proyecto y tiempos razonables _mínimos_ para que los consumidores creen, usen y mantengan sus propias soluciones.

Una nota sobre el costo de "crear tu propia solución" (home-roll). El costo de crear una solución propia NO es necesariamente (de hecho, es muy poco probable) el mismo que el costo de hacer una solución compartida.
A menudo, para la misma funcionalidad, la modularidad y calidad involucradas en la construcción de una solución compartida entre equipos hace que sea una inversión notablemente mayor que una implementación rápida y codificada utilizada solo una vez.

### Fórmula

Una vez que tengas tus límites de peor caso, puedes valorar la salida de tu proyecto cross-team durante un período de tiempo dado mediante la fórmula simple:

```
[Tiempo Ahorrado] - [Tiempo Invertido]

([Cantidad de Nuevas Incorporaciones] * [Costo de Crear Propia Solución] * [Porcentaje de Funcionalidad Útil] + [Cantidad de Usos] * [Costo de Mantenimiento por Uso]) - ([Cantidad de Nuevas Incorporaciones] * [Costo de Incorporación])

[Cantidad de Nuevas Incorporaciones] * ([Costo de Crear Propia Solución] * [Porcentaje de Funcionalidad Útil] - [Costo de Incorporación]) + [Cantidad de Usos] * [Costo de Mantenimiento por Uso]
```

### Comentario

A pesar de las apariencias de rigor, este proceso no produce una forma exacta de medir la salida del proyecto cross-team.
En la práctica, sin embargo, proporciona un marco mediante el cual puedes tomar una decisión fundamentada sobre cómo financiar este trabajo.
Después de tener datos buenos y razonables según la explicación anterior, debes financiar horas de desarrollo dedicadas a ejecutar el proyecto hasta _**al menos**_ uno de los siguientes tres niveles:

1. Las horas brutas ahorradas por la fórmula anterior. Dado que todos estamos seguros de que la fórmula producirá un número que está por debajo del verdadero número de horas ahorradas, puedes tener la confianza de que financiar el proyecto hasta ese punto es una victoria segura para ti.
1. La cantidad de tiempo que lleva apoyar las contribuciones internas a los proyectos cross-team. Dado que el contribuyente probablemente habría hecho el trabajo de todos modos de manera única, vale la pena financiar el tiempo que lleva facilitar que su trabajo se incluya en una ubicación compartida.
1. Lo que te parezca bien. Un efecto secundario intencional de tener una fórmula de valoración es que naturalmente fuerza la medición de los puntos clave de uso que proporcionan valor a los consumidores.

Esas mediciones pueden ser entendidas y consumidas en su forma bruta para proporcionarte una idea intuitiva de cuán valioso es el proyecto.

Algunos pueden estar preocupados por la falta de precisión en este enfoque de valoración. Está bien que este proceso no proporcione una medición exacta. Solo necesita ser lo suficientemente preciso para cumplir 2 propósitos:

1. Proporcionar un medio para representar el valor de lo que está sucediendo a aquellos que están organizando y financiando esfuerzos cross-team.
2. Ayudar a los involucrados a saber qué áreas del esfuerzo cross-team son de mayor prioridad para perseguir según su valor.

En la práctica, siempre que estas valoraciones estén dentro de un orden de magnitud de la realidad y entre sí, son lo suficientemente precisas para cumplir estos propósitos.
Proporcionarán una mejora notable en los resultados sobre el terreno en comparación con las valoraciones ad hoc (y los efectos resultantes) descritos en la sección **Problem** al comienzo de este documento.

## Contexto Resultante

* Medios basados en datos para discutir el valor y financiamiento del proyecto cross-team con el liderazgo.
* Métricas clave alrededor del proyecto cross-team instrumentadas en forma bruta.
* Definir cómo el proyecto cross-team proporciona valor tiende a llevarlo a producir realmente mayor valor para la empresa.
* Proyecto generalmente exitoso y "buzz" a su alrededor.

## Instancias Conocidas

* Nike

## Estado

* Estructurado
* Probado en múltiples dominios.

## Autores

* Russ Rutledge

## Reconocimientos

* Jeremiah Wright por enseñarme a pensar en los proyectos cross-team como un negocio interno que opera en la moneda del tiempo del desarrollador.

## Histórico de Traducciones

- **2025-04-03** - Traducción [Oscar Lobaton S.](https://github.com/ovas04)
