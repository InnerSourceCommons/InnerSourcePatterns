## Title

Servicio vs Biblioteca

## Resumen

Los equipos en un entorno DevOps pueden mostrarse reacios a trabajar a través de los límites del equipo en bases de código comunes debido a la ambigüedad sobre quién será responsable de responder ante la interrupción del servicio. La solución es comprender que a menudo es posible implementar el mismo servicio en entornos independientes con cadenas de escalamiento separadas en caso de interrupciones del servicio, o bien extraer gran parte del código compartido en una biblioteca y colaborar en ella.

## Problema

Cuando los equipos trabajan en un entorno DevOps, los desarrolladores son responsables de una característica de principio a fin: desde el cliente hasta el despliegue, mantenimiento y soporte. Esto plantea un desafío al trabajar a través de los límites del equipo: las cadenas de escalamiento pueden no ser las mismas para los errores que ocurren en cualquiera de los equipos. Acoplar el código fuente y el despliegue deja a los equipos con la pregunta de quién es responsable del soporte en caso de errores. Como resultado, los equipos son reacios a unir fuerzas incluso si hay una superposición significativa en los requisitos.

## Contexto

* Los equipos están trabajando en un entorno de microservicios.
* Están organizados en equipos DevOps completamente funcionales: cada equipo es responsable de sus contribuciones de principio a fin, incluyendo mantenimiento, soporte y atención al cliente.
* Un equipo tiene la tarea de proporcionar un servicio a sus clientes downstream que es bastante similar a un servicio existente construido por otro equipo.

## Fuerzas

* Las rutas de escalamiento organizacional pueden ser diferentes para cada uno de los equipos.
* Los miembros de cada equipo pueden no estar dispuestos a responder al soporte en caso de errores que no afectan a sus propios clientes downstream.
* Los niveles de severidad para los mismos tipos de errores pueden ser diferentes a través de los límites del equipo debido a diferentes definiciones de SLA por equipo/relación con el cliente.
* Los equipos pueden tener diferentes restricciones de seguridad o regulatorias que gobiernan sus despliegues.

## Soluciones

Desacoplar la responsabilidad del código fuente del despliegue: ambos equipos trabajan para identificar exactamente dónde hay superposición y sinergias.

Solo el código fuente compartido se mantiene como parte del proyecto InnerSource con responsabilidad compartida. El código compartido debe ser coherente en que incluye todo el código de prueba (incluyendo pruebas de integración si están disponibles) y tanto de la tubería de CI como sea posible para facilitar la validación de contribuciones.

Desacoplar las configuraciones de despliegue y las tuberías de CI del negocio real.
Establecer un segundo despliegue del servicio para el segundo equipo.

Tratar la base común como una biblioteca que es utilizada por ambos equipos con propiedad compartida del código.

Las configuraciones de despliegue pueden incluirse como proyectos separados en su portafolio de InnerSource para permitir a los equipos discutir/colaborar o a un nuevo equipo copiarlas.

## Contexto Resultante

Los equipos están dispuestos a colaborar, beneficiándose de compartir el trabajo de implementar la lógica de negocio.

Un servicio que originalmente fue construido específicamente para funcionar en un entorno se convierte en una solución más general basada en un requisito de negocio específico.

Ambos equipos llegan a conocer su respectiva política de escalamiento y configuración de despliegue, identificando potencialmente mejoras para su propia configuración.

La probabilidad de que se necesiten y realicen cambios en el código fuente compartido aumenta, lo que lleva a más oportunidades frecuentes para refinar, mejorar y optimizar la implementación.

Fomenta la estandarización operativa incremental en el empaquetado de lanzamientos, telemetría, puntos de salud/preparación, etc., a medida que los equipos se dan cuenta de que pueden mantener esto de manera más eficiente en el código compartido si acuerdan convenciones estándar.

## Ver también

Relacionado con este patrón está el patrón [Garantía de 30 Días](30-day-warranty.md) que toma un enfoque diferente para resolver las fuerzas descritas anteriormente.

## Instancias Conocidas

* Europace AG
* Flutter Entertainment: Una [aplicación InnerSource de Flutter](https://innersource.flutter.com/sdlc/) tiene un repositorio de "servicio" de código compartido con contribución entre equipos y una tubería de CI para construir y publicar un artefacto de lanzamiento compartido. Cada equipo adoptante tiene un repositorio de "configuración de despliegue" que define su propio despliegue. Esto es impulsado por diferentes requisitos regulatorios, prácticas de gestión de servicios e incidentes y conjuntos de habilidades de infraestructura en diferentes áreas del negocio.
* WellSky (ver [InnerSource Continuo en Producción - 5 Veces](https://www.youtube.com/watch?v=loSTj4yIG9Q&pp=ygUkY29udGludW91cyBpbm5lcnNvdXJjZSBpbiBwcm9kdWN0aW9u))

## Estado

* Estructurado

## Autor(es)

* Isabel Drost-Fromm
* Rob Tuley

## Agradecimientos

Gracias a Tobias Gesellchen por la revisión interna en Europace AG.

## Alias

Servicio vs. biblioteca: Es InnerSource, no despliegue interno

## Histórico de Traducciones

- **2025-04-03** - Tradución [Oscar Lobaton S.](https://github.com/ovas04)