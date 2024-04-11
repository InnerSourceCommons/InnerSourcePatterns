## Title

Garantía de 30 días

## Patlet

cando se aceptan contribucións externas, existe unha aversión natural do equipo a asumir a responsabilidade do código que non foi escrito por eles/as. A través da garantía de 30 días, o equipo contribuidor acepta proporcionar correccións de erros ao equipo receptor. Isto aumentará o nivel de confianza de ambos os equipos e fará que sexa máis probable que se acepten as contribucións.

## Problema

Un equipo desenvolve un compoñente que se emprega na organización e resístese a aceptar ou directamente rexeita as contribucións (*feature requests*). Este comportamento bloquea o progreso e xera frecuentes interrupcións a causa das escaladas.

## Contexto

- Os equipos dependen de que outro equipo acepte as súas contribucións para que o compoñente producido polo equipo receptor poida ser empregado polo equipo contribuidor.
- O equipo receptor non dispón dos recursos, dos coñecementos, dos permisos ou da disposición necesaria para escribir, por si mesmo, o compoñente/funcionalidade aportado/a.

## Aspectos que mellorar

- Desconfíase das contribucións a causa dun pasado de enganos: os equipos enviaban contribucións que non estaban rematadas e, posteriormente, presentaban peticións de correccións que as deixaban listas para o seu uso en produción.
- Se se aporta código externo, o equipo receptor pode albergar a sospeita natural de que o outro equipo non saiba escribir un código que satisfaga as súas expectativas.
- Cada equipo tenta axudar primeiro a que os/as seus/súas propios/as líderes acaden as súas propias metas. Esta lealdade cara a directiva pode complicar a resolución deste problema.
- Naturalmente, existe un rexeitamento a responsabilizarse do código que non foi escrito por un/unha mesmo/a.
- As contribucións de código deben reescribirse a fondo antes de ser aceptadas na base de código.
- Témese que os/as contribuidores/as non estean dispoñibles para recibir asistencia coa corrección de erros unha vez transcorrido o tempo da contribución.
- Os equipos temen que as contribucións de código xeren custos de mantemento elevados, pero non saben como controlalo.
- Os equipos receptores poden temer que, ensinar a outras persoas a contribuír co código, expoña unha débeda técnica no seu sistema e que a visibilidade poida ser prexudicial.
- É posible que os equipos receptores non crean que obterán un código aceptable por moito asesoramento que brinden.
- Calquera dos equipos pode sentirse inseguro á hora de medir os riscos ou certificar que están mitigados nunha contribución; o sistema en si é algo fráxil (pode que non haxa maneiras de probalo completamente e detectar tódolos problemas).

## Solución

Aborde os temores dos equipos receptores e contribuidores establecendo un período de garantía de 30 días, a partir do momento no que a contribución de código entra na fase de produción. Durante este período de garantía, o equipo contribuidor comprométese a proporcionar correccións de erros ao equipo receptor.

Teña en conta que o período de garantía tamén pode chegar a ser de 45, 60 ou 100 días. A duración pode variar en función das limitacións do proxecto, o ciclo de vida do software do proxecto ou os compromisos cos/coas clientes/as, entre outros factores.

Ademais, axuda a proporcionar [directrices de contribución](./base-documentation.md) claras, concretando as expectativas do equipo receptor e o equipo contribuidor.

![Garantía de 30 días](../../../assets/img/thirtydaywarranty.jpg)

## Contexto resultante

- O equipo receptor está disposto a aceptar contribucións e pode compartir a carga de traballo das adaptacións/reparacións iniciais.
- Maior transparencia e equidade.
- Evita que as escaladas se volvan demasiado pesadas.

## Exemplos coñecidos

- Isto foi probado con éxito en PayPal.
- GitHub emprega internamente este modelo cun prazo de garantía modificado de 6 semanas.
- Microsoft recomenda este modelo coma un principio: os equipos establecen o seu propio obxectivo temporal específico en función das súas necesidades e confianza.

## Autoría

- Cedric Willians

## Recoñecementos

- Dirk-Willem van Gulik
- Padma Sudarsan
- Klaas-Jan Stol
- Georg Grütter

## Estado

* Estruturado
* Redactado no Cume InnerSource de primavera de 2017; revisado o 18 de xuño de 2017.

## Variantes

- Garanta a cooperación dos equipos dependentes, converténdoos nunha comunidade mediante a responsabilidade de máis dun/dunha [*trusted commiter*](./trusted-committer.md) (TC), designados/as por meritocracia.

## Tradución

- Leticia Gómez Cadahía
- María Lucía González Castro
