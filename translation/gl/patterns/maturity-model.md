## Title

Modelo de madurez

## Patlet

Os equipos comezaron a adoptar InnerSource e a práctica estase estendendo a varios departamentos. Con todo, a comprensión do que constitúe un proxecto InnerSource varía. A solución consiste en proporcionar un modelo de madurez que permita aos equipos realizar unha autoavaliación e descubrir modelos e prácticas que aínda non coñecían.

## Problema

Cando a adopción de InnerSource nunha empresa comeza a incrementarse, a mentoría individual de cada proxecto por un/unha experto/a en InnerSource faise inviable. Ademais, cada vez máis persoas están a adquirir, polo menos, unha comprensión básica do que significa traballar nun proxecto InnerSource. Abarcan tódolos proxectos InnerSource aínda que diverxa a profundidade de comprensión do concepto. Os equipos poden non coñecer modelos probados que lles axuden a pasar ao seguinte nivel e a resolver as incidencias e puntos problemáticos cos que estean a tratar.

## Contexto

Varios equipos comezaron a adoptar prácticas InnerSource. O nivel exacto de comprensión da práctica diverxe entre os equipos. Os problemas exactos cos que se atopan os equipos diverxen segundo o contexto e o ambiente de traballo de cada equipo. Como resultado, a definición de cales son as mellores prácticas de importancia nun proxecto InnerSource varía dependendo de cada equipo.

## Aspectos que mellorar

Os equipos que comparten aprendizaxe en InnerSource teñen malentendidos, pois non son conscientes do seu respectivo nivel de adopción de InnerSource.

Os equipos cren que «todo consiste en migrar a unha [forxa](https://en.wikipedia.org/wiki/Forge_%28software%29) de desenvolvemento de software compartido» (GitLab, GitHub ou Bitbucket son exemplos coñecidos deste tipo de forxas).

Os equipos non coñecen as mellores prácticas que lles axuden a resolver as incidencias coas que se atopan na súa actividade diaria.

## Solución

Pedir aos equipos que se autoavalíen en base ao modelo de madurez proposto.

### Transparencia

**Plans e produtos**

O proxecto InnerSource benefíciase de que a planificación sexa transparente en toda a organización ao permitir que as partes interesadas comprendan mellor as decisións e inflúan nelas de xeito que poidan ser seguidas por outros/as.

* PP-0: Os individuos e os equipos non divulgan regularmente os seus plans ou produtos a múltiples partes interesadas. Non existen accións formais na organización.
* PP-1: Os individuos e equipos dan visibilidade aos seus plans ou produtos a múltiples partes interesadas antes de comezar. Folla de ruta compartida.
* PP-2: Xa hai follas de ruta compartidas con directrices claras e regras de contribución nas que os/as interesados/as poden aportar retroalimentación. Non obstante, isto non está estandarizado en toda a organización e non tódolos proxectos proporcionan esta información. 
* PP-3: As follas de ruta compártense por defecto e hai un proceso estándar e unha forma homoxénea de facelo en toda a organización a nivel de cada proxecto InnerSource. Esta contén regras claras para contribuír e influír na folla de ruta.

**Proceso de desenvolvemento e ferramentas**

Os proxectos InnerSource prosperan cando os/as contribuidores/as se volven activos/as e participativos/as. Como resultado, facilitar as contribucións debería equilibrarse con obxectivos puramente técnicos.

* DP-0: Cada equipo segue o seu propio proceso de desenvolvemento e ferramentas. Non están definidos para compartir coñecementos e dispositivos fóra do equipo de desenvolvemento. Equipos de desenvolvemento en silos.
* DP-1: Os equipos de desenvolvemento usan repositorios de código compartido internamente. Algúns equipos desenvolven o seu propio proceso de CI, utilizando ferramentas de CI non corporativas ou estándar. Non hai un proceso de revisión de código definido, aínda que algúns equipos de proxectos fano internamente.
* DP-2: A organización patrocina e promove un repositorio compartido para o coñecemento colectivo. Algúns equipos desenvolven o seu propio proceso de CI, usando ferramentas de CI corporativas. Hai ambientes CI, así como un proceso de revisión do código definido que se emprega nalgúns proxectos. Ás veces, a revisión do código é realizada por membros externos do equipo.
* DP-3: A meirande parte dos equipos desenvolven o seu propio proceso de CI, utilizando ferramentas de CI corporativas. Existen ambientes CI, así como un proceso de revisión do código definido e utilizado. A revisión do código realízana os membros do equipo interno e externo. 

**Decisións**

Para motivar aos/ás compañeiros/as a contribuír ao traballo fóra do seu *core team*, necesítase visibilidade sobre o proceso de toma de decisións do proxecto anfitrión, pero tamén precisan sentir que as súas voces están sendo escoitadas e valoradas.

* DC-0: Os/As encargados/as de tomar decisións adoitan reter de forma intencionada ou accidental datos e recursos relacionados coas decisións do proxecto.
* DC-1: Os materiais que forman parte das prácticas de toma de decisións están dispoñibles para a súa revisión despois de que se finalicen as decisións.
* DC-2: A xente sente que está ao día e que está axudando a darlle forma ás decisións máis importantes (pero non todas) a medida que se van desenvolvendo. Os materiais que forman parte das prácticas de toma de decisións están dispoñibles nos fitos do proxecto definidos.
* DC-3: As persoas senten que forman parte dun proceso común e estándar para a toma de decisións colectivas que a organización avala. Os materiais que forman parte das prácticas de toma de decisións están continuamente accesibles durante os procesos de traballo.

**Recursos de utilidade**

Para atraer contribuidores/as, o material útil de soporte debe ser facilmente accesible.

* RS-0: Individuos e equipos non contribúen nin recorren a un repositorio de coñecemento compartido.
* RS-1: Individuos e equipos liberan materiais do proxecto para a súa revisión interna, despois de rematar o seu traballo. Individuos e equipos comparten recursos, pero en sistemas ou repositorios desconectados, fragmentados ou individualizados/en silos. Individuos e equipos comparten recursos, pero non existe unha comprensión común ou compartida dos criterios utilizados para determinar se a información é sensible ou non. 
* RS-2: Individuos e equipos fan que os materiais relacionados co proxecto sexan accesibles a algúns membros dos equipos do proxecto segundo formatos e/ou protocolos compartidos claramente definidos. Individuos e equipos manteñen datos e recursos confidenciais e proporcionan detalles, contexto e alcance limitados.
* RS-3: Individuos e equipos fan que os materiais relacionados co proxecto sexan amplamente accesibles para a organización e, posiblemente, tamén fóra dela, segundo formatos e/ou protocolos claramente definidos e compartidos. Os individuos e equipos que deben reter datos e recursos confidenciais teñen claro o que non están a compartir, e outros entenden por que eses materiais non están dispoñibles para eles/as.

## Historia

Cando se traballe en equipos anfitrións, os erros serán visibles de xeito automático. Para manter os niveis de contribución elevados, a cultura corporativa debe celebrar o fracaso como unha oportunidade de crecemento e aprendizaxe.

* ST-0: Individuos e equipos non comparten éxitos ou fracasos para que outros aprendan.
* ST-1: Individuos e equipos están cómodos compartindo historias sobre éxitos, pero non sobre fracasos.
* ST-2: Individuos e equipos están cómodos compartindo historias de éxitos e fracasos durante retrospectivas e revisións.
* ST-3: Individuos e equipos están cómodos compartindo historias de éxitos e fracasos e aprenden dos fracasos segundo protocolos formais.

### Colaboración

**Canles de retroalimentación**

Para que se reduzan os silos, os/as compañeiros/as deben sentirse cómodos/as compartindo retroalimentación mutua de maneira aberta. Unha forma sinxela de favorecer isto é utilizar os mesmos principios de comunicación para tódalas xerarquías.

O ideal é ter unhas canles de comunicación adecuadas que sexan coñecidas por calquera persoa da organización, e centradas en diferentes obxectivos (anuncios, soporte ao/á usuario/a, canles de desenvolvemento, infradiscusións etc.). Algunhas das mellores prácticas que se poden establecer a medida que maduren os seus proxectos InnerSource son: Adopción de directrices de netiqueta, abrir un conxunto probado de canles estándar (que se manteñan arquivados, sexan accesibles ao público e permitan facer procuras) para cada novo proxecto InnerSource.

* CF-0: Non hai procesos nin canles establecidos. Algúns membros da organización comparten materiais a través de canles ou discusións privadas.
* CF-1: A organización está en proceso de establecer directrices internas e canles para fomentar diversos puntos de vista sobre as decisións empresariais/departamentais, para que calquera persoa pertencente á organización poida utilizalas. Algúns membros da organización comparten materiais para a toma de decisións de forma informal utilizando plataformas non oficiais. Os/As líderes manteñen, polo menos, unha canle clara e directa para que os membros da organización compartan opinións de forma construtiva sobre algúns asuntos relevantes para o seu traballo.
* CF-2: A organización estableceu pautas e canles internas e proporciona recursos específicos (programas de formación, acceso a contidos etc.) para fomentar e solicitar puntos de vista diversos sobre o equipo ou as decisións.
* CF-3: Os membros da organización comparten materiais para a toma de decisións en plataformas oficialmente autorizadas. Os membros da organización comparten materiais abertamente a través de múltiples canles e métodos para obter retroalimentación. Os/As líderes tamén usan esas mesmas canles, animan abertamente a outros/as a que os utilicen e manteñan rexistros de comentarios públicos ou da retroalimentación recibida polo equipo e/ou das accións que tomaron para abordala.

**Liderado**

Os proxectos de InnerSource animan aos/ás empregados/as a contribuír a proxectos fóra da influencia directa do/a seu/súa superior directo/a. Isto precisa dunha cultura de confianza.

* LS-0: Cultura de mando e control dentro dunha organización altamente xerárquica.
* LS-1: Algúns/Algunhas líderes están abertos/as a recibir valoracións e crear un ambiente no que a xente se sinta segura proporcionándoas.
* LS-2: A meirande parte dos/as líderes da organización están abertos/as a recibir retroalimentación e crear un ambiente no que a xente se sinta segura proporcionándoa. Pasividade dos/as líderes ao entender que tódolos membros se senten con poder e habilitados para compartir. A organización anima aos/ás líderes a buscar activamente voces non presentes no diálogo para a súa inclusión.
* LS-3: Os membros séntense con poder e habilitados para compartir opinións de forma construtiva sobre calquera asunto relevante para o seu traballo ou sobre o que lles apaixona.

**Estrutura organizativa e funcional**

Cando InnerSource abandona o nivel de codificación pura e entra no nivel da comunidade e do grupo de traballo, hai potencial para reducir os silos aínda que non sexa posible a colaboración directa no código.

* OF-0: Os grupos de traballo tenden a ser estáticos en termos de pertenza e conxuntos de habilidades.
* OF-1: Existen equipos multifuncionais, pero os roles do equipo adoitan estar pouco claros e as estruturas de goberno son vagas.
* OF-2: Os equipos multifuncionais son comúns e os roles e obxectivos do equipo publícanse abertamente.
* OF-3: Os equipos transversais son comúns e dan a coñecer tódalas súas actividades á organización; á súa vez, a organización promove as mellores prácticas para traballar xuntos/as.

**Contribución**

No deseño de modelos de contribucións, o obxectivo é ter en conta a colaboración na procura da redución dos silos.

* CB-0: Totalmente illado, non hai practicamente colaboración fóra dos equipos; salvo nos casos de equipos multifuncionais.
* CB-1: Os membros da organización e os equipos colaboran pero, con frecuencia, atópano «demasiado difícil». Os equipos apenas revisan os resultados das súas colaboracións.
* CB-2: Os membros da organización e dos equipos buscan activamente oportunidades de colaboración. Os equipos discuten, revisan e debaten habitualmente os resultados dos seus esforzos de colaboración e, de xeito predeterminado, encárganse de que os seus resultados estean dispoñibles.
* CB-3: Os membros da organización colaboran tanto interna como externamente, de forma que beneficie a tódolos/as implicados/as. Os equipos discuten, revisan e debaten habitualmente os resultados dos seus esforzos de colaboración, comparten as súas aprendizaxes fóra da organización e encárganse de que os seus resultados estean dispoñibles de maneira externa por defecto.

### Comunidade

**Políticas para compartir**

Ter unha base de referencia de valores compartidos fai que sexa máis fácil traballar transcendendo os límites do equipo. Cruzar os límites faise máis fácil se un conxunto limitado de regras e directrices base se aplican en todas partes e se poden referenciar con facilidade.

* SP-0: Non se comparte cultura nin políticas escritas.
* SP-1: Algúns membros da organización únense para definir valores e principios, pero non existe un claro apoio nestes casos.
* SP-2: Os membros da organización documentan colectivamente visións comúns e acordos, como declaracións de misión e códigos de conduta; e son de fácil acceso se precisan consultalos a miúdo. Os materiais de incorporación e os rituais de orientación proporcionan o contexto adecuado para axudar aos novos membros a comprender como se beneficiará a organización das súas contribucións.
* SP-3: Os valores e principios compartidos conforman a toma de decisións, a resolución de conflitos e os procesos de avaliación entre os membros da organización, que fan referencia a estes valores e principios de forma consistente tanto en formato oral como escrito.

**Sentirse parte da organización**

Unha das posibles razóns para introducir InnerSource nas organizacións pode ser favorecer un maior grao de compromiso. Este punto fai un seguimento de como está a cambiar a implicación dos/as traballadores/as ao adoptar InnerSource.

* PA-0: Baixo grao de compromiso, sen colaboración a xente non se sente cómoda compartindo cos/coas demais.
* PA-1: Os membros da organización séntense cómodos compartindo as súas opinións sen medo a represalias, pero só en ámbitos coñecidos. A xente entende que as mellores ideas gañan e as responsabilidades de liderado recaen en persoas cun historial de contribución e compromiso.
* PA-2: Os membros da organización séntense cómodos compartindo os seus pensamentos e opinións sen medo a represalias. Os/As líderes demostran dedicación aos valores compartidos da organización.
* PA-3: A empresa é proactiva á hora de facerlles saber aos membros que se beneficia das súas contribucións; como tal, os membros amosan ter unha conciencia compartida e unha execución apoderada, e senten un sentido de responsabilidade coa comunidade. Os/As líderes entenden que crecen axudando a outros/as a crecer e son mentores/as dos membros máis novos da organización. 

### Gobernación

**Recompensas**

Para impulsar a adopción, pódense usar motivadores extrínsecos na procura do incremento da colaboración entre equipos.

* RW-0: Sen recompensas.
* RW-1: Anímase aos/ás líderes a recompensar colaboracións excepcionais, pero non hai políticas nin procesos establecidos.
* RW-2: Establécense procesos estándar para recompensar colaboracións fóra dos equipos de desenvolvedores/as. Os/As líderes dos equipos ou xuntas deciden quen ten que ser recompensado/a.
* RW-3: As recompensas non só son propostas pola organización, senón que as comunidades poden definir as súas recompensas máis valiosas. A comunidade é a responsable de decidir quen ten que ser recompensado/a.

**Políticas de seguimento**

Os proxectos InnerSource necesitan un medio para a autoavaliación. As métricas poden ser unha maneira de facilitar esta avaliación. Ademais, en organizacións cun nivel de adopción de InnerSource maduro, esperamos que se faga un seguimento da adopción do método en función de métricas claras e acordadas.

* MP-0: Non existen políticas de seguimento a ningún nivel da organización.
* MP-1: As métricas son importantes para certos equipos e comezan a empregalas de forma illada.
* MP-2: Existe unha estratexia a nivel organizativo con respecto ás métricas que axudan a validar políticas específicas en toda a organización. Esta política de seguimento existe a nivel dalgúns proxectos InnerSource.
* MP-3: Hai pautas, recomendacións e adestramentos claros sobre o uso de métricas cunha certa infraestrutura que proporcionou a organización. Isto funciona en ambos niveis: programa InnerSource para comprender a adopción xeral de InnerSource dentro da organización e a nivel dos proxectos InnerSource.

**Soporte e mantemento**

O desenvolvemento de funcionalidades non só debe ser propiedade dos equipos de InnerSource: o soporte e o mantemento tamén forman parte das tarefas fundamentais dos equipos.

* SM-0: Soporte ofrecido polo equipo de desenvolvemento principal ou o equipo de soporte. Un contrato comercial garante o soporte. Non hai coñecemento do produto fóra do equipo.
* SM-1: Existen normas e regulamentos para formalizar o soporte ao produto, impartido por un equipo de soporte especializado.
* SM-2: O soporte ás contribucións de InnerSource formalízase a través de modelos de InnerSource como [Garantía de 30 días](./30-day-warranty.md) ou [Servizo vs. Libraría](./service-vs-library.md).
* SM-3: Existen normas e regulamentos para formalizar o soporte do produto por unha comunidade madura.

**Cultura**

Hai varios niveis que avanzan cara a unha cultura colaborativa.

* CL-0: Silos: os equipos traballan independentemente, pero tamén de forma illada.
* CL-1: Reactiva: Os equipos traballan de forma independente, pero saben como reaccionar ante fallos nas dependencias.
* CL-2: Contributiva: Os equipos axudan activamente coas súas contribucións a mellorar as súas dependencias.
* CL-3: Activista: Os equipos buscan axuda, orientan e contratan novos/as colaboradores/as de forma activa.

**Roles InnerSource**

InnerSource inclúe roles explícitos. Aínda que nas fases iniciais algúns modelos pódense empregar sen adoptar eses roles, a comunicación dentro de proxectos será máis doada ao empregar explicitamente títulos de roles .

* RO-0: Non hai roles específicos que axuden á adopción de InnerSource. Só están presentes os roles de desenvolvemento comúns: desenvolvedor/a, analista, *tester* etc.
* RO-1: Ás veces algúns individuos e equipos contribúen a outros proxectos. Trátase de contribucións técnicas, nas que se ve o rol de usuario/a-colaborador/a. Nalgúns equipos, pódese identificar polo menos un membro como referencia técnica e que explica o proceso de desenvolvemento a outros membros do equipo de desenvolvemento. Podería ser un/unha candidato/a para cubrir o papel de *trusted committer*.
* RO-2: O rol de InnerSource *officer* encárgase da gobernación e do soporte, así como dos procesos etc. Identifica as necesidades educativas e garante que estas se lles proporcionen á organización. Lidera e orienta á organización no compromiso en proxectos de InnerSource. É o primeiro paso formal no camiño, definindo a visión e a folla de ruta de InnerSource. A organización definiu un papel de *trusted committer* como un punto de contacto/referencia non só para os membros do equipo de desenvolvemento, senón tamén para os/as contribuidores/as externos/as. Hai un proceso estándar que describe como contribuír á comunidade, no que está presente o rol de contribuidor/a. O rol de *data scientist* encárgase de xestionar os rastros de actividade que deixa a iniciativa InnerSource, necesarios para medir a súa evolución. O papel de *trusted committer* evolucionará a un perfil máis técnico, e un/unha coordinador/a da comunidade será o/a encargado/a de «dinamizala», sendo a súa principal responsabilidade atraer e reter novos/as desenvolvedores/as-usuarios/as (contribuidores/as-membros da comunidade).
* RO-3: Os/As expertos/as en InnerSource están a moverse dentro da organización para que outros/as coñezan o traballo actual, para que serve InnerSource e como poñelo en marcha; e axudan aos/ás demais a comprender e formar parte da iniciativa. Aparecen tamén colaboradores/as non técnicos/as.

## Contexto resultante

Tódolos equipos coñecen as mellores prácticas dispoñibles.

Os equipos comprenden o seu nivel de adopción de InnerSource.

Antes de adoptar InnerSource como modelo de traballo, os equipos son conscientes das prácticas que se esperan deles, tanto a curto como a longo prazo.

## Exemplos coñecidos

* Entelgy
* Zylk
* Bitergia

## Autoría

* Daniel Izquierdo Cortazar
* Isabel Drost-Fromm
* Jorge
* Nerea

## Recoñecementos

* Alexander Andrade (especial agradecemento polas correccións ortográficas da versión orixinal).

## Título alternativo

Modelo de madurez: Información sobre as mellores prácticas de InnerSource

## Estado

* Estruturado
* Elaborado en setembro de 2019

## Tradución

- Leticia Gómez Cadahía
- María Lucía González Castro
