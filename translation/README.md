# Translation Process and Recommendations

If you would like to contribute to the InnerSource Patterns translation, great! We would love to work with you!

First, please refer to [CONTRIBUTING.md](/CONTRIBUTING.md) for basic contribution instructions.

This document covers basic translation principles, how you can contribute, and the review process.

Please note that this document contains recommendations, aimed at removing barriers for new contributors to the translation process. If you see something missing, please feel free to make suggestions.

## The Translation Principles and Recommendation

- The target of the translation are structured patterns. Find them in folder [/patterns/2-structured/](../patterns/2-structured/). Only structured patterns will be published in Gitbook.
- English is recommended for commit messages. If your changes are merged, your commit messages will be seen by members all over the world. This will make it easier for global members to find your activities and will also accelerate collaboration.
- Regarding Pull Requests and Issues, it is a good idea to use English, at least for the title and the purpose statement in the preface. Contributions in your language and accompanying discussions may be useful for other translation projects in the future.
- Each country has its own cultural and historical background and different contexts. There is no need to discuss language-specific nuances and difficult linguistic expressions in English in your review. Especially if it is a local community of several people translating together, please prioritize the ease of translation in that community.

## How to Contribute to the Translation

### Improving an Existing Translation

- Please make your changes to the respective `.md` file.
- Once you are ready, send us a Pull Request.

### Translating a new InnerSource Patterns

- Copy the pattern that you want to translate from `/patterns/2-structured/<file>.md` to `/translation/<YOUR_LANGUAGE>/patterns/<file>.md`.[^1] Make sure to keep the file name the same.
- Then start your translation in that new file.
- Once you are ready, send us a Pull Request.

### Starting the Translation of a New Language

That is awesome! We welcome your passion. When implementing InnerSource practices in your region, there can be language barriers. There is great value in getting people in your organization to understand InnerSource in their own language.

Before starting a new translation please talk to us in Slack (in the `#innersource-patterns` channel). Alternatively open an issue on this GitHub repo to start an async conversation about your translation project.

The translation should begin by creating a `book-<YOUR_LANGUAGE>` branch to work on.[^1]
e.g. `book-jp` is used for the Japanese translation.

There are a few things you should prepare before starting a translation project.

- `/translation/<YOUR_LANGUAGE>/patterns/`
- `/translation/<YOUR_LANGUAGE>/templates/`
- `/translation/<YOUR_LANGUAGE>/README.md`

However, since git does not create empty folders, it is better to create directories accordingly or add `.keep` files to keep folders.

### Translation Quality and Review Process

We consider it best practice to have **at least one native speaker** review the translation.

In particular, for special terms, such as "Trusted Committer", please review not only for grammatical correctness but also for appropriateness. If you find a term or expression difficult to understand, please don't hesitate to ask.

### Publishing Translations

The books currently available are in English and Japanese.

Trusted Committers in this repository will also be onboarded during the translation process.

When you complete a translation under `/translation/<YOUR_LANGUAGE>/`, a GitHub Actions pipeline will run to generate the output for publication in the gitbook. The process is described in detail in [/book/README.md](/book/README.md).

[^1]: Replace `<YOUR_LANGUAGE>` with the [2-letter ISO 639-1 language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) for your language.
