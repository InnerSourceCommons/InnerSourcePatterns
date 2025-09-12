# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Common Development Commands

### Linting and Validation

```bash
# Run markdown linting on all markdown files
markdownlint "**/*.md"

# Validate pattern syntax for structured and validated patterns
markdownlint -r ./.github/lint-pattern-syntax/pattern-template.js -c ./.github/lint-pattern-syntax/pattern-template.yml patterns/2-structured/*.md patterns/3-validated/*.md

# Check all links in the repository
# Note: This runs as part of CI, no local command available
```

### Book Generation

```bash
# Generate Table of Contents for English book (requires Ruby 2.6+)
cd book/scripts/
bundle install
ruby generate_toc.rb en

# Generate ToC for other languages (replace 'ja' with desired language code)
ruby generate_toc.rb ja
```

### Pattern Mind Map Generation

```bash
# Generate interactive mind map visualization of patterns
cd pattern-categorization/
npm install
# Mind map generation runs via GitHub Actions workflow
```

## Repository Architecture

### Pattern Organization Structure

The repository uses a three-tier maturity system for organizing patterns:

- **`patterns/1-initial/`** - Initial patterns and "donuts" (patterns with missing sections)
- **`patterns/2-structured/`** - Complete patterns following the template structure
- **`patterns/3-validated/`** - Validated patterns with multiple known instances

### Content Flow Pipeline

1. **Pattern Creation**: Authors create patterns following the `meta/pattern-template.md` structure
2. **Validation**: Patterns undergo syntax validation via custom markdownlint rules
3. **Book Publishing**: Structured (Level 2) and Validated (Level 3) patterns are automatically included in the published book at patterns.innersourcecommons.org
4. **Multi-language Support**: Content is translated and published in multiple languages (EN, JA, ZH, PT-BR, GL, ES)

### Key Components

- **`book/scripts/generate_toc.rb`** - Ruby script that extracts pattern titles and patlets to auto-generate book table of contents
- **`.github/workflows/`** - Complete CI/CD pipeline including pattern validation, book generation, link checking, and multi-language processing
- **`meta/`** - Contains contributor guidelines, pattern templates, and governance documentation
- **`pattern-categorization/`** - Mind map visualization system using markmap for pattern discovery

### Pattern Template Structure

All structured patterns must include these sections:
- **Title**: Memorable, concise, descriptive name
- **Patlet**: 1-2 sentence problem/solution summary
- **Problem**: Crisp problem definition
- **Context**: Pre-conditions and applicability constraints
- **Forces**: Trade-offs and changeable constraints
- **Solutions**: Verified resolutions
- **Resulting Context**: Post-solution situation
- **Known Instances**: Real-world validation examples

### Quality Gates

- **Markdownlint**: Standard markdown formatting validation
- **Pattern Syntax Validation**: Custom rules ensuring pattern template compliance
- **Link Checker**: Validates all external references
- **Spelling & Style**: Vale-based content quality checks

### Multi-language Workflow

The repository supports internationalization with automated workflows:
- English patterns in `/patterns/` are the canonical source
- Translations stored in `/translation/<language-code>/patterns/`
- Book generation supports multiple languages via parameterized Ruby scripts
- GitHub Actions generate separate books for each supported language

### Pattern Maturity Progression

Patterns advance through maturity levels with specific requirements:
- **Level 1**: Readable content, basic validation
- **Level 2**: Template compliance, style guide adherence, at least 1 known instance
- **Level 3**: Multiple validation instances, thorough review, visual illustrations

This structure enables the InnerSource Commons community to collaboratively develop, validate, and publish best practices while maintaining quality standards and multi-language accessibility.