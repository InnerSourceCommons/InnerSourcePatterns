## Title

Modelo de Madurez

## Patlet

Los equipos han comenzado a adoptar InnerSource. La práctica se está extendiendo a múltiples
departamentos. Sin embargo, la comprensión de lo que constituye un proyecto InnerSource
varía. La solución es proporcionar un modelo de madurez que permita a los equipos
realizar una autoevaluación y descubrir patrones y prácticas que aún
no conocen.

## Problema

Cuando la adopción de InnerSource en una empresa comienza a aumentar, la tutoría individual de cada proyecto a través de un evangelista se vuelve inviable. Además, cada vez más personas están adquiriendo al menos una comprensión básica de lo que significa trabajar en un proyecto InnerSource. Sin embargo, al observar todos los proyectos InnerSource, la profundidad de la comprensión del concepto diverge. Los equipos pueden no estar al tanto de patrones probados que les ayudarían a pasar al siguiente nivel y resolver problemas y puntos de dolor con los que están lidiando.

## Contexto

Varios equipos han comenzado a adoptar prácticas de InnerSource. El nivel exacto de comprensión de la práctica diverge entre los equipos. Los problemas exactos que enfrentan los equipos divergen según el contexto y el entorno de trabajo de cada equipo. Como resultado, la definición de cuáles son las mejores prácticas importantes en un proyecto InnerSource difiere según cada equipo.

## Fuerzas

Los equipos que comparten aprendizajes de InnerSource se encuentran con malentendidos, ya que no son conscientes de su respectivo nivel de adopción de InnerSource.

Los equipos creen que "se trata de migrar a un desarrollo de software compartido
[forge](https://en.wikipedia.org/wiki/Forge_%28software%29)" (GitLab, GitHub o Bitbucket son ejemplos bien conocidos de tales forjas).

Los equipos no están al tanto de las mejores prácticas que les ayudarían a resolver problemas que enfrentan en su trabajo diario.

## Solución

Pida a los equipos que se autoevalúen con el modelo de madurez propuesto.

### Transparencia

**Planes y Productos**

Los proyectos InnerSource se benefician de la planificación transparente en toda la organización al permitir que las partes interesadas comprendan mejor las decisiones y las influyan de una manera que pueda ser seguida por otros.

* PP-0: Los individuos y equipos no divulgan regularmente sus planes o productos a múltiples partes interesadas. No existen acciones formales en la organización.
* PP-1: Los individuos y equipos dan visibilidad a sus planes o productos a múltiples partes interesadas, antes de que comiencen. Hoja de ruta compartida.
* PP-2: Ya existen hojas de ruta compartidas con pautas claras y reglas de contribución donde las partes interesadas pueden proporcionar comentarios. Sin embargo, esto no está estandarizado en toda la organización y no todos los proyectos proporcionan esta información.
* PP-3: Las hojas de ruta se comparten por defecto y hay un proceso estándar y homogéneo para hacerlo en toda la organización a nivel de cada proyecto InnerSource. Esto contiene reglas claras para contribuir e influir en la hoja de ruta.

**Proceso de Desarrollo y Herramientas**

Los proyectos InnerSource prosperan cuando los contribuyentes se vuelven activos y participan. Como resultado, hacer que la contribución sea más fácil debe equilibrarse con objetivos puramente técnicos.

* DP-0: Cada equipo sigue su propio proceso de desarrollo y herramientas. No están definidos para compartir conocimientos y artefactos fuera del equipo de desarrollo. Equipos de desarrollo en silos.
* DP-1: Los equipos de desarrollo utilizan repositorios de código compartidos, internamente. Algunos equipos desarrollan su propio proceso de CI, utilizando herramientas de CI no corporativas o estándar. No hay un proceso de revisión de código definido, aunque algunos equipos de proyectos lo hacen internamente.
* DP-2: La organización patrocina y promueve un repositorio compartido para el conocimiento colectivo. Algunos equipos desarrollan su propio proceso de CI, utilizando herramientas de CI corporativas. Hay entornos de CI. Proceso de revisión de código definido y utilizado por algunos proyectos. A veces, la revisión de código es realizada por miembros de equipos externos.
* DP-3: La mayoría de los equipos desarrollan su propio proceso de CI, utilizando herramientas de CI corporativas. Hay entornos de CI. Proceso de revisión de código definido y utilizado. La revisión de código es realizada tanto por miembros internos como externos del equipo.

**Decisiones**

Para motivar a los colegas a contribuir con trabajo fuera de su equipo central, necesitan visibilidad en el proceso de toma de decisiones del proyecto anfitrión, pero también sentir que sus voces son escuchadas y valoradas.

* DC-0: Los responsables de la toma de decisiones a menudo retienen intencional o accidentalmente datos y recursos relacionados con las decisiones del proyecto.
* DC-1: Los materiales que forman parte de las prácticas de toma de decisiones se ponen a disposición para su revisión después de que se finalizan las decisiones.
* DC-2: Las personas sienten que conocen y están ayudando a dar forma a la mayoría (pero no a todas) de las decisiones importantes a medida que se desarrollan. Los materiales que forman parte de las prácticas de toma de decisiones están disponibles en hitos definidos del proyecto.
* DC-3: Las personas sienten que forman parte de un proceso compartido y estándar para la toma de decisiones colectivas que la organización respalda. Los materiales que forman parte de las prácticas de toma de decisiones son continuamente accesibles durante los procesos de trabajo.

**Recursos Útiles**

Para atraer a los contribuyentes, el material de apoyo útil debe ser fácilmente accesible.

* RS-0: Los individuos y equipos no contribuyen ni recurren a un repositorio compartido de conocimientos.
* RS-1: Los individuos y equipos liberan materiales del proyecto para su revisión interna, después de haber terminado su trabajo. Los individuos y equipos comparten recursos, pero en sistemas o repositorios desconectados, fragmentados o individualizados/en silos. Los individuos y equipos comparten recursos, pero no hay una comprensión comúnmente expresada o compartida de los criterios utilizados para determinar si la información es sensible o no. No "comparten pensamientos con otros".
* RS-2: Los individuos y equipos hacen que los materiales relacionados con el proyecto sean accesibles para algunos miembros de los equipos del proyecto de acuerdo con formatos y/o protocolos claramente definidos y compartidos. Los individuos y equipos retienen datos y recursos sensibles, proporcionando detalles, contexto y alcance limitados.
* RS-3: Los individuos y equipos hacen que los materiales relacionados con el proyecto sean ampliamente accesibles para la organización, y posiblemente fuera de la organización también, de acuerdo con formatos y/o protocolos claramente definidos y compartidos. Los individuos y equipos que deben retener datos y recursos sensibles son claros sobre lo que no están compartiendo, y otros entienden por qué esos materiales no están disponibles para ellos.

**Historias**

Cuando se trabaja en equipos anfitriones, los errores serán automáticamente visibles. Para mantener altos niveles de contribución, la cultura corporativa debe celebrar el fracaso como una oportunidad para el crecimiento y el aprendizaje.

* ST-0: Los individuos y equipos no comparten éxitos ni fracasos para que otros aprendan.
* ST-1: Los individuos y equipos se sienten cómodos compartiendo historias sobre éxitos, pero no sobre fracasos.
* ST-2: Los individuos y equipos se sienten cómodos compartiendo historias de éxitos y fracasos durante retrospectivas y revisiones.
* ST-3: Los individuos y equipos se sienten cómodos compartiendo historias de éxitos y fracasos, y aprenden de los fracasos según protocolos formales.

### Colaboración

**Canales para Proporcionar Retroalimentación**

Para que los silos se reduzcan, los colegas deben sentirse cómodos compartiendo retroalimentación abiertamente. Una forma fácil de apoyar eso es usar los mismos principios de comunicación a través de las jerarquías.

Idealmente, terminarás con canales de comunicación adecuados que sean conocidos por todos en la organización, con canales enfocados en diferentes objetivos (anuncios, soporte al usuario, canales de desarrollo, discusiones de infraestructura, etc.). Algunas de las mejores prácticas que establecerás a medida que tus proyectos InnerSource maduren: Adopción de pautas de netiqueta, apertura de un conjunto probado de canales estándar (que se archivan, son de acceso público, se pueden buscar) para cada nuevo proyecto InnerSource.

* CF-0: No hay procesos ni canales establecidos. Algunos miembros de la organización comparten materiales a través de canales o discusiones privadas.
* CF-1: La organización está en proceso de establecer pautas y canales internos para fomentar diversos puntos de vista sobre decisiones de la empresa/departamento, para que cualquier persona que pertenezca a la organización pueda usarlos. Algunos miembros de la organización comparten materiales de toma de decisiones de manera informal utilizando plataformas no oficiales. Los líderes mantienen al menos un canal claro y directo para que los miembros de la organización compartan opiniones constructivamente sobre algunos asuntos relevantes para su trabajo.
* CF-2: La organización ha establecido pautas y canales internos, y proporciona recursos específicos (programas de capacitación, acceso a contenido, etc.) para fomentar y solicitar diversos puntos de vista sobre decisiones de equipo o de la organización.
* CF-3: Los miembros de la organización comparten materiales de toma de decisiones en plataformas oficialmente sancionadas. Los miembros de la organización comparten materiales abiertamente a través de múltiples canales y métodos para recibir retroalimentación. Los líderes usan esos canales ellos mismos, alientan abiertamente a otros a usarlos y mantienen registros orientados al equipo o al público de la retroalimentación que han recibido y/o las acciones que han tomado para abordar esta retroalimentación.

**Liderazgo**

Los proyectos InnerSource alientan a los empleados a contribuir a proyectos fuera de la influencia directa de su gerente de línea directa. Esto necesita una cultura de confianza.

* LS-0: Cultura de mando y control, dentro de una organización altamente jerárquica.
* LS-1: Algunos líderes están abiertos a recibir retroalimentación y crear un entorno donde las personas se sientan seguras al proporcionarla.
* LS-2: La mayoría de los líderes en la organización están abiertos a recibir retroalimentación y crear un entorno donde las personas se sientan seguras al proporcionarla. Los líderes muestran pasividad al comprender si todos los miembros se sienten empoderados y habilitados para compartir. La organización alienta a los líderes a buscar activamente voces no presentes en el diálogo para su inclusión.
* LS-3: Los miembros se sienten empoderados y habilitados para compartir opiniones constructivamente sobre cualquier asunto relevante para su trabajo o sobre el cual se sientan apasionados.

**Estructura Organizacional y Funcional**

Cuando InnerSource deja el nivel puramente de codificación y entra en el nivel de comunidad y grupos de trabajo, hay potencial para reducir los silos incluso donde la colaboración directa en el código no es posible.

* OF-0: Los grupos de trabajo tienden a ser estáticos en términos de membresía y conjuntos de habilidades.
* OF-1: Existen equipos multifuncionales, pero los roles del equipo a menudo no están claros y las estructuras de gobernanza son vagas.
* OF-2: Los equipos multifuncionales son comunes y los equipos publican sus roles y objetivos públicamente.
* OF-3: Los equipos multifuncionales son comunes y hacen que sus actividades sean conocidas ampliamente en la organización; a su vez, la organización promueve las mejores prácticas para trabajar juntos.

**Contribución**

El objetivo al diseñar patrones de contribución debe ser mantener la colaboración en mente si se quiere reducir los silos.

* CB-0: Completamente en silos, sin colaboración fuera de los equipos. Solo algunas colaboraciones debido a equipos multifuncionales.
* CB-1: Los miembros de la organización y los equipos colaboran, pero con frecuencia dicen que es "demasiado difícil". Los equipos rara vez revisan los resultados de sus colaboraciones.
* CB-2: Los miembros de la organización y los equipos buscan activamente oportunidades para colaborar. Los equipos discuten, revisan y debaten rutinariamente los resultados de sus esfuerzos colaborativos, y hacen que estos resultados estén disponibles por defecto.
* CB-3: Los miembros de la organización colaboran tanto interna como externamente de maneras que benefician a todos los involucrados. Los equipos discuten, revisan y debaten rutinariamente los resultados de sus esfuerzos colaborativos, y comparten sus aprendizajes fuera de la organización, y hacen que estos resultados estén disponibles externamente por defecto.

### Comunidad

**Políticas de Compartir**

Tener una base de valores compartidos facilita el trabajo a través de los límites del equipo. Cruzar límites se vuelve más fácil si un conjunto limitado de reglas y pautas básicas se aplica en todas partes y se puede referenciar fácilmente.

* SP-0: No hay cultura de compartir ni políticas escritas.
* SP-1: Algunos miembros de la organización se unen para definir valores y principios, pero no están claramente apoyados cuando lo hacen.
* SP-2: Los miembros de la organización documentan colectivamente visiones y acuerdos compartidos como declaraciones de misión y códigos de conducta, los hacen fácilmente accesibles y los mencionan con frecuencia. Los materiales de incorporación y los rituales de orientación proporcionan un contexto adecuado para ayudar a los nuevos miembros a comprender cómo la organización se beneficiará de sus contribuciones.
* SP-3: Los valores y principios compartidos informan los procesos de toma de decisiones, resolución de conflictos y evaluación entre los miembros de la organización, que mencionan estos valores y principios de manera consistente tanto en formatos verbales como escritos.

**Sentirse parte de la Organización**

Una de las posibles razones para introducir InnerSource en las organizaciones puede ser aumentar el compromiso. Este punto rastrea cómo está cambiando el compromiso mientras se adopta InnerSource.

* PA-0: Bajo compromiso, sin colaboración y las personas no se sienten cómodas compartiendo con otros.
* PA-1: Los miembros de la organización se sienten cómodos compartiendo sus pensamientos y opiniones sin temor a represalias, pero solo en dominios familiares. Las personas entienden que las mejores ideas ganan y las responsabilidades de liderazgo recaen en personas con historias de contribución y compromiso.
* PA-2: Los miembros de la organización se sienten cómodos compartiendo sus pensamientos y opiniones sin temor a represalias. Los líderes demuestran dedicación a los valores compartidos de la organización.
* PA-3: La organización es proactiva al decir a los miembros que se beneficia de sus contribuciones; como tal, los miembros demuestran conciencia compartida y ejecución empoderada, y sienten un sentido de responsabilidad hacia la comunidad. Los líderes entienden que crecen ayudando a otros a crecer y mentorean a los miembros junior de la organización.

### Gobernanza

**Recompensas**

Para impulsar la adopción, se pueden utilizar motivadores extrínsecos para aumentar la colaboración entre equipos.

* RW-0: Sin recompensas.
* RW-1: Se alienta a los líderes a recompensar colaboraciones excepcionales, pero no hay políticas ni procesos establecidos.
* RW-2: Se establecen procesos estándar para recompensar colaboraciones fuera de los equipos de desarrolladores. Los líderes de equipo o juntas deciden quién debe ser recompensado.
* RW-3: Las recompensas no solo son propuestas por la organización, sino que las comunidades pueden definir sus recompensas más valiosas. La comunidad es responsable de decidir quién debe ser recompensado.

**Políticas de Monitoreo**

Los proyectos InnerSource necesitan un medio para la autoevaluación. Las métricas pueden ser un aspecto para facilitar esta evaluación. Además, en organizaciones con un nivel de adopción de InnerSource maduro, esperamos que la adopción del método se rastree en función de métricas claras y acordadas.

* MP-0: No existen políticas de monitoreo en ningún nivel de la organización.
* MP-1: Las métricas son importantes para ciertos equipos y comienzan a usarlas de manera aislada.
* MP-2: Existe una estrategia a nivel organizacional con respecto a las métricas que ayudan a validar políticas específicas en toda la organización. Esta política de monitoreo existe a nivel de algunos proyectos InnerSource.
* MP-3: Existen pautas claras, recomendaciones y capacitaciones sobre el uso de métricas con cierta infraestructura proporcionada por la organización. Esto funciona en ambos niveles: programa InnerSource para comprender la adopción general de InnerSource dentro de la organización y a nivel de proyectos InnerSource.

**Soporte y Mantenimiento**

No solo el desarrollo de características debe ser propiedad de los equipos InnerSource, el soporte y mantenimiento también es parte de las tareas principales de los equipos.

* SM-0: Soporte dado por el equipo de desarrollo o soporte principal. Un contrato comercial garantiza el soporte. No hay conocimiento sobre el producto fuera del equipo.
* SM-1: Existen reglas y regulaciones para formalizar el soporte en el producto, dado por un equipo de soporte dedicado.
* SM-2: El soporte para las contribuciones de InnerSource se formaliza a través de patrones de InnerSource como [30 Day Warranty](./30-day-warranty.md) o [Service vs. Library](./service-vs-library.md).
* SM-3: Existen reglas y regulaciones para formalizar el soporte en el producto, dado por una comunidad madura.

**Cultura**

Hay múltiples niveles que avanzan hacia una cultura colaborativa.

* CL-0: Silos: los equipos trabajan de manera independiente pero también en aislamiento.
* CL-1: Reactivo: los equipos trabajan de manera independiente, pero saben cómo reaccionar ante fallas en las dependencias.
* CL-2: Contributivo: los equipos ayudan activamente a mejorar sus dependencias contribuyendo.
* CL-3: Activista: los equipos buscan activamente ayuda, mentorean y reclutan nuevos contribuyentes.

**Roles de InnerSource**

InnerSource viene con roles explícitos. Si bien en las primeras etapas algunos patrones pueden ser utilizables sin adoptar esos roles, comunicarse dentro de los proyectos utilizando títulos de roles explícitos se vuelve más fácil.

* RO-0: No existen roles específicos que ayuden a la adopción de InnerSource. Solo están presentes roles comunes de desarrollo: desarrollador, analista, probador, etc.
* RO-1: Ocasionalmente, algunos individuos y equipos contribuyen a otros proyectos. Estas son contribuciones técnicas, donde se ve el rol de usuario/contribuyente. Para algunos equipos, se puede identificar al menos un miembro que sea una referencia técnica, que explique el proceso de desarrollo a otros miembros del equipo de desarrollo. Él/ella podría ser un candidato para cubrir el rol de committer de confianza.
* RO-2: Un rol de Oficial de InnerSource está a cargo de la gobernanza y el soporte, incluidos los procesos, etc. Identifica las necesidades de educación y asegura que se proporcione a la organización. Lidera y mentorea a la organización en el compromiso con los proyectos de IS. Es el primer paso formal en el camino, definiendo la visión y la hoja de ruta de IS. La organización ha definido un rol de committer de confianza, siendo un punto de contacto/referencia no solo para los miembros del equipo de desarrollo, sino también para los contribuyentes externos. Existe un proceso estándar que describe cómo contribuir a la comunidad, el rol de contribuyente está presente. El rol de Científico de Datos está a cargo de gestionar las huellas de actividad dejadas por la iniciativa de InnerSource, necesarias para medir la evolución de IS. El rol de committer de confianza evolucionará a un perfil más técnico, y un gerente de comunidad estará a cargo de "energizar" la comunidad, siendo su principal responsabilidad atraer y retener nuevos desarrolladores/usuarios (contribuyentes/miembros de la comunidad).
* RO-3: Los evangelistas se mueven dentro de la organización, para que otros conozcan el trabajo actual, lo que hace InnerSource y cómo hacerlo, y ayuden a otros a comprender y formar parte de la iniciativa. Aparecen contribuyentes no técnicos.

## Contexto Resultante

Todos los equipos están al tanto de las mejores prácticas disponibles.

Los equipos entienden su nivel de adopción de InnerSource.

Antes de adoptar InnerSource como modelo de trabajo, los equipos son conscientes de las prácticas que se esperan de ellos, tanto a corto como a largo plazo.

## Instancias Conocidas

* Entelgy
* Zylk
* Bitergia
* Airbus

## Autores

* Daniel Izquierdo Cortazar
* Isabel Drost-Fromm
* Jorge
* Nerea

## Agradecimientos

* Alexander Andrade (agradecimiento especial por las correcciones ortográficas)

## Alias

Modelo de madurez: Aprender sobre las mejores prácticas de InnerSource

## Estado

* Estructurado
* Redactado en septiembre de 2019

## Histórico de Traducciones

- **2025-04-03** - Tradución [Oscar Lobaton S.](https://github.com/ovas04)
