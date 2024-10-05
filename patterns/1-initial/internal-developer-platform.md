## Title

Internal Developer Platform

## Patlet

Development teams face inefficiencies due to fragmented tooling, environments, and workflows. An Internal Developer Platform (IDP) provides a centralized, self-service system that standardizes development environments and integrates tools to enhance consistency, collaboration, and developer productivity. By streamlining access to essential resources and services, the IDP accelerates software delivery and reduces cognitive load on developers.

## Problem

A lack of standardization across development environments and tools introduces inefficiencies, lengthens onboarding time, and complicates project collaboration and scaling. Diverse setups across teams result in inconsistencies, making it difficult to ensure security, governance, and productivity at scale. Additionally, these inefficiencies lead to higher operational overhead and slower innovation cycles.

## Story (optional)

(to be done)

## Context

This pattern emerges in organizations with multiple development teams working on different projects. As teams grow and evolve, discrepancies in the setup of development environments and access to resources become more prominent, hampering collaboration, introducing security risks, and reducing developer productivity. The need for uniformity without compromising flexibility drives the adoption of an IDP.

## Forces

**Consistency vs. Flexibility**: Teams require standardized tools and processes to maintain consistency and governance, but they also need flexibility to adapt to project-specific needs and innovations.

**Self-Service vs. Governance**: Developers want self-service access to infrastructure and tooling, but the organization must enforce governance, security, and compliance controls to reduce risk.

**Scalability vs. Control**: Scaling developer environments across the organization can lead to loss of control over tools and operational consistency if not managed properly.

**Developer Productivity vs. Platform Complexity**: Developers benefit from simplified, cohesive tools, but platform teams must balance operational complexity and manage evolving workflows.

## Sketch

![Internal Developer Platform](/assets/img/sketch_idp.png "Internal Developer Platform")

The diagram reflects both the high-level architecture and the workflow of the IDP:

1. Developer Interface Layer (Top Layer)

Self-Service Portal: A central access point for developers to interact with the IDP. This portal provides UI/UX for developers to provision environments, initiate CI/CD pipelines, deploy code, and monitor applications. It should have integrations with internal services such as:

- Environment provisioning
- CI/CD pipelines initiation
- Access to documentation, templates, and tools
- Monitoring dashboards

2. IDP Core Components (Middle Layer)

These components form the operational backbone of the IDP and facilitate the interaction between the developers and the infrastructure.

- **Orchestration Engine**: Responsible for routing developer requests (e.g., environment setup, deployment) and triggering the appropriate automation or workflow.
- **Templates/Scaffolding**: Pre-built templates for creating environments, services, and pipelines to ensure consistency across projects.
- **CI/CD Pipelines**: Integrated pipelines that automate testing, building, and deploying applications, triggered from the self-service portal.
- **Automation & IaC**: Infrastructure as Code (IaC) to provision resources, manage environments, and automate repeatable processes.
- **Plugin Architecture**: A modular system that allows teams to extend the IDP by adding new tools or services via plugins (e.g., integrating with third-party APIs or custom tooling).

3. Platform Services & Resources (Bottom Layer)

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

Adoption of an Internal Developer Platform results in:

- Stremline development workflow and improved developer efficiency through self-service workflows and standardized environments.
- Enhanced collaboration as InnerSource practices make code and tools more accessible across teams.
- Faster onboarding of new team members on InnerSource projects.
- Faster software delivery due to reduced operational overhead, seamless integration of tools and standardization of development best practices.
- Consistent governance and security policies across all development environments.
- Scalability and flexibility, with the ability to extend the platform as the organization evolves​

## Rationale

An IDP provides a solution to the competing forces of consistency, flexibility, and scalability. By centralizing the management of development environments and tooling while offering self-service capabilities, it balances the needs of both developers and platform teams. InnerSource practices further contribute by fostering a culture of collaboration and reuse across the organization​. It supports scalable and controlled growth within the internal software development community, facilitating the adoption of wider InnerSource practices.

## Known Instances (optional)

(known instances to be added)

## Status (optional until merging)

Initial Draft

## Author(s) (optional)

Vincent Caldeira

## Acknowledgments (optional)

Include those who assisted in helping with this pattern - both for attribution and for possible future follow up.
Though optional, most patterns should list who helped in their creation.

## Alias (optional)

- Developer Self-Service Portal
