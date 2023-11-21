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

### Adding a new InnerSource Pattern to an Existing Translation

- Copy the pattern that you want to translate from `/patterns/2-structured/<file>.md` to `/translation/<YOUR_LANGUAGE>/patterns/<file>.md`.[^1] Make sure to keep the file name the same.
- Then start your translation in that new file.
- Once you are ready, send us a Pull Request.

### Starting the Translation of an Entirely New Language

That is awesome! We welcome your passion. When implementing InnerSource practices in your region, there can be language barriers. There is great value in getting people in your organization to understand InnerSource in their own language.

Before starting a new translation please talk to us in Slack (in the `#innersource-patterns` channel). Alternatively open an issue on this GitHub repo to start an async conversation about your translation project.

The translation should begin by creating a new `translation-<YOUR_LANGUAGE>` branch to work on.[^1]
e.g. `translation-de` would be used for the German translation.

There are a few things you should prepare before starting a translation project.

- `/translation/<YOUR_LANGUAGE>/patterns/`
- `/translation/<YOUR_LANGUAGE>/templates/`
- `/translation/<YOUR_LANGUAGE>/README.md`

However, since git does not create empty folders, it is better to create directories accordingly or add `.keep` files to keep folders.

### Translating Visuals (images, mindmap, etc)

Most of the translations have not translated the text in the visuals (e.g. in images, the mindmap, etc). However if you like, you can!

- To translate the mindmap, create a new folder similar to [pattern-categorization/gl](../pattern-categorization/gl/). Then edit the file `innersource-program-mind-map.md` in there, and run the scripts as explained [here](../pattern-categorization/README.md).
- To add translated visuals, add a subfolder in `assets/img`, see [assets/img/gl/](../assets/img/gl/) as an example. Make sure that in the markdown files of your patterns you link to the correct image files.

### Translation Quality and Review Process

We consider it best practice to have **at least one native speaker** review the translation.

In particular, for special terms, such as "Trusted Committer", please review not only for grammatical correctness but also for appropriateness. If you find a term or expression difficult to understand, please don't hesitate to ask.

### Publishing Translations

The patterns books is published in multiple languages, including English, Japanese and Chinese (as of August/2023).
Find the full list of available languages in the [patterns books](https://patterns.innersourcecommons.org/).

When publishing an entirely new language to our book, we also like to add at least one of the translators as a Trusted Committer to the project.
They will then get notified on any fixes/additions to the translation in the future, and can greatly help us by providing reviews.

When you complete a translation under `/translation/<YOUR_LANGUAGE>/`, a GitHub Actions pipeline will run to generate the output for publication in the gitbook. The process is described in detail in [/book/README.md](/book/README.md).

[^1]: Replace `<YOUR_LANGUAGE>` with the [2-letter ISO 639-1 language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) for your language.

## Maintainer Section

This documentation contains information that is only relevant for maintainers of this repo.
If you are just creating a new translation you do not need this information!

**If you are a maintainer of this repo, keep reading :)**

When a new translation is added, there are a couple of tasks to do:

a) determine a translation lead, and add them to the relevant files. See [code change](https://github.com/InnerSourceCommons/InnerSourcePatterns/commit/95b8fc76b64909af5e95bf93fad6e7c105307812)
b) [book.yml](../.github/workflows/book.yml) - update the GitHub Actions that generate book. See [code change](https://github.com/InnerSourceCommons/InnerSourcePatterns/commit/241bdf2a12c8750c66e71865a770d321cca67511)
c) [i18n-consistency-checker.yaml](../.github/workflows/i18n-consistency-checker.yaml) - update the GitHub Actions that does the consistency checks. See [code change](https://github.com/InnerSourceCommons/InnerSourcePatterns/pull/619/commits/fce53091faac83b99de8d699d7672a44810408f0)
d) (optional) [generate-mindmap.yml](../.github/workflows/generate-mindmap.yml) - if the mindmap was translated too, you need to update the GitHub Actions that regenerates the mindmap as well
