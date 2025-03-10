## Title

Soporte Grupal

## Patlet

¿Qué sucede si un equipo o individuo deja de mantener un proyecto InnerSource?
Mantén el proyecto activo formando un grupo de personas interesadas.

## Problema

* Un proyecto InnerSource popular queda huérfano.
* No tiene un equipo claro que lo adopte.

## Historia

Una librería de widgets de UI es utilizada por más de 50 proyectos en toda la empresa.
El financiamiento para el equipo propietario de la librería se agota y el equipo se disuelve.
Al principio, nadie lo nota, pero después de un tiempo cuando alguien pregunta "¿quién es el propietario?" no hay respuesta.
¿Qué sucederá después?
¿Los nuevos equipos evitarán usarlo?
¿El proyecto se estancará y persistirá hasta que sus usuarios eventualmente se vean forzados a migrar a otra solución?
¡Qué lástima sería si esto le sucediera a un proyecto perfectamente bueno y útil!

## Contexto

* Proyecto InnerSource popular.
* Consumido como una dependencia en tiempo de compilación (por ejemplo, módulo de código).
* Nadie lo está manteniendo activamente.
* La empresa no puede asignar un equipo para mantenerlo.

## Resistencias

* Nadie está asignado por su trabajo diario para trabajar en ello.
* Todos están ocupados.
* Alto costo para migrar fuera del proyecto.

## Soluciones

Llama a voluntarios interesados de cualquier parte de la empresa para formar un grupo de [Trusted Committer][]s para mantener el proyecto.
Es posible que necesites contactar a individuos específicos basándote en el historial de commits o de uso.
Es importante que haya suficientes personas para que la carga sobre cada uno sea razonablemente pequeña.

Al formarse, este grupo debe identificar o crear [Documentación Base Estándar][] y [Herramientas de Comunicación][].

El grupo debe hacer su mejor esfuerzo para gestionar estos aspectos del proyecto:

* **Mantenimiento**. Si el proyecto está completamente roto para el caso de uso estándar, entonces arréglalo.
Mantén el proyecto actualizado a medida que las dependencias y los frameworks que utiliza continúan evolucionando.
* **Incorporación**. Si alguien tiene una pregunta sobre cómo usar el proyecto, asegúrate de que obtenga una respuesta razonable.
* **Actualizaciones**. Si alguien quiere agregar una nueva funcionalidad al proyecto, dale el soporte de diseño y técnico necesario para que lo construya de manera que funcione para ellos y sea una buena adición al proyecto.
Revisa las pull requests entrantes de manera oportuna.

Dado que este grupo está compuesto por voluntarios, es importante comunicar que el soporte es solo "mejor esfuerzo".
En consecuencia, este modelo de soporte no es adecuado para proyectos críticos en tiempo de ejecución, como APIs en vivo.
Es más adecuado para proyectos que se consumen en tiempo de compilación, como librerías/paquetes/módulos.
No se espera que el grupo implemente ninguna funcionalidad nueva para otros.

## Contexto Resultante

* Hay algún soporte frágil para el proyecto InnerSource.
* A largo plazo, es probable que el soporte grupal se disuelva nuevamente en algún momento. Si el proyecto continúa a largo plazo, utiliza este período de soporte grupal estable para encontrar una forma de mantenerlo a largo plazo (por ejemplo, [Equipo Central][]).

## Razonamiento

La gente generalmente quiere ayudar.
Si hay un alcance personal para que alguien se una como [Trusted Committer][], generalmente hay varias personas que dirán "sí".
Sentirse parte de un grupo y recibir algo de estructura y responsabilidad generalmente motiva a las personas a hacer su mejor esfuerzo, lo cual muchas veces resulta ser suficiente.

## Instancias Conocidas

* WellSky

## Estado

Estructurado

## Autor

[Russell R. Rutledge][]

[Russell R. Rutledge]: https://github.com/rrrutledge
[Documentación Base Estándar]: ../2-structured/base-documentation.md
[Herramientas de Comunicación]: ../2-structured/communication-tooling.md
[Trusted Committer]: ../2-structured/trusted-committer.md
[Equipo Central]: ../2-structured/core-team.md

## Histórico de Traducciones

- **2025-04-03** - Traducción [Oscar Lobaton S.](https://github.com/ovas04)
