## Title

Valoración de proxectos entre equipos

## Patlet

é difícil convencer acerca do valor dos proxectos InnerSource desenvolvidos entre equipos que non teñen un impacto directo nos ingresos da empresa. Velaquí unha forma de representar o seu proxecto baseada en datos, que articula o seu valor e amplifícao.

## Contexto

- Vostede é responsable da colaboración entre equipos que serve de plataforma para outros/as traballadores/as da empresa.
- O proxecto de colaboración entre equipos non achega ningún valor directo aos ingresos da empresa.

## Problema

Os proxectos de colaboración entre equipos poden ter un grande impacto na empresa, pero son difíciles de representar mediante datos. En consecuencia, é doado e habitual seguir adiante con proxectos que non achegan valor real ou non inverter suficiente diñeiro, o que, en caso contrario, si achegaría un gran valor.

## Aspectos que mellorar

- Os proxectos deben amosar valor (obxectivo ou subxectivo) ao liderado da empresa para que se poidan financiar.
- O valor do proxecto de colaboración entre equipos distribúese entre múltiples unidades comerciais afíns.
- Por mor desta dispersión, o valor do proxecto de colaboración entre equipos é difícil de medir de xeito directo.

## Solución

Estableza un modelo e unha fórmula para avaliar os proxectos de colaboración entre equipos. Estes modelos bríndannos a ferramenta que necesitamos para centrar e amplificar a colaboración de gran valor para a empresa.

O núcleo do valor de todo proxecto de colaboración entre equipos é a idea de que podemos facer máis cousas xuntos/as que separados/as. Atribuírlle valor ao esforzo de colaboración entre equipos é un exercicio para cuantificar *canto máis* se está avanzando xuntos/as. O *delta* exacto de produtividade variará segundo o ámbito e o proxecto. Existe un proceso común, mediante o cal pode crear unha fórmula para calculalo.

### Explicación

Reúna un pequeno equipo de expertos/as na materia do seu ámbito. Empregando ese equipo de expertos/as, estime catro aspectos sobre cada consumidor/a da produción do seu proxecto:

- Canto tempo lles leva consumir a produción do seu proxecto?
- Canto tempo lles levaría, pola contra, calcular o valor da produción do seu proxecto por si mesmos/as?
- Que porcentaxe da produción do seu proxecto é realmente útil para eles/as?
- Canto tempo (por uso óptimo) dedicarían a empregar unha solución caseira?

Á hora de facer estas estimacións, é imposible saber con gran precisión canto tempo leva cada actividade. Ese non é o seu obxectivo. En lugar da exactitude, debe esforzarse en ***establecer un límite para delimitar o peor escenario posible*** destas estimacións.

A idea é que no grupo de expertos/as poidan dicirse uns/unhas a outros/as: «Non sabemos exactamente canto tempo nos levaría, pero todos/as estamos de acordo en que, *polo menos* nos levaría este tempo». Concretamente, debe estimar un tempo *máximo* razoable e tempos *mínimos* razoables para que os/as consumidores/as poidan, por outra parte, improvisar e aplicar as súas propias solucións.

Un apunte sobre o custo de idear unha «solución caseira propia»; o custo de pór en marcha unha solución caseira NON é necesariamente (de feito, é moi pouco probable) o mesmo que o de crear unha solución común. A miúdo, para a mesma funcionalidade, a modularidade e a calidade involucradas na creación dunha solución mediante a colaboración entre equipos, fai que sexa un investimento notablemente maior que unha aplicación rápida e codificada que se emprega só unha vez.

### Fórmula

Unha vez que teña os límites do peor escenario posible, pode valorar o resultado do seu proxecto de colaboración entre equipos durante un período de tempo concreto a través da sinxela fórmula:

```
[Time Saved] - [Time Invested]

([Count of New Onboardings] * [Cost to Home-Roll] * [Percent Useful Functionality] + [Count of Usages] * [Maintenance Cost Per Use]) - ([Count of New Onboardings] * [Cost to Onboard])

[Count of New Onboardings] * ([Cost to Home-Roll] * [Percent Useful Functionality] - [Cost to Onboard]) + [Count of Usages] * [Maintenance Cost Per Use]
```

### Comentario

A pesar do seu rigor, este proceso non produce unha forma exacta para medir o resultado nun proxecto de colaboración entre equipos. Na práctica, con todo, brinda un marco mediante o cal pode tomar unha decisión acertada para financiar este traballo. Tras dispor de datos fiables e razoables, de acordo coa explicación anterior, debe financiar as horas de desenvolvemento dedicadas a executar o proxecto ata, **polo menos**, chegar ao nivel máis baixo destes tres niveis seguintes:

1. As horas brutas que se aforraron mediante a fórmula anterior. Posto que todos/as estamos seguros/as de que a fórmula nos devolverá unha cifra inferior ao número real de horas aforradas, pode estar seguro/a de que financiar o proxecto é unha vitoria asegurada.
2. A cantidade de tempo que se necesita para apoiar as contribucións InnerSource a proxectos de colaboración entre equipos. Posto que o/a contribuidor/a probablemente tería feito o traballo de todos os xeitos puntualmente, merece a pena financiar o tempo que se necesita para facilitar que o seu traballo pase a estar nunha arquitectura de información compartida.
3. O que a vostede lle pareza mellor. Un efecto secundario intencionado de dispor dunha fórmula de valoración é que, naturalmente, obriga a medir puntos chave que dan valor aos/ás consumidores/as.

Esas medicións poden entenderse e consumirse na súa forma bruta para que vostede poida intuír a valía deste proxecto:

Pode que a algúns/algunhas lles preocupe a falta de precisión deste método de valoración. Está ben que este proceso non teña un resultado de medición exacta. Só ten que ser o suficientemente preciso para cumprir dous obxectivos:

1. Ofrecer un medio para representar o valor do que está acontecendo a quen organiza e financia o esforzo dos equipos.
2. Axudar os/as implicados/as a saber que áreas dos esforzos entre os equipos son máis prioritarias en función do seu valor.

Na práctica, sempre que estas valoracións se atopen dentro dunha orde de magnitude da realidade e entre si, son suficientemente precisas para cumprir con estes fins. Mellorarán de sobra os resultados obtidos respecto das valoracións *ad hoc* (e dos efectos resultantes) descritas na sección **Problema** ao comezo deste documento.

## Contexto resultante

- Medios baseados en datos para debater o valor e financiamento do proxecto de colaboración entre equipos mediante o liderado.
- Métricas clave arredor do proxecto de colaboración entre equipos instrumentados en bruto.
- Definir a forma na que o proxecto de colaboración entre equipos achegar valor e como iso adoita producir un maior valor para a empresa.
- Éxito xeral do proxecto e axitación ao seu redor.

## Exemplos coñecidos

- Nike

## Estado

- Estruturado
- Probado en múltiples dominios

## Autoría

- Russ Rutledge

## Recoñecementos

- Jeremiah Wright, por ensinarme a considerar os proxectos de colaboración entre equipos como un negocio interno no que a moeda é o tempo dos desenvolvedores/as.

## Tradución

- Leticia Gómez Cadahía
- María Lucía González Castro
