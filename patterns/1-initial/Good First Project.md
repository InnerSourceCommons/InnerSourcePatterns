## Title

Good First Project

## Patlet

This pattern presents a framework (_Project-Process-People_ model) and an __accompanying tool__ for identifying the _fitness_ of an InnerSource project based on prior work by [Klaas-Jan Stol and Brian Fitzgerald](https://ulir.ul.ie/bitstream/handle/10344/4443/Stol_2014_inner.pdf?sequence=2) and [Silona Bonewald](https://innersourcecommons.org/assets/files/InnerSourceChecklist.pdf) to facilitate the identification of the most appropriate candidate InnerSource projects.

## Problem

While any project has the potential to benefit from being developed in InnerSource style, some are more suitable candidates than others. While starting with InnerSource, it is important to be able to select the more appropriate projects to have a best chance of success.

## Story (optional)


## Context

An organization is starting or is in the early phase of InnerSource adoption, with a lot of skepticism about whether or not it'll work, and selecting an inappropriate pilot project might lead to failure of the entire initiative. Otherwise, a team is planning to start an InnerSource project but they they do not know how prepared they are and if the project they are putting forward is appropriate or not.

## Forces

- Lack of knowledge about which projects stand to benefit the most from InnerSource development.
- The team might think they are prepared for InnerSource, but might not have an idea about what challenges lie ahead and how prepared they actually are.
- Unsure if the processes around the project are conducive to InnerSource style development. 

## Sketch (optional)


## Solutions

We hypothesize that the _fitness_ of a project can be measured by assessing whether the project has the necessary qualities to attract enough developers to build a community around it, that the tools and processes allow for collaborative development, and that the project maintainers are ready to face the challenges of InnerSource style development. We label this as the  _Project-Process-People model_. We suggest two sub-factors within each which overall provides __six__ dimensions to measure the fitness of candidate projects.

We present a tool for estimating the _fitness_ of a candidate project along the six dimensions, and also present an an aggregate score which is a weighted sum of the scores for the dimensions (weights are determined by how many people voted a characteristic as important in the [2020 InnerSource Survey](https://tapjdey.github.io/InnerSource_Survey_2020/index.html)).
The tool is written in __R__, and can be run from the [GitHub repository](https://github.com/tapjdey/InnerSource_Project_Fitness) (recommended - instructions in the repository) or from an [online instance](https://tapjdey.shinyapps.io/InnerSource_Fitness_Checker/). The tool is available in Chinese and English (language can be changed on the fly).

## Resulting Context

The _fitness score_ of a project can be used as an indication about its suitability for InnerSource style development, which can help in selecting the most appropriate candidate project(s). The questionnaire presented in the tool also serves as a de-facto guide as to which aspects need attention for making a project better suited for InnerSource style development.

## Rationale (optional)

The two most important works in this context are by [Klaas-Jan Stol and Brian Fitzgerald](https://ulir.ul.ie/bitstream/handle/10344/4443/Stol_2014_inner.pdf?sequence=2) and [Silona Bonewald](https://innersourcecommons.org/assets/files/InnerSourceChecklist.pdf).
In their work, _Stol and Fitzgerald_ presented a set of nine key factors that are important for organizations to consider when adopting inner source. However, that model looked at an organization as a whole, and while a number of organizational characteristics are applicable to an individual project, some aspects are not, and some project characteristics are unaccounted for in the model. _Silona Bonewald_, on the other hand, presented a near-exhaustive checklist about different aspects to consider while adopting InnerSource at an organization. However, not all of them are applicable while considering an individual project. Ideas from the two works described earlier are combined in framing the pattern presented here.


## Known Instances (optional)


## Status (optional until merging)


## Author(s) (optional)

Tapajit Dey, Brian Fitzgerald

## Acknowledgements (optional)

Willem Jiang from Huawei for the feedback and Translation.


## Alias (optional)

InnerSource Project fitness.
