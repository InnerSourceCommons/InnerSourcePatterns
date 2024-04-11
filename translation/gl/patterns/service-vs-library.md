## Title

Servizo vs. libraría

## Patlet

os equipos DevOps poden ser reticentes a traballar máis alá dos límites do equipo, en bases de código comúns; posto que non está definido quen sería a persoa responsable de responder ante unha situación de inactividade do servizo. Con frecuencia, a solución pode ser implantar o mesmo servizo en contextos independentes con cadeas de escalada separadas, en caso de caída do servizo ou de factorización dunha gran cantidade de código compartido nunha libraría na que se poidan facer colaboracións.

## Problema

Cando os equipos traballan nun marco DevOps, as persoas desenvolvedoras son responsables da posta en marcha de funcionalidades de principio a fin: desde o trato co/coa cliente/a, ata a execución das devanditas funcionalidades, o mantemento e o soporte. Isto supón un desafío cando se traballa máis alá dos límites do equipo: as cadeas de escalada poden non ser as mesmas para os erros que se poden producir en calquera dos equipos. A dependencia do código fonte e a súa execución fai que os equipos se pregunten quen será a persoa responsable de proporcionar asistencia no caso de que se detecten erros. Como consecuencia, os equipos son reticentes a unir forzas incluso cando existe un solapamento significativo dos requisitos.

## Contexto

- Os equipos traballan nun marco de microservizos.
- Están organizados/as en equipos DevOps totalmente funcionais: cada equipo é responsable das súas contribucións de principio a fin, entre as que se inclúen o mantemento, a asistencia e a atención ao/á cliente/a.
- Un equipo ten a tarefa de proporcionar un servizo aos/ás seus/súas clientes/as finais, bastante similar a un servizo existente creado por outro equipo.

## Aspectos que mellorar

- As rutas de escalada da empresa poden ser diferentes para cada un dos equipos.
- É posible que os membros de cada equipo non estean dispostos a responder ao servizo de asistencia no caso de que se detecten erros que non afectan aos/ás seus/súas propios/as clientes/as.
- Os niveis de gravidade para os mesmos tipos de erros poden ser dispares para cada equipo por mor dos distintos estándares SLA (polas súas siglas en inglés, Acordo do nivel de servizo) que delimitan a relación equipo-cliente/a.
- Os equipos poden ter diferentes restricións de seguridade e barreiras lexislativas que rexen os seus campos de actuación.

## Solucións

Separar a responsabilidade do código fonte da súa implantación: ambos equipos traballan para identificar de maneira exacta onde hai solapamentos e sinerxías.

Só o código fonte compartido se mantén como parte do proxecto InnerSource con responsabilidade compartida. O código fonte compartido debe ser coherente, posto que inclúe todo o código de proba (como as probas de integración, se están dispoñibles) e a maior parte posible do fluxo de traballo da CI para facilitar a validación da contribución.

Desvinculara configuración e posta en marcha do fluxo de traballo da lóxica empresarial real. Estableza unha segunda implantación do servizo para o segundo equipo.

Trate a base común como unha libraría que empreguen ambos equipos coa propiedade do código compartido.

A implantación das configuracións pódese incluír como proxectos independentes na súa carteira InnerSource co obxectivo de permitir que os equipos debatan/colaboren ou que un novo equipo as copie.

## Contexto resultante

Os equipos están dispostos a colaborar, o que os beneficia á hora de compartir o traballo de poñer en marcha a lóxica empresarial.

Un servizo que orixinalmente se creou para funcionar nun marco de traballo específico, convértese nunha solución máis xeralizada baseada nunha necesidade comercial específica.

Ambos equipos chegan a familiarizarse coas súas respectivas políticas de escalada e coa implantación da configuración, a cal podería identificar melloras na súa propia configuración.

A probabilidade de que se precisen cambios e se realicen no código fonte compartido aumenta, o que xera oportunidades máis frecuentes para perfeccionar, mellorar e optimizar a execución.

Finalmente, foméntase a estandarización gradual das operacións no paquete de lanzamento, na telemetría, nos puntos finais de estado/preparación etc., a medida que os equipos se dan conta de que poden manter a configuración de maneira máis eficiente no código compartido, se estes chegan a un acordo sobre as convencións estándar.

## Ver máis

Este modelo está relacionado co de [garantía de 30 días](./30-day-warranty.md), o cal adopta un enfoque diferente para resolver os aspectos que mellorar descritos anteriormente.

## Exemplos coñecidos

- Europace AG
- Flutter Entertainment: A[aplicación Flutter InnerSource](https://innersource.flutter.com/docs/)ten un repositorio de «servizo» de código compartido para as contribucións entre equipos e o fluxo de traballo da CI co fin de crear e publicar un dispositivo de lanzamento compartido. Cada equipo ten un repositorio de «configuración de uso» que define a súa propia implantación. Isto débese a requisitos normativos cambiantes que impulsaron diferentes requisitos normativos, prácticas de xestión de servizos e incidencias e conxuntos de habilidades de infraestrutura en diferentes áreas de negocio.

## Estado

- Estruturado

## Autoría

- Isabel Drost-Fromm
- Rob Tuley

## Recoñecementos

Grazas Tobias Gesellchen pola revisión interna de Europace AG.

## Título alternativo

Servizo vs. libraría: É InnerSource, non execución interna.

## Tradución

- Leticia Gómez Cadahía
- María Lucía González Castro
