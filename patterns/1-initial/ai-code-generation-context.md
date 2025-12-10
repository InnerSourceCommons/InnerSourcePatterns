## Title

AI Code Generation Context

## Patlet

AI tools generate code that diverges from project standards and architectural patterns. Provide an AI Code Generation Context within the repositories to guide AI tools in producing contributions that align with existing project conventions, reducing review friction and maintaining code consistency.

## Problem

With the growing use of AI tools (like GitHub Copilot, ChatGPT, or custom LLMs), InnerSource contributors are increasingly using generative AI to write code. However, without project-specific context, these tools often produce code that diverges from the project's architectural patterns, naming conventions, or quality standards. This leads to friction during reviews, inconsistent codebases, and technical debts or additional burden on maintainers.

## Story

A few months ago, a team was working on a project with three engineers. They had put together a Technical Requirements Document—a shared agreement on what they were doing, how they'd do it, and why it mattered. Everything looked clear on paper.

But once they started writing actual code using AI-assisted tools, something interesting happened. Even though all three were using AI and following the same requirements, the code they produced looked completely different. One engineer added the new logic inside an existing method. Another split it into private methods within the same file. The third created a brand-new helper class.

Different structures. Same outcome. All technically correct.

During code review, they sat down together, talked through their approaches, and aligned on how they wanted things done. After that meeting, the code started to look more consistent—not identical, but aligned. What happened in that meeting room? They set the context.

Now imagine this in InnerSource. Contributors and code owners might never be in the same room—they could be in different time zones, different teams, different locations. How can a code owner share the right context with contributors across teams and repositories? That's the challenge this pattern addresses.

## Context

* InnerSource adoption is in place across the organization.
* Developers are encouraged to use AI tools to improve their productivity.
* Contributors may not be familiar with or fail to meticulously prompt when generating code through AI, using the target codebase's idioms, architecture, or constraints.
* Maintainers want to empower contributors using AI while preserving code consistency and maintainability.
* Multiple teams are contributing to shared repositories with varying levels of familiarity with project standards.
* Code review processes are becoming bottlenecked by AI-generated code that requires significant rework.

## Forces

* **AI Model Limitations**: AI models generate code based on generalized training data, not project-specific patterns, leading to generic solutions that may not fit the project's architecture
* **Knowledge Gap**: New contributors using AI tools might unknowingly bypass existing architectural norms, coding standards, and established patterns
* **Review Overhead**: AI-assisted PRs can significantly increase review load if not aligned with existing practices, as maintainers must spend time explaining and correcting deviations
* **Productivity vs. Quality Trade-off**: While AI tools boost individual productivity, they can reduce overall team productivity if the generated code requires extensive rework
* **Context Switching Cost**: Developers benefit from AI tools only when they have the right contextual grounding, but manually providing this context for each AI interaction is time-consuming
* **Inconsistent Standards**: Different AI tools and different prompting approaches by contributors can lead to wildly inconsistent code styles and patterns
* **Maintenance Burden**: Creating and maintaining the comprehensive AI context requires ongoing effort from maintainers
* **Tool Integration Complexity**: Different AI tools have different ways of consuming context, making it challenging to create universal guidance
* **AI Tool Cost Constraints**: Comprehensive AI context increases processing costs (AI tools charge based on "tokens" \* units of text measurement) and usage limits, requiring strategic balance between context completeness and efficiency

## Solution

Provide an **AI Code Generation Context** folder within the repository to guide AI tools in producing contributions that align with project standards. This folder serves as a comprehensive reference that contributors can easily provide to AI tools, ensuring that generated code adheres to project conventions.

### Implementation Structure

Create an `ai-context-bank/` folder in the repository root containing:

#### Core Files (Required)

Start with these three essential files:

`README.md`: How to use the context bank

* Overview of the AI context bank and its purpose
* Instructions for contributors on how to best leverage the context
* Guidelines for when and how to reference context files in AI prompts
* Examples of effective context usage
* Contribution guidelines for improving the context bank

`PROMPT.md`: Sample prompt templates

* Ready-to-use prompt templates for common tasks
* Examples showing how to incorporate project context into AI prompts
* Templates for different scenarios (new features, bug fixes, refactoring, testing)
* Best practices for prompting AI tools with project-specific context

`ARCHITECTURE.md`: Lightweight system overview

* High-level system architecture and component relationships
* Data flow patterns and API design principles
* Dependency management guidelines
* Module organization and layering principles
* Integration patterns with external systems

#### Contexts (Required)

The `contexts/` folder contains detailed project-specific guidelines and conventions:

* Naming conventions (variables, functions, classes, files)
* Logging patterns and error handling approaches
* Testing strategy and preferred testing frameworks
* Code formatting and style preferences
* Common anti-patterns to avoid
* Preferred libraries and frameworks for specific tasks
* Language-specific style rules
* Code organization patterns
* Documentation standards
* Performance considerations
* Security guidelines and common vulnerabilities to avoid
* Project-specific and domain-specific instructions

#### Enhancements (Optional)

##### Configuration and Tooling

`CONFIG/`: Shared formatter and analysis configurations

* `.prettierrc`, `.eslintrc`, or equivalent formatting configs
* `.editorconfig` for consistent editor settings
* Static analysis tool configurations
* Pre-commit hook configurations

`INTEGRATION/`: AI tool-specific integration guides

* GitHub Copilot workspace configuration
* Custom GPT instructions and prompts
* IDE plugin configurations
* CLI tool integration examples

##### Advanced Features

`EMBEDDINGS/` (Optional): For advanced LLM integrations

* Searchable knowledge base of project patterns
* Vector embeddings of code examples
* Semantic search capabilities for finding relevant patterns

**Context Efficiency**: Start with core documentation files (~1000 words of context) to balance context value with AI tool costs. Expand strategically based on measured impact on review cycles and code quality.

**Naming Convention**: The suggested file and folder names follow industry common practices. However, codebase owners may choose alternative names that are more discoverable and relatable to their specific project or codebase. Any chosen naming convention should be clearly documented and communicated to contributors through proper documentation. Should files like [AGENTS.md](https://agents.md) and `.aiignore` become standard in the future, the naming conventions in this pattern might be adapted accordingly.

**Handling Existing Documentation**: If files like `ARCHITECTURE.md` already exist, the pragmatic approach is to keep them in their current location and add lightweight reference files in `innersource-ai` that point to them. When the architecture docs, style guides, or other materials are in Confluence or similar external systems, the `innersource-ai` folder becomes a crucial bridge between the codebase and external knowledge. This avoids duplication and keeps the folder consistent. For projects that want tighter integration, code owners could choose to reorganize and consolidate content under `innersource-ai`, but that requires more effort. The approach is flexible enough to support either approach—or even a hybrid—depending on what works best for the repository.

### Usage Patterns

#### For Contributors

* **Before Starting**: Review the AI context to understand project standards
* **During Development**: Reference specific files when prompting AI tools
* **Code Generation**: Include relevant context snippets in AI prompts
* **Validation**: Use provided examples to verify AI-generated code aligns with standards

#### For AI Tool Integration

* **Direct Reference**: Copy relevant sections into AI tool prompts
* **URL Integration**: Reference files via repository URLs in AI tools that support web access
* **IDE Integration**: Configure AI plugins to automatically include context
* **Custom Workflows**: Integrate context into CI/CD pipelines for automated validation

#### For Project Owners

**Maintenance Strategy**:

* **Version Control**: Track changes to AI context alongside code changes
* **Regular Updates**: Review and update context as project standards evolve
* **Community Contribution**: Allow contributors to suggest improvements to AI context
* **Metrics Tracking**: Monitor the effectiveness of AI context through code review metrics

## Resulting Context

* **Improved Code Quality**: AI-assisted contributions become consistent with existing code standards and architectural patterns from the first submission
* **Reduced Review Friction**: Maintainers can trust incoming PRs more readily, significantly reducing review fatigue and time-to-merge
* **Enhanced Contributor Experience**: Contributors using AI produce better, more maintainable code even on their first attempts, leading to increased confidence and participation
* **Scalable Collaboration**: Opens the door to scalable, AI-aware InnerSource collaboration across teams without sacrificing code quality
* **Knowledge Preservation**: Project knowledge becomes more explicit and accessible, reducing dependency on tribal knowledge
* **Faster Onboarding**: New contributors can leverage AI tools effectively from day one, reducing the learning curve for project-specific patterns
* **Consistent Evolution**: As AI tools improve, the context ensures that enhanced capabilities are channeled toward project-appropriate solutions

## Rationale

This pattern addresses the fundamental mismatch between AI tools' general training and project-specific requirements. By providing structured, easily consumable context, we enable AI tools to generate code that feels like it was written by an experienced project contributor rather than an outsider.

The `ai-context-bank/` folder approach is intentionally explicit and discoverable, making it clear to both humans and AI tools where to find project-specific guidance. The modular structure allows teams to implement incrementally, starting with basic style guides and expanding to more sophisticated examples and configurations as needed.

This solution balances the productivity benefits of AI tools with the quality requirements of professional software development, creating a sustainable approach to AI-assisted InnerSource collaboration.

## Status

* Initial
* Drafted in August 2025

## Authors

* [Amburi Roy](https://www.linkedin.com/in/amburi/)

## Related Patterns

* [Standard Base Documentation](../2-structured/base-documentation.md) - Provides the foundation documentation that AI context builds upon
* [InnerSource Portal](../2-structured/innersource-portal.md) - Could include AI context availability as searchable metadata for project discovery
* [Trusted Committer](../2-structured/trusted-committer.md) - Trusted Committers are responsible for maintaining and evolving the AI context
