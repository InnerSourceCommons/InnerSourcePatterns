## Title

Licencia InnerSource

## Patlet

Dos entidades legales que pertenecen a la misma organización quieren compartir código fuente entre sí pero están preocupadas por las implicaciones en términos de responsabilidades legales o contabilidad entre empresas.
Una **Licencia InnerSource** proporciona un marco legal reutilizable para compartir código fuente dentro de la organización. Esto abre nuevas opciones de colaboración y hace explícitos los derechos y obligaciones de las entidades legales involucradas.

## Problema

Cuando dos o más entidades legales dentro de una organización quieren compartir código entre sí, necesitan un acuerdo sobre los términos y, a menudo, un contrato legal. Crear tales acuerdos en base a cada proyecto requiere esfuerzo y crea una barrera para compartir. Es decir, un equipo dentro de una entidad legal podría decidir no compartir su código fuente con otra entidad legal en la organización porque parece complicado.

Las barreras para compartir pueden llevar a silos y duplicación de esfuerzos en la reconstrucción de soluciones similares en múltiples partes de la organización.

En el momento de compartir el código fuente, no se puede predecir de manera confiable cuál será el valor de compartir. Si la actividad de compartir requiere un esfuerzo significativo (es decir, negociar términos para el uso), las entidades legales son menos propensas a hacerlo, ya que están preocupadas por el retorno de la inversión.

## Contexto

- Una organización grande con muchas entidades legales (subsidiarias) que quieren compartir código. Cuando la organización se hace más grande, el valor de este patrón aumenta.
- Según la definición, las entidades legales tienen sus propios derechos y obligaciones legales.
- Varias de estas entidades legales están desarrollando software y están utilizando servicios de otras entidades legales. Tienen una motivación para contribuir al código fuente de los demás.
- Una complejidad suficiente de la organización y su estructura organizativa.

## Resistencias

- **Nivel de esfuerzo** requerido para redactar acuerdos formales, especialmente si necesitan tener en cuenta perspectivas técnicas, legales y comerciales.
- Una organización grande (compuesta por muchas entidades legales) tiene muchas **regulaciones internas**. Cualquier nuevo acuerdo que se haga debe cumplir con estas regulaciones, por ejemplo, seguridad, privacidad, procesos de adquisición, etc. El volumen de regulaciones puede dificultar la evaluación de si compartir software entre dos entidades legales es conforme con estas regulaciones, especialmente cuando no hay un procedimiento estándar.
- Si alguna de las entidades legales en la organización tiene un **modelo de negocio** que depende del código propietario y la contabilidad de las tarifas de licencia dentro de la organización.
- **Cultura de la empresa** que no está acostumbrada a la colaboración y el intercambio de código InnerSource. Esto resulta en incertidumbre sobre los derechos y obligaciones al usar código compartido.
- La libertad sobre el uso del software lleva a la competencia y a la dispersión de la propiedad.
- Existen contratos legales que cubren el intercambio de código fuente. Estos contratos no están estandarizados, por lo que crean un esfuerzo adicional en la negociación y comprensión para cada proyecto. Los contratos existentes también pueden no permitir compartir código fuente de manera lo suficientemente abierta como para apoyar un verdadero enfoque InnerSource.
- Alternativamente, no hay contratos legales en vigor, pero el código fuente se comparte de manera informal. Eso podría crear incertidumbre en casos donde se necesita claridad sobre la propiedad y los derechos y obligaciones.
- Elegir una licencia restrictiva y/o copyleft puede constituir una barrera para la adopción de InnerSource. Específicamente, limitar la publicación a la organización podría requerir un procedimiento de relicenciamiento costoso antes de la transición a Open Source.

## Soluciones

Crear una **Licencia InnerSource** personalizada a las necesidades de la organización en cuestión (y sus entidades legales). Esta licencia debe ser lo suficientemente genérica como para aplicarse a las relaciones interempresariales más importantes.

Es importante redactar la Licencia InnerSource de manera que realmente permita una colaboración al estilo de código abierto a través de las fronteras de las entidades legales involucradas. Por lo tanto, las 4 libertades del software libre deben integrarse en la licencia.

La Licencia se redacta como un documento legal formal y puede usarse como parte de los contratos entre las entidades legales para regular los acuerdos de intercambio de código.

## Contexto Resultante

Con la Licencia InnerSource, tenemos una herramienta para compartir código entre entidades legales dentro de nuestra organización.

La licencia simplifica las conversaciones dentro de nuestra organización sobre el intercambio de código fuente y motiva a las primeras entidades legales a hacerlo.

**Nota:** El experimento descrito en **Instancias Conocidas** está en una fase temprana. Por lo tanto, aún no se ha formado un **Contexto Resultante** firme. En un par de meses, los efectos de la Licencia InnerSource en este espacio de problemas serán más claros y esta sección se podrá actualizar.

## Instancias Conocidas

- **DB Systel**
- **Robert Bosch GmbH**
- **Airbus**
- **GovTech (Gobierno de Singapur)**

### DB Systel

DB Systel creó su propia Licencia InnerSource, ver [DB Inner Source License][db-inner-source-license]. Utilizaron la [EUPL][eupl], ya que ofrecía un punto de partida similar al código abierto, y luego trabajaron en las restricciones y reglas adicionales requeridas en su contexto organizacional específico.

Las primeras entidades legales (empresas) dentro de DB AG están utilizando su Licencia InnerSource.

Un efecto positivo que ya se está mostrando es que simplifica la conversación, especialmente si algunas de las partes involucradas no conocen bien el concepto de InnerSource. Las licencias son un concepto bien conocido, por lo que tener una Licencia InnerSource es un excelente punto de partida para la discusión.

Los experimentos también están descubriendo que hay desafíos adicionales de colaboración que deben resolverse para llevar a un verdadero modelo de contribución y colaboración InnerSource.

Los desafíos de colaboración mencionados incluyen:

- hacer que los proyectos con licencia InnerSource sean descubribles
- construir comunidades para la colaboración en proyectos, al igual que en el código abierto

Vale la pena mencionar que hasta ahora el software compartido bajo esta licencia InnerSource es principalmente herramientas, infraestructura y herramientas en niveles inferiores de la pila.

### Airbus

Airbus creó licencias InnerSource ad hoc para habilitar la forma de trabajo InnerSource dentro de una gran parte del grupo.

### GovTech (Gobierno de Singapur)

GovTech es responsable de la entrega de los servicios digitales del gobierno de Singapur al público.
Crearon la Licencia del Sector Público de GovTech (GPSL) como una licencia permisiva para garantizar que el código pueda ser compartido entre entidades legales a través del gobierno.
La GPSL cubre tanto el uso del código por parte de los licenciatarios (agencias y sus proveedores) como las contribuciones de vuelta a GovTech.
Siguiendo las prácticas de código abierto, el archivo `LICENSE` de GPSL se incluye en cada repositorio que se pone a disposición como InnerSource.

Para más detalles, vea la llamada de la Comunidad InnerSource Commons de 09/2023 [Mejorando la Colaboración de Ingeniería a través del Gobierno de Singapur a través de InnerSource](https://www.youtube.com/watch?v=-zu2X2iERv8&t=1257s&ab_channel=InnerSourceCommons) (alrededor de 20:50) por Hunter Nield.

## Estado

* Estructurado
* El experimento listado en **Instancias Conocidas** está en funcionamiento desde 02/2020. La experiencia inicial muestra primeros efectos positivos, pero se necesita más experiencia para evaluar completamente el patrón.

## Autor(es)

- Cornelius Schumacher (DB Systel GmbH)
- Schlomo Schapiro (DB Systel GmbH)
- Sebastian Spier

## Referencias

- Presentación FOSSBack 2020: [Cornelius Schumacher - Blending Open Source and Corporate Values](https://youtu.be/hikC6U8X_Ec) - vea 27:30 en adelante para detalles sobre la Licencia InnerSource
- [DB Inner Source License][db-inner-source-license]

## Glosario

- **organización** - Un paraguas para múltiples entidades legales. (sinónimos: grupo, empresa) (por ejemplo, Lufthansa)
- **entidad legal** - Una entidad que tiene sus propios derechos y obligaciones legales (sinónimos: empresa, subsidiaria) (por ejemplo, Lufthansa Systems GmbH, Lufthansa Industry Solutions TS GmbH, ...)

[db-inner-source-license]: https://github.com/dbsystel/open-source-policies/blob/master/DB-Inner-Source-License.md
[eupl]: https://joinup.ec.europa.eu/collection/eupl/eupl-text-eupl-12

## Histórico de Traducciones

- **2025-04-03** - Traducción [Oscar Lobaton S.](https://github.com/ovas04)
