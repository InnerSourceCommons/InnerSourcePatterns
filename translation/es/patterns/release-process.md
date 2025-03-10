## Title

Proceso Estándar de Publicación

## Patlet

Los equipos pueden dudar en adoptar un proyecto InnerSource si no están seguros de su madurez. Para abordar esto, las notas de versión consistentes y los artefactos publicados son cruciales. Estas prácticas demuestran una fuerte dedicación al proyecto, generando confianza y asegurando a los usuarios un compromiso continuo con un software sostenible y bien gestionado.

## Problema

Cuando un equipo está decidiendo si usar un proyecto InnerSource, una de sus consideraciones es si pueden confiar en el proyecto dado por un período prolongado. Cambiar las herramientas/proyectos que están utilizando tiene un costo, por lo que solo quieren hacer esas inversiones cuando sea necesario y tenga beneficios tangibles.

Es una práctica común para los proyectos de código abierto tener versiones versionadas, con notas que documentan cambios importantes y nuevas características junto con un binario publicado o un enlace a una imagen de Docker. Esta práctica puede no ser tan transparente o bien documentada/visible para los proyectos InnerSource, módulos, etc.

Los proyectos InnerSource que no tienen un artefacto publicado o un proceso de publicación reducen la confianza. Los equipos no sabrán cuándo pueden esperar la próxima versión, cuándo se introducen cambios importantes, etc.

## Contexto

Las grandes organizaciones producen mucho software interno, gran parte del cual podría ser reutilizado por equipos en toda la empresa. Herramientas operativas, librerías de software y módulos de infraestructura como código (IaC) son ejemplos comunes de este tipo de software. Sin embargo, la mayoría de las grandes organizaciones no publican software interno para ser consumido por otros equipos en la empresa. Esto puede ocurrir porque están demasiado ocupados para proporcionar documentación o no se dan cuenta del valor del proyecto para otros.

Debe estar disponible un repositorio de código fuente interno o público donde se almacene el código fuente, pero los equipos carecen de un proceso para hacer que el software sea consumible por equipos externos.

A medida que una organización crece y se escribe más software interno, el valor de este patrón crece.

## Resistencias

### Difícil para organizaciones que no tienen un sistema CI/CD central

Para las organizaciones que no proporcionan a los ingenieros un sistema CI/CD centralizado, automatizar un proceso de construcción y publicación puede ser un desafío. El equipo puede necesitar implementar su propia herramienta (Jenkins, Drone, etc). Sin un sistema CI/CD, las construcciones y las notas de versión aún se pueden producir, sin embargo, puede requerir una construcción local del software y una carga manual a la herramienta que esté alojando los artefactos de construcción.

### Carga adicional de publicar notas de versión

Además de construir su código fuente, escribir notas de versión puede ser tedioso sin la capacidad de autogenerar una lista de commits de git. Esto quedaría para que alguien lo haga manualmente, además de escribir detalles más generales sobre una versión.

### Mayor dificultad sin una ubicación para alojar artefactos

Si una empresa no proporciona una ubicación centralizada para almacenar artefactos de construcción (jars, módulos npm, etc.) e imágenes de Docker, los ingenieros pueden quedar decidiendo por sí mismos dónde es apropiado almacenar el software versionado. Herramientas como GitHub proporcionan esto para ti, sin embargo, si una empresa no está utilizando una de estas herramientas populares, esto podría suponer una carga.

## Solución

Al proporcionar **notas de versión** claras y un artefacto publicado, aumentas la confianza de las personas en que estás publicando un producto de calidad en el que puede confiar.

Los siguientes son elementos clave para lograr esto:

- Un pipeline CI/CD se encuentra dentro de tu repositorio que [automatiza el proceso de publicación](https://opensource.guide/best-practices/#use-tools-to-automate-basic-maintenance-tasks)
- Los artefactos de construcción son generados por el sistema CI/CD (binario, imagen de Docker, jar, etc)
- Las versiones están claramente etiquetadas y marcadas con [versionado semántico](https://github.com/semantic-release/semantic-release)
- Las versiones incluyen notas sobre Nuevas Características, Corrección de Errores y cualquier "Cambio Importante"

Un buen ejemplo de notas de versión de calidad se puede encontrar [aquí](https://github.com/jaegertracing/jaeger/releases).

## Contexto Resultante

Los equipos que encuentren tu proyecto verán notas de versión publicadas y ganarán confianza en tu herramienta. Los artefactos publicados también facilitan y aceleran el uso de tu producto. Tener procesos bien definidos y visibles como estos también ayuda con la colaboración entre equipos y nuevos contribuyentes. Las personas pueden estar seguras de que sus contribuciones están disponibles y distribuidas en un tiempo razonable con una ruta de uso clara.

Las notas de versión también son una gran oportunidad para [reconocimiento a los participantes](praise-participants.md)! Como sabemos, [la documentación es extremadamente importante](base-documentation.md) para las nuevas personas que buscan involucrarse en tu proyecto. Elogiar a los compañeros externos por sus contribuciones, incluida la documentación y las notas de versión, es una excelente manera de fomentar la comunidad y hacer crecer tu base de usuarios.

## Instancias Conocidas

* Comcast (múltiples proyectos)
* GitHub (múltiples proyectos)

## Autores

David Grizzanti

## Estado

Estructurado

## Histórico de Traducciones

- **2025-04-03** - Traducción [Oscar Lobaton S.](https://github.com/ovas04)
