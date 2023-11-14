## Title

Casos de uso cun sistema de seguimento de incidencias

## Patlet

O *host team* de InnerSource non logra ter transparencia nos plans nin no progreso, e tampouco no contexto para os cambios. Isto resólvese aumentando os casos de uso co sistema de seguimento de incidencias do proxecto para que tamén favoreza o intercambio de ideas, o debate sobre estas e o deseño de funcionalidades.

## Problema

Un equipo desenvolve un compoñente do que dependen moitos outros equipos da organización. Usa un sistema de seguimento de incidencias estándar para rastrexar *bugs* e *feature requests*. Non obstante, o contexto en cada entrada é moi limitado. Como resultado, os/as posibles contribuidores/as non teñen forma de saber a que cambio se refire exactamente cada unha das incidencias.

## Contexto

Está configurada a ferramenta InnerSource para proxectos. Aínda que o sistema de seguimento de incidencias do proxecto emprégase principalmente para compartir o progreso. Nos proxectos InnerSource hai moitos máis casos de uso nos que se pode usar un sistema de seguimento de incidencias que facilitan a comunicación remota e asíncrona.

## Aspectos que mellorar

- Os/As contribuidores/as precisarían saber se a funcionalidade que están a botar en falta está xa na folla de ruta. Falta moito contexto nas incidencias, aínda que é imposible decidir se os problemas existentes coinciden coas necesidades do equipo contribuidor.
- Como resultado, ábrense moitas incidencias duplicadas das que ten que dar conta o *host team*.
- Como o contexto das incidencias abertas é tan limitado, os/as contribuidores/as non poden axudar ao *host team* introducindo algunha das incidencias máis sinxelas que xa están abertas. Como resultado, queda moito traballo nas mans do *host team*.
- Co foco orientado principalmente na comunicación verbal, é imposible discernir despois dun par de meses ou anos por que se escolleu engadir unha determinada funcionalidade e non outra. Como resultado, as refactorizacións, en particular a simplificación do compoñente, convértense nun exercicio de arqueoloxía do proxecto, así como de selección memorística, co fin de recordar o que se acordou.

## Solución

Adopte a filosofía «o escrito prevalece sobre a palabra», non só para o desenvolvemento de software puro, senón tamén durante a fase de planificación de novas funcionalidades:

- Para erros, funcionalidades planificadas e ideas de funcionalidades, cómpre crear incidencias separadas. En cada unha delas inclúa a maior cantidade de información posible para que os/as potenciais contribuidores/as externos/as poidan comprender o contexto. Idealmente, e en concreto para os cambios máis doados, inclúa información suficiente para que os/as colaboradores/as externos/as poidan prestar soporte ao *host team* cando introduzan a funcionalidade en cuestión.
- Empregue o sistema de seguimento de incidencias como canle potencial para facer preguntas. Isto é especialmente útil cando se carece doutras fontes de comunicación para resolver as preguntas dos/as usuarios/as.
- Faga uso de etiquetas e categorías para distinguir cuestións utilizadas para diferentes fins.
- Para comezar unha sesión de intercambio de ideas de forma asíncrona, abra unha incidencia para a recollida de ideas. Cando a discusión comece a calmarse, resuma os puntos identificados neste número nun documento separado. Publíqueo para a súa revisión como unha *pull request* para profundizar en puntos individuais que aínda precisan certa aclaración. O documento resultante pódese utilizar para publicar os resultados noutras canles apropiadas, así como para futuras referencias.
- A maioría das introducións do sistema de seguimento de incidencias permiten obter prototipos das mesmas. Faga uso destes, non só para recoller a información que se necesita habitualmente para os informes de erros, senón tamén para incluír suxestións sobre que tipo de información é necesaria para os outros tipos de uso.

## Contexto resultante

- Facer un maior uso do sistema de seguimento de incidencias do proxecto para a comunicación permite que os/as contribuidores/as externos/as se deixen guiar e tomen mellores decisións no concernente ás contribucións.
- Un enfoque na comunicación escrita estruturada permite que os membros do equipo de acollida participen de xeito remoto.
- Comunicarse de forma consistente por escrito significa que a documentación pasiva sobre as decisións do proxecto acumúlase como un subproduto en lugar de necesitar atención adicional.
- O uso constante das canles de comunicación públicas fai que cada vez máis persoas poidan seguir a discusión. Isto supón máis xente informada con capacidade para dar resposta ás preguntas, falar de incidencias abertas ou sinalar defectos nas funcionalidades planificadas que, doutro xeito, só se atoparían moito máis tarde.
- Trasladar as discusións a un medio de debate público crea unha oportunidade para que os/as posibles contribuidores/as futuros/as lean, sigan, se sintan cómodos/as e coñezan as vías do proxecto moito antes de formar parte del.

## Exemplos coñecidos

* Europace AG – Vexa [Issue Use Cases](https://tech.europace.de/post/using-issues-for-asking-questions-and-tracking-work/) [incidencias de casos de uso]

## Autoría

* Isabel Drost-Fromm

## Estado

* Estruturado

## Tradución

- Leticia Gómez Cadahía
- María Lucía González Castro