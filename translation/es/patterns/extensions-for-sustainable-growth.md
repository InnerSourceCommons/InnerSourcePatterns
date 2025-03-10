## Title

Extensiones para un Crecimiento Sostenible

## Patlet

Un proyecto InnerSource está recibiendo demasiadas contribuciones, haciendo difícil su mantenimiento. Al ofrecer un mecanismo de extensiones fuera del proyecto principal, los mantenedores permiten escalar las capacidades del proyecto con un costo y mantenimiento mínimos.

## Problema

A medida que aumenta rápidamente el número de contribuciones a un repositorio InnerSource maduro, se añade más carga al proceso de revisión de código y mantenimiento. Esto resulta en una gran acumulación de revisiones pendientes o el rechazo prematuro de nuevas contribuciones de funcionalidades.

¿Cómo puede el equipo anfitrión permitir una publicación más rápida de nuevas funcionalidades, fomentando la innovación y experimentación, mientras mantiene el repositorio en buen estado?

## Historia

Hay un proyecto estratégico que tiene como objetivo recopilar las mejores innovaciones dentro de un espacio de dominio en una pila común, permitiendo la reutilización de una infraestructura común y proporcionando una experiencia de usuario estándar. A través de InnerSource, varios equipos de la organización que trabajan dentro del espacio de dominio tienen la oportunidad de colaborar y contribuir con sus innovaciones a el código fuente común.

Sin embargo, un gran número de contribuciones en paralelo de varios desarrolladores está dificultando el mantenimiento de el código fuente. Esto está añadiendo una gran carga a los mantenedores del proyecto que asumen la responsabilidad de los estándares de calidad del código y habilitan a la comunidad a través de varias formas de comunicación.

Los mantenedores del proyecto están en riesgo de agotamiento debido a:

- Acumulación interminable de pull requests de los contribuyentes que necesitan ser revisadas.
- Insatisfacción laboral: La mayoría del tiempo de los mantenedores se dedica al soporte de la comunidad, dejando poco espacio para la innovación.
- Percepción de falta de logro: No todas las funcionalidades contribuidas tienen una demanda de usuario adecuada y resultan en una adopción consecuente.
- Liberaciones que consumen mucho tiempo: Más funcionalidades en el código fuente resultan en pruebas de larga duración.
- Aumento de las actividades de mantenimiento: Se reportan más errores a medida que se añaden nuevas capacidades.

Se dedica mucho tiempo a madurar cada nueva contribución de funcionalidad, antes de que los usuarios potenciales tengan la oportunidad de explorar la funcionalidad para sus casos de uso. Si resulta que la nueva funcionalidad no cumple con el caso de uso, entonces todo ese tiempo dedicado a lograr los estándares de calidad del código deseados es un desperdicio.

## Contexto

- Una código fuente InnerSource estratégica está escalando rápidamente con nuevas contribuciones de funcionalidades de varios empleados.
- La proporción de revisores a contribuciones resulta en una creciente acumulación de pull requests. Esto está ralentizando la publicación de nuevas funcionalidades a la comunidad.
- La calidad de el código fuente está degradándose y la experiencia del usuario se ve afectada negativamente.
- Los mantenedores de el código fuente están sobrecargados y no pueden mantenerse al día con la afluencia de contribuciones y el aumento del soporte comunitario.
- Algunas de las funcionalidades contribuidas no están ganando adopción por parte de los usuarios, e incluso pueden volverse completamente inactivas. Sin embargo, aunque no se utilicen, estas funcionalidades siguen añadiendo a la carga de mantenimiento.
- La organización está invirtiendo fuertemente en el endurecimiento de las nuevas contribuciones de funcionalidades para mantener los estándares de calidad antes de que las ideas sean exploradas por la comunidad.
- El patrón se aplica en cualquiera de los siguientes escenarios:
   - Los mantenedores se encuentran rechazando nuevas ideas de funcionalidades para reducir el alcance del proyecto. Esto está obstaculizando la innovación en la comunidad y restringiendo la expansión.
   - Para reducir la acumulación, se están liberando nuevas funcionalidades sin una documentación, endurecimiento las pruebas y creando una mala experiencia de usuario. Esto también está inflando el tamaño de el código fuente, añadiendo un gran gráfico de dependencias y dificultando su mantenimiento.

## Resistencias

- Los mantenedores y propietarios del producto quieren permitir la expansión, fomentar la innovación y la experimentación sin ser demasiado restrictivos con las contribuciones, mientras mantienen buenos estándares de código y calidad para la experiencia del usuario.
- Se dedica una gran cantidad de tiempo a endurecer y probar exhaustivamente las funcionalidades para cumplir con los estándares del producto, pero los propietarios del producto pueden querer permitir una publicación más rápida de nuevas innovaciones para que los productos adoptantes las exploren antes de invertir tiempo en madurar las capacidades.
- Los mantenedores quieren fomentar que la comunidad comparta innovaciones que combinen las capacidades del producto con otros casos de uso sin añadir más dependencias al repositorio principal.

## Soluciones

Permitir [extensiones/plugins](https://en.wikipedia.org/wiki/Extensibility) a bases de código InnerSource de alta escala puede aliviar la carga de mantenimiento de los mantenedores del repositorio y permitir una publicación más rápida de nuevas funcionalidades para que los productos adoptantes las exploren. Esto desplaza el mantenimiento de las capacidades a los propietarios de las extensiones y permite que el repositorio principal soporte capacidades que han sido adoptadas más ampliamente y son más estratégicas.

Las extensiones proporcionan un filtro para nuevas capacidades que eventualmente pueden moverse al núcleo del proyecto. Las extensiones también actúan como un entorno de incubación y endurecimiento comunitario, permitiendo que gran parte de ese endurecimiento ocurra de manera orgánica en lugar de en un costoso proceso de revisión.

Para que el modelo de extensiones tenga éxito, hay algunas consideraciones arquitectónicas a tener en cuenta:

1. **Fácil de crear:** Para obtener la participación de la comunidad, las extensiones deben ser fáciles de crear.
   - Crear una plantilla de repositorio que las extensiones deben usar como punto de partida. Esto permite que las extensiones añadan sus nuevas funcionalidades en nuevos repositorios, separados del proyecto principal. La plantilla debe proporcionar la misma estructura modular que el repositorio principal e incluir el marco para empaquetar y publicar extensiones.
      - Asegurarse de que a medida que el repositorio principal cambie, las plantillas se mantengan bien. Los mantenedores del repositorio principal son responsables de actualizar las plantillas para asegurarse de que sean compatibles con el proyecto principal. Seguir buenas convenciones de versionado, por ejemplo, [semver](https://semver.org/), facilita esto.
      - Se recomienda además que los mantenedores del repositorio principal proporcionen orientación sobre cómo actualizar las extensiones basadas en versiones anteriores de la plantilla a medida que se liberen nuevas versiones.
   - Añadir ejemplos de extensiones desarrolladas a partir de la plantilla, que los desarrolladores del proyecto puedan referenciar para entender cómo escribir una extensión bien estructurada.
   - Relajar los requisitos para que los contribuyentes creen extensiones omitiendo revisiones para permitir una publicación más rápida o experimentación.
2. **Acoplamiento suelto:** Tener componentes modulares que contengan funcionalidad puede permitir un acoplamiento suelto, donde los cambios en las extensiones no impacten la calidad de el código fuente principal u otras extensiones.
3. **Gestión de dependencias:** Cada extensión debe tener cuidado de fijar el rango de versiones del repositorio principal contra el que se construye (de la misma manera que lo haría con cualquier otra dependencia) y debe tener cuidado en su uso de otras dependencias que oculten dependencias del repositorio principal, de modo que las versiones que elija para esas dependencias sean compatibles con las versiones seleccionadas por el repositorio principal. Cualquier conflicto con el repositorio principal se detectará en el marco de pruebas de la extensión.
4. **Estrategia de pruebas:** ¿Cómo probar las extensiones tanto individualmente como en combinación?
   - **Pruebas de extensión individualmente:** La plantilla de extensiones proporcionará un marco de pruebas que los desarrolladores de extensiones deben usar para probar la capacidad añadida. Esto puede incluir un marco para pruebas unitarias, pruebas de rendimiento en tiempo de ejecución y pruebas de calidad.
   - **Pruebas de extensión en combinación con el repositorio principal:** Los desarrolladores de extensiones tienen un método bien estructurado para probar su extensión contra versiones específicas del repositorio principal sin la participación de los mantenedores del repositorio principal.
   - **Pruebas de extensión en combinación con otras extensiones:** Proporcionar un marco de pruebas para este escenario podría resultar excesivo, especialmente si hay un gran número de extensiones que aún están siendo exploradas por los usuarios y es poco probable que se utilicen todas en combinación. Si un usuario encuentra conflictos al usar extensiones en combinación (lo cual debería ser poco probable con un acoplamiento suficientemente suelto), el usuario puede plantear un problema a los respectivos propietarios de las extensiones, quienes lo resolverán. A medida que una extensión alcanza fases posteriores del ciclo de vida y se fusiona en el repositorio principal, se probará en combinación con el resto de la librería y cualquier conflicto de dependencias deberá resolverse en ese momento.
5. **Descubribilidad y Usabilidad:**
   - Hacer que las extensiones sean fácilmente descubribles con una página de publicación que muestre las extensiones que los usuarios han creado y desean compartir para el uso del producto.
   - Permitir el registro de extensiones con el proyecto principal para que los usuarios aprovechen las extensiones junto con el proyecto original, manteniendo así la misma experiencia de usuario.
6. **Ciclo de vida de las extensiones y mantenibilidad:** Establecer el ciclo de vida de las extensiones desde la creación hasta la portación a el código fuente principal, junto con directrices claras de propiedad.
   - Los creadores de extensiones continúan manteniendo la extensión, proporcionando cualquier soporte y corrigiendo defectos. Cualquier extensión que quede sin mantenimiento será deslistada de la página de publicación.
   - Crear criterios para cuando una extensión puede ser portada al repositorio principal, como la adopción de la extensión por productos internos y la demanda de la funcionalidad.
   - El proceso de portación de la extensión al repositorio principal seguirá directrices de revisión de código más estrictas establecidas por los mantenedores de la librería.

![Arquitectura de software con extensiones](../../../assets/img/extensions-for-sustainable-growth/extensions-for-sustainable-growth.png)

Seguir estos principios asegura que:

- Los desarrolladores pueden añadir nuevas funcionalidades al ecosistema de un proyecto sin requerir que escriban grandes cantidades de código [boilerplate](https://en.wikipedia.org/wiki/Boilerplate_code).
- Las extensiones son descubribles de manera repetible por todos los usuarios del proyecto principal; el hecho de que el código no viva en el repositorio principal aún no significa que no sea valioso.
- La carga del mantenedor se reduce hasta que una extensión ha demostrado que llena un vacío importante en el proyecto principal.
- El código común del proyecto principal (por ejemplo, clases base y funciones utilitarias) puede ser un punto de partida para el nuevo desarrollo que extiende el dominio del proyecto. Esto evita la necesidad de portar el trabajo innovador después de los hechos, reduciendo así la carga general de desarrollar nuevas funcionalidades para el proyecto.
- Los desarrolladores tienen más probabilidades de contribuir y mantenerse involucrados en el mantenimiento y la construcción de comunidades para su código fuente, lo cual también es bueno para la salud del ecosistema general del proyecto.

## Contexto Resultante

- El proyecto puede escalar con la adición de nuevas funcionalidades, sin añadir carga de mantenimiento al repositorio principal del proyecto.
- Publicación más rápida de nuevas funcionalidades para que la comunidad las explore, fomentando la innovación y la experimentación.
- Reducción del costoso proceso de revisión de código y endurecimiento de funcionalidades hasta que la funcionalidad pueda demostrar su utilidad. Esto tiene beneficios de ahorro de costos para la organización.
- Un problema posterior que puede introducirse: ¿qué pasa si una extensión no puede completar todo el ciclo de vida?
   - Si una extensión no es adoptada durante un período de tiempo y no puede construir una comunidad a su alrededor para apoyar el mantenimiento, dependerá del propietario de la extensión continuar manteniéndola durante el tiempo que desee. Si una extensión queda sin mantenimiento, se despublicará.
   - Si un desarrollador de extensiones no puede seguir manteniendo su proyecto, y otros desarrolladores de la comunidad quieren continuar apoyándolo, pueden mantener la extensión en adelante.

## Instancias Conocidas

* **IBM Corporation** ha adoptado esta solución para escalar [librerías de IA InnerSource](https://youtu.be/Lz-tIc2cyRM). Usando extensiones, los desarrolladores pueden extender las libreríass de IA con más algoritmos y compartir sus innovaciones con la comunidad interna de la empresa. Las librerías principales solo contienen algoritmos estratégicos que han sido adoptados y validados, manteniéndolos más fáciles de mantener a medida que escalamos las contribuciones.

## Alias

Extensiones para Gestionar Contribuciones a Escala

## Estado

Estructurado

## Autor(es)

- Sukriti Sharma, IBM
- Alexander Brooks, IBM
- Gabe Goodhart, IBM

## Histórico de Traducciones

- **2025-04-03** - Traducción [Oscar Lobaton S.](https://github.com/ovas04)
