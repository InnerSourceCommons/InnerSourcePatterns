## Title

Soporte grupal

## Patlet

que acontece se un equipo ou unha persoa abandona un proxecto InnerSource? Para manter vivo o proxecto fórmase un novo grupo de colaboradores/as interesados/as.

## Problema

* Un proxecto InnerSource popular queda orfo.
* Non se conta cun sitio claro para a súa publicación.

## Historia

Máis de 50 proxectos de toda a compañía empregan unha libraría de *widgets* UI. O equipo disólvese ao esgotarse o financiamento do equipo propietario da libraría. Nun principio, ninguén se decata mais, despois dalgún tempo, cada vez que alguén pregunta quen é o/a propietario/a, non hai resposta. Que vai pasar agora? Os novos equipos evitarán usala? Estancarase o proxecto e permanecerá así ata que finalmente os/as seus/súas usuarios/as se vexan obrigados/as a cambiar a outra cousa? Unha mágoa se iso pasase cun proxecto bo e perfectamente útil!

## Contexto

* Proxecto InnerSource popular.
* Consumido como unha dependencia do tempo de compilación (por exemplo, o módulo de código).
* Ninguén lle presta soporte de forma activa.
* A compañía non pode asignar un equipo de soporte.

## Aspectos que mellorar

* Ninguén ten asignado como traballo principal encargarse do caso.
* Todos/as están ocupados/as.
* A migración fóra do proxecto ten un alto custo.

## Solucións

Convocar voluntarios/as interesados/as de calquera sector da compañía para formar un grupo de [*trusted committers*](./trusted-committer.md) que dean soporte ao proxecto. Pode ser preciso pórse en contacto con individuos específicos, en función do historial de uso e *commits*. É importante que sexan suficientes para que a carga de cada un/unha deles/as sexa razoablemente pequena.

Ao formarse, este grupo debería identificar ou constituír unha [documentación base estándar](./base-documentation.md) e [ferramentas de comunicación](./communication-tooling.md).

O grupo fará o posible para xestionar estes aspectos do proxecto:

* **Mantemento**. Se o proxecto está totalmente roto para o caso de uso estándar, haberá que arranxalo. É preciso manter o proxecto actualizado a medida que as dependencias e os marcos que usa seguen a desenvolverse.
* **Incorporación**. Se alguén ten unha pregunta sobre como empregar o proxecto, haberá que asegurarse de que obtén unha resposta razoable.
* **Actualizacións**. Se alguén quere engadir novas funcionalidades ao proxecto, proporcionaráselle o deseño e soporte técnico precisos para a súa contribución, de xeito que sexa tanto bo para eles/as como para o proxecto. As *pull requests* entrantes revisaranse de maneira oportuna.

Posto que o grupo está formado por voluntarios/as, é importante comunicar que o soporte é só o seu «mellor esforzo». E, en consecuencia, este modelo de soporte non é adecuado para proxectos de produción críticos en tempo de execución como as *live* API. Será máis axeitado para proxectos que se consomen no tempo de compilación, como librarías/paquetes/módulos. Non se espera que o grupo introduza ningunha funcionalidade nova para outros.

## Contexto resultante

* Soporte feble para o proxecto InnerSource.
* A longo prazo, é probable que volva faltar o soporte nalgún momento. Polo que se o proxecto continúa no tempo, deberá empregarse este período de soporte grupal estable para dar cunha forma duradeira de mantelo (por exemplo, o [*core team*](./core-team.md)).

## Fundamento

A xente xeralmente estará disposta a axudar. Se alguén quere converterse en [*trusted committer*](./trusted-committer.md), o máis probable é que un gran número de persoas estean de acordo. Sentirse parte dun grupo e ter certa estrutura e responsabilidade, en xeral, motiva á xente a dar o máximo posible, o que a meirande parte das veces acaba sendo suficiente.

## Exemplos coñecidos

* WellSky

## Estado

* Estruturado

## Autoría

* [Russell R. Rutledge](https://github.com/rrrutledge)

## Tradución

- Leticia Gómez Cadahía
- María Lucía González Castro
