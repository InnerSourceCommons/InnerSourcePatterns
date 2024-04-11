## Title

Requisitos comúns

## Patlet

o código común dun repositorio compartido non satisfai as necesidades de todos os equipos do proxecto que desexan empregalo; isto resólvese mediante a aliñación de requisitos e a refactorización.

## Problema

O código común do repositorio compartido non satisfai as necesidades de tódolos proxectos que queren empregalo.

## Contexto

* Moitos proxectos están tentando empregar un código común. Tódolos proxectos teñen acceso a un repositorio compartido.
* Alguén (ou algún proxecto) escribe o código desde o principio e apórtao ao repositorio.
* O código común é unha pequena porcentaxe da entrega global de calquera dos proxectos.
* Cada proxecto ten o seu propio calendario de entrega, o seu propio conxunto de entregables e os/as seus/súas propios/as clientes/as.
* Este modelo aplícase en calquera destas situacións:
  * Existe un/unha **propietario/a do código sólido**; de modo que tódolos cambios no repositorio compartido deben ser aprobados por el/ela.
  * A **propiedade do código é débil**, polo que ninguén é o/a propietario/a do código realmente.
  * Non hai **un/unha patrocinador/a benévolo/a**, polo que ningunha organización ou executivo/a proporciona recursos para organizar o código común á maneira InnerSource.

## Aspectos que mellorar

O proxecto que fixo que o código estivera dispoñible ten certas necesidades, similares ás de parte da organización receptora, pero non exactamente as mesmas. Os requisitos do código han de derivarse das necesidades reais do/a cliente/a.

As necesidades dos/as distintos/as clientes/as adoitan ser bastante similares; con todo, poden expresarse de maneira diferente ou ponderarse de distinto xeito entre uns/unhas clientes/as e outros/as. Un exemplo podería ser que algúns/algunhas clientes/as queren que un resultado se presente dunha maneira, mentres que outros/as queren que se presente na orde contraria. É sinxelo facer a tradución entre eles/as, pero require codificación adicional para un dos casos e, como resultado, o compoñente que computa o resultado non pode ser reempregado para ambos/as clientes/as.

Moitos/as clientes/as queren que o/a provedor/a lles axude no que precisan. A empresa ten moitos/as enxeñeiros/as de sistemas que redactan os requisitos para os produtos. Suponse que estes requisitos foron extraídos das necesidades do/a cliente/a para guiar o desenvolvemento do produto. Reempregar o código é un obxectivo importante para aforrarlle tempo e diñeiro á empresa.

## Solución

Hai dous aspectos que deben facerse en paralelo para resolver este problema:

1. Aliñar os requisitos dos proxectos para que o código que cumpra os requisitos dun proxecto tamén cumpra as necesidades dos demais proxectos.
2. Refactorizar o código en fragmentos máis pequenos para que os numerosos proxectos que o empregan poidan poñerse de acordo acerca dos requisitos.

Ademais, aproveite que os/as clientes/as esperan que o/a provedor/a axude a dilucidar os requisitos. Consiga a aliñación dos requisitos durante as negociacións cos/coas clientes/as e inflúa nos requisitos do/a cliente/a na contra de cambiar o compoñente.

No exemplo presentado anteriormente, o/a provedor/a axuda a ambos/as clientes/as a darse conta de que queren o mesmo e aforraralles esforzo (e diñeiro) a todos/as se se poñen de acordo á hora de elixir o resultado no mesmo formato.

![Requisitos comúns](../../../assets/img/CommonReqtsv2.jpg)

## Contexto resultante

Para isto podería ser necesario negociar os cambios nos requisitos co/coa cliente/a. Os cambios tamén poden requirir a participación dos equipos de ventas e dos/as xefes/as de produtos para conseguir a aliñación cos requisitos. O/A cliente/a pode necesitar incentivos, como descontos, para aceptar os cambios.

Un reto relacionado (e un posible modelo novo) é un exercicio circular de redacción de historias de usuario/a do que se informa nunha empresa que emprega InnerSource. En poucas palabras:

* Os/As desenvolvedores/as escriben unha historia de usuario/a para resolver un problema dunha maneira.
* Os/As directivos/as do programa reescriben a historia de usuario/a para expresar mellor as súas necesidades, mantendo a mesma esencia. No momento no que regresa ás mans dos/as desenvolvedores/as, estes/as non recoñecen o que querían facer nun primeiro lugar e, por tanto, resístense a poñelo en práctica.
* A solución a este modelo é contar con máis asentos arredor da mesa de planificación para que as modificacións da historia de usuario/a se entendan en todo o proxecto, non só no grupo dos/as desenvolvedores/as ou directivos/as de programas.

## Exemplos coñecidos

* Gran provedor/a de telecomunicacións

## Estado

* Estruturado

## Autoría

* Roberto Hanmer

## Recoñecementos

* Manrique López
* Daniel Izquierdo
* Tim Yao
* Sebastian Spier

## Tradución

- Leticia Gómez Cadahía
- María Lucía González Castro
