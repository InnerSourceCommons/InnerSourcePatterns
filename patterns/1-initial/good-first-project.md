## Title

Good First Project

## Patlet

This pattern presents a framework (_Project-Process-People_ model) and an _accompanying tool_ as one specific implementation of the framework for identifying the _fitness_ of an InnerSource project. The framework is based on prior work by [Klaas-Jan Stol and Brian Fitzgerald](https://ulir.ul.ie/bitstream/handle/10344/4443/Stol_2014_inner.pdf?sequence=2) and [Silona Bonewald](https://innersourcecommons.org/assets/files/InnerSourceChecklist.pdf), and should help facilitate the identification of the most appropriate candidate InnerSource projects and the assessment of InnerSource-readiness of candidate projects.

## Problem

While any project has the potential to benefit from being developed in InnerSource style, some are more suitable candidates than others. While starting with InnerSource, especially when trying to convince the skeptics about the utility of InnerSource (see the [Start as Experiment](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/master/patterns/2-structured/start-as-experiment.md) pattern) it is important to be able to select the more appropriate projects to have a best chance of success.

Moreover, while previous works focused on the criteria for readiness for InnerSource adoption at an organizational level, there seems to be no concise and actionable guideline for InnerSource-readiness for individual projects.

## Story (optional)

## Context

An organization is starting or is in the early phase of InnerSource adoption, with a lot of skepticism about whether or not it'll work, and selecting an inappropriate pilot project might lead to failure of the entire initiative (see the [Start as Experiment](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/master/patterns/2-structured/start-as-experiment.md) pattern). Otherwise, a team might be planning to start an InnerSource project but they do not know how prepared they are and if the project they are putting forward is appropriate or not.

## Forces

- Lack of knowledge about which projects stand to benefit the most from InnerSource development.
- The team might think they are prepared for InnerSource, but might not have an idea about what challenges lie ahead and how prepared they actually are.
- Unsure if the processes around the project are conducive to InnerSource style development.

## Sketch (optional)

## Solutions

Based on the two previous works mentioned earlier (see [Rationale](#rationale-optional)), we hypothesize that the _fitness_ of a project can be measured by assessing whether the project has the necessary qualities to attract enough developers to build a community around it, that the tools and processes allow for collaborative development, and that the project maintainers are ready to face the challenges of InnerSource style development. We label this as the  _Project-Process-People model_. We suggest two sub-factors within each which overall provides __six__ dimensions to measure the fitness of candidate projects.

### List of the major factors and the sub-factors

1. __Project Compatibility__
    - _Seed Product_ -> Do the project characteristics make it suitable for InnerSource style development?
    - _Multiple Potential Stakeholders_ -> Is the project likely to attract developers from different teams and build a community around the project?
2. __Process Compatibility__
    - _Appropriate Tools and Practices_ -> Do project practices facilitate contributions from outsiders and are the tools used in the project too specific and need to learned?
    - _Ease of contribution_ -> Are the required ancillary resources set up and is the code modular enough to facilitate contribution?
3. __People Compatibility__
    - _Team Readiness for InnerSource_ -> Are the team members aware of and ready for the challenges of maintaining an InnerSource project?
    - _Management Support_ -> Is the management willing to support the developers working on the project and the initiative in general?

As one specific implementation of the pattern, we present a tool for estimating the _fitness_ of a candidate project along the six dimensions, and also present an an aggregate score which is a weighted sum of the scores for the dimensions (weights are determined by how many people voted a characteristic as important in the [2020 InnerSource Survey](https://tapjdey.github.io/InnerSource_Survey_2020/index.html)).
The tool is written in __R__, and can be run from the [GitHub repository](https://github.com/tapjdey/InnerSource_Project_Fitness) (recommended - instructions in the repository) or from an [online instance](https://tapjdey.shinyapps.io/InnerSource_Fitness_Checker/). The tool is available in Chinese and English (language can be changed on the fly).

## Resulting Context

In general, application of the framework should help assess the InnerSource-readiness of individual projects.

The _fitness score_ of a project can be used as an indication about its suitability for InnerSource style development, which can help in selecting the most appropriate candidate project(s).

The questionnaire presented in the tool also serves as a de-facto guide as to which aspects need attention for making a project better suited for InnerSource style development.

## Rationale (optional)

The two most important works in this context are by [Klaas-Jan Stol and Brian Fitzgerald](https://ulir.ul.ie/bitstream/handle/10344/4443/Stol_2014_inner.pdf?sequence=2) and [Silona Bonewald](https://innersourcecommons.org/assets/files/InnerSourceChecklist.pdf).
In their work, _Stol and Fitzgerald_ presented a set of nine key factors that are important for organizations to consider when adopting inner source. However, that model looked at an organization as a whole, and while a number of organizational characteristics are applicable to an individual project, some aspects are not, and some project characteristics are unaccounted for in the model. They presented three main factors: Software Product, Practices and Tools, People and Management, and three sub-factors on each of them.

_Silona Bonewald_, on the other hand, presented a near-exhaustive checklist about different aspects to consider while adopting InnerSource at an organization. However, not all of them are applicable while considering an individual project. Ideas from the two works described earlier are combined in framing the pattern presented here.

## Known Instances (optional)

## Status (optional until merging)

## Author(s) (optional)

Tapajit Dey, Brian Fitzgerald

## Acknowledgements (optional)

Willem Jiang from Huawei for the feedback and Translation.

## Alias (optional)

InnerSource Project fitness; InnerSource-Readiness of a project
