## Title

Puntuación de Actividad del Repositorio

## Patlet

Los contribuidores potenciales quieren encontrar proyectos InnerSource activos que necesiten su ayuda. Al calcular una puntuación de actividad del repositorio para cada proyecto, se puede crear una lista clasificada de proyectos (por ejemplo, en el [Portal InnerSource](innersource-portal.md)), para que los contribuidores potenciales puedan determinar más fácilmente a qué proyecto quieren contribuir.

## Problema

**¿En qué orden** se deben presentar los proyectos InnerSource? Los KPIs típicos de clasificación como *GitHub Stars*, *Número de Forks*, *Número de Commits*, *Líneas de Código*, *Última Actualización* no son suficientes para indicar de manera concisa la actividad de un proyecto.

Los proyectos activos con mucha tracción, pero también los proyectos nuevos y entusiastas que necesitan nuevos contribuidores, deben clasificarse más alto que los proyectos maduros con poca actividad o en modo de mantenimiento.

Se necesita una nueva métrica derivada de varios KPIs para definir una puntuación confiable y versátil del nivel de actividad de un proyecto. Puede usarse para ordenar los proyectos según su nivel de actividad.

## Historia

Cuando InnerSource se practica durante mucho tiempo o se escala más allá de un cierto número de proyectos (digamos 50 para dar un umbral significativo), es difícil encontrar los proyectos InnerSource más populares y activos en ese momento. Los proyectos que existen desde hace mucho tiempo son bien conocidos, pero pueden no ser muy activos. Por otro lado, los proyectos nuevos no tienen una reputación o una comunidad activa todavía.

Una lista de proyectos InnerSource no debe considerarse un recurso estático, sino un lugar emocionante para descubrir y explorar nuevos proyectos activos, al igual que una página de noticias que enumera los temas más interesantes del día primero. Por lo tanto, es beneficioso cuando el orden de los proyectos se actualiza regularmente y cambia según la popularidad y actividad del proyecto.

Estas consideraciones llevaron a un primer prototipo para calcular una puntuación de actividad del repositorio, que funcionó sorprendentemente bien y determina un orden siempre cambiante de proyectos según su actividad.

## Contexto

Descubrir proyectos InnerSource puede facilitarse con el [Portal InnerSource](innersource-portal.md) y el patrón [Gig Marketplace](gig-marketplace.md), o promoviendo proyectos en otros canales de comunicación y plataformas. La puntuación de actividad define un orden predeterminado en el que se presentan los proyectos a la comunidad.

## Fuerzas

Los KPIs automatizados que se pueden obtener consultando la API de GitHub son solo una parte de la verdad. ¿Qué pasa con la calidad del código, la disponibilidad de buena documentación o una comunidad activa y servicial que hace que el proyecto sea un lugar divertido para contribuir?

Tales KPIs "suaves" tendrían que agregarse manual o semiautomáticamente al cálculo y la puntuación resultante. Si existen herramientas que proporcionan más contexto para el repositorio, como un informe de cobertura de código, se pueden integrar fácilmente.

## Esquema

![Ecosistema para la Puntuación de Actividad del Repositorio](../../../assets/img/repository_activity_score.png)

Un enfoque centralizado para calcular y aplicar la puntuación de actividad del repositorio. Para más detalles, ver [Contexto Resultante](#contexto-resultante)

## Soluciones

La puntuación de actividad del repositorio es un valor numérico que representa la actividad (GitHub) de un proyecto InnerSource. Se deriva automáticamente de estadísticas del repositorio como estrellas de GitHub, observadores y forks, y puede enriquecerse con KPIs de otras herramientas o evaluaciones manuales.

Además, considera parámetros de actividad como la última actualización y la fecha de creación del repositorio para dar un impulso a los proyectos jóvenes con mucha tracción. Los proyectos con directrices de contribución, estadísticas de participación activa y problemas (backlog público) también reciben una clasificación más alta.

Todo esto se puede obtener y calcular automáticamente utilizando el conjunto de resultados de la [API de búsqueda de GitHub](https://docs.github.com/en/rest/search#search-repositories) y la [API de estadísticas de GitHub](https://docs.github.com/en/rest/metrics/statistics). Otros sistemas de control de versiones de código como Bitbucket, GitLab, Gerrit también se pueden integrar si hay una API similar disponible.

El código a continuación asume que la variable `repo` contiene una entidad obtenida de la API de `búsqueda` de GitHub y el objeto `participation` contiene una entidad de la API de `stats/participation` de GitHub.

Se pueden hacer ajustes manuales según los KPIs suaves (ver [Fuerzas](#fuerzas)) si es necesario.

``` javascript
// calcular una puntuación virtual de InnerSource a partir de estrellas, observadores, commits y problemas
function calculateScore(repo) {
    // la puntuación inicial es 50 para dar a los repositorios activos con bajos KPIs de GitHub (forks, observadores, estrellas) un mejor punto de partida
    let iScore = 50;
    // ponderación: los forks y observadores cuentan más, luego las estrellas, agregar una pequeña puntuación para problemas abiertos también
    iScore += repo.forks_count * 5;
    iScore += (repo.subscribers_count ? repo.subscribers_count : 0);
    iScore += repo.stargazers_count / 3;
    iScore += repo.open_issues_count / 5;

    // actualizado en los últimos 3 meses: agrega un multiplicador de bonificación entre 0..1 a la puntuación general (1 = actualizado hoy, 0 = actualizado hace más de 100 días)
    let iDaysSinceLastUpdate = (new Date().getTime() - new Date(repo.updated_at).getTime()) / 1000 / 86400;
    iScore = iScore * ((1 + (100 - Math.min(iDaysSinceLastUpdate, 100))) / 100);

    // evaluar estadísticas de participación para los últimos 3 meses
    repo._InnerSourceMetadata = repo._InnerSourceMetadata || {};
    if (repo._InnerSourceMetadata.participation) {
        // commits promedio: agrega un multiplicador de bonificación entre 0..1 a la puntuación general (1 = >10 commits por semana, 0 = menos de 3 commits por semana)
        let iAverageCommitsPerWeek = repo._InnerSourceMetadata.participation.slice(-13).reduce((a, b) => a + b) / 13;
        iScore = iScore * ((1 + (Math.min(Math.max(iAverageCommitsPerWeek - 3, 0), 7))) / 7);
    }

    // cálculo de impulso:
    // todos los repositorios actualizados en el último año recibirán un impulso máximo de 1000 que disminuye según los días desde la última actualización
    let iBoost = (1000 - Math.min(iDaysSinceLastUpdate, 365) * 2.74);
    // reducir gradualmente el impulso según la fecha de creación del repositorio para mezclar con estadísticas de "compromiso real"
    let iDaysSinceCreation = (new Date().getTime() - new Date(repo.created_at).getTime()) / 1000 / 86400;
    iBoost *= (365 - Math.min(iDaysSinceCreation, 365)) / 365;
    // agregar impulso a la puntuación
    iScore += iBoost;
    // dar a los proyectos con una descripción significativa un impulso estático de 50
    iScore += (repo.description?.length > 30 || repo._InnerSourceMetadata.motivation?.length > 30 ? 50 : 0);
    // dar a los proyectos con directrices de contribución (archivo CONTRIBUTING.md) un impulso estático de 100
    iScore += (repo._InnerSourceMetadata.guidelines ? 100 : 0);
    // construir una escala logarítmica para proyectos muy activos (sin límite pero estabilizándose alrededor de 5000)
    if (iScore > 3000) {
        iScore = 3000 + Math.log(iScore) * 100;
    }
    // la puntuación final es un valor redondeado que comienza desde 0 (restar el valor inicial)
    iScore = Math.round(iScore - 50);
    // agregar puntuación a los metadatos sobre la marcha
    repo._InnerSourceMetadata.score = iScore;

    return iScore;
}
```

## Contexto Resultante

Los contribuidores son libres de dedicar parte de su tiempo a proyectos InnerSource. Pueden elegir contribuir a un proyecto del que dependen para el trabajo en su equipo regular de todos modos. Sin embargo, también pueden optar por contribuir a algo completamente diferente, basado en sus intereses y objetivos de desarrollo personal.

Los proyectos pueden ordenarse y presentarse por puntuación de actividad del repositorio para dar un orden significativo en un portal que presenta proyectos a nuevos contribuidores potenciales. La puntuación se puede calcular sobre la marcha o en un trabajo en segundo plano que evalúa todos los proyectos regularmente y almacena una lista de resultados.

Un rastreador que busca regularmente todos los repositorios InnerSource (por ejemplo, etiquetados con un cierto [tema](https://github.com/topics) en GitHub) también puede ser una adición útil. Proporciona una lista clasificada de proyectos que se puede usar como entrada para herramientas como el [Portal InnerSource](innersource-portal.md), un motor de búsqueda o un chatbot interactivo.

## Razonamiento

La puntuación de actividad del repositorio es un cálculo simple basado en la API de GitHub. Puede ser completamente automatizado y fácilmente adaptado a nuevos requisitos.

## Instancias Conocidas

* Utilizado en el portal de proyectos InnerSource de SAP para definir el orden predeterminado de los proyectos InnerSource. Fue creado por primera vez en julio de 2020 y se ajusta y actualiza con frecuencia desde entonces. Cuando se propuso a InnerSource Commons en julio de 2020, surgió este patrón. También ver [Michael Graf & Harish B (SAP) en ISC.S11 - El Camino Inesperado de Aplicar Patrones InnerSource](https://www.youtube.com/watch?v=6r9QOw9dcQo&list=PLCH-i0B0otNQZQt_QzGR9Il_kE4C6cQRy&index=6).
* Airbus se inspiró mucho en este patrón para crear una "puntuación InnerSource" que combina la puntuación de actividad junto con verificaciones de la [Documentación Base Estándar](./base-documentation.md) y la [Licencia InnerSource](./innersource-license.md).

## Estado

* Estructurado

## Autor(es)

[Michael Graf (SAP)](mailto:mi.graf@sap.com)

## Agradecimientos

¡Gracias a la Comunidad de InnerSource Commons por sus consejos rápidos y una gran cantidad de aportes útiles para alimentar este patrón! Especialmente:

* Johannes Tigges
* Sebastian Spier
* Maximilian Capraro
* Tim Yao

## Histórico de Traducciones

- **2025-04-03** - Tradución [Oscar Lobaton S.](https://github.com/ovas04)
