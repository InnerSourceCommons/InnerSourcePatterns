## Title

Avaliação de Projeto entre Equipes

## Patlet

É difícil vender o valor de projetos InnerSource entre equipes que não proporcionam um impacto direto na receita da empresa. Aqui está uma maneira baseada em dados para representar seu projeto que articula seu valor e o amplifica.

## Context

* Você é responsável por uma equipe cross que serve como plataforma para outros na empresa.
* O projeto entre equipes não proporciona nenhum valor direto para a receita da empresa.

## Problem

Projetos entre equipes podem ter um impacto muito grande na empresa, mas são difíceis de representar de maneira baseada em dados. Como resultado, é fácil e comum tanto buscar projetos que não fornecem valor real quanto subfinanciar o que, de outra forma, produziria grande valor.

## Forces

* Os projetos precisam demonstrar valor (objetivo ou subjetivo) à liderança da empresa para serem financiados.
* O valor do projeto entre equipes é disperso em várias unidades de negócios finais.
* Devido a essa dispersão, o valor do projeto entre equipes é difícil de medir diretamente.

## Solution

Estabeleça um padrão e modelo de como valorizar projetos entre equipes. 

Tais modelos nos fornecem a ferramenta necessária para nos concentrarmos e ampliar a colaboração de alto valor para a empresa.

O core de todo o valor do projeto entre equipes é a ideia de que podemos realizar mais juntos do que separados. Atribuir valor a um esforço entre equipes é um exercício em quantificar _quanto mais_ está sendo feito juntos. O delta exato na produtividade variará de acordo com o domínio e o projeto. Existe um processo comum pelo qual você pode criar um modelo para calculá-lo.

### Explanation

Monte uma pequena equipe de especialistas em seu domínio.
Usando essa equipe de especialistas, estime 4 coisas sobre cada consumidor de sua saída de projeto:

* Quanto tempo leva para que eles consumam a saída do seu projeto?
* Quanto tempo levaria para que eles criassem o valor da saída do seu projeto para si mesmos?
* Qual a porcentagem da saída do seu projeto é realmente útil para eles?
* Quanto tempo eles gastariam em manutenção da solução criada por eles mesmos, em base contínua (idealmente por uso)?

Ao fazer essas estimativas, é impossível saber com alta precisão exatamente quanto tempo cada atividade leva. Isso não é o seu objetivo. Em vez de exatidão, você deve se esforçar para **estabelecer um limite mínimo** nessas estimativas.
A ideia é que o grupo de especialistas seja capaz de dizer uns aos outros: "Não sabemos exatamente quanto tempo levaria, mas todos concordamos que é pelo menos isso."
Especificamente, você deve estimar um tempo máximo razoável para consumir a saída do seu projeto e tempos mínimos razoáveis para os consumidores, caso contrário, criar, usar e manter suas próprias soluções.

Uma observação sobre o custo de "criar sua própria solução" (home-roll). O custo de criar uma solução por conta própria NÃO é necessariamente o mesmo (muito improvável, na verdade) do custo de criar uma solução compartilhada. Muitas vezes, para a mesma funcionalidade, a modularidade e qualidade envolvidas na construção de uma solução compartilhada entre equipes tornam o investimento significativamente maior do que uma implementação rápida e codificada usada apenas uma vez.

### Formula

Depois de estimar os limites piores casos, você pode calcular o valor da saída do seu projeto de equipe cross durante um determinado período de tempo usando a fórmula simples:

```
[Tempo Economizado] - [Tempo Investido]

([Número de novas implementações] * [Custo para desenvolver internamente] * [Porcentagem de funcionalidade útil] + [Número de usos] * [Custo de manutenção por uso]) - ([Número de novas implementações] * [Custo de implementação])

[Número de novas implementações] * ([Custo para desenvolver internamente] * [Porcentagem de funcionalidade útil] - [Custo de implementação]) + [Número de usos] * [Custo de manutenção por uso]
```

### Commentary

Apesar das aparências de rigor, esse processo não produz uma forma exata de medir a saída de projetos entre equipes.
Na prática, entretanto, ele oferece um modelo através do qual você pode tomar uma decisão adequada de como financiar esse trabalho.
Depois de ter dados bons e razoáveis conforme explicado acima, você deve financiar horas de desenvolvimento dedicadas para executar o projeto em, _**pelo menos**_ um dos três níveis abaixo:

1. O número de horas poupadas pela fórmula acima. Como todos temos certeza de que a fórmula produzirá um número abaixo do verdadeiro número de horas salvas, você pode ter a confiança de que financiar o projeto até esse ponto é uma vitória certa para você.
1. A quantidade de tempo que leva para dar suporte a contribuições internas para projetos entre equipes. Como o colaborador provavelmente teria feito o trabalho de qualquer maneira de forma única, vale a pena financiar o tempo que leva para facilitar o trabalho dele ser compartilhado.
1. Qualquer quantia que pareça boa para você. Um efeito colateral intencional de ter uma fórmula de valoração é que ela naturalmente força a medição dos pontos-chave de uso que fornecem valor aos consumidores.

Essas medidas podem ser compreendidas e utilizadas em sua forma bruta para lhe fornecer uma ideia intuitiva de quão valioso é o projeto.

Algumas pessoas podem se preocupar com a falta de precisão nessa abordagem de valoração. Mas tudo bem se esse processo não fornecer uma medição exata. Ele só precisa ser preciso o suficiente para cumprir dois objetivos:

1. Dar um meio de representar o valor do que está acontecendo para aqueles que estão organizando e financiando esforços entre equipes.
1. Ajudar aqueles envolvidos a saber quais áreas de esforço entre equipes são prioritárias com base em seu valor.

Na prática, desde que essas valorações estejam dentro de uma ordem de grandeza da realidade e uma da outra, elas são suficientemente precisas para cumprir esses propósitos. Elas fornecerão uma melhoria significativa nos resultados em relação às valorações ad hoc (e aos efeitos resultantes) descritas na seção Problema no início deste documento.

## Resulting Context

* Meios baseados em dados para discutir o valor e financiamento do projeto de equipe cross com a liderança.
* Métricas-chave em torno do projeto de equipe cross instrumentalizadas em forma bruta.
* Definir como o projeto de equipe cross fornece valor tende a levar a ele produzir maior valor para a empresa.
* Projeto geralmente bem-sucedido e "buzz" em torno dele.

## Known Instances

* Nike

## Status

* Structured
* Proven in multiple domains.

## Authors

* Russ Rutledge

## Acknowledgement

* Jeremiah Wright por me ensinar a pensar em projetos entre equipes como um negócio interno que opera na moeda do tempo dos desenvolvedores.

## Histórico de Tradução 

- **2022-04-27** - Tradução [Eneri Junior](https://github.com/jrcosta)