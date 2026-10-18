## Title

Internal Developer Platform

## Patlet

As InnerSource adoption increases throughout an organisation, it is not unusual that project teams start to face inefficiencies in scaling their efforts due to fragmented tooling, environments, and workflows. An Internal Developer Platform (IDP) provides a way to tackle this type of challenges through a centralized, self-service system that standardizes development environments and integrates tools to enhance consistency, collaboration, and developer productivity.

There is a symbiotic relationship between the IDP and InnerSource as their relationship enhances the scalability and effectiveness of both practices, especially in large organizations.

## Problem

A lack of standardization across development environments and tools significantly hampers the scalability of InnerSource practices. In fragmented ecosystems, contributors must navigate diverse setups, workflows, and toolchains, creating unnecessary barriers to effective collaboration. This not only increases the cognitive load for developers contributing to projects outside their teams but also limits the organization’s ability to harness the full potential of shared codebases, reusable components, and collective innovation.

Without a standardized foundation, InnerSource efforts struggle to scale as inconsistencies across teams lead to inefficiencies, delays, and misaligned governance practices. Contributors face challenges in understanding and integrating with unfamiliar environments, while teams resist external contributions due to perceived risks or integration overhead. An Internal Developer Platform (IDP) mitigates these issues by providing a self-service, unified platform that standardizes tools, processes, and environments. This enables InnerSource contributors to focus on delivering value rather than overcoming technical incompatibilities, fostering a culture of collaboration and accelerating the adoption of InnerSource at scale.

## Context

- The organization has development teams working on different projects. These teams are already using InnerSource practices.
- As teams grow and evolve, discrepancies in the setup of development environments and access to resources become more prominent, hampering collaboration, introducing security risks, and reducing developer productivity.
- The teams (as well as the leadership of the organization) are looking to increase consistency in tools and processes without compromising on the flexibility to adapt to project-specific needs.

## Forces

**Consistency vs. Flexibility**: Teams require standardized tools and processes to maintain consistency and governance, but they also need flexibility to adapt to project-specific needs and innovations.

**Self-Service vs. Governance**: Developers want self-service access to infrastructure and tooling, but the organization must enforce governance, security, and compliance controls to reduce risk.

**Scalability vs. Control**: Scaling developer environments across the organization can lead to loss of control over tools and operational consistency if not managed properly.

**Developer Productivity vs. Platform Complexity**: Developers benefit from simplified, cohesive tools, but platform teams must balance operational complexity and manage evolving workflows.

## Sketch

![Internal Developer Platform](/assets/img/sketch_idp.png "Internal Developer Platform")

The diagram reflects both the high-level architecture and the workflow of the IDP:

1. **Developer Interface Layer (Top Layer)**

Self-Service Portal: A central access point for developers to interact with the IDP. This portal provides UI/UX for developers to provision environments, initiate CI/CD pipelines, deploy code, and monitor applications. It should have integrations with internal services such as:

- Environment provisioning
- CI/CD pipelines initiation
- Access to documentation, templates, and tools
- Monitoring dashboards

2. **IDP Core Components (Middle Layer)**

These components form the operational backbone of the IDP and facilitate the interaction between the developers and the infrastructure.

- **Orchestration Engine**: Responsible for routing developer requests (e.g., environment setup, deployment) and triggering the appropriate automation or workflow.
- **Templates/Scaffolding**: Pre-built templates for creating environments, services, and pipelines to ensure consistency across projects.
- **CI/CD Pipelines**: Integrated pipelines that automate testing, building, and deploying applications, triggered from the self-service portal.
- **Automation & IaC**: Infrastructure as Code (IaC) to provision resources, manage environments, and automate repeatable processes.
- **Plugin Architecture**: A modular system that allows teams to extend the IDP by adding new tools or services via plugins (e.g., integrating with third-party APIs or custom tooling).

3. **Platform Services & Resources (Bottom Layer)**

These components are what the IDP exposes to developers through the portal and what it orchestrates.

- **Infrastructure Provisioning**: Automates the provisioning of development environments (e.g., Kubernetes clusters, cloud services, containers, VMs) based on the Infrastructure as Code scripts.
- **Security & Compliance Guardrails**: Pre-configured rules that ensure all environments and tools are compliant with organizational policies.
- **Monitoring & Observability**: Integrated logs, metrics, and tracing tools to monitor both applications and infrastructure.
- **APIs & Service Catalog**: A searchable catalog of APIs, services, and artifacts available within the organization, promoting reuse and standardization.

## Solutions

Implement an Internal Developer Platform that provides a centralized, self-service capability for developers. This platform standardizes development environments, tools, and access to resources, ensuring consistency while offering the flexibility to cater to specific project needs. It includes automation for common tasks, such as setting up development environments, initiating CI/CD pipelines, and deploying applications, making these processes more efficient and less prone to errors.

Key implementation principles:

- **Unified Self-Service Portal**: Implement a self-service portal as the interface to the IDP. The portal enables developers to easily provision environments, access tools, manage deployments, and monitor services without relying on other teams. This reduces wait times and empowers developers to work autonomously while following organizational standards​.

- **Standardized Tooling & Workflows**: The IDP should provide standardized development environments, automated CI/CD pipelines, and monitoring systems to ensure consistency across teams. By offering templates for creating environments and services, it enables uniformity without compromising customization​.

- **Guardrails for Governance**: Establish automated guardrails to ensure security and compliance across all environments and tools. These include pre-configured security policies, access controls, and monitoring integrated into the platform. This balances developer autonomy with governance​.

- **Pluggable Architecture**: The platform must be extensible to adapt to changing organizational needs. It should support integration with various third-party services, tools, and APIs via a plugin architecture to allow teams to extend functionality as required​.

- **InnerSource Practices**: Encourage InnerSource practices within the IDP to enhance collaboration and knowledge sharing between teams. By facilitating code reuse and contribution across the organization, InnerSource reduces duplication and promotes a culture of transparency​.

- **Automation & Infrastructure as Code (IaC)**: Automate repetitive tasks such as environment provisioning, testing, and deployment. Integrating Infrastructure as Code (IaC) ensures that infrastructure is treated like code, versioned, and managed in a scalable and reliable manner​

## Resulting Context

Adoption of an Internal Developer Platform helps to address directly a number of challenges in scaling InnerSource efforts across large and complex organisations, specifically supporting some of the areas that InnerSource tries to solve for such as:

**Reducing development silos caused by excessive ownership culture**: An IDP breaks down silos by standardizing tools, environments, and processes across teams. It fosters InnerSource practices, where code and resources are shared across teams, reducing excessive ownership over particular tools or systems. By providing a centralized platform, IDPs make it easier for teams to collaborate, access shared resources, and contribute to each other’s work without the traditional territorial boundaries​.

**Increasing innovation speed by reducing time spent solving similar issues and fostering healthy code reuse**: IDPs provide a central repository of templates, services, and reusable components, which encourages code reuse across the organization. Developers can access these assets directly from the platform, reducing duplication of effort. By integrating with documentation, APIs, and existing solutions, IDPs streamline the process of leveraging previous work, enabling teams to focus on innovation rather than reinventing the wheel​.

**Solving project/team dependencies beyond "wait it out" and "build workarounds", thereby reducing engineering bottlenecks**:
IDPs allow teams to self-serve infrastructure, environments, and tools, reducing dependency on other teams to manually provision resources. By centralizing access to infrastructure and automating common processes like CI/CD pipelines, dependencies are less likely to create bottlenecks.

**Increasing quality**: IDPs increase software quality by promoting consistent and standardized practices and providing built-in guardrails for governance, security, and compliance. Automated testing and deployment pipelines ensure that all code adheres to the organization’s quality standards before it goes into production. Moreover, since developers can focus more on solving high-level problems rather than fighting with tooling and environment setup, they have more time to improve code quality​.

**Increasing employee happiness**: The number one objective of an IDP is to increase Developer happiness, by treating and promoting the platform as an internal product. By reducing friction in the development process, an IDP allows developers to focus on what they do best which is writing code and solving meaningful problems. Self-service capabilities reduce waiting times for resources, while centralized platforms eliminate the complexity of managing disparate tools. This leads to a more streamlined developer experience, which in turn boosts job satisfaction and productivity​.

**Increasing success of new hires**: IDPs simplify the onboarding process by providing new hires with easy access to pre-configured environments, documentation, and templates. Rather than spending their first weeks figuring out how to set up their development environment or learning which tools to use, new hires can start contributing much faster. The IDP serves as a single point of entry for everything they need, dramatically reducing ramp-up time​. As a result, developer onboarding time (typically measured through time for the first approved commit) is a key metric in IDP implementation and success.

**Building actionable documentation**: An IDP integrates documentation directly into the development workflows via self-service portals. Teams can access API documentation, code examples, and templates from the same place they access tools and environments. This centralization ensures that documentation is kept up-to-date and easily accessible. Furthermore, by encouraging direct InnerSource contributions into the documentation itself (from users), teams can continuously improve documentation based on real-world usage​.

## Rationale

An IDP provides a solution to the competing forces of consistency, flexibility, and scalability. By centralizing the management of development environments and tooling while offering self-service capabilities, it balances the needs of both developers and platform teams. InnerSource practices further contribute by fostering a culture of collaboration and reuse across the organization​. It supports scalable and controlled growth within the internal software development community, facilitating the adoption of wider InnerSource practices.

### IDP Helps to Scale InnerSource

**Standardizing Development Practices**: In large organizations, development teams often use varied tools, environments, and processes. This lack of standardization makes it challenging for InnerSource contributors to effectively participate in projects outside their immediate teams. An IDP provides a unified platform that standardizes tools, templates, and workflows, creating a consistent development ecosystem. This in turns helps to accelerate software delivery, reduces cognitive load on developers and ultimately serves as a catalyst for scaling InnerSource practices across large organizations. InnerSource Contributors can quickly adapt and become productive, which is crucial for scaling InnerSource rapidly across diverse teams.

**Improving Accessibility and Collaboration**: By streamlining access to essential resources and services through a self-service model, IDPs remove barriers that impede collaboration. InnerSource strategies are amplified through the standardization and accessibility provided by an IDP, making cross-team collaboration and innovation more effective. Developers can then more easily find and contribute to shared projects without navigating complex or unfamiliar environments.

**Breaking Down Silos**: Excessive ownership culture often arises in organizations lacking common platform engineering practices, where individual teams or departments hold disproportionate control over their tools, processes, or codebases. Often in this kind of situation, teams treat their codebase as proprietary and actively discourage contributions from other teams by failing to document code properly, setting up overly restrictive access controls or even dismissing external contributions by blocking pull requests. This creates organisational silos, reducing opportunities for cross-team contributions. An IDP addresses this by promoting shared ownership of platform components leading over time to shared standards and practices, fostering a culture of openness and collaboration, which is at the heart of InnerSource.

### InnerSource Practices Amplify the Adoption of IDP

**Channeling Contributions to Platform Development**: InnerSource creates an avenue for developers across the organization to contribute directly to the IDP. For example, they can suggest or implement features that address common pain points or enhance usability. This community-driven approach ensures that the IDP evolves in response to real-world challenges faced by its users, making it more relevant and effective.

**Encouraging Shared Ownership of the Platform**: Through InnerSource, developers treat the IDP as a shared product rather than something imposed by a centralized team. This increases adoption and engagement, as teams feel a sense of ownership and responsibility for its success.

**Improving Documentation and Knowledge Sharing**: InnerSource practices naturally encourage contributions to documentation. Teams using the IDP can provide feedback, improve documentation, or add usage examples, ensuring that knowledge is continuously refined and up-to-date.

## Known Instances

(known instances to be added)

## Status

* Initial

## Authors

- Vincent Caldeira

## Acknowledgments

- [Jose Roman Martin Gil](https://github.com/rmarting) for providing early feedback on this pattern and helping to look for organizations that have implemented this pattern

## Links

* [Promoting InnerSource Practices with an Internal Developer Platform](https://www.youtube.com/watch?v=mqeBbQcDjTE&ab_channel=InnerSourceCommons)
* [internaldeveloperplatform.org](https://internaldeveloperplatform.org/)
