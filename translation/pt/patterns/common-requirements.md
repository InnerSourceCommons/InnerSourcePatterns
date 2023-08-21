## Title

Requisitos Comuns

## Patlet

O código comum em um repositório compartilhado não está atendendo às necessidades de todas as equipes de projeto que desejam usá-lo; isso é resolvido por meio do alinhamento de requisitos e refatoração.

## Problem

O código comum no repositório compartilhado não está atendendo às necessidades de todos os projetos que desejam usá-lo.

## Context

* Muitos projetos estão tentando usar um código comum. Existe um repositório compartilhado que todos os projetos acessam.
* Alguém (ou algum projeto) escreveu o código em primeiro lugar e o contribuiu para o repositório.
* O código comum é uma pequena porcentagem do resultado geral de qualquer um dos projetos.
* Cada projeto tem seu próprio cronograma de entrega, conjunto de entregas e clientes.
* Este padrão se aplica em qualquer uma dessas situações:
    * há um **Proprietário de Código Forte** ou seja, todas as mudanças no repositório compartilhado devem ser aprovadas pelo proprietário do repositório
    * há uma **propriedade de código fraca** ou seja, ninguém realmente é dono do código
    * não há um **Patrocinador Benevolente** ou seja, nenhuma organização ou executivo está fornecendo recursos para organizar o código comum de forma InnerSource.

## Forces

No código disponibilizado pelo projeto original tem um conjunto de necessidades. Suas necessidades são semelhantes ao que algumas das organizações receptoras desejam, mas não exatamente as mesmas. Os requisitos do código devem ser derivados das necessidades reais dos clientes.

As necessidades dos diferentes clientes são geralmente bastante similares; no entanto, elas podem ser expressas de maneira diferente ou ponderadas de forma diferente entre os clientes. Um exemplo pode ser como alguns clientes querem que algum resultado seja apresentado de uma forma, enquanto outros querem que seja apresentado na ordem inversa. É simples fazer a tradução entre eles, mas requer codificação adicional para um dos casos e, como resultado, o módulo que calcula o resultado não pode ser reutilizado por ambos os clientes.

Muitos clientes querem que o fornecedor os ajude a saber do que precisam. A empresa tem muitos "Engenheiros de Sistemas" que escrevem requisitos para os produtos. Esses requisitos devem ser uma destilação das necessidades dos clientes para orientar o desenvolvimento do produto.
Reutilizar o código é um objetivo importante para economizar tempo e dinheiro da empresa.

## Solution

Existem dois aspectos para resolver este problema que devem ser feitos em paralelo:

1. Alinhar os requisitos dos projetos para que o código que atenda aos requisitos de um projeto também atenda às necessidades dos outros projetos.
2. Refatorar o código em peças menores para as quais os muitos projetos que o utilizam possam concordar com os requisitos.

Além disso, aproveite que os clientes esperam que o fornecedor ajude a elucidar os requisitos. Promova o alinhamento dos requisitos durante as negociações com o cliente e influencie os requisitos do cliente em vez de alterar o componente.

No exemplo apresentado acima, o fornecedor ajuda ambos os clientes a perceberem que eles querem a mesma coisa, e isso economizará esforço (e dinheiro) se eles concordarem em aceitar o resultado no mesmo formato.

![Common Requirements](../../assets/img/CommonReqtsv2.jpg)

## Resulting Context

Isso pode exigir negociação de mudanças nos requisitos com o cliente. As mudanças também podem exigir o envolvimento das equipes de vendas e gerentes de produtos para obter alinhamento nos requisitos. O cliente pode precisar de incentivos, como descontos, para concordar com as mudanças.

Um desafio relacionado (e possivelmente um novo padrão) é um exercício de escrita de histórias circulares relatado em uma empresa que usa o InnerSource. Em resumo:

* Os desenvolvedores escrevem uma história para resolver um problema de uma maneira.
* Os gerentes de programa reescrevem a história para expressar melhor suas necessidades - mantendo a essência da história. Quando a história retorna para os desenvolvedores, eles não a reconhecem como algo que eles queriam fazer originalmente e, portanto, hesitam em implementá-la.
* A solução para esse padrão é ter mais assentos ao redor da mesa de planejamento para que as modificações de histórias sejam compreendidas em todo o projeto, não apenas nos campos dos desenvolvedores ou gerentes de programa.

## Known Instances

* Grande provedor de telecomunicações

## Status

* Structured

## Author

Robert Hanmer

## Acknowledgements

* Manrique Lopez
* Daniel Izquierdo
* Tim Yao
* Sebastian Spier

## Histórico de Tradução

- **2022-04-20** - Tradução [Eneri Junior](https://github.com/jrcosta)
- **2022-04-20** - Tradução [Humberto Zilio](https://github.com/zilio)
