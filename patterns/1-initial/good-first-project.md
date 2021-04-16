## Title

Good First Project

## Patlet

An InnerSource program has been launched at an organization, and to get off to a successful start it requires some good first projects that lend themselves to InnerSource-style development. Assessing the InnerSource-readiness (fitness) of the candidate projects can help in selecting projects that have the potential to help demonstrate the power of InnerSource.

## Problem

When launching an InnerSource program, it is essential to convince the skeptics about the utility of InnerSource (see the [Start as Experiment](../2-structured/start-as-experiment.md) pattern).

While any project has the potential to benefit from being developed in InnerSource style, some are more suitable candidates than others. But how do you find the  projects that have the best chance to succeed as InnerSource projects?

Moreover, while previous works focused on the criteria for readiness for InnerSource adoption at an organizational level, there seems to be no concise and actionable guideline for assessing the InnerSource-readiness for individual projects.

## Context

- An organization is starting or is in the early phase of InnerSource adoption, with a lot of skepticism about whether or not it'll work.
- Selecting an inappropriate pilot project might lead to failure of the entire initiative (see the [Start as Experiment](../2-structured/start-as-experiment.md) pattern).
- Otherwise, a team might be planning to start an InnerSource project but they do not know how prepared they are and if the project they are putting forward is appropriate or not.

## Forces

- Lack of knowledge about which projects stand to benefit the most from InnerSource development.
- The team might think they are prepared for InnerSource, but might not have an idea about what challenges lie ahead and how prepared they actually are.
- Unsure if the tools used by the project and the organizational processes are conducive to InnerSource style development.

## Solutions

This pattern presents a framework (_Project-Process-People_ model) and an _accompanying tool_ as one specific implementation of the framework for identifying the _fitness_ of an InnerSource project. The framework is based on prior work by [Klaas-Jan Stol and Brian Fitzgerald](https://ulir.ul.ie/bitstream/handle/10344/4443/Stol_2014_inner.pdf) and [Silona Bonewald](https://innersourcecommons.org/learn/books/understanding-the-innersource-checklist/), and helps to find promising candidate InnerSource projects by assessing their InnerSource-readiness.

We hypothesize that the _fitness_ of a project can be measured by examining the characteristics of the project, the tools used and the organizational practices, and the readiness of the team in-charge, which we call the  _Project-Process-People model_. We suggest two sub-factors within each which overall provides __six__ dimensions to measure the fitness of candidate projects.

### List of factors to assess InnerSource Fitness

1. __Project Compatibility__
    - _Seed Product_ -> Do the project characteristics make it suitable for InnerSource style development?
    - _Multiple Potential Stakeholders_ -> Is the project likely to attract developers from different teams and build a community around the project?
2. __Process Compatibility__
    - _Appropriate Tools and Practices_ -> Do project practices facilitate contributions from outsiders and are the tools used in the project too specific and need to learned?
    - _Ease of contribution_ -> Are the required ancillary resources set up and is the code modular enough to facilitate contribution?
3. __People Compatibility__
    - _Team Readiness for InnerSource_ -> Are the team members aware of and ready for the challenges of maintaining an InnerSource project?
    - _Management Support_ -> Is the management willing to support the developers working on the project and the initiative in general?

### Reference Implementation

The [InnerSource Project Fitness Tracker](https://github.com/tapjdey/InnerSource_Project_Fitness) is one specific implementation of this pattern. It helps estimating the _fitness_ of a candidate project along the six dimensions explained above, and presents an aggregate score which is the weighted sum of the scores for these dimensions. (As an side: Weights are determined by how many people considered a characteristic important in the [InnerSource Survey 2020](https://tapjdey.github.io/InnerSource_Survey_2020/index.html)).

This [demo video](https://imgur.com/a/wO4EyJj) shows the operation of the tool mentioned above.

## Resulting Context

Using the framework helps to assess the InnerSource-readiness of individual projects.

The _fitness score_ of a project can be used as an indication about its suitability for InnerSource style development, which can help in selecting the most appropriate candidate projects. By choosing projects with higher chances of InnerSource success, you also increase the chances of the overall InnerSource program to be successful.

The questionnaire presented in the tool also serves as a de-facto guide as to which aspects need attention for making a project better suited for InnerSource style development.

## Rationale

The two most important works in this context are by [Klaas-Jan Stol and Brian Fitzgerald](https://ulir.ul.ie/bitstream/handle/10344/4443/Stol_2014_inner.pdf) and [Silona Bonewald](https://innersourcecommons.org/learn/books/understanding-the-innersource-checklist/).

In their work, _Stol and Fitzgerald_ presented a set of nine key factors that are important for organizations to consider when adopting inner source. However, that model looked at an organization as a whole, and while a number of organizational characteristics are applicable to an individual project, some aspects are not, and some project characteristics are unaccounted for in the model. They presented three main factors: Software Product, Practices and Tools, People and Management, and three sub-factors on each of them.

_Silona Bonewald_, on the other hand, presented a near-exhaustive checklist about different aspects to consider while adopting InnerSource at an organization. However, not all of them are applicable while considering an individual project. Ideas from the two works described earlier are combined in framing the pattern presented here.

## Known Instances

TBD

## Status

* Initial

## Author(s)

* Tapajit Dey
* Brian Fitzgerald

## Acknowledgements

Willem Jiang from Huawei for the feedback on the tool and translation to Chinese.

## Alias

* InnerSource Project fitness
* InnerSource-Readiness of a project
