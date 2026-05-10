# Repository Flow & Architecture

This is a **GitHub Pages** portfolio site for Konstantinos Kanellakis, built with **Jekyll** and deployed via GitHub Actions.

## Site URL

- **Production**: https://kanellaman.github.io/ (CNAME: www.kostaskanel.dpdns.org)
- **Local dev**: http://localhost:4000 (via Docker or `bundle exec jekyll serve`)

## Repository Structure

```
├── _config.yml              # Jekyll configuration
├── _layouts/default.html    # Main HTML layout (single-page portfolio)
├── _includes/               # Reusable HTML components
│   ├── navbar.html          # Desktop + hamburger navigation
│   ├── profile.html         # Hero section with name, title, CV download, socials
│   ├── about.html           # About Me section
│   ├── experience.html      # Skills grid
│   ├── certs.html           # Certifications showcase
│   ├── projects.html        # Featured projects
│   ├── contact.html         # Contact links
│   └── footer.html          # Footer with nav + copyright
├── assets/
│   ├── css/style.css        # Main stylesheet
│   ├── css/mediaqueries.css # Responsive breakpoints (1400/1200/600px)
│   ├── js/script.js         # Hamburger menu toggle
│   ├── resume.pdf           # Downloadable CV (PDF)
│   └── *.png/svg/jpg/webp   # Images (icons, project screenshots, cert badges)
├── _knowledge_base/         # PRIVATE — not published to site
│   ├── data/*.yml           # Canonical structured data (about, experience, etc.)
│   ├── notes/               # Rich markdown notes and write-ups
│   ├── scripts/             # Utility scripts (resume-metadata.py)
│   └── resume.txt           # Original resume text
├── _posts/                  # Blog posts (currently unused beyond default)
├── .github/
│   ├── workflows/jekyll.yml # Build & deploy pipeline
│   └── agents/              # Copilot agents for site/CV/KB management
├── index.markdown           # Homepage (uses default layout)
├── docker-compose.yaml      # Local dev with Docker
├── Gemfile                  # Ruby dependencies
└── CNAME                    # Custom domain config
```

## Deployment Flow

1. Push to `master` branch triggers `.github/workflows/jekyll.yml`
2. Workflow runs `resume-metadata.py` to update PDF metadata
3. Jekyll builds the site (excluding `_knowledge_base/`, `docker-compose.yaml`, etc.)
4. Built `_site/` is uploaded as a GitHub Pages artifact
5. Deployed to GitHub Pages

## How to Make Changes

### Content Changes (the standard workflow)

All content changes go through the **`@planner`** agent, which orchestrates the full pipeline:

```
@planner "I got a new certification: AWS Solutions Architect"
  └── 1. @knowledge-base → updates certifications.yml + learning_timeline.yml
  └── 2. @site-update    → updates certs.html
  └── 3. @cv-typst       → regenerates resume.typ → resume.pdf
```

### Visual / Layout Changes (UI/UX workflow)

Visual changes also go through `@planner`, which delegates to `@site-design`:

```
@planner "make the security skills box centered and 1/3 width below the other two"
  └── @site-design → reads CSS + HTML
                   → draws layout diagram (mermaid / ASCII)
                   → asks user to confirm exact widths + mobile behavior
                   → applies scoped CSS to style.css + mediaqueries.css
```

`@site-design` will NOT make bold visual decisions on its own — it always confirms via diagram first.

### Pushing & Deploying

All pushes go through the **`@deploy`** agent, which handles the full push-to-deploy lifecycle:

```
@deploy "push and deploy"
  └── 1. Fetch origin/master, check for divergence
  └── 2. Validate workflow YAML + critical files
  └── 3. Show push summary → ask for confirmation
  └── 4. Push to origin/master
  └── 5. Monitor GitHub Actions run → report status
```

The deploy agent also has a **diagnosis mode** for failed pipelines:

```
@deploy "why did the last deploy fail?"
  └── 1. Fetch failed run logs via gh CLI
  └── 2. Identify the failed step and root cause
  └── 3. Apply fix (workflow YAML, Gemfile, etc.)
  └── 4. Re-push with user confirmation
```

### Direct Agent Usage (advanced)
You can invoke sub-agents directly if you know exactly what you need:
- `@knowledge-base` — only update YAML data, no propagation
- `@site-update` — only sync existing YAML → HTML content
- `@site-design` — only CSS / layout / responsive / visual changes
- `@cv-typst` — only regenerate the CV PDF
- `@deploy` — push to origin, check deployment status, or diagnose pipeline failures

### CV Changes
1. Update `_knowledge_base/data/` YAML files (or let `@planner` handle it)
2. `@cv-typst` agent regenerates the Typst CV and compiles to PDF
3. Push to `master` (workflow auto-updates PDF metadata)

### Style Changes
- Edit `assets/css/style.css` for layout/color changes
- Edit `assets/css/mediaqueries.css` for responsive breakpoints
- The site is a single-page design with sections: profile → about → experience → certs → projects → contact

### Adding New Sections
1. Create a new `_includes/<section>.html` file
2. Add `{% include <section>.html %}` in `_layouts/default.html`
3. Add navigation link in `_includes/navbar.html` (both desktop and hamburger navs)
4. Add corresponding data in `_knowledge_base/data/`

## Local Development

```bash
# Option 1: Docker
docker-compose up

# Option 2: Native Ruby
bundle install
bundle exec jekyll serve --livereload
```

Site runs at http://localhost:4000 with livereload on port 35729.

## Key Notes

- The layout has a **hardcoded livereload script** (`<script src="http://127.0.0.1:35729/livereload.js">`) in `_layouts/default.html` — this should ideally be conditional on `JEKYLL_ENV`.
- `_knowledge_base/` is the single source of truth. All website content and CV data should originate from there.
- The `_site/` directory is gitignored and auto-generated.
