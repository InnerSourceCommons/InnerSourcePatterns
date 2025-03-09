## Title

Portal InnerSource

## Patlet

Los contribuidores potenciales no pueden descubrir fácilmente proyectos InnerSource que les interesen. Al crear un sitio web en la intranet que indexe toda la información disponible de proyectos InnerSource, permitirás que los contribuidores aprendan sobre proyectos que podrían interesarles y que los propietarios de proyectos InnerSource atraigan una audiencia externa.

## Problema

Los equipos de proyectos InnerSource tienen dificultades para atraer contribuciones externas.

Los proyectos InnerSource en tu organización están aumentando pero los contribuidores potenciales no tienen una forma fácil de descubrirlos.

## Historia

Estás intentando establecer una práctica de InnerSource dentro de tu organización. Eres consciente de algunos proyectos que se están ejecutando utilizando un modelo de InnerSource, pero su existencia solo se comunica de boca en boca, por correo electrónico o en conversaciones informales con otros empleados. Como resultado, los propietarios de proyectos InnerSource tienen dificultades para atraer contribuidores.

No existe un recurso único y compartido para que los empleados de toda la organización accedan y descubran fácilmente todos los proyectos InnerSource en curso. Esto está limitando severamente el potencial de crecimiento de cada proyecto InnerSource.

¿Qué se puede hacer para ayudar a todos los proyectos InnerSource a aumentar su visibilidad a la mayor audiencia posible y atraer contribuidores en toda la organización?

## Contexto

* Tu organización está interesada en adoptar un estilo de trabajo InnerSource.
* Los propietarios de proyectos InnerSource buscan una manera de atraer audiencias a sus proyectos. Sin embargo, están limitados por los canales de comunicación disponibles a través de los cuales podrían publicitarse a los contribuidores potenciales.
* Los proyectos InnerSource en tu organización están aumentando.
* Agravando este problema está el hecho de que la aplicación de gestión de control de código compartido en uso tiene capacidades de búsqueda tan limitadas que incluso los desarrolladores que buscan proyectos InnerSource encuentran frustrante localizarlos.

### Prerrequisitos

* Los gerentes han dado aceptación tácita de que sus empleados participen en proyectos InnerSource.
* Se está utilizando un sistema de gestión de control de código compartido que proporciona acceso programático al contenido de los repositorios que aloja.
* Hay un departamento dentro de tu organización con la responsabilidad de promover la colaboración InnerSource.

## Resistencias

* No se está realizando todo el potencial para que equipos de ingeniería separados colaboren en desafíos compartidos.
* Es difícil para los individuos descubrir qué proyectos InnerSource existen.
* Es difícil para los propietarios de proyectos InnerSource atraer una audiencia de contribuidores externos.

## Soluciones

Crea un sitio web de intranet del Portal InnerSource donde los propietarios de proyectos InnerSource puedan publicitar fácilmente la disponibilidad de sus proyectos.

Las propiedades clave del portal son:

* Los visitantes del Portal InnerSource deberían poder ver todos los proyectos disponibles, así como buscar proyectos específicos basados en varios criterios, como el nombre del proyecto, tecnologías en uso, nombres de contribuidores, unidad de negocio patrocinadora, etc.
* La información mostrada a través del Portal InnerSource debe estar bajo el control total de los propietarios de proyectos InnerSource en todo momento. Preferiblemente, obteniendo esta información directamente de un archivo de datos específico o metadatos almacenados en el propio repositorio del proyecto.
* Los propietarios de proyectos deben incluir toda la información relevante sobre sus proyectos dentro de esos archivos de datos, incluyendo el nombre del proyecto, nombres de contribuidores de confianza, una breve descripción y enlaces al repositorio de código o cualquier documentación de apoyo.
* (opcional) Mientras que la mayoría de las organizaciones optarán por hacer que su portal esté disponible solo en su intranet, algunas organizaciones han optado por hacer que su portal esté disponible en Internet pública. Esto puede ser interesante para organizaciones que desean mostrar información adicional sobre su enfoque InnerSource en su portal, por ejemplo, para fines de marca y reclutamiento.

Al lanzar el portal, se debe considerar una campaña de comunicación que promueva la adición de archivos de datos InnerSource o metadatos a los repositorios de código, para aumentar el número de proyectos mostrados en el portal.

### Implementaciones

#### SAP Project Portal

Una [implementación de referencia](https://github.com/SAP/project-portal-for-innersource) de un portal InnerSource está disponible en GitHub y abierta a contribuciones. Enumera todos los proyectos InnerSource de una organización de manera interactiva y fácil de usar. Los proyectos pueden auto-registrarse utilizando un tema dedicado de GitHub y proporcionar metadatos adicionales.

![Ejemplo de un Portal InnerSource](../../../assets/img/portal-overview.png "Ejemplo de un Portal InnerSource")

#### Wiki

Como una forma simple de comenzar, puedes reservar una página en un wiki interno para listar los proyectos disponibles.
Una forma fácil de mostrar esta información es en una tabla con columnas que den un poco de información adicional sobre los proyectos.
Intenta tener solo las columnas necesarias para que los espectadores puedan determinar si quieren aprender más sobre el proyecto, pero no más.
Demasiada información hará que la página sea abrumadora y difícil de usar.
Los individuos y equipos pueden auto-agregar sus proyectos a la página.

Aquí hay un conjunto de columnas de muestra:

* **Nombre**. Nombre del proyecto (opcionalmente vinculado a su página principal).
* **Breve Descripción**. Explicando el propósito del proyecto (¿qué problema resuelve?).
* **Requisitos Tecnológicos**. Debes usar estas tecnologías para incorporarte al proyecto.
* **Comenzando**. Enlace a instrucciones sobre cómo empezar a usar el proyecto.
* **Chat**. Enlace a un canal de chat para hacer preguntas sobre el proyecto.
* **Equipo Anfitrión**. Ver si un equipo está detrás del proyecto puede ayudar a otros a tener la confianza para usarlo.
* **En Producción Desde**. ¿Cuánto tiempo ha estado el proyecto en un entorno de producción? Ver esta información es un proxy aproximado de su madurez.
* **Contribución**. Enlace a instrucciones sobre cómo contribuir al proyecto.

Esta solución no permite una visualización elegante, es solo una tabla wiki.
Si es importante para ti tener una interfaz de usuario llamativa, entonces esta idea no funcionará para ti.
Además, si terminas con muchos proyectos (por ejemplo, cerca de 100),
esta solución no escalará para permitir la búsqueda y filtrado o la actualización automática de las entradas de proyectos que probablemente necesitarás.
Es una buena solución para un portal con unas pocas docenas de proyectos, sin embargo.

## Contexto Resultante

* El Portal InnerSource ha permitido a los propietarios de proyectos InnerSource publicitar sus proyectos a una audiencia a nivel de toda la organización. Debido a esta mayor visibilidad, están atrayendo comunidades de contribuidores mucho más grandes que nunca antes.
* Para aquellos que buscan involucrarse en proyectos InnerSource, el Portal InnerSource les ha permitido descubrir exactamente el tipo de oportunidades que les interesan al buscar en todos los proyectos InnerSource disponibles simultáneamente según sus criterios específicos.
* Satisfacer las necesidades de ambas audiencias ha ayudado a establecer InnerSource como una opción viable y atractiva para todas las áreas de la organización para lograr cosas juntos que no podrían haber logrado por separado.

## Instancias Conocidas

* **Una gran organización de servicios financieros** ha utilizado la creación de un Portal InnerSource para proporcionar un mecanismo de publicidad y descubrimiento de proyectos InnerSource en existencia en diferentes unidades de negocio.
* **SAP** promueve proyectos InnerSource en el Portal InnerSource: los proyectos pueden auto-registrarse utilizando temas de GitHub. El [Puntaje de Actividad del Repositorio](repository-activity-score.md) define el orden predeterminado de los proyectos InnerSource en el portal. También ver [Michael Graf & Harish B (SAP) en ISC.S11 - El Camino Inesperado de Aplicar Patrones InnerSource](https://www.youtube.com/watch?v=6r9QOw9dcQo&list=PLCH-i0B0otNQZQt_QzGR9Il_kE4C6cQRy&index=6). Su base de código se publica como una [implementación de referencia](https://github.com/SAP/project-portal-for-innersource) y está abierta a contribuciones.
* **Elbit Systems** ha utilizado este patrón y ha añadido gamificación encima.
  * [Gamificación Como Medio de Cambio Cultural y Potenciador de Compromiso InnerSource](https://www.oreilly.com/library/view/oscon-2018-/9781492026075/video321579.html) | Shelly Nizri | OSCON 2018 - Portland, Oregon
  * De Islas, Monstruos y InnerSource [(diapositivas)](https://docs.google.com/presentation/d/1P1OCEK9B6eSrVRUclVWY6meSI-qHOBjM_UAPNvCZamU/edit#slide=id.p15), [(video)](https://drive.google.com/file/d/1pM89uHMn0vhE3ayFJDGYcCO8R0tAXXZD/view?usp=drivesdk) | InnerSource Spring Summit 2019 (Galway, Irlanda)
  * El [código](https://gitlab.com/gilda2) que realiza esta plataforma ha sido de código abierto.
* **American Airlines** promueve proyectos InnerSource a través de un [Mercado Interno InnerSource](https://tech.aa.com/2020-10-30-innersource/). De manera similar a SAP, los proyectos se auto-registran agregando `innersource` como un tema de GitHub. Los proyectos son buscables y filtrables por idioma, temas, número de problemas abiertos, etc.
* **Banco Santander** ha creado un portal público llamado "Santander ONE Europe InnerSource Community" para apoyar e incrementar la adopción de InnerSource. Además del catálogo de proyectos, el portal incluye contenido relevante como documentación, forma de trabajo, noticias y eventos.

![Portal InnerSource de Santander](../../../assets/img/santander_portal.png "Portal InnerSource de Banco Santander")

* **Airbus** utilizó el [Portal SAP](https://github.com/SAP/project-portal-for-innersource) como una Prueba de Concepto. Ahora está utilizando el [plugin Bazaar](https://github.com/backstage/community-plugins/blob/main/workspaces/bazaar/plugins/bazaar/README.md) de [Backstage](https://backstage.io) ya que este último se convirtió en la herramienta oficial de experiencia del desarrollador internamente. Proporciona una capacidad de auto-registro conveniente para todas las divisiones.
* **Mercado Libre** utiliza una instancia del [portal SAP](https://github.com/SAP/project-portal-for-innersource) para descubrir proyectos InnerSource existentes dentro de la organización.
* **Mercedes-Benz** está [utilizando](https://opensource.mercedes-benz.com/news/sponsor_innersource_commonsoss) la implementación de referencia de SAP mencionada anteriormente para su Portal InnerSource.
* **WellSky** tiene una simple página de _Confluence Wiki_ donde se enumeran los proyectos InnerSource y reutilizables.

## Referencias

* El patrón del Portal InnerSource ha demostrado funcionar extremadamente bien con el patrón asociado de InnerSource [Gig Marketplace](./gig-marketplace.md) en este contexto.

## Estado

* Estructurado

## Autor(es)

* Stephen McCall

## Agradecimientos

* Shelly Nizri
* Melinda Malmgren
* Michael Graf
* Jesús Alonso Gutierrez

## Histórico de Traducciones

- **2025-04-03** - Tradución [Oscar Lobaton S.](https://github.com/ovas04)
