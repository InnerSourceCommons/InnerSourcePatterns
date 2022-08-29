## Title

Extensions to Manage Contributions at Scale

## Patlet

TBD

## Problem

As the number of new feature contributions to a mature inner-source repository rapidly increases, it adds more burden on code reviews and maintenance. How do we allow for faster release of new features, encouraging innovation and experimentation; while also keeping repositories well maintained?

## Context

- More employees are contributing to strategic inner-source codebases, some of which are scaling rapidly with new feature contributions. This is adding a huge code review backlog on a smaller group of maintainers, resulting in maintainer burnout as well as slowing down release of new capabilities.
- Adding an excessive number of capabilities and code to repositories is making them difficult to maintain. 
- here is a growing backlog of new features and ideas for the products which have scaled.
- The pattern applies in either scenario:
   - Maintainers find themselves rejecting new feature ideas to narrow down the scope of the products. This is hampering innovation in the community and restricting further expansion.
   - To reduce backlog, new features are getting released without thorough documentation, hardening, or testing, creating a poor user experience. This is also bloating the size of the codebases, adding a huge dependency graph and making them difficult to maintain. 

## Forces

- Maintainers and product owners want to allow for expansion, encourage innovation and experimentation without being very restrictive on contributions, while also keeping good code and quality standards for user experience. 
- A large amount of time goes into hardening and thorough testing of features to meet product standards, but product owners may want to allow for faster release of new innovations for adopting products to explore before investing time in productionization of capabilities.
- Maintainers want to encourage the community to share innovations that combine product capabilities with other use-cases without adding more dependencies to the primary repository.

## Solutions

Allowing extensions/plugins to high-scale inner-source codebases or libraries can relieve the maintenance burden on repository maintainers and allow faster release of new features for adopting products to explore. This shifts maintenance of capabilities to extension owners and allows the primary repository to support capabilities that have been adopted more widely and are more strategic. Extensions provide a filter for new capabilities that may eventually move into the core of the project. Extensions also act as an incubation and community hardening environment, allowing for much of that hardening to happen organically rather than in a costly review process.

In order for the extensions model to be successful, there are few architectural considerations to keep in mind:
1. <b>Easy to create:</b> To obtain community participation, extensions need to be easy to create. 
   - Create Github templates for extensions to allow addition of new features in new repositories, retaining the same modular structure as the primary repository, with the framework to package and release extensions.
      - Ensure that as the primary repository changes, the template(s) are well-maintained.
   - Add example extension(s) developed from the template, which project developers can reference to understand how to write a well-patterned extension.
   - Loosen the requirements for contributors to create extensions by bypassing reviews to allow for faster release or experimentation.
2. <b>Loose coupling:</b> Having modular components that contain functionality can allow loose coupling, where changes to extensions do not impact the quality of the main codebase or other extensions.
3. <b>Dependency management:</b>  Each extension should be careful to pin the version range of the primary repository that it is built against (the same way it would any other dependency) and should be careful in its use of other dependencies that shadow dependencies of the primary repository such that the versions it chooses for those dependencies are compatible with the primary repository versions selected. Any conflicts with primary repository will be caught in the test framework for the extension.
4. <b>Testing strategy:</b> How to test extensions both individually and in combination?
   - <b>Testing extension individually:</b> Extensions template will provide a test framework to be used by the extension developers to test the capability added. This can include a framework for unit tests, runtime performance and quality tests.
   - <b>Testing extension in combination with primary repository:</b> Extension developers have a well-patterned method for testing their extension against specific versions of the primary repository without involvement from the primary repository's maintainers.
   - <b>Testing extension in combination with other extensions:</b> Providing a test framework for this scenario could result in being excessive especially if there are a large number of extensions that are still being explored by users and unlikely to be all used in combination. If a user runs into conflicts while using extensions in combination (which should be unlikely with sufficient loose coupling), the user can raise an issue to the respective extension owners who will sort it out. As an extension reaches later phases of the lifecycle and gets merged into the primary repository, it would be tested in combination with rest of library and any dependency conflicts will have to be resolved at the time.
5. <b>Discoverability and Usability:</b> 
   - Make extensions easily discoverable with a publishing page showing the extensions that users have created and want to share for product usage.
   - Allow registration of extensions with the primary project for users to leverage extensions alongside the original project, thus keeping the same user experience.
6. <b>Lifecycle of extensions and maintainability:</b> Establish the lifecycle for extensions from creation to porting into the primary codebase, along with clear ownership guidelines. 
   - Extension creators continue maintaining the extension, providing any support and fixing defects. Any extension left unmaintained will be unlisted from the publishing page.
   - Create criteria for when an extension can be ported to the primary repository, such as adoption of the extension by internal products and demand for the feature. 
   - Porting process of the extension to the primary repository will follow more stringent code review guidelines as set by library maintainers.

Following the principles outlined above ensures that: 
- The addition of the extensions pattern with easy to use templates enables developers to add new features to a project's ecosystem without requiring them to write large amounts of boilerplate code.
- Extensions are discoverable in a repeatable manner to all users of the primary project; just because code doesn't live in the main repository yet does not mean it is not valuable.
- The maintainer burden is reduced until an extension has demonstrated that it fills an important gap in the primary project.
- The core library abstractions can be a starting point for innovative developers rather than a target for later porting, thus reducing the overall burden of developing novel features for the library.
- Developers are more likely to contribute and stay involved in maintenance and building communities for their codebase, which is also good for the health of the overall project ecosystem.  

## Resulting Context

- The project is able to scale with the addition of new features, without adding a maintenance overhead on the primary project repository.
- Faster release of new features and experimental features for the community to explore, encouraging innovation and experimentation.
- A post problem that can be introduced - what happens if an extension could not complete full lifecycle ? 
    - If an extension is not adopted over a period of time and could not build a community around it to support maintenance, it would be up to the extension owner to continue maintaining it for however long they want to. If an extension is left unmaintained, it would be unpublished.
    - If an extension developer is unable to further maintain their project, and other developers in the community want to continue supporting it, they may maintain the extension going forward.

## Known Instances

IBM Corporation has adopted this solution to scale inner-source AI applications.

## Status 

TBD

## Author(s) 

- Sukriti Sharma, IBM  
- Alexander Brooks, IBM  
- Gabe Goodhart, IBM  