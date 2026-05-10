# Knowledge Base

This directory is the **single source of truth** for all personal/professional data used across the portfolio site and CV generation.

## Structure

```
_knowledge_base/
├── data/                        # Structured YAML — canonical data
│   ├── about.yml                # Personal bio, summary, contact info
│   ├── experience.yml           # Work experience entries
│   ├── education.yml            # Degrees, schools, grades
│   ├── skills.yml               # Technical skills with proficiency levels
│   ├── certifications.yml       # Certs with links and dates
│   ├── projects.yml             # Portfolio projects
│   ├── publications.yml         # Papers, articles, blog posts
│   ├── tools_technologies.yml   # Tools & tech stack with context
│   ├── achievements.yml         # Awards, competitions, notable accomplishments
│   └── learning_timeline.yml    # Chronological learning milestones
├── notes/                       # Rich markdown — narratives, evidence, deep dives
│   ├── labs/                    # Lab write-ups and experiments
│   ├── research/                # Research notes and findings
│   ├── architecture_designs/    # System design documents
│   ├── technical_deep_dives/    # In-depth technical explorations
│   └── evidence_artifacts/      # Supporting evidence, screenshots, logs
└── README.md                    # This file
```

## How It Works

- **YAML files in `data/`** are the canonical structured data. Agents read these to update the website and generate the Typst CV.
- **Markdown files in `notes/`** provide rich narrative context, evidence, and detailed write-ups that can be referenced or linked from the structured data.
- The `_knowledge_base/` directory is prefixed with `_` and excluded in `_config.yml`, so Jekyll does **not** publish it to the website.

## Updating

Use the **knowledge-base** agent (`@knowledge-base`) to add, update, or restructure entries.
The **site-update** agent (`@site-update`) reads from here to update the website.
The **cv-typst** agent (`@cv-typst`) reads from here to generate/update the Typst CV.
