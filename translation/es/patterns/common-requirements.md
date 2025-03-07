## Title

Requerimientos Comunes

## Resumen

El código común en un repositorio compartido no satisface las necesidades de todos los equipos de proyecto que desean utilizarlo; esto se resuelve mediante la alineación de requerimientos y la refactorización.

## Problema

El código común en el repositorio compartido no satisface las necesidades de todos los proyectos que desean utilizarlo.

## Contexto

* Muchos proyectos intentan utilizar código común. Existe un repositorio compartido al que todos los proyectos tienen acceso.
* Alguien (o algún proyecto) escribió el código inicialmente y lo contribuyó al repositorio.
* El código común representa un pequeño porcentaje del entregable total de cualquiera de los proyectos.
* Cada proyecto tiene su propio calendario de entrega, conjunto de entregables y clientes.
* Este patrón aplica en cualquiera de estas situaciones:
    * existe un **Strong Code Owner**, es decir, todos los cambios al repositorio compartido deben ser aprobados por el propietario del repositorio
    * existe un **Weak Code Owner**, es decir, nadie realmente es dueño del código
    * no existe un **Benevolent Sponsor**, es decir, ninguna organización o ejecutivo proporciona recursos para organizar el código común de manera InnerSource

## Fuerzas

El proyecto que hizo disponible el código tiene un conjunto de necesidades. Sus necesidades son similares a lo que algunas organizaciones receptoras desean, pero no exactamente iguales.
Los requerimientos del código deben derivarse de necesidades reales del cliente.

Las necesidades de diferentes clientes son generalmente bastante similares; sin embargo, pueden expresarse de manera diferente o tener diferentes prioridades entre clientes. Un ejemplo podría ser cómo algunos clientes desean que algún resultado se presente de una manera mientras que otros lo quieren en orden inverso. Es simple hacer la traducción entre ellos, pero requiere codificación adicional para uno de los casos y como resultado el módulo que calcula el resultado no puede ser reutilizado por ambos clientes.

Muchos clientes desean que el proveedor les ayude a identificar sus necesidades. La empresa tiene muchos "Ingenieros de Sistemas" escribiendo requerimientos para los productos. Estos requerimientos deben ser una destilación de las necesidades del cliente para guiar el desarrollo del producto.
Reutilizar código es un objetivo importante para ahorrar tiempo y dinero a la empresa.

## Solución

Hay dos aspectos para resolver este problema que deben realizarse en paralelo:

1. Alinear los requerimientos de los proyectos para que el código que cumple los requerimientos de un proyecto también satisfaga las necesidades de los otros proyectos.
2. Refactorizar el código en piezas más pequeñas para las cuales los múltiples proyectos que lo utilizan puedan acordar requerimientos.

Adicionalmente, aprovechar que los clientes esperan que el proveedor ayude a elucidar los requerimientos. Lograr la alineación de requerimientos durante las negociaciones con el cliente e influir en los requerimientos del cliente en lugar de cambiar el componente.

En el ejemplo presentado anteriormente, el proveedor ayuda a ambos clientes a darse cuenta de que quieren lo mismo, y ahorrará esfuerzo (y dinero) a todos si acuerdan aceptar el resultado en el mismo formato.

![Common Requirements](../../../assets/img/CommonReqtsv2.jpg)

## Contexto Resultante

Esto podría requerir negociar cambios en los requerimientos con el cliente. Los cambios también podrían requerir la participación de los equipos de ventas y gestores de producto para lograr la alineación en los requerimientos. El cliente podría necesitar incentivos, como descuentos, para aceptar los cambios.

Un desafío relacionado (y posible nuevo patrón) es un ejercicio circular de escritura de historias reportado en una empresa que emplea InnerSource. En resumen:

* Los desarrolladores escriben una historia para resolver un problema de una manera.
* Los gestores del programa reescriben la historia para expresar mejor sus necesidades, manteniendo la esencia igual. Sin embargo, cuando vuelve a los desarrolladores, no la reconocen como lo que querían hacer en primer lugar y por lo tanto se resisten a implementarla.
* La solución a este patrón es tener más asientos alrededor de la mesa de planificación para que las modificaciones de la historia se entiendan en todo el proyecto, no solo en los campos de desarrolladores o gestores de programa.

## Instancias Conocidas

* Gran proveedor de telecomunicaciones

## Estado

* Estructurado

## Autor

Robert Hanmer

## Reconocimientos

* Manrique Lopez
* Daniel Izquierdo
* Tim Yao
* Sebastian Spier

## Histórico de Traducciones

- **2025-04-03** - Tradución [Oscar Lobaton S.](https://github.com/ovas04)
