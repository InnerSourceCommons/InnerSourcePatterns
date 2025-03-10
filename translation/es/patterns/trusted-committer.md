## Title

Trusted Committer

## Patlet

Muchos proyectos InnerSource se encontrarán en una situación donde reciben constantemente retroalimentación, funcionalidades y correcciones de errores de los contribuidores. En estas situaciones, los mantenedores del proyecto buscan formas de reconocer y recompensar el trabajo del contribuidor más allá de las contribuciones individuales.

## Problema

- Los mantenedores del proyecto buscan formas de escalar su capacidad para dar soporte a un proyecto
- Los mantenedores del proyecto buscan formas de prolongar el valor entregado por un proyecto
- Los mantenedores del proyecto quieren recompensar visiblemente a los contribuidores frecuentes y empoderarlos para amplificar su contribución de valor
- Falta de mecanismos y lenguaje para reconocer contribuciones entre equipos dentro de una organización

## Contexto

- Eres el mantenedor de una librería, servicio o recurso compartido entre equipos
- Recibes contribuciones regularmente
- Recibes solicitudes de funcionalidades regularmente
- Recibes solicitudes de corrección de errores regularmente
- Hay contribuidores motivados que buscan desarrollar experiencia a través de proyectos InnerSource

## Resistencias

- Durante el ciclo de vida de un proyecto, el enfoque de los mantenedores puede cambiar para acomodar las prioridades cambiantes del negocio
- Los contribuidores buscan reconocimiento visible de sus contribuciones, demostrando valor
- Mantener un proyecto de complejidad razonable es agotador para un equipo pequeño
- Desarrollar funcionalidades del proyecto a escala es agotador para un equipo pequeño

## Solución

### Definiendo el Rol de Trusted Committer para un Proyecto

Las responsabilidades de un Trusted Committer depende de cada proyecto y sus mantenedores. Asegúrate de documentar dentro del proyecto el alcance de tu rol de Trusted Committer. Una documentación clara establece expectativas para los nuevos miembros de la comunidad y establece el rol para futuros candidatos.

Las siguientes son algunas pautas para identificar un posible Trusted Committer:

* Un participante activo en los canales de la comunidad (Slack, triage de issues en JIRA, etc.) se convierte en un Trusted Committer, formalizando así su rol en el soporte de la comunidad.
* Alguien que frecuentemente envía código, documentación u otros cambios en el repositorio. Comienza incluyendo a esta persona en los pull requests. Si están participando activamente en los pull requests, considera acercarte a ellos sobre oportunidades para una mayor colaboración en el proyecto.

### Formalizando Trusted Committers

El primer paso es acercarse a los candidatos sobre convertirse en un Trusted Committer. Los mantenedores deben educar a los candidatos sobre el rol de un Trusted Committer. No hay expectativa de que los candidatos acepten el rol de Trusted Committer. Cada candidato debe evaluar si tienen la disponibilidad para asumir las responsabilidades.

Cuando un candidato acepta el rol, los mantenedores del proyecto deben reconocer públicamente su transición de usuario a Trusted Committer. También es una buena idea agregar su nombre a una sección de Trusted Committers en el README de tu proyecto. Como ejemplo:

```markdown
# nombre-del-proyecto

... el readme de tu proyecto ...

## Líderes del Proyecto

### Mantenedores

  - Tu equipo

### [Trusted Committers]

  - El nombre del nuevo trusted committer

[Trusted Committers]: https://example.com/link/to/your/trusted/committer/documentation.md
```

### Manteniendo Relaciones con Trusted Committers

Una vez que formalizas un nuevo Trusted Committer, es una buena idea mantenerlos informados mientras continúas iterando en tu proyecto. Mantenerlos informados puede ser tan simple como invitarlos a tu canal del proyecto o tan involucrado como incluirlos en tus sesiones de planificación. Más oportunidades de participación dan a los Trusted Committers un camino hacia Mantenedor si así lo desean.

Además de mantener informados a los Trusted Committers, es bueno hacer un seguimiento regularmente. Una cadencia sugerida es comenzar con cada semana antes de progresar gradualmente a cada pocas semanas. El propósito de estos seguimientos es asegurarse de que el Trusted Committer se sienta apoyado en su nuevo rol. Análogo a una 1:1 con tu gerente, si hay algún problema, escucha y empatiza para tratar de entender qué está impidiendo que el Trusted Committer tenga éxito. Siempre [agradece al Trusted Committer por su continuo esfuerzo][praise] en hacer que el proyecto sea exitoso y establece una nueva fecha para hacer un seguimiento.

### Retirando a un Trusted Committer

Hay momentos que requieren la eliminación de un Trusted Committer, como si el Trusted Committer:

* Ya no está dispuesto a participar
* Ya no puede desempeñar sus funciones
* Ya no está empleado por la empresa

Un plan para eliminar el acceso a los recursos del proyecto debe ser acordado por ambas partes, incluyendo la transición de su entrada en la sección **Trusted Committer** del proyecto a una lista de contribuyentes anteriores.

Al eliminar el acceso, [agradece públicamente al Trusted Committer por su participación][praise]. El reconocimiento público asegura una comunicación clara de la transición y continuidad dentro de la comunidad.

## Contexto Resultante

### Para los Contribuidores

Lograr el estatus de Trusted Committer para un proyecto demuestra iniciativa en contribuir al proyecto comunitario. El reconocimiento por estos esfuerzos puede ser utilizado durante las revisiones anuales con los gerentes.

### Para los Mantenedores

A medida que un proyecto madura, los mantenedores pueden volverse menos familiares con aspectos clave de un proyecto. Los Trusted Committers llenan estos vacíos, asegurando que todos los aspectos del proyecto estén mejor atendidos con el tiempo.

Un conjunto saludable de Trusted Committers asegura que si los mantenedores del proyecto se van, haya un plan para una administración responsable.

## Instancias Conocidas

Esto ha sido probado y ha tenido éxito en:

- Nike
- PayPal
- Mercado Libre - agrega una sección en el archivo `CONTRIBUTING.md` para informar quiénes son los Trusted Committers.
- Robert Bosch GmbH - no llamamos al rol 'Trusted Committer' pero tuvimos este rol al comienzo de nuestro viaje InnerSource. Los Trusted Committers serían financiados al 100 % de su tiempo para poder enfocarse en este rol.

![Sección de Trusted Committer en CONTRIBUTING.md de Mercado Libre](../../../assets/img/mercadolibre-trusted-committers.png "Sección de Trusted Committer en CONTRIBUTING.md de Mercado Libre")

## Estado

- Estructurado
- Publicado internamente en Nike; redactado vía pull-request en junio de 2018.

## Autores

- [Fernando Freire]

## Agradecimientos

- [Russell Rutledge]
- [Loren Sanz]
- [Noah Cawley]
- [Jeremy Hicks]
- [Doron Katz]

[Doron Katz]: https://github.com/doronkatz
[Russell Rutledge]: https://github.com/rrrutledge
[Loren Sanz]: https://github.com/mrsanz
[Jeremy Hicks]: https://github.com/greatestusername
[Noah Cawley]: https://github.com/utanapishtim
[praise]: ./praise-participants.md
[Fernando Freire]: https://github.com/dogonthehorizon

## Histórico de Traducciones

- **2025-04-03** - Traducción [Oscar Lobaton S.](https://github.com/ovas04)
